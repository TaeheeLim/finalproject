package com.kanboo.www.controller.global;

import com.kanboo.www.domain.repository.board.boardQueryDSL.BoardDSLRepositoryImpl;
import com.kanboo.www.dto.board.BoardDTO;
import com.kanboo.www.dto.board.BoardFileDTO;
import com.kanboo.www.dto.board.CommentDTO;
import com.kanboo.www.dto.global.CodeDetailDto;
import com.kanboo.www.dto.member.MemberDTO;
import com.kanboo.www.service.inter.board.BoardFileService;
import com.kanboo.www.service.inter.board.BoardService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class BoardController {
    private static final Logger logger
            = LoggerFactory.getLogger(BoardDSLRepositoryImpl.class);

    private final BoardService boardService;
    private final BoardFileService boardFileService;

    @GetMapping("/boardTest")
    public List<BoardDTO> testBoard(String selected, String key, int articleOnvView, String codeDetail) {
        List<BoardDTO> allList = boardService.getAllList(selected, key, articleOnvView, codeDetail);
//        System.out.println(allList);
        return allList;
    }

    @GetMapping("/getArticleNum")
    public long getArticleNum(String key, String selected, String codeDetails) {
        return boardService.getArticleNum(key, selected, codeDetails);
    }

    @GetMapping("/BoardComment")
    public List<CommentDTO> getComments(long boardIdx, int commentsOnView){
        return boardService.getComments(boardIdx, commentsOnView);
    }

    @GetMapping("/DeleteBoard")
    public boolean deleteBoard(long boardIdx){
        return boardService.deleteBoard(boardIdx);
    }

    @PostMapping("/insertBoard")
    public BoardDTO insertBoard(@RequestBody Map<String, Object> map){
        String token = map.get("token") + "";

        CodeDetailDto codeDetail = CodeDetailDto.builder()
                .codeDetailIdx(map.get("codeDetailIdx") + "")
                .build();

        BoardDTO dto = BoardDTO.builder()
                .boardCn(map.get("boardCn") + "")
                .delAt("N")
                .fileAt(map.get("fileAt") + "")
                .totalComments(0)
                .totalLikes(0)
                .codeDetail(codeDetail)
                .build();

        return boardService.insertBoard(dto, token);
    }

    @PostMapping("/insertFile")
    @ResponseBody
    public BoardFileDTO insertFile(String fileSize, String fileName,
                                   String extensionName, long boardIdxToInsertFile,
                                   int category, @ModelAttribute MultipartFile file){
        //이 부분에서 세션에있는 dto에서 memIdx꺼내옴...
        long memIdx = 138L;

        BoardDTO boardDTO = BoardDTO.builder()
                            .boardIdx(boardIdxToInsertFile)
                            .build();
        BoardFileDTO fileDTO = BoardFileDTO.builder()
                        .fileSize(fileSize)
                        .fileName(fileName)
                        .extensionName(extensionName)
                        .board(boardDTO)
                        .build();

        return boardFileService.insertFiles(fileDTO, file, category, memIdx);
    }




}
