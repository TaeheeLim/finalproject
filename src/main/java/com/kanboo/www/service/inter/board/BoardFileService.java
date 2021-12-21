package com.kanboo.www.service.inter.board;

import com.kanboo.www.dto.board.BoardFileDTO;
import org.springframework.web.multipart.MultipartFile;

public interface BoardFileService {
    BoardFileDTO insertFiles(BoardFileDTO dto, MultipartFile file, int category, long memIdx);

    String getFolder(long boardIdx, long memIdx);
}
