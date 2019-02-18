CREATE TABLE newtech_board(
	article_num INT AUTO_INCREMENT,
    subject VARCHAR(100) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    content VARCHAR(2000),
    hit INT DEFAULT 0,
    write_date DATETIME NOT NULL,
    PRIMARY KEY (article_num)
);

/*더미데이터*/
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'개발 입문시 오류 대처 방법', '이미순', '처음 개발을 할 때 초보자의 오류 대처 방법', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'이클립스(갈릴레오이상버젼)에서 플렉스 플러그인 설치시 오류', '김현정', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'자바GUI에서 이미지 경로설정시 오류해결', '박은지', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'스트럿츠2와플렉스에서 파일업로드시 오류대처', '임종신', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'맥북과 13인치 맥북 프로 최신 버전에서는 더 이상 부트캠프로 윈도7을 쓸 수 없게 됐다.', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'좋은 프로그래머가 되는 24가지 방법', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Windows 10 질문과 답변', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Swing(1)', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Swing(2)_컴포넌트', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Swing(3)_컴포넌트', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Layout(1)_BorderLayout', '관리자', '냉면', NOW());
INSERT INTO newtech_board(
subject, writer, content, write_date)
VALUES(
'Layout(2)_FlowLayout', '관리자', '냉면', NOW());