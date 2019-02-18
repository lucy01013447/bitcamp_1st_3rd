CREATE TABLE lectures (
    lec_id INT(50) NOT NULL AUTO_INCREMENT,
    center VARCHAR(20) NOT NULL,
    `type` INT(5) NOT NULL,
    thumbnail_img_path VARCHAR(50) NOT NULL,
    thumbnail_explain VARCHAR(1000) NOT NULL,
    title VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    recruit INT NOT NULL,
    phone_num VARCHAR(20) NOT NULL,
    inner_img_path VARCHAR(50) NOT NULL,
    PRIMARY KEY (lec_id)
);

/*더미데이터*/
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 1, 'UI/UX기반의 자바개발자 양성과정 - 7월', 'dev_java.jpg', 'UI/UX기반의 자바개발자 양성과정 입니다',  
'2018-07-24', '2019-01-24', 30, '02)&nbsp3486-9600', 'sch_java_uiux.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 1, 'R과 Python을 활용한 빅데이터 분석 전문가 양성과정', 'dev_bigdata.jpg', 'R프로그래밍 언어와 파이썬 언어를 이용하여 빅데이터 분석 전문가를 양성하는 과정입니다.',  
'2018-06-26', '2019-01-03', 30, '02)&nbsp3486-9600', 'list_RPython.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 1, '자바기반 웹&앱 개발자 양성과정', 'dev_webapp.jpg', 'Java 기반의 Android 애플리케이션을 개발할 수 있다.<br>아두이노, 라즈베리파이 등 IoT 서비스를 위한 디바이스를 제어할 수 있다.<br>모바일을 통한 IoT 서비스를 구현하고 비지니스를 위한 정보화를 구축할 수 있다.',  
'2018-06-26', '2018-12-18', 30, '02)&nbsp3486-9600', 'sch_java_swe.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 1, '스마트 웹앱 자바 SW엔지니어 양성과정 - 7월', 'dev_java_swengin.jpg', '자바기반 웹&앱 개발자 양성과정 입니다.',  
'2018-07-24', '2019-01-17', 30, '02)&nbsp3486-9600', 'sch_java_sw.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 1, 'R과 Python을 활용한 빅데이터 분석 전문가 양성과정 - 7월', 'dev_bigdata.jpg', 'R프로그래밍 언어와 파이썬 언어를 이용하여 빅데이터 분석 전문가를 양성하는 과정입니다.',  
'2018-07-24', '2019-01-31', 30, '02)&nbsp3486-9600', 'list_RPython.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sch', 2, 'K-Move스쿨 일본취업 IT 해외취업연수과정 - 7월', 'dev_kmove.jpg', 'K-Move스쿨 일본취업 IT 해외취업연수과정입니다.',  
'2018-08-07', '2019-03-16', 30, '02)&nbsp707-1480', 'list_kmove.jpg');



INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sc', 1, '자바기반 웹&앱 개발자 양성과정', 'dev_webapp.jpg', 'Java 기반의 Android 애플리케이션을 개발할 수 있다.<br>아두이노, 라즈베리파이 등 IoT 서비스를 위한 디바이스를 제어할 수 있다.<br>모바일을 통한 IoT 서비스를 구현하고 비지니스를 위한 정보화를 구축할 수 있다.',  
'2018-06-26', '2018-12-18', 30, '02)&nbsp707-1480', 'sch_java_swe.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sc', 1, 'UI/UX기반의 자바개발자 양성과정 - 7월', 'dev_java_android.jpg', '- 단순 UI/UX 구현 뿐만아니라 자바기반의 웹&모바일앱개발 융합을 진행하고 취업방향의 다양성과 효율성을 높힌다.<br>- 자바기반 웹&앱 개발자 양성과정입니다.',  
'2018-07-24', '2019-01-24', 30, '02)&nbsp707-1480', 'sch_java_uiux.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'sc', 2, 'K-Move스쿨 일본취업 IT 해외취업연수과정 - 7월', 'dev_kmove.jpg', 'K-Move스쿨 일본취업 IT 해외취업연수과정입니다.',  
'2018-08-07', '2019-03-16', 30, '02)&nbsp707-1480', 'list_kmove.jpg');


INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'gn', 1, '응용SW엔지니어링 양성과정 - 6월', 'dev_swengin.jpg', '본 교육과정은 노동부지원의 100% 무료교육과정입니다.<br>응용SW엔지니어링양성과정은 자바를 중점으로 웹및모바일 등에<br>현업에 필요하고 중요한 핵심기술을 익히고 교육과정 수료 후<br>비트캠프의 IT 협약기업으로 취업연계 합니다.',  
'2018-06-26', '2018-12-26', 30, '02)&nbsp3453-5404', 't_appsw.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'gn', 1, '	UI/UX엔지니어링 및 응용SW엔지니어링 양성과정 - 7월', 'dev_webapp.jpg', '본 과정은 UIUX를 기반으로 한 스마트 웹 앱콘텐츠개발자 과정 입니다.',  
'2018-07-17', '2019-01-17', 30, '02)&nbsp3453-5404', 't_uiuxsw.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'gn', 2, 'K-Move스쿨 일본취업 IT 해외취업연수과정-7월', 'dev_kmove.jpg', 'K-Move스쿨 일본취업 IT 해외취업연수과정입니다.',  
'2018-08-07', '2019-03-16', 30, '02)&nbsp707-1480', 'list_kmove.jpg');


INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'cr', 1, '웹기반 빅데이터 구축 및 분석 실무개발자 과정 - 7월', 'dev_bigdata.jpg', '본 교육과정은 노동부지원의 100% 무료교육과정입니다.<br>자바 및 빅데이터를 중점으로 SW개발영역 등에 현업에<br>필요하고 중요한 핵심기술을 익히고 교육과정 수료 후<br>비트캠프의 IT 협약기업으로 취업연계 합니다.',  
'2018-07-16', '2019-01-16', 30, '02)&nbsp722-1481', 'list_bigdatesw2.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'cr', 1, '응용SW엔지니어링(전자정부표준프레임워크) 양성과정 - 7월', 'dev_gov.jpg', '본 교육과정은 노동부지원의 100% 무료교육과정입니다.<br>자바 및 빅데이터를 중점으로 SW개발영역 등에 현업에<br>필요하고 중요한 핵심기술을 익히고 교육과정 수료 후<br>비트캠프의 IT 협약기업으로 취업연계 합니다.',  
'2018-07-16', '2019-01-16', 30, '02)&nbsp722-1481', 'ncssw_2.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'cr', 1, '웹기반 빅데이터 구축 및 분석 실무개발자 과정 - 8월', 'dev_bigdata.jpg', '본 교육과정은 노동부지원의 100% 무료교육과정입니다.<br>자바 및 빅데이터를 중점으로 SW개발영역 등에 현업에<br>필요하고 중요한 핵심기술을 익히고 교육과정 수료 후<br>비트캠프의 IT 협약기업으로 취업연계 합니다.',  
'2018-08-22', '2019-02-26', 30, '02)&nbsp722-1481', 'list_bigdatesw2.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'cr', 1, '응용SW엔지니어링(전자정부표준프레임워크) 양성과정 - 8월', 'dev_gov.jpg', '본 교육과정은 노동부지원의 100% 무료교육과정입니다.<br>자바 및 빅데이터를 중점으로 SW개발영역 등에 현업에<br>필요하고 중요한 핵심기술을 익히고 교육과정 수료 후<br>비트캠프의 IT 협약기업으로 취업연계 합니다.',  
'2018-08-22', '2019-02-26', 30, '02)&nbsp722-1481', 'ncssw_2.jpg');
INSERT INTO lectures (
center, type, title, thumbnail_img_path, thumbnail_explain, 
start_date, end_date, recruit, phone_num, inner_img_path)
VALUES(
'cr', 2, 'K-Move스쿨 일본취업 IT 해외취업연수과정 - 7월', 'dev_kmove.jpg', 'K-Move스쿨 일본취업 IT 해외취업연수과정입니다.',  
'2018-08-07', '2019-03-16', 30, '02)&nbsp707-1480', 'list_kmove.jpg');


