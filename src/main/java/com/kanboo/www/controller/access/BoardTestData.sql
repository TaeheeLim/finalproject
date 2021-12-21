INSERT INTO ROLE(ROLE_IDX, ROLE_NM) VALUES(NULL, 'ADMIN');
INSERT INTO ROLE(ROLE_IDX, ROLE_NM) VALUES(NULL, 'USER');

<!-- 마스터 코드 -->
INSERT INTO MASTER_CODE(MASTER_CODE_IDX ,MASTER_CODE_EN ,MASTER_CODE_KO )
VALUES('B', 'board', '게시판' );
<!-- ---------------------- -->

<!-- 코드 디테일-->
INSERT INTO CODE_DETAIL(CODE_DETAIL_IDX ,CODE_DETAIL_EN ,CODE_DETAIL_KO ,MASTER_CODE_IDX )
VALUES(NULL, 'free', '자유게시판', 'B');

INSERT INTO CODE_DETAIL(CODE_DETAIL_IDX ,CODE_DETAIL_EN ,CODE_DETAIL_KO ,MASTER_CODE_IDX )
VALUES(NULL, 'qna', '문의게시판', 'B');

INSERT INTO CODE_DETAIL(CODE_DETAIL_IDX ,CODE_DETAIL_EN ,CODE_DETAIL_KO ,MASTER_CODE_IDX )
VALUES(NULL, 'project', '프로젝트게시판', 'B');
<!-- ----------------- -->

<!-- MEMBER INSERT 에서 ROLE_IDX 칼럼은 위의 INSERT ROLE의 IDX 가져오기-->
INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01097176807', 'sjsj1123', 'none', '임태희', 'say123', '#1921', '1111', 2);

INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01047121234', 'tate6807', 'none', '롤토체스', 'say123', '#2812', '2222', 2);

INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01056121821', 'ppox2000', 'none', '김세헌', 'say123', '#5842', '3333', 2);

INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01099992121', 'blue9944', 'none', '나세권', 'say123', '#2812', '4444', 2);

INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01043199212', 'fbi1606', 'none', '김효민', 'say123', '#4212', '5555', 2);

INSERT INTO MEMBER(MEM_IDX ,MEM_CEL_NUM ,MEM_ID ,MEM_IMG ,MEM_NICK ,MEM_PASS ,MEM_TAG ,MEM_TOKEN ,ROLE_IDX )
VALUES(null, '01015909299', 'mosa', 'none', '최성진', 'say123', '#0821', '6666', 2);
<!-- ----------------------------------------------------------------------------------- -->

<!-- 자유게시판, 문의 게시판-->
INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 1', '2021-12-01', 'N', 'N', '1', 1, 2, 12);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 2', '2021-12-02', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 3', '2021-12-03', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 4', '2021-12-04', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 5', '2021-12-05', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 6', '2021-12-06', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 7', '2021-12-07', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 8', '2021-12-08', 'N', 'N', '1', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 9', '2021-12-09', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 10', '2021-12-10', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 11', '2021-12-11', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 12', '2021-12-12', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 13', '2021-12-13', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 14', '2021-12-14', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 15', '2021-12-15', 'N', 'N', '1', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '자유게시판 내용 16', '2021-12-16', 'N', 'N', '1', 2, 0, 0);

<!-- 문의 게시판 -->
INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 1', '2021-12-1', 'N', 'N', '2', 1, 2, 7);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 2', '2021-12-2', 'N', 'N', '2', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 3', '2021-12-3', 'N', 'N', '2', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 4', '2021-12-4', 'N', 'N', '2', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 5', '2021-12-5', 'N', 'N', '2', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 6', '2021-12-6', 'N', 'N', '2', 1, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 7', '2021-12-7', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 8', '2021-12-8', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 9', '2021-12-9', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 10', '2021-12-10', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 11', '2021-12-11', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 12', '2021-12-12', 'N', 'N', '2', 2, 0, 0);

INSERT INTO BOARD(BOARD_IDX ,BOARD_CN ,BOARD_DATE ,DEL_AT ,FILE_AT ,CODE_DETAIL_IDX ,MEM_IDX ,TOTAL_LIKES ,TOTAL_COMMENTS)
VALUES(null, '문의게시판 내용 13', '2021-12-13', 'N', 'N', '2', 2, 0, 0);
<!-- --------------------------- -->

<!-- 자유게시판 게시글 댓글 -->
INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '코딩잘하는법 알려주세요', '2021-12-20', 'N', 1, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);


INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);


INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);


INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);


INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);


INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '그런거는 없습니다 ㅋㅋ', '2021-12-20', 'N', 1, 1);

<!--문의 게시판 댓글 -->

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '롤토체스 하실분 ???', '2021-12-25', 'N', 17, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '롤토체스 하실분 ???', '2021-12-25', 'N', 17, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '롤토체스 하실분 ???', '2021-12-25', 'N', 17, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '롤토체스 하실분 ???', '2021-12-25', 'N', 17, 2);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '저 할래요 ㅎㅎㅎ ???', '2021-12-25', 'N', 17, 3);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '저 할래요 ㅎㅎㅎ ???', '2021-12-25', 'N', 17, 3);

INSERT INTO ANSWER(ANSWER_IDX ,ANSWER_CN ,ANSWER_DATE ,ANSWER_DEL_AT ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '저 할래요 ㅎㅎㅎ ???', '2021-12-25', 'N', 17, 3);

<-- 자유게시판 댓글 신고 -->
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '욕설', 1, 1);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '욕설', 1, 3);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '욕설', 1, 4);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '욕설', 1, 5);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '욕설', 1, 6);

<!-- 문의게시판 댓글 신고 -->
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '불법광고', 13, 1);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '불법광고', 13, 3);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '불법광고', 13, 4);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '불법광고', 13, 5);
INSERT INTO ANSWER_REPORT(ANSWER_REPORT_IDX ,ANSWER_REPORT_RESN ,ANSWER_IDX ,MEM_IDX )
VALUES(NULL, '불법광고', 13, 6);




<!--게시물 신고(자유,문의 하나씩) -->
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 2, 2);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 2, 3);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 2, 4);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 2, 5);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 2, 6);

INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 18, 2);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 18, 3);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 18, 4);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 18, 5);
INSERT INTO BOARD_REPORT(BOARD_REPORT_IDX ,BOARD_REPORT_RESN ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, '불건전', 18, 6);
<!-- ----------------------- -->


<!-- 좋아요 테이블(자유,문의 하나씩)-->
INSERT INTO LIKES(LIKE_IDX ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, 1, 1)

INSERT INTO LIKES(LIKE_IDX ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, 1, 2)

INSERT INTO LIKES(LIKE_IDX ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, 17, 1)



INSERT INTO LIKES(LIKE_IDX ,BOARD_IDX ,MEM_IDX )
VALUES(NULL, 17, 2)
<!-- ------------------ -->
