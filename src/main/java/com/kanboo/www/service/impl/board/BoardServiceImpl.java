package com.kanboo.www.service.impl.board;

import com.kanboo.www.domain.entity.board.Board;
import com.kanboo.www.domain.entity.board.BoardFile;
import com.kanboo.www.domain.entity.board.Comment;
import com.kanboo.www.domain.entity.global.CodeDetail;
import com.kanboo.www.domain.entity.member.Member;
import com.kanboo.www.domain.repository.board.BoardRepository;
import com.kanboo.www.domain.repository.board.boardQueryDSL.BoardDSLRepositoryImpl;
import com.kanboo.www.dto.board.BoardDTO;
import com.kanboo.www.dto.board.BoardFileDTO;
import com.kanboo.www.dto.board.CommentDTO;
import com.kanboo.www.service.inter.board.BoardService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final BoardRepository boardRepository;

    @Override
    public List<BoardDTO> getAllList(String selected, String key, int articleOnvView, String codeDetail) {
        List<Board> allList = boardRepository.getAllList(selected, key, articleOnvView, codeDetail);
        List<BoardDTO> result = new ArrayList<>();

        for (Board board : allList) {
            result.add(board.entityToDto());
        }

        return result;
    }

    @Override
    public long getArticleNum(String keyword, String selected, String codeDetails){
        return boardRepository.getArticleNum(keyword, selected, codeDetails);
    }

    @Override
    public List<CommentDTO> getComments(long boardIdx, int commentsOnView) {
        List<Comment> comments = boardRepository.getComments(boardIdx, commentsOnView);
        List<CommentDTO> list = new ArrayList<>();

        for(Comment comment : comments){
            list.add(comment.entityToDto());
        }
        return list;
    }

    @Transactional
    @Override
    public boolean deleteBoard(long boardIdx){
        Board board = boardRepository.findByBoardIdx(boardIdx);

        if(board != null){
            board.changeDelAt("Y");
            return true;
        }

        return false;
    }

    @Override
    public BoardDTO insertBoard(BoardDTO boardDTO, String token) {
        //원래는 이부분에서 token값을 받아서 session에서 조회 한후 dto 꺼내서 memberIdx 꺼냄
        boardDTO.changeMember(138L);

        Member member = Member.builder().memIdx(boardDTO.getMember().getMemIdx()).build();
        CodeDetail codeDetail = CodeDetail.builder().codeDetailIdx(boardDTO.getCodeDetail().getCodeDetailIdx()).build();

        Board board = Board.builder()
                .member(member)
                .codeDetail(codeDetail)
                .boardCn(boardDTO.getBoardCn())
                .boardDate(LocalDateTime.now())
                .delAt(boardDTO.getDelAt())
                .fileAt(boardDTO.getFileAt())
                .totalComments(boardDTO.getTotalComments())
                .totalLikes(boardDTO.getTotalLikes())
                .build();

        Board savedBoard = boardRepository.save(board);
        return savedBoard.entityToDto();
    }




}
