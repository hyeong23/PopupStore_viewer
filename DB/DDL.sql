drop table announcement;				
drop table alarm;				
drop table ask;				
drop table reply;				
drop table favorite;				
drop table picture;				
drop table category;				
drop table store;				
drop table member;				
				
				
-- member				
CREATE TABLE scott.member (				
member_num          NUMBER NOT NULL,				
member_id           VARCHAR2(20 BYTE) NOT NULL,				
member_pw           VARCHAR2(20 BYTE) NOT NULL,				
member_nickname     VARCHAR2(40 BYTE) DEFAULT NULL,				
member_email        VARCHAR2(40 BYTE) NOT NULL,				
member_type         NUMBER NOT NULL,				
member_company_name VARCHAR2(40 BYTE) DEFAULT NULL,				
member_company_num  NUMBER DEFAULT NULL,				
member_phone_num    NUMBER NOT NULL,				
member_create       TIMESTAMP DEFAULT sysdate NOT NULL,				
member_update       TIMESTAMP DEFAULT sysdate NOT NULL				
);				
				
ALTER TABLE scott.member ADD CONSTRAINT member_pk PRIMARY KEY ( member_num );				
				
-- member trigger				
Drop TRIGGER TRIGGER_MEMBER;			
CREATE OR REPLACE TRIGGER TRIGGER_MEMBER				
BEFORE UPDATE ON member				
FOR EACH ROW				
BEGIN				
:new.member_update := SYSDATE;				
END;				
/			
--store				
CREATE TABLE scott.store (				
store_num      NUMBER NOT NULL,				
member_num     NUMBER,				
store_title    VARCHAR2(255 BYTE) NOT NULL,				
store_intro    VARCHAR2(255 BYTE) NOT NULL,				
store_body     VARCHAR2(4000 BYTE) NOT NULL,				
store_start    DATE NOT NULL,				
store_end      DATE NOT NULL,				
store_favorite NUMBER DEFAULT 0 NOT NULL,				
store_loc      VARCHAR2(255 BYTE) NOT NULL,				
store_loc_detail VARCHAR2(255 BYTE),				
store_site     VARCHAR2(100 BYTE) NOT NULL,				
store_count    NUMBER DEFAULT 0 NOT NULL,				
store_status   NUMBER DEFAULT 0 NOT NULL,				
store_create   DATE DEFAULT sysdate NOT NULL,				
store_update   DATE DEFAULT sysdate NOT NULL				
);				
				
				
ALTER TABLE scott.store ADD CONSTRAINT store_pk PRIMARY KEY ( store_num );				
				
ALTER TABLE scott.store				
ADD CONSTRAINT store_member_fk FOREIGN KEY ( member_num )				
REFERENCES scott.member ( member_num )				
ON DELETE SET NULL;				
				
-- ask				
CREATE TABLE scott.ask (				
ask_num   NUMBER NOT NULL,				
ask_email VARCHAR2(40 BYTE) NOT NULL,				
ask_title VARCHAR2(20 BYTE) NOT NULL,				
ask_body  VARCHAR2(4000 BYTE) NOT NULL,				
ask_check NUMBER NOT NULL,				
ask_create DATE DEFAULT sysdate NOT NULL				
);				
				
ALTER TABLE scott.ask ADD CONSTRAINT ask_pk PRIMARY KEY ( ask_num );				
				
--announcement				
CREATE TABLE scott.announcement (				
announcement_num    NUMBER NOT NULL,				
member_num          NUMBER,				
announcement_title VARCHAR2(255 BYTE) NOT NULL,				
announcement_body   VARCHAR2(4000 BYTE) NOT NULL,				
announcement_create   TIMESTAMP DEFAULT sysdate NOT NULL,				
announcement_update  TIMESTAMP DEFAULT sysdate NOT NULL,				
announcement_count  NUMBER DEFAULT 0 NOT NULL				
);				
				
				
ALTER TABLE scott.announcement ADD CONSTRAINT announcement_pk PRIMARY KEY ( announcement_num );				
				
ALTER TABLE scott.announcement				
ADD CONSTRAINT announcement_member_fk FOREIGN KEY ( member_num )				
REFERENCES scott.member ( member_num )				
ON DELETE CASCADE;				
				
-- announcement trigger				
				
CREATE OR REPLACE TRIGGER TRIGGER_ANNOUNCEMENT				
BEFORE UPDATE ON announcement				
FOR EACH ROW				
BEGIN				
:new.announcement_update := SYSDATE;				
END;				
/				
--reply				
CREATE TABLE scott.reply (				
reply_num  NUMBER NOT NULL,				
member_num NUMBER,				
store_num  NUMBER,				
reply      VARCHAR2(4000 BYTE) NOT NULL,				
reply_create DATE DEFAULT sysdate NOT NULL,				
reply_update DATE DEFAULT sysdate NOT NULL				
);				
				
				
ALTER TABLE scott.reply ADD CONSTRAINT reply_pk PRIMARY KEY ( reply_num );				
				
ALTER TABLE scott.reply				
ADD CONSTRAINT reply_member_fk FOREIGN KEY ( member_num )				
REFERENCES scott.member ( member_num )				
ON DELETE CASCADE;				
				
				
ALTER TABLE scott.reply				
ADD CONSTRAINT reply_store_fk FOREIGN KEY ( store_num )				
REFERENCES scott.store ( store_num )				
ON DELETE CASCADE;				
				
				
--favorite				
CREATE TABLE scott.favorite (				
favorite_num    NUMBER NOT NULL,				
member_num      NUMBER,				
store_num       NUMBER,				
favorite_status char NOT NULL,				
favorite_create DATE DEFAULT sysdate NOT NULL				
);				
				
				
ALTER TABLE scott.favorite				
ADD CONSTRAINT favorite_pk PRIMARY KEY ( favorite_num );				
				
				
ALTER TABLE scott.favorite				
ADD CONSTRAINT favorite_member_fk FOREIGN KEY ( member_num )				
REFERENCES scott.member ( member_num )				
ON DELETE CASCADE;				
				
				
ALTER TABLE scott.favorite				
ADD CONSTRAINT favorite_store_fk FOREIGN KEY ( store_num )				
REFERENCES scott.store ( store_num )				
ON DELETE CASCADE;				
				
				
--alarm				
CREATE TABLE scott.alarm (				
alarm_num          NUMBER NOT NULL,				
member_num         NUMBER,				
alarm_content      VARCHAR2(255 BYTE) NOT NULL,				
alarm_status       CHAR(1 BYTE) DEFAULT 1 NOT NULL,				
alarm_time         DATE NOT NULL,				
alarm_checked_time DATE DEFAULT NULL,				
store_num          NUMBER,				
alarm_read         NUMBER DEFAULT 0 NOT NULL,				
alarm_create DATE DEFAULT sysdate NOT NULL,		
alarm_sub          NUMBER
);				
				
				
ALTER TABLE scott.alarm				
ADD CONSTRAINT alarm_pk PRIMARY KEY ( alarm_num );				
				
				
ALTER TABLE scott.alarm				
ADD CONSTRAINT alarm_member_fk FOREIGN KEY ( member_num )				
REFERENCES scott.member ( member_num )				
ON DELETE CASCADE;				
				
				
ALTER TABLE scott.alarm				
ADD CONSTRAINT alarm_store_fk FOREIGN KEY ( store_num )				
REFERENCES scott.store ( store_num )				
ON DELETE CASCADE;				
				
				
--category				
CREATE TABLE scott.category (				
category_num NUMBER NOT NULL,				
store_num    NUMBER,				
category     VARCHAR2(20 BYTE) NOT NULL				
);				
				
				
ALTER TABLE scott.category ADD CONSTRAINT category_pk PRIMARY KEY ( category_num );				
				
ALTER TABLE scott.category				
ADD CONSTRAINT category_store_fk FOREIGN KEY ( store_num )				
REFERENCES scott.store ( store_num )				
ON DELETE CASCADE;				
				
				
--picture				
CREATE TABLE scott.picture (				
picture_num           NUMBER NOT NULL,				
store_num             NUMBER,				
picture_path          VARCHAR2(255 BYTE) NOT NULL,				
picture_name          VARCHAR2(255 BYTE) NOT NULL,				
picture_original_name VARCHAR2(255 BYTE) NOT NULL,				
picture_size          NUMBER NOT NULL,				
picture_date          DATE DEFAULT sysdate NOT NULL,				
picture_type          NUMBER NOT NULL				
);				
				
				
ALTER TABLE scott.picture				
ADD CONSTRAINT picture_pk PRIMARY KEY ( picture_num );				
				
				
ALTER TABLE scott.picture				
ADD CONSTRAINT picture_store_fk FOREIGN KEY ( store_num )				
REFERENCES scott.store ( store_num )				
ON DELETE CASCADE;				



DROP SEQUENCE store_sequence;					
DROP SEQUENCE member_sequence;					
DROP SEQUENCE alarm_sequence;					
DROP SEQUENCE announcement_sequence;					
DROP SEQUENCE ask_sequence;					
DROP SEQUENCE category_sequence;					
DROP SEQUENCE favorite_sequence;					
DROP SEQUENCE picture_sequence;					
DROP SEQUENCE reply_sequence;					
					
CREATE SEQUENCE store_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE member_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE alarm_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE announcement_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE ask_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE category_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE favorite_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE picture_sequence START WITH 1 INCREMENT BY 1;					
CREATE SEQUENCE reply_sequence START WITH 1 INCREMENT BY 1;					
			

insert into member(member_num,member_id,member_pw,member_company_name,member_email,member_phone_num,member_type) values(1,'admin','admin','ADMIN','chokimi2000@naver.com',01080347817,0);	
insert into member(member_num,member_id,member_pw,member_company_name,member_company_num,member_email,member_phone_num,member_type) values(2,'business',1234,'business',1234,'businessnaver.com',01080347817,2);		

commit;			
