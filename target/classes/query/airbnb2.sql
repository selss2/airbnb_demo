 ALTER TABLE houses CHANGE convenience convenience varchar(30);
 
 
 --INCHUL
CREATE PROCEDURE insert_member(
    IN sp_email varchar(30) ,
    IN sp_pw VARCHAR(20),
    IN sp_name VARCHAR(10),
    IN sp_phone VARCHAR(15),
    IN sp_profileImg VARCHAR(20),
    IN sp_reg_date date
  )
BEGIN
   INSERT INTO member(
   email,
   pw,
   name,
   phone,
   profileImg,
   reg_date   
  )
   VALUES(
   sp_email,
   sp_pw,
   sp_name,
   sp_phone,
   sp_profileImg,
   sp_reg_date
  );
END ;
call insert_member("hong31@gamil.com","1","홍길동","010-123-1234","default","2016-10-06");
call insert_member("choi1@gmail.com","1","최강1","010-4012-1234","default","2016-01-01'");
call insert_member("choi2@gmail.com","1","최강2","010-4012-1235","default","2016-01-11'");
call insert_member("choi3@gmail.com","1","최강3","010-4012-1236","default","2016-01-21'");
call insert_member("choi4@gmail.com","1","최강4","010-4012-1237","default","2016-02-10'");
call insert_member("choi5@gmail.com","1","최강5","010-4012-1238","default","2016-02-20'");
call insert_member("choi6@gmail.com","1","최강6","010-4012-1239","default","2016-03-01'");
call insert_member("choi7@gmail.com","1","최강7","010-4012-1240","default","2016-03-11'");
call insert_member("choi8@gmail.com","1","최강8","010-4012-1241","default","2016-03-21'");
call insert_member("choi9@gmail.com","1","최강9","010-4012-1242","default","2016-03-31'");
call insert_member("choi10@gmail.com","1","최강10","010-4012-1243","default","2016-04-15'");
call insert_member("choi11@gmail.com","1","최강11","010-4012-1244","default","2016-04-25'");
call insert_member("choi12@gmail.com","1","최강12","010-4012-1245","default","2016-05-05'");
call insert_member("choi13@gmail.com","1","최강13","010-4012-1246","default","2016-05-15'");
call insert_member("choi14@gmail.com","1","최강14","010-4012-1247","default","2016-05-25'");
call insert_member("choi15@gmail.com","1","최강15","010-4012-1248","default","2016-06-04'");
call insert_member("choi16@gmail.com","1","최강16","010-4012-1249","default","2016-06-14'");
call insert_member("choi17@gmail.com","1","최강17","010-4012-1250","default","2016-06-24'");
call insert_member("choi18@gmail.com","1","최강18","010-4012-1251","default","2016-07-04'");
call insert_member("choi19@gmail.com","1","최강19","010-4012-1252","default","2016-07-14'");
call insert_member("choi20@gmail.com","1","최강20","010-4012-1253","default","2016-07-24'");
call insert_member("choi21@gmail.com","1","최강21","010-4012-1254","default","2016-08-03'");
call insert_member("choi22@gmail.com","1","최강22","010-4012-1255","default","2016-08-13'");
call insert_member("choi23@gmail.com","1","최강23","010-4012-1256","default","2016-08-23'");
call insert_member("choi24@gmail.com","1","최강24","010-4012-1257","default","2016-09-02'");
call insert_member("choi25@gmail.com","1","최강25","010-4012-1258","default","2016-09-12'");


--heesun--
SELECT * FROM Member;
INSERT INTO Member (email, pw, name, phone, profileImg, reg_date) VALUES ("hong32@gamil.com","1","홍길동","010-123-1234","default","2016-10-06"); 
DELETE FROM Member WHERE profileImg IS NULL;
UPDATE Member SET reg_date = "2016-10-06" WHERE reg_date IS NULL;
--seungjun
CREATE OR REPLACE VIEW Guide_view
AS
SELECT
     m.Place AS Place,
     m.Major_Category AS Major_Category,
     mi.Minor_Category AS Minor_Category,
     mi.Host_Comment AS Host_Comment
FROM Guide_Major m, Guide_Minor mi
WHERE m.Guide_seq = mi.Guide_seq;
SELECT * FROM Guide_View;
INSERT INTO Guide_Major(Place,Major_Category,email) VALUES ('서울시 은평구 이마트','쇼핑','choi13@gmail.com');
INSERT INTO Guide_Major(Place,Major_Category,email) VALUES ('서울시 종로구 광화문','예술과 문화','choi14@gmail.com');
INSERT INTO Guide_Major(Place,Major_Category,email) VALUES ('서울시 종로구 청계천','예술과 문화','choi14@gmail.com');
INSERT INTO Guide_Major(Place,Major_Category,email) VALUES ('서울시 종로구 광장시장','음식점','choi15@gmail.com');
INSERT INTO Guide_Major(Place,Major_Category,email) VALUES ('서울시 종로구 낙원상','쇼핑','choi15@gmail.com');
INSERT INTO Guide_Minor (Minor_Category,Host_Comment,Guide_seq) VALUES ('쇼핑몰','헬로 이마트','1');
INSERT INTO Guide_Minor (Minor_Category,Host_Comment,Guide_seq) VALUES ('관광명소','광화문 광장. 이순신 동상','2');
INSERT INTO Guide_Minor (Minor_Category,Host_Comment,Guide_seq) VALUES ('관광명소','내국인과 관광객에게 모두 사랑을 받고 있는 청계천은 도심에 자연을 접목한 성공적인 케이스입니다.','3');
INSERT INTO Guide_Minor (Minor_Category,Host_Comment,Guide_seq) VALUES ('길거리 시장','광장시장은 한국에서 가장 오래된 시장입니다. 광장시장에서는 다른 시장들에 비해 전통물품들을 많이 볼 수 있습니다.','4');
INSERT INTO Guide_Minor (Minor_Category,Host_Comment,Guide_seq) VALUES ('기타','종로는 아주 오래전부터 음악인들의 발길이 잦았던 곳입니다. 바로 악기, 악기부품, 정말 구하기 힘든 악보까지 음악과 관련된 것이라면 없는 게 없는 낙원상가','5');

--예약화면
SELECT * FROM reservation;

INSERT INTO reservation(email,house_seq,checkin_date,checkout_date,guest_cnt) VALUES('choi10@gmail.com',2,'2016-10-05','2016-10-09',2);
DELETE FROM reservation WHERE resv_seq = 1; 

SELECT * FROM member;
SELECT * FROM payment;
SELECT * FROM Guide_Major;
SELECT * FROM Guide_Minor;
SELECT * FROM block;
SELECT * FROM houses;
SELECT * FROM reservation;
SELECT * FROM building;
SELECT * FROM address;

--결제화면
SELECT * FROM payment;

INSERT INTO payment(card_num,price,payment_date,resv_seq) VALUES('1234-5678-4818-4160',195000,'2016-10-05',2);
DELETE FROM payment WHERE payment_seq = 1; 

--근홍
----------------------------- CRUD
--C
-- BUILDING TYPE 정의
INSERT INTO BUILDING (TYPE) VALUES('아파트'); 
INSERT INTO BUILDING (TYPE) VALUES('단독주택'); 
INSERT INTO BUILDING (TYPE) VALUES('게스트하우스'); 
INSERT INTO BUILDING (TYPE) VALUES('층 전체'); 
INSERT INTO BUILDING (TYPE) VALUES('B&B'); 
INSERT INTO BUILDING (TYPE) VALUES('아파트(콘도미니엄)'); 
INSERT INTO BUILDING (TYPE) VALUES('통나무집'); 
INSERT INTO BUILDING (TYPE) VALUES('별장/타운하우스'); 
INSERT INTO BUILDING (TYPE) VALUES('로프트'); 
INSERT INTO BUILDING (TYPE) VALUES('타운하우스'); 
INSERT INTO BUILDING (TYPE) VALUES('방갈로'); 
INSERT INTO BUILDING (TYPE) VALUES('성'); 
INSERT INTO BUILDING (TYPE) VALUES('기숙사'); 
INSERT INTO BUILDING (TYPE) VALUES('트리하우스'); 
INSERT INTO BUILDING (TYPE) VALUES('배'); 
INSERT INTO BUILDING (TYPE) VALUES('비행기'); 
INSERT INTO BUILDING (TYPE) VALUES('캠핑카'); 
INSERT INTO BUILDING (TYPE) VALUES('이글루'); 
INSERT INTO BUILDING (TYPE) VALUES('등대'); 
INSERT INTO BUILDING (TYPE) VALUES('유르트(Yurt)'); 
INSERT INTO BUILDING (TYPE) VALUES('티피(Tipi)'); 
INSERT INTO BUILDING (TYPE) VALUES('동굴'); 
INSERT INTO BUILDING (TYPE) VALUES('섬'); 
INSERT INTO BUILDING (TYPE) VALUES('샬레(Chalet)'); 
INSERT INTO BUILDING (TYPE) VALUES('흙집'); 
INSERT INTO BUILDING (TYPE) VALUES('오두막'); 
INSERT INTO BUILDING (TYPE) VALUES('기차'); 
INSERT INTO BUILDING (TYPE) VALUES('텐트'); 
INSERT INTO BUILDING (TYPE) VALUES('기타'); 
-- MEMBER 가입 
INSERT INTO MEMBER (EMAIL,PW,NAME,PHONE,PROFILEIMG,REG_DATE) VALUES('hongs890@gmail.com','1','배근홍','010-7143-0222','default.jpg','2016-10-06');
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',3,'hongs890@gmail.com','2016-10-06',2); 
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','강남구','언주로406','35동 4층 407호','135-919', 2);
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','강남구','언주로406','35동 4층 407호','135-919', 2);
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','강남구','언주로406','35동 4층 407호','135-919', 2);
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','강남구','언주로406','35동 4층 407호','135-919', 2);
DELETE FROM HOUSES WHERE HOUSE_SEQ = 1;
DELETE FROM ADDRESS WHERE ADDRESS_SEQ = 1;
DELETE FROM ADDRESS WHERE ADDRESS_SEQ = 2;
DELETE FROM ADDRESS WHERE ADDRESS_SEQ = 3;
DELETE FROM ADDRESS WHERE ADDRESS_SEQ = 4;
------------------------ 1번째 호스팅
-- HOSTING 첫 번째 화면
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',3,'hongs890@gmail.com','2016-10-06',2); 
-- HOSTING 두 번째 화면
UPDATE HOUSES SET BED_CNT = 2, BATHROOM_CNT = 2 WHERE HOUSE_SEQ = 2;
-- HOSTING 세 번째 화면
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','강남구','언주로406','35동 4층 407호','135-919', 2);
-- HOSTING 네 번째 화면
UPDATE ADDRESS SET LATITUDE = '124.12351', LONGITUDE = '125.52541' WHERE ADDRESS_SEQ = 5;
-- HOSTING 다섯 번째 화면 (편의시설 총 13종)
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-F-T-F-F-T-F' WHERE HOUSE_SEQ = 2;
-- HOSTING 여섯 번째 화면 (안전시설 총 6종) 
UPDATE HOUSES SET SAFETY_FAC = 'T-T-T-T-F-F' WHERE HOUSE_SEQ = 2;
-- HOSTING 일곱 번째 화면 (공간제공 총 8종) 
UPDATE HOUSES SET SPACE = 'T-T-T-T-F-F-T-T' WHERE HOUSE_SEQ = 2;
-- HOSTING 여덟 번째 화면
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 2;
-- HOSTING 아홉 번째 화면
UPDATE HOUSES SET EXPLAINATION = '좋은 집' WHERE HOUSE_SEQ = 2;
-- HOSTING 열 번째 화면
UPDATE HOUSES SET TITLE = '오세요' WHERE HOUSE_SEQ = 2;
-- HOSTING 열한 번째 화면 (이용규칙 총 5종)
UPDATE HOUSES SET RULES = 'T-F-T-F-T', OTHER_RULE='고양이 금지' WHERE HOUSE_SEQ = 2;
-- HOSTING 열두 번째 화면
UPDATE HOUSES SET CHECKIN_TERM = 2, CHECKIN_TIME = '15:00' WHERE HOUSE_SEQ = 2;
-- HOSTING 열세 번째 화면
UPDATE HOUSES SET PERIOD ='2016-11-01' WHERE HOUSE_SEQ = 2;
-- HOSTING 열네 번째 화면
UPDATE HOUSES SET MIN_NIGHTS = 2, MAX_NIGHTS =3 WHERE HOUSE_SEQ = 2;
-- HOSTING 열다섯 번째 화면
UPDATE HOUSES SET PRICE = 50000 WHERE HOUSE_SEQ = 2;
------------------------ 2번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',3,'choi1@gmail.com','2016-10-06',2); 
UPDATE HOUSES SET BED_CNT = 3, BATHROOM_CNT = 4 WHERE HOUSE_SEQ = 3;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('한국','서울특별시','중랑구','봉화산로','2동 1호','123-456', 3);
UPDATE ADDRESS SET LATITUDE = '111.12351', LONGITUDE = '152.21541' WHERE ADDRESS_SEQ = 6;
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-F-T-F-F-T-F' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET SAFETY_FAC = 'T-T-T-T-T-T' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET SPACE = 'T-T-T-T-F-F-T-F' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET EXPLAINATION = '멋진 집' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET TITLE = '놀러오세요' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET RULES = 'T-F-T-F-F', OTHER_RULE='강아지 금지' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET CHECKIN_TERM = 1, CHECKIN_TIME = '14:00' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET PERIOD ='2016-11-02' WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET MIN_NIGHTS = 3, MAX_NIGHTS = 4 WHERE HOUSE_SEQ = 3;
UPDATE HOUSES SET PRICE = 40000 WHERE HOUSE_SEQ = 3;
------------------------ 3번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('다인실',2,'choi2@gmail.com','2016-10-06',5); 
UPDATE HOUSES SET BED_CNT = 1, BATHROOM_CNT = 5 WHERE HOUSE_SEQ = 4;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('미국','워싱턴','조지부시','런던','2동 1호','555-111', 4);
UPDATE ADDRESS SET LATITUDE = '222.12351', LONGITUDE = '333.21541' WHERE ADDRESS_SEQ = 7;
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-F-T-F-T-F-T' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET SAFETY_FAC = 'F-F-T-T-T-T' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET SPACE = 'T-T-T-T-F-F-F-T' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET EXPLAINATION = '우리 집' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET TITLE = '이리오세요' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET RULES = 'T-F-T-F-F', OTHER_RULE='음주 금지' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET CHECKIN_TERM = 4, CHECKIN_TIME = '11:00' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET PERIOD ='2016-11-03' WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET MIN_NIGHTS = 1, MAX_NIGHTS = 4 WHERE HOUSE_SEQ = 4;
UPDATE HOUSES SET PRICE = 30000 WHERE HOUSE_SEQ = 4;
------------------------ 4번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',3,'choi3@gmail.com','2016-10-07',4); 
UPDATE HOUSES SET BED_CNT = 2, BATHROOM_CNT = 4 WHERE HOUSE_SEQ = 5;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('런던','브리티쉬','스트릿','빅밴','5동 5호','1234-5678', 5);
UPDATE ADDRESS SET LATITUDE = '125.12351', LONGITUDE = '523.21541' WHERE ADDRESS_SEQ = 8;
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-T-F-T-F-T-T' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET SAFETY_FAC = 'T-F-F-F-T-T' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET SPACE = 'T-T-T-F-F-T-T-T' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET EXPLAINATION = 'Guest House' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET TITLE = 'Good' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET RULES = 'T-F-T-F-F', OTHER_RULE='Make Friend' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET CHECKIN_TERM = 2, CHECKIN_TIME = '10:00' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET PERIOD ='2016-11-04' WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET MIN_NIGHTS = 2, MAX_NIGHTS = 4 WHERE HOUSE_SEQ = 5;
UPDATE HOUSES SET PRICE = 20000 WHERE HOUSE_SEQ = 5;
------------------------ 5번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('다인실',1,'choi4@gmail.com','2016-09-07',4); 
UPDATE HOUSES SET BED_CNT = 1, BATHROOM_CNT = 3 WHERE HOUSE_SEQ = 6;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('호주','마오쩌둥','클린턴','아일랜드','2동 1호','555-222', 6);
UPDATE ADDRESS SET LATITUDE = '80.12351', LONGITUDE = '7.21541' WHERE ADDRESS_SEQ = 9;
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-T-F-T-F-T-F' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET SAFETY_FAC = 'T-F-F-F-F-T' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET SPACE = 'T-T-T-F-F-T-T-F' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET EXPLAINATION = 'Aus' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET TITLE = 'Beautiful' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET RULES = 'T-F-T-F-T', OTHER_RULE='Dont smoke' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET CHECKIN_TERM = 2, CHECKIN_TIME = '16:00' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET PERIOD ='2016-11-06' WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET MIN_NIGHTS = 3, MAX_NIGHTS = 4 WHERE HOUSE_SEQ = 6;
UPDATE HOUSES SET PRICE = 22000 WHERE HOUSE_SEQ = 6;
------------------------ 6번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',6,'choi5@gmail.com','2016-10-07',10); 
UPDATE HOUSES SET BED_CNT = 2, BATHROOM_CNT = 1 WHERE HOUSE_SEQ = 7;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('뉴질랜드','호주','미국','영국','3동 1호','444-222', 7);
UPDATE ADDRESS SET LATITUDE = '2.12351', LONGITUDE = '123.21541' WHERE ADDRESS_SEQ = 10;
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-T-F-T-F-T-T' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET SAFETY_FAC = 'T-F-F-F-F-F' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET SPACE = 'T-T-T-F-F-T-T-F' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET EXPLAINATION = 'New' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET TITLE = 'Power' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET RULES = 'T-F-T-F-T', OTHER_RULE='Hello' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET CHECKIN_TERM = 3, CHECKIN_TIME = '17:00' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET PERIOD ='2016-11-07' WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET MIN_NIGHTS = 4, MAX_NIGHTS = 5 WHERE HOUSE_SEQ = 7;
UPDATE HOUSES SET PRICE = 25000 WHERE HOUSE_SEQ = 7;
------------------------ 7번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('다인실',2,'choi6@gmail.com','2016-10-08',11); 
UPDATE HOUSES SET BED_CNT = 3, BATHROOM_CNT = 4 WHERE HOUSE_SEQ = 8;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('아프리카','아마존','브라질','메시','2동 1호','333-222', 8);
UPDATE ADDRESS SET LATITUDE = '20.12351', LONGITUDE = '44.21541' WHERE ADDRESS_SEQ = 11;
UPDATE HOUSES SET CONVENIENCE = 'T-T-F-T-F-F-T-T-F-T-F-T-T' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET SAFETY_FAC = 'T-F-F-F-T-F' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET SPACE = 'T-T-T-F-F-T-F-F' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET EXPLAINATION = 'Afreeca' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET TITLE = 'Black' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET RULES = 'T-F-T-F-F', OTHER_RULE='Hi' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET CHECKIN_TERM = 2, CHECKIN_TIME = '15:00' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET PERIOD ='2016-11-08' WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET MIN_NIGHTS = 5, MAX_NIGHTS = 6 WHERE HOUSE_SEQ = 8;
UPDATE HOUSES SET PRICE = 28000 WHERE HOUSE_SEQ = 8;
------------------------ 8번째 호스팅
INSERT INTO HOUSES (ROOM_TYPE, GUEST_CNT, EMAIL, REG_DATE, BUILDING_SEQ) VALUES('개인실',3,'choi7@gmail.com','2016-10-10',10); 
UPDATE HOUSES SET BED_CNT = 2, BATHROOM_CNT = 6 WHERE HOUSE_SEQ = 9;
INSERT INTO ADDRESS (COUNTRY, STATE, CITY, STREET, OPTIONAL, ZIP_CODE, HOUSE_SEQ) VALUES ('프랑스','파리','마드리드','바르셀로나','5동 5호','332-222', 9);
UPDATE ADDRESS SET LATITUDE = '50.12351', LONGITUDE = '7.21541' WHERE ADDRESS_SEQ = 12;
UPDATE HOUSES SET CONVENIENCE = 'T-T-F-T-F-F-T-T-F-T-F-T-F' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET SAFETY_FAC = 'T-F-F-F-T-T' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET SPACE = 'T-T-T-F-F-T-F-T' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET PICTURE = 'default.jpg' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET EXPLAINATION = 'Franch' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET TITLE = 'Come on' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET RULES = 'T-F-T-F-F', OTHER_RULE='푸아그라' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET CHECKIN_TERM = 2, CHECKIN_TIME = '12:00' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET PERIOD ='2016-11-09' WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET MIN_NIGHTS = 2, MAX_NIGHTS = 3 WHERE HOUSE_SEQ = 9;
UPDATE HOUSES SET PRICE = 100000 WHERE HOUSE_SEQ = 9;

--mysql -u socar -p -h 203.236.209.92
--U
-- HOST 관리 : 달력
INSERT INTO BLOCK (BLOCK_DATE, HOUSE_SEQ) VALUES ('2016-10-07',2);
-- HOST 관리 : 요금 설정
UPDATE HOUSES SET PRICE = 40000 WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 예약
UPDATE HOUSES SET RULES = 'T-F-T-F-T', OTHER_RULE='고양이 금지' WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 체크인
UPDATE HOUSES SET CHECKIN_TIME = '14:00' WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 기본 설정
UPDATE HOUSES SET ROOM_TYPE = '다인실', BUILDING_SEQ = 3, GUEST_CNT = 3, BED_CNT = 2, BATHROOM_CNT = 2 WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 설명
UPDATE HOUSES SET EXPLAINATION ='좋은 집2', TITLE = '오세요2' WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 위치
UPDATE ADDRESS SET LATITUDE = '124.12351', LONGITUDE = '125.52541' WHERE ADDRESS_SEQ = 5;
-- HOST 관리 : 편의 시설
UPDATE HOUSES SET CONVENIENCE = 'T-F-T-F-F-F-T-F-T-F-F-T-T' WHERE HOUSE_SEQ = 2;
-- HOST 관리 : 사진
UPDATE HOUSES SET PICTURE = 'default2.jpg' WHERE HOUSE_SEQ = 2;