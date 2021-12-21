package com.kanboo.www.service.impl.board;

import com.kanboo.www.domain.entity.board.Board;
import com.kanboo.www.domain.entity.board.BoardFile;
import com.kanboo.www.domain.entity.global.CodeDetail;
import com.kanboo.www.domain.entity.member.Member;
import com.kanboo.www.domain.repository.board.BoardFileRepository;
import com.kanboo.www.dto.board.BoardFileDTO;
import com.kanboo.www.service.inter.board.BoardFileService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
@RequiredArgsConstructor
public class BoardFileServiceImpl implements BoardFileService {
    private final BoardFileRepository boardFileRepository;

    @Override
    public BoardFileDTO insertFiles(BoardFileDTO dto, MultipartFile file, int category, long memIdx){


        String uploadPath = "";
        File f = new File("");
        String absolutePath = f.getAbsolutePath();
        String rootPath = "";
        File uploadFile = new File("","");
        String originalFileName = file.getOriginalFilename();
        File saveFile = new File("","");

        if(category == 7){
            uploadPath = "src/main/resources/storage/board/free";
        } else if(category == 8){
            uploadPath = "src/main/resources/storage/board/qna";
        }

        rootPath = absolutePath + uploadPath;
        uploadFile = new File(rootPath, getFolder(dto.getBoard().getBoardIdx(), memIdx));
        if(!uploadFile.exists()){
            uploadFile.mkdirs();
        }
        originalFileName = originalFileName.substring(originalFileName.lastIndexOf("\\") + 1);
        saveFile = new File(uploadFile, originalFileName);
        try {
            if(!file.isEmpty()){
                file.transferTo(saveFile);
            }
        } catch (Exception e){
            e.printStackTrace();
        }

        Board board = Board.builder()
                .boardIdx(dto.getBoard().getBoardIdx())
                .member(new Member())
                .codeDetail(new CodeDetail())
                .build();
        BoardFile boardFile = BoardFile.builder()
                .extensionName(dto.getExtensionName())
                .fileName(dto.getFileName())
                .fileSize(dto.getFileSize())
                .filePath(uploadFile.toString())
                .board(board)
                .build();

        BoardFile savedFile = boardFileRepository.save(boardFile);
        return savedFile.entityToDto();
    }

    //계층형 폴더
    //boardIdx, memIdx 필요
    @Override
    public String getFolder(long boardIdx, long memIdx){
        String dynamicPath = memIdx + "/" + boardIdx;
        return dynamicPath;
    }


}
