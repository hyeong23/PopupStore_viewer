SET DEFINE OFF;

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서비스 개선 안내', '고객 여러분께 더 나은 서비스를 제공하기 위해 서비스 업데이트를 진행합니다. 몇 가지 기능 개선과 버그 수정이 포함되어 있습니다. ');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서버 점검 안내', '서버 점검으로 인해 일시적으로 서비스가 중단될 수 있습니다. 점검 시간: 2023년 7월 30일 오전 2시 ~ 오전 5시');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[이벤트] 리뷰 이벤트', '리뷰를 작성해주신 고객님들께 추첨을 통한 특별한 경품을 드립니다. 리뷰를 남겨주세요!');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 임시 휴무 안내', '본사 휴무로 인해 서비스가 일시적으로 중단될 예정입니다. 양해 부탁드립니다.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 보안 강화 조치 안내', '고객 정보 보호를 위해 보안 강화 조치를 시행하고 있습니다. 서비스 이용에는 영향이 없으나 보다 안전한 서비스를 위해 확인 부탁드립니다.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[이벤트] 이용 후기 이벤트', '서비스 이용 후기를 작성해주신 분들께 감사의 마음을 담아 특별한 혜택을 드립니다.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[Q&A] 로그인 문제', '로그인에 문제가 있으신가요? 자주 묻는 질문을 확인해주세요.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[Q&A] 서비스 이용 방법', '서비스 이용 방법에 궁금하신 점이 있으신가요? 자주 묻는 질문을 확인해주세요.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서비스 안정성 개선', '고객님들의 편리한 이용을 위해 서비스 안정성을 개선했습니다. 더욱 쾌적한 서비스를 즐겨보세요.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 사이트 점검 안내', '사이트 점검으로 인해 일시적으로 서비스 이용이 제한될 수 있습니다. 점검 시간: 2023년 7월 28일 오전 3시 ~ 오전 6시');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서비스 업그레이드 안내', '더욱 향상된 서비스를 위해 서버 업그레이드를 실시합니다. 일시적으로 서비스가 중단될 수 있으니 양해 부탁드립니다.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서비스 이용규칙 변경', '서비스 이용규칙이 변경되었습니다. 변경된 내용을 확인해주세요.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 서비스 일시 중단 안내', '서비스 일시 중단으로 인해 일시적으로 서비스가 이용 불가능합니다. 일정 확인해주세요.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[공지] 개인정보 처리 방침 변경', '개인정보 처리 방침이 변경되었습니다. 변경된 내용을 확인해주시기 바랍니다.');

INSERT INTO announcement(announcement_num, member_num, announcement_title, announcement_body)
VALUES(announcement_sequence.nextval, 1, '[이벤트] 추첨 경품 이벤트', '구매하신 제품으로 추첨을 통한 경품을 드립니다. 많은 참여 바랍니다.');

commit;




REM INSERTING into SCOTT.MEMBER
SET DEFINE OFF;
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) 
values (38,'Netmarble','Netmarble',null,'Netmarblemgr@Netmarble.kr',2,'넷마블',9524583864,1081129711,to_timestamp('23/07/22 02:28:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/22 02:28:52.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (26,'Asahi','Asahi',null,'Asahimgr@Asahi.kr',2,'Asahi',7524583864,1081539011,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (27,'Kelly','Kelly',null,'Kellymgr@Kelly.kr',2,'Kelly',8192743561,1072658430,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (28,'Kodak','Kodak',null,'Kodakmgr@Kodak.kr',2,'Kodak',6238745928,1039285719,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (29,'amondz','amondz',null,'amondzmgr@amondz.kr',2,'amondz',9834572935,1063572189,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (30,'TREASURE','TREASURE',null,'treasuremgr@TREASURE.kr',2,'TREASURE',5629385729,1094627385,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (31,'Wooahans','Wooahans',null,'Wooahansmgr@Wooahans.kr',2,'우아한형제들',9473563827,1052846372,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (32,'rolarola','rolarola',null,'rolarolamgr@rolarola.kr',2,'rolarola',3958437827,1093274625,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (33,'OILILY','OILILY',null,'OILILYmgr@OILILY.kr',2,'OILILY',7582934562,1038475629,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (34,'OVERPITCH','OVERPITCH',null,'overpitchmgr@OVERPITCH.kr',2,'OVER THE PITCH',6328475920,1083946572,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (35,'MIND_BRIDGE','MIND_BRIDGE',null,'mindbridgemgr@MIND_BRIDGE.kr',2,'MIND BRIDGE',9582738495,1074839265,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (36,'OPENYY','OPENYY',null,'openyymgr@OPENYY.kr',2,'OPEN YY',7384729572,1083745629,to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/21 11:51:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.MEMBER (MEMBER_NUM,MEMBER_ID,MEMBER_PW,MEMBER_NICKNAME,MEMBER_EMAIL,MEMBER_TYPE,MEMBER_COMPANY_NAME,MEMBER_COMPANY_NUM,MEMBER_PHONE_NUM,MEMBER_CREATE,MEMBER_UPDATE) values (37,'BARREL','BARREL',null,'BARRELmgr@BARREL.kr',2,'BARREL',7521183864,1081539711,to_timestamp('23/07/22 02:28:51.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('23/07/22 02:28:51.000000000','RR/MM/DD HH24:MI:SSXFF'));


commit;

--------------------------------------------------------
--  파일이 생성됨 - 토요일-7월-22-2023   
--------------------------------------------------------
REM INSERTING into SCOTT.STORE
SET DEFINE OFF;
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) 
values (12,32,'로라로라X빅토리아베이커리','여름 시즌을 위한 다양한 아이템과 협업컬렉션','브랜드 로라로라(rolarola)가 7월 18일부터 8월 15일까지 잠실 롯데월드몰에서 팝업스토어를 진행한다

남프랑스의 클래식한 무드를 담은 23 리조트 컬렉션과 스윔웨어 등 여름 시즌을 위한 다양한 아이템을 만날 수 있는 이번 팝업스토어에는 최근 선보인 빅토리아베이커리와의 협업 컬렉션도 함께 공개된다.
몸을 감싸는 소재와 핑크, 라벤더, 아이보리 등의 차분한 컬러가 특징인 23 리조트 컬렉션은 레이스와 셔링 등의 디테일로 로라로라만의 감성을 느낄 수 있으며, 의류 라인은 물론 모자와 백 등의 액세서리도 만날 수 있다.

팝업스토어를 기념한 다양한 이벤트도 진행된다. 신상품 최대 30% 할인, 구매 고객을 위해 리본 마그넷과 리본 키링을 증정하고, 팝업스토어를 방문하는 모든 고객들을 위해 부채를 증정한다. 팝업 첫 주말인 7월 22일과 23일에는 로라로라의 시그니처 토끼를 모티브로 한 ‘래빗 솜사탕’과 티셔츠, 키링, 티 코스터를 선착순으로 증정하는 프리 기프트 이벤트도 진행한다. 특히, 22일에는 5만원 이상 구매 고객에 한해 빅토리아베이커리 ‘라즈베리치즈케이크’를 선착순 한정 수량으로 증정한다.

빅토리아베이커리의 쿠키와 음료, 빅 리본 키링이 들어있는 피크닉 키트도 팝업스토어 한정으로 만날 수 있다. 18일부터는 이월 상품을 최대 70% 할인된 가격에 구매할 수 있는 클리어런스 세일도 진행한다.

8월 15일까지 롯데월드몰 팝업존에서 진행되는 로라로라의 팝업스토어에 관한 자세한 사항은 로라로라 공식 홈페이지와 SNS 채널에서 확인할 수 있다.
',to_date('23/07/20','RR/MM/DD'),to_date('23/08/15','RR/MM/DD'),0,'서울 송파구 올림픽로 300','롯데월드몰 지하 1층','https://www.instagram.com/rolarola.official/',2,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (14,33,'오일릴리키즈','네덜란드 럭셔리 브랜드 오일릴리의 키즈 단독 3번째 팝업 스토어','오일릴리 키즈가 롯데백화점 잠실점 8층에
세 번째 팝업 스토어를 오픈합니다.

오일릴리의 이니셜 “O”와 JOY를 상징하는
회전목마 컨셉으로 꾸며진 팝업 스토어에 오셔서
인증샷 촬영도 하시고 이벤트도 참여해 보세요.

INFO
2023년 7월 14일(금) ~ 8월 31일(목)
롯데 백화점 잠실점 8층

1) 전 구매 고객 사은품 증정
: 60주년 에디션 쇼핑백 & 스티커 증정

2) 구매 금액 별 사은품 증정
파우치, 에코백 (디자인 랜덤, 한정 수량)

3) 23 S/S 원피스 구매 시 양말 증정
(디자인 랜덤, 한정 수량)

4) 인증샷 이벤트 진행
인증샷 찍어 업로드 하면 60주년 에디션 쇼핑백 & 스티커 3매 증정

5) 컬러링 이벤트 진행
컬러링 시트 색칠 후 제출하면 60주년 에디션 쇼핑백 & 스티커 1매 증정

6) 펠앤콜 X 오일릴리
팝업 스토어에서 20만원 이상 구매 시
수제 아이스크림 브랜드 펠앤콜 상수점(홍대)에서 사용할 수 있는
싱글 스쿱 아이스크림 교환권 증정
',to_date('23/07/14','RR/MM/DD'),to_date('23/08/31','RR/MM/DD'),0,'서울 송파구 올림픽로 240','롯데백화점 잠실점 8층','https://www.instagram.com/p/CuqOalDskCV/ 롯데백화점 잠실점 8층',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (15,34,'OVER THE PITCH',' 축구 유니폼 전문 패션 브랜드 글로벌 브랜드·여러 구단과 협업 맨체스터 시티의 시즌 홈 저지 등 축구 관련 상품 다채롭게 선보여','갤러리아백화점(이하 갤러리아)이 오는 30일까지 서울 명품관에서 축구 유니폼 전문 패션 브랜드 ‘오버더피치’ 팝업스토어를 운영한다.

갤러리아는 19일 이같은 사실을 알리고, 오버더피치가 한정판 풋볼 레플리카 유니폼 전문점으로 △나이키 △푸마 △파리 생제르맹(PSG) 등 글로벌 브랜드·축구 구단과 함께 다양한 협업을 진행해 온 브랜드라고 소개했다.

이번 팝업에선 22/23 시즌 잉글랜드 프로축구 프리미어리그(EPL) 우승 구단인 맨체스터 시티의 23/24 시즌 홈 저지(유니폼)를 비롯해 축구 관련 상품을 다채롭게 선보인다. 유니폼 가격은 10만~20만 원대다.

여기에 더해 희소성이 있는 친필 사인 저지도 선보인다. 오버더피치에서는 맨체스터 시티 ‘트레블(한 시즌 동안 자국 정규리그·컵대회·챔피언스 리그 등 3개의 대회에서 우승하는 것)’ 시즌의 주역인 홀란드의 사인 저지를 포함해 펠레와 지단 등 유명 축구 선수들의 사인 저지들도 판매한다. 가격은 100~1000만 원대까지 다양하다.

갤러리아는 이번 팝업스토어의 오픈을 기념해 이벤트를 진행한다. 매장 방문 고객들은 SNS 이벤트에 참여할 수 있으며, 이 중 추첨을 통해 23/24 시즌 맨체스터 시티 홈 저지를 증정한다.

한화갤러리아 관계자는 “최근 스포츠 유니폼과 일상복을 함께 입는 ‘블록코어룩’에 대한 관심이 증가하는 추세다”면서 “앞으로도 최신 트렌드를 제안할 수 있는 다양한 팝업을 선보일 계획이다”고 말했다.
',to_date('23/07/19','RR/MM/DD'),to_date('23/07/30','RR/MM/DD'),0,'서울 강남구 압구정로 407','갤러리아백화점명품관EAST','https://overthepitch.com/magazine/detail.php?idx=320',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (1,26,'Asahi','생맥주 캔으로 최근 큰 인기를 얻고 있는 아사히 팝업스토어를 지역 최초로','NEW 아사히 수퍼드라이 & 생맥주캔 POP UP in BUSAN!
드디어 부산으로 내려갑니다!
⠀
🍺 리뉴얼된 아사히 수퍼드라이 시음존
📸 대왕 생맥주캔 포토존
🔔 오직 부산에서만! 팝업 한정 굿즈들로 구성된
⠀⠀NEW 아사히 수퍼드라이 & 생맥주캔 기획세트! (한정 수량으로 조기 소진 시 판매 종료)
⠀
ASAHI POP UP in BUSAN🌊
📍 롯데프리미엄아울렛 동부산점
⠀⠀산토리니 스테이지 & 분수광장
📍팝업 기간
📅 2023.07.21 ~ 2023.08.03 (10:30AM~21:00PM)
⠀
*팝업스토어 내부는 사전 예약 없이 자유롭게 입장 가능합니다.
.
.
.
기대 그 이상, 새로운 아사히 수퍼드라이
NEW ASAHI SUPER DRY, BEYOND EXPECTED

경고: 지나친 음주는 뇌졸중, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다. 
',to_date('23/07/20','RR/MM/DD'),to_date('23/08/03','RR/MM/DD'),0,'부산 기장군 기장읍 기장해안로 147','롯데프리미엄아울렛 동부산점','https://www.instagram.com/p/Cu58M7fS8RU/?img_index=1',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (4,27,'켈리Ⅹ최강야구','하이트진로가 본격적인 맥주 성수기 시즌에서 입지를 더욱 강화하기 위해 ''켈리ⅩJTBC 최강야구'' 팝업스토어를 운영한다.','하이트진로가 본격적인 맥주 성수기 시즌에서 입지를 더욱 강화하기 위해 20일부터 오는 30일까지 서울시 영등포구 더현대서울에서 ''켈리ⅩJTBC 최강야구'' 팝업스토어를 운영한다.

켈리의 경우 출시 99일 만에 1억병이 판매한 만큼, 대세감을 이어나가겠다는 것이 회사의 목표다.

이를 위해 회사는 한정판 ''켈리Ⅹ최강야구'' 스페셜 맥주로 야구와 예능 팬들을 공략할 방침이다. 이번 한정판은 기존 켈리 500㎖ 캔맥주에 ''최강 몬스터즈'' 엠블럼을 활용해 디자인했다. 키움, SSG, KT, 한화, 기아 5개 홈구장에서 오는 25일부터 총 3000박스가 소진될 때까지 판매한다. 앞으로 열릴 직관 경기장 내에서 직접 브랜딩 활동도 진행할 예정이다.

오성택 하이트진로 마케팅실 상무는 "올 여름 성수기 맥주대전 승리의 선봉이 될 켈리와 최강야구의 연합작전을 필두로 공격적인 마케팅 활동을 펼치겠다"고 말했다.
',to_date('23/07/20','RR/MM/DD'),to_date('23/07/30','RR/MM/DD'),0,'서울 영등포구 여의대로 108','더현대 서울','https://www.instagram.com/p/Cuyn1d2vLzV/?hl=ko',1,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (23,38,'넷마블 월드','원마운트와 함께하는 넷마블 월드','
넷마블은 일산 소재 테마파크 ‘원마운트’, GECC(글로벌교육콘텐츠), 썸랜드코리아와 협업을 통해 원마운트 내 ‘넷마블 월드’를 조성했다고 20일 밝혔다.

원마운트는 워터파크, 스노우파크 등 놀이시설과 즐길거리가 가득한 복합문화공간으로 이번 협업을 통해 기존 스노우파크를 ‘넷마블프렌즈’, ‘모두의마블’, ‘머지 쿵야 아일랜드’, ‘스톤에이지’ 등 넷마블의 대표 IP를 활용한 ‘넷마블 월드’로 새롭게 단장해 오는 9월 30일까지 운영한다.

‘넷마블 월드’는 총 3개 층으로 각각 파티존, 체험존으로 구성돼 있다. 먼저 1층 파티존 ‘모두의마블 월드 뮤직 투어’에서는 여러 개의 큐브박스로 구현된 ‘모두의마블’ 월드맵을 만나볼 수 있고 다양한 레크레이션 콘텐츠뿐만 아니라 DJ와 함께 음악 축제를 즐길 수 있다. 해당 이벤트는 매일 11시부터 17시까지 진행한다.

또한 파티존 옆 체험존에는 ‘스톤에이지’ 포토존, 공룡 및 스톤에이지 배경을 모티브로 한 구조물을 배치해 방문객들이 이색적인 경험을 할 수 있도록 준비했다.

2층에서는 아기자기하게 꾸며진 ‘쿵야 빌리지’를 만날 수 있다. 직선형 공간을 따라 놓여진 집 형태 구조물에서 퀴즈 이벤트를 찾고 미션 완료 시 MD샵에서 경품으로 교환할 수 있다.

‘쿵야 빌리지’ 옆으로 이어지는 ‘넷마블 방탈출’에서는 넷마블 마스코트 ‘넷마블프렌즈’로 꾸며진 스포츠 어드벤쳐 방탈출 콘텐츠를 즐길 수 있다.

이어서 3층 ‘모두의마블 작품 전시회’는 ‘모두의마블’ 관련 작품들과 게임 신규 맵을 형상화한 ‘아쿠아 아레나 맵’으로 꾸몄으며, 이 외에도 넷마블프렌즈 포토부스 등 다양한 콘텐츠를 준비해 방문객 남녀노소 신선한 방식으로 넷마블 IP를 즐길 수 있도록 마련했다.


넷마블 윤혜영 IP사업실장은 “가족 단위 방문객이 많은 원마운트에 넷마블의 대표 장수 IP들을 소개하는 뜻깊은 기회”라며, “친근하면서도 참신한 방식으로 풍성한 볼거리를 준비했으니 즐겁고 행복한 시간이 되시길 바란다”고 말했다.
',to_date('23/07/08','RR/MM/DD'),to_date('23/09/30','RR/MM/DD'),0,'경기 고양시 일산서구 한류월드로 300','일산 원마운트','https://www.ticketlink.co.kr/product/44535',3,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (17,35,'MIND BRIDGE x CHILL DRIVE-IN','Time to Chillax, 캘리포니아 무드를 재해석한 마인드브릿지의 브랜드감성','캘리포니아에 대한 동경을 담은
이국적인 무드의 휴게공간 ‘칠드라이브인’과
모든 이의 일과 삶에 크리에이티브한 영감을 주는 브랜드
‘마인드브릿지’가 만나 팝업스토어를 엽니다😎

특유의 Chill한 무드가 느껴지는
다양한 콜라보 상품과 이벤트가 준비되어 있으니
많은 관심 부탁드립니다🫶🫶

☑️EVENT 1
마인드브릿지 계정(@mindbridge_kr) 팔로우 후 필수 해시태그와 함께 사진을 업로드하면 포토 키오스크에서 인화가 가능합니다.

☑️EVENT 2
마인드브릿지 계정(@mindbridge_kr)만 팔로우 하면
무료로 참여 가능하고 콜라보 기념으로 특별 제작된 한정 프레임을 만나 볼수 있습니다.

☑️EVENT 3
팝업스토어에 방문만 해도 스티커와 엽서를 무료로 받아볼 수 있습니다.

📅7.21(금) - 8.8(화)
⏰월-목 10:30 ~ 20:00 / 금-일 10:30 ~ 20:20
📍신세계백화점 센텀시티점 지하2층 하이퍼그라운드 중앙광장
',to_date('23/07/21','RR/MM/DD'),to_date('23/08/08','RR/MM/DD'),0,'부산 해운대구 센텀남대로 35','신세계백화점 센텀시티점 지하2층 하이퍼 그라운드','https://www.instagram.com/p/Cu3diDdPd1F/',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (21,36,'OPEN YY','OPEN YY 2023 캡슐 컬렉션','OPEN YY POP-UP BUSAN LUFT MANSION
장소: 부산광역시 해운대구 우동1로 38번가길 1 201호 루프트맨션
일정: 7월 20일(목) ~ 7월 30일(일)
운영시간: 11:00 ~ 18:00

오픈 와이와이가 2023 캡슐 컬렉션의 핑크 익스클루시브 아이템 추가 출시를 기념해 ‘오픈 와이와이 팝업 부산 루프트 맨션’으로 부산 해운대를 찾는다.

기존 셀러브레이트 와이와이 캡슐 컬렉션에 추가 발매되는 익스클루시브 핑크 아이템은 이름처럼 핑크 컬러가 주를 이룬다. 아이템에는 브랜드의 ‘YY’ 시그니처 로고를 필두로 비키니, 캡, 벌룬 핏 팬츠, 그래픽 티셔츠가 포함됐다. 또한, 루프트 맨션과 오픈 와이와이의 협업을 기념하는 토트백은 전면 오픈 와이와이, 뒷면 루프트 맨션 로고 프린팅이 배치됐다. 컬렉션 중 핑크 익스클루시브 아이템은 부산 해운대 루프트 맨션에서 단독 공개된다.

오픈 와이와이 2023 캡슐 컬렉션 핑크 익스클루시브 아이템은 7월 25일 오전 11시부터 오픈 와이와이 웹사이트에 공개된다. 부산에서 단독 진행되는 오프라인 팝업 정보는 하단 인용에서 확인할 수 있다.
',to_date('23/07/20','RR/MM/DD'),to_date('23/07/30','RR/MM/DD'),0,'부산 해운대구 우동1로38번가길 1','201호 루프트맨션','https://url.kr/rmoec7',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (22,37,'BARREL','BARREL 2023 썸머 컬렉션 ','워터 스포츠 브랜드 ㈜배럴(대표 박영준)이 여름 휴가 시즌을 맞아 신세계백화점 강남점에 팝업스토어를 오픈했다.

이번 팝업스토어는 버려지는 페트병을 재활용하여 친환경 컨셉으로 꾸며졌다. 중앙에 위치한 테이블과 파도 형상의 조형물 모두 실제 페트병을 활용하여 제작되었으며, 주변으로는 야자수와 파도 그래픽의 구조물을 배치해 보기만 해도 시원하고 청량한 느낌의 인테리어를 연출했다.
 
팝업스토어에서는 배럴의 2023 썸머 컬렉션 제품들을 만나볼 수 있다. 다양한 디자인의 래쉬가드, 스윔웨어를 비롯한 워터 액티비티룩부터 리조트룩으로 매치하기 좋은 쇼츠, MZ세대 취향의 새로운 원피스 스타일까지 배럴을 대표하는 아이템들을 한눈에 확인할 수 있다.

더불어 신세계백화점 강남점에서만 만나볼 수 있는 특별한 프리미엄 이벤트도 준비되어 있다. 팝업스토어 운영 기간 내 구매 고객들을 대상으로 금액별 사은품 증정 프로모션을 진행한다.

먼저 10만 원 이상 구매 고객에게는 비치볼을, 30만 원 이상 구매 고객에게는 타월 · 수모 · 선크림 · 조이 포토 엽서로 구성된 스페셜 패키지를 증정한다. 더불어 70만 원 이상 구매 시에는 신라스테이 숙박권을, 100만 원 이상 구매 시에는 JW메리어트 제주 리조트 숙박권을 한정 수량에 한해 선착순으로 증정할 예정이다.

배럴은 레드벨벳 조이를 브랜드 전속모델로 발탁, 최근 조이와 함께한 썸머 캠페인 화보 및 영상을 공개해 화제를 모은 바 있다. 화보 속 조이가 착용한 제품들은 연이어 완판 행진을 기록했다.

배럴 관계자는 “본격적인 여름 휴가철을 맞아 피서지로 떠나는 고객분들을 위해 팝업스토어를 기획, 운영하게 되었다”라며, “배럴이 제안하는 다채로운 바캉스룩과 함께 보다 즐겁고 스타일리시한 휴가를 즐겨 보시길 바란다”라고 말했다.

한편, 배럴 프리미엄 팝업스토어는 7월 21일(금)부터 8월 3일(목)까지 약 2주간 진행되며, 신세계백화점 강남점 신관 8층에서 만나볼 수 있다.
',to_date('23/07/21','RR/MM/DD'),to_date('23/08/03','RR/MM/DD'),0,'서울 서초구 신반포로 176','신세계백화점 강남점 신관 8층','https://www.ktnews.com/news/articleView.html?idxno=129353',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (6,28,'Kodak','Kodak - Hot Summer Vibe 컬렉션','코닥의 Hot Summer Vibe🔥

하와이를 홍보하기 위해 포토그래퍼들이 촬영하여 유명해진 히스토리의 코닥 훌라쇼 이미지를 활용한 컬렉션,
여름 바캉스 시즌 특별한 순간을 선사하는 코닥 훌라쇼 패키지를 만나보세요!

· 기간 : 7.14(금) - 8.3(목)
· 장소 : 6층 행사장

대구 신세계백화점 6층 행사장에서 ‘코닥(Kodak)’ 팝업스토어를 오는 8월 3일까지 진행한다. 이번 ‘Hot Summer Vibe’ 컬렉션은 하와이를 홍보하기 위해 사진작가들이 촬영해 유명해진 히스토리의 코닥 훌라쇼 이미지를 활용했다. 행사장에서는 다채로운 컬러가 적용된 스트라이프 슬리브리스 스웨터부터 수영복, 티셔츠, 모자 등 휴가철에 어울리는 상품들을 선보인다. 행사 기간 동안 당일 10만 원 이상 구매 시 코닥네컷 1매 촬영, 15만 원 이상 구매 시 타포린백을 300개 한정으로 증정한다. 

',to_date('23/07/14','RR/MM/DD'),to_date('23/08/03','RR/MM/DD'),0,'대구 동구 동부로 149','대구 신세계백화점 6층 행사장','https://www.instagram.com/p/Cuqc-doLRRp/?img_index=1',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (10,30,'TREASURE REBOOT ','트레저가 3주년 맞이 팝업스토어로 팬들과 함께하는 REBOOT를 본격화한다.','그룹 트레저가 컴백을 앞두고 팬들을 위한 특별 이벤트를 예고했다.

트레저는 8월 1일부터 데뷔일인 7일까지 약 일주일 간 잠실 롯데월드몰 1층 아트리움에서 정규 2집 발매와 데뷔 3주년을 기념해 "트레저 세컨드 풀 앨범 ''리부트'' 팝업 스토어"를 개최한다.

트렌드지는 100평 규모의 팝업 스토어를 정규 2집 ''리부트''의 시크하고 강렬한 무드로 꾸며 한층 성숙한 음악세계를 오롯이 느낄 수 있도록 할 계획이다.

또한 다양한 이벤트와 체험존을 비롯 현장 앨범 구매자를 위한 각종 혜택과 특전, 신규 MD 등이 마련돼 관람객들의 좋은 반응이 기대된다. 별도의 사전 예약 없이 누구나 방문할 수 있으며, 안전하고 쾌적한 관람을 위해 현장 키오스크서 대기 등록 후 순차적으로 입장 가능하다.

소속사 YG엔터테인먼트 측은 "트레저의 새로운 출발을 팬 여러분과 함께하고자 기획했다. 멤버들과 스태프가 진심을 담아 준비한 의미 있는 행사다. 많이 찾아오셔서 즐거운 추억 만드시길 바란다"고 전했다.

트레저는 오는 28일 오후 6시 ''리부트''으로 컴백한다. 이번 앨범에는 타이틀곡 ''보나보나''를 비롯해 랩·보컬 유닛곡 등 다양한 장르의 10개 트랙이 수록된다. 지금까지 발매한 앨범 중 멤버들의 참여도가 가장 높은 만큼 글로벌 음악 팬들의 기대를 한 몸에 받고 있다.
',to_date('23/08/01','RR/MM/DD'),to_date('23/08/07','RR/MM/DD'),0,'서울 송파구 올림픽로 300','롯데월드몰 1층 아트리움','https://www.instagram.com/p/Cu1mS4DNVXl/',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (11,31,'배민B캉스','여름 피서 콘셉트로 배민B마트를 오프라인에서 체험','우아한형제들은 지난 18일부터 신세계 스타필드 고양점을 시작으로 팝업스토어 ‘배민B캉스’를 운영한다고 19일 밝혔다.

이번 팝업스토어는 6주에 걸쳐 2주씩 릴레이로 열린다. 여름 피서 콘셉트로 배민B마트를 오프라인에서 체험할 수 있도록 꾸며졌다.

팝업스토어 배민B캉스에서는 B마트 인기 상품을 최초 현장 판매한다. PB상품 10종과 ‘태극당 모나카’, ‘서울페이스트리 크로넛’ 등 30여 종의 B마트 인기상품을 만날 수 있다.

방문객은 벽면의 QR코드를 스캔하면 배민B마트를 통해 구매, 배달 받을 수 있다. 2만 원 이상 구매시 포토부스 체험도 제공한다. B마트 SNS 계정을 팔로우하고, 인증샷을 게시하면 현장에서 최대 3만원까지 받을 수 있는 ‘랜덤 쿠폰’ 이벤트도 열린다.

즐길 거리도 마련했다. 2.6m 높이 대형 슬라이드, 30만 개 공으로 이뤄진 볼 풀 등 아이들을 위한 놀이시설과 볼 토스, 볼 슈팅 등 참여형 게임프로그램도 운영한다. 참여 개수에 따라 굿즈와 ‘배민이지’ PB상품도 선착순으로 증정 예정이다.
',to_date('23/07/18','RR/MM/DD'),to_date('23/07/31','RR/MM/DD'),0,'경기 고양시 덕양구 고양대로 1955','경기 고양시 덕양구 고양대로 1955 스타필드 고양','https://www.dailian.co.kr/news/view/1254930/',2,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));
Insert into SCOTT.STORE (STORE_NUM,MEMBER_NUM,STORE_TITLE,STORE_INTRO,STORE_BODY,STORE_START,STORE_END,STORE_FAVORITE,STORE_LOC,STORE_LOC_DETAIL,STORE_SITE,STORE_COUNT,STORE_STATUS,STORE_CREATE,STORE_UPDATE) values (9,29,'amondz Jewtique','주얼리 커머스 플랫폼 ''아몬즈(amondz)''를 운영하는 비주얼이 더현대서울에서 팝업스토어를 운영한다.','주얼리 커머스 플랫폼 ''아몬즈(amondz)''를 운영하는 비주얼(대표 허세일)이 20일부터 26일까지 일주일간 더현대서울에서 팝업스토어를 운영한다.

이번 팝업스토어 테마는 ''아몬즈 주티크(amondz Jewtique)''다. 비주얼은 주티크를 통해 아몬즈가 엄선한 주얼리를 고객에게 소개한다. 아몬즈가 온라인에서 매년 진행하는 ''주얼리 부티크'' 콘셉트를 그대로 오프라인에서 구현하는 것이 특징이다.

주티크는 주얼리와 부티크의 합성어로, 이번 아몬즈 주티크를 서울 여의도 더현대서울 지하 2층 웨스트 팝업존에서 열린다. 지난 6월 주티크는 서울 강남구 도산대로 오프라인 스토어 ''아몬즈 도산''에서 한 차례 팝업스토어를 운영해 긍정적 반응을 얻은 바 있다.

아몬즈 주티크에서는 총 46개 브랜드를 만나볼 수 있다. 트렌디한 디자인의 14K 주얼리를 합리적인 가격에 선보이는 ''a14'', 러블리한 무드의 실버 주얼리를 전개하는 ''딥브로우'' 등이다. 또한 아몬즈 인기 브랜드 10곳의 공간을 별도로 마련해 해당 브랜드만의 매력을 팝업스토어에서 느껴볼 수 있다.

출시 후 3억원대 매출을 달성한 ''델마르 실버 반지''부터 4억 원을 기록한 ''유어네클리스'' 목걸이 등 아몬즈 인기 상품과 함께 아몬즈에서만 만나볼 수 있는 단독 상품도 구성된다. 이번 여름 인기 있는 ''스트링 목걸이'' 등 키워드존과 매일 상품 구성이 바뀌는 세일존으로 구성해 다양한 조건으로 여러가지 브랜드 상품을 체험할 수 있다.
',to_date('23/07/20','RR/MM/DD'),to_date('23/07/26','RR/MM/DD'),0,'서울 영등포구 여의대로 108','더현대 서울','https://url.kr/ad9irn',0,0,to_date('23/07/22','RR/MM/DD'),to_date('23/07/22','RR/MM/DD'));




--------------------------------------------------------
--  파일이 생성됨 - 토요일-7월-22-2023   
--------------------------------------------------------
REM INSERTING into SCOTT.PICTURE
SET DEFINE OFF;
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE)
values (1,1,'C:/project_image','5979d94a-8562-4552-8d58-932e8c122f5f_asahi (1).jpg','asahi (1).jpg',104977,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (4,2,'C:/project_image','0ab753a2-228e-4d27-ab97-5af5d39dfa53_asahi (2).jpg','asahi (2).jpg',119139,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (5,2,'C:/project_image','259c1882-5d6f-4cf9-a911-8e273e38d9a3_asahi (3).jpg','asahi (3).jpg',151911,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (8,4,'C:/project_image','c310f388-1562-4159-9bc4-0916b4c91aa1_kelly.jpg','kelly.jpg',51060,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (9,4,'C:/project_image','cd8c1d51-a55a-4dbf-b5f5-66fcdf280fef_kelly2.jpeg','kelly2.jpeg',198256,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (16,6,'C:/project_image','c1100308-c133-46cf-beac-f28f4f8e6bde_kodak (1).jpg','kodak (1).jpg',215013,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (17,6,'C:/project_image','623e3581-b27b-4850-9e35-a31280839b43_kodak (2).jpg','kodak (2).jpg',266524,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (18,6,'C:/project_image','06ce7398-c946-4ef4-a77e-c86ca60a6b17_kodak (3).jpg','kodak (3).jpg',270796,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (19,6,'C:/project_image','a7cde25d-1868-4aef-8e04-16fd34039028_kodak (4).jpg','kodak (4).jpg',247480,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (20,6,'C:/project_image','6edd6760-4776-4a47-aca1-d0d1912ff9fd_kodak (5).jpg','kodak (5).jpg',296281,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (26,9,'C:/project_image','d6904b98-308a-4ba7-95dd-b41940cd03c2_amondz (4).jpg','amondz (4).jpg',145232,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (27,9,'C:/project_image','d2bb8aa1-19c4-4b64-868e-552440b32232_amondz (3).jpg','amondz (3).jpg',228976,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (25,9,'C:/project_image','d09022f0-48ad-41d5-aa68-a05450b6e0c0_amondz.jpg','amondz.jpg',237839,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (28,9,'C:/project_image','c4e7160b-7a78-4d04-bde8-451d219d9aed_amondz (2).jpg','amondz (2).jpg',129002,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (29,10,'C:/project_image','ab8c73ea-5b26-4371-a32a-a5ff5a78c910_treasure.jpg','treasure.jpg',905549,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (30,10,'C:/project_image','6d8a7a53-9656-4847-8209-11da7553d088_treasure.jpg','treasure.jpg',905549,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (31,11,'C:/project_image','1d5b9970-dd42-4444-baf4-804dd1bacde1_배민.jpg','배민.jpg',78678,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (32,11,'C:/project_image','928c9b47-259f-4d93-a2fe-1d6a4b13ad00_배민2.jpg','배민2.jpg',67626,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (33,12,'C:/project_image','04107b31-f250-4eb7-be86-2f0c0524adc9_ROLA (1).jpg','ROLA (1).jpg',80506,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (34,12,'C:/project_image','6b1b0f4d-b0fa-400b-a749-830b5e569d9d_ROLA (2).jpg','ROLA (2).jpg',86963,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (35,12,'C:/project_image','be60aa62-59f8-4ca3-a664-c53a8c404005_ROLA (3).jpg','ROLA (3).jpg',109344,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (36,12,'C:/project_image','74142ed3-41ca-4bb2-9af7-7584fee115de_ROLA (4).jpg','ROLA (4).jpg',94337,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (37,12,'C:/project_image','0dcb245f-d05e-4c17-93cf-0f5ed5d0bdea_ROLA (5).jpg','ROLA (5).jpg',270935,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (45,14,'C:/project_image','ca55c02d-fbf7-42c6-836c-8cc22cbc955b_OILLILY (4).png','OILLILY (4).png',729969,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (46,14,'C:/project_image','13b2ff7d-7986-4b94-8858-b3b2d58faf9d_OILLILY (3).png','OILLILY (3).png',382281,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (47,15,'C:/project_image','dc55cee1-1e48-4cbd-98a1-d27d5df9aa83_OVERTHEPITCH.jpg','OVERTHEPITCH.jpg',371118,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (53,21,'C:/project_image','c9cca158-53a2-406e-974f-f6543086a566_OPEN YY.jpg','OPEN YY.jpg',92223,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (43,14,'C:/project_image','4aaafc8b-057a-49b7-8463-b2212ec0bfd7_OILLILY (1).png','OILLILY (1).png',479010,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (44,14,'C:/project_image','b4a62d19-d8d7-4810-bf00-aeccb96de62a_OILLILY (2).png','OILLILY (2).png',554658,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (54,21,'C:/project_image','c0e4f421-ba84-4ec7-903e-efd2f63f76cf_OPEN YY2.jpg','OPEN YY2.jpg',1024183,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (51,17,'C:/project_image','b9c839e6-56b9-4e7e-9527-d407e47cf70a_mind16.jpeg','mind16.jpeg',172172,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (52,17,'C:/project_image','c16bc18c-7ce9-4536-b31e-1ff9b7846e25_mind24.jpeg','mind24.jpeg',197706,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (55,22,'C:/project_image','12a874e3-78cd-4b16-bc5e-26997996b164_BARREL.jpg','BARREL.jpg',206286,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (56,22,'C:/project_image','f17148d0-69e0-484a-bedc-c297158e2d9f_BARREL2.jpg','BARREL2.jpg',388996,to_date('23/07/22','RR/MM/DD'),0);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (57,23,'C:/project_image','a3c155d3-e50f-405e-a12d-76f1d6d05672_netmarble.jpg','netmarble.jpg',661058,to_date('23/07/22','RR/MM/DD'),1);
Insert into SCOTT.PICTURE (PICTURE_NUM,STORE_NUM,PICTURE_PATH,PICTURE_NAME,PICTURE_ORIGINAL_NAME,PICTURE_SIZE,PICTURE_DATE,PICTURE_TYPE) values (58,23,'C:/project_image','b0266829-0ed4-4884-88a7-1f4d7ee26c31_netmarble2.jpg','netmarble2.jpg',150906,to_date('23/07/22','RR/MM/DD'),0);


REM INSERTING into SCOTT.CATEGORY
SET DEFINE OFF;
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (1,1,'food');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (2,1,'food');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (7,4,'food');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (8,4,'media');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (11,6,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (12,6,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (18,9,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (19,10,'media');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (20,10,'media');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (21,11,'food');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (17,9,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (22,11,'other');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (23,12,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (24,12,'food');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (29,15,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (30,15,'media');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (27,14,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (28,14,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (35,21,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (36,21,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (33,17,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (34,17,'other');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (37,22,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (38,22,'fashion');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (39,23,'media');
Insert into SCOTT.CATEGORY (CATEGORY_NUM,STORE_NUM,CATEGORY) values (40,23,'media');



commit;

