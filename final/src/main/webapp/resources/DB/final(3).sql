DROP TABLE administrator CASCADE CONSTRAINTS;
DROP TABLE houseintro CASCADE CONSTRAINTS;
DROP TABLE amenities CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE Booking_TABLE CASCADE CONSTRAINTS;
DROP TABLE house_img CASCADE CONSTRAINTS;
DROP TABLE reiew_img CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE rooms_img CASCADE CONSTRAINTS;
DROP TABLE rooms CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE house CASCADE CONSTRAINTS;
DROP TABLE b_event CASCADE CONSTRAINTS;
DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE eventimages CASCADE CONSTRAINTS;
DROP TABLE event CASCADE CONSTRAINTS;
DROP TABLE faq CASCADE CONSTRAINTS;
DROP TABLE faqcategory CASCADE CONSTRAINTS;
DROP TABLE qnaboard CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE qna_category CASCADE CONSTRAINTS;
DROP TABLE stay CASCADE CONSTRAINTS;

/* Create Tables */

-- ���������� ���̺�
CREATE TABLE administrator
(
	-- �����ڽĺ�Ű
	anum number(10) NOT NULL,
	-- �����ھ��̵�
	aid varchar2(30) NOT NULL UNIQUE,
	-- �����ں�й�ȣ
	apwd varchar2(30) NOT NULL,
	PRIMARY KEY (anum)
);


-- ���ǽü����
CREATE TABLE amenities
(
	-- ���ǽü��ĺ�Ű
	amenities_num number(10) NOT NULL,
	-- ���ǽü���
	amenities_name varchar2(100) NOT NULL UNIQUE,
	-- ���ǽü��Ұ�
	amenities_content varchar2(2000) NOT NULL,
	-- �������ϸ�
	orgfilename varchar2(300) NOT NULL,
	-- �������ϸ�
	savefilename varchar2(300) NOT NULL,
	PRIMARY KEY (amenities_num)
);


-- �������̺�
CREATE TABLE Booking_TABLE
(
	-- �����ȣ
	booking_num number(5) NOT NULL,
	-- ��ĺ���ȣ
	room_num number(10) NOT NULL,
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- �����ݾ�
	pay_money number(10) NOT NULL,
	-- �����û��¥
	books_date date NOT NULL,
	-- ���ڽ�����
	start_date date NOT NULL,
	-- ����������
	end_date date NOT NULL,
	-- �������
	book_status varchar2(100) NOT NULL,
	PRIMARY KEY (booking_num)
);


-- ����(����)
CREATE TABLE b_event
(
	-- ����ĺ�Ű
	bnum number(10) NOT NULL,
	-- ���½ĺ�Ű
	snum number(10) NOT NULL,
	-- �����
	btype varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (bnum)
);


-- ����
CREATE TABLE coupon
(
	-- ������ȣ
	coupon_num number(10) NOT NULL,
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- ������
	coupon_name varchar2(100) NOT NULL,
	-- ��������
	coupon_type varchar2(100) NOT NULL,
	-- ������뿩��
	coupon_status varchar2(100) NOT NULL,
	-- ������
	making_date date NOT NULL,
	PRIMARY KEY (coupon_num)
);


-- �̺�Ʈ ���̺�
CREATE TABLE event
(
	-- �̺�Ʈ�ĺ�Ű
	event_num number(10) NOT NULL,
	-- �̺�Ʈ����
	etitle varchar2(100) NOT NULL,
	-- �̺�Ʈ�����
	eregdate date NOT NULL,
	-- �̺�Ʈ��ȸ��
	ehit number(10) NOT NULL,
	-- �̺�Ʈ ������
	estartdate date NOT NULL,
	-- �̺�Ʈ������
	eenddate date NOT NULL,
	PRIMARY KEY (event_num)
);


-- �̺�Ʈ �̹��� ���̺�
CREATE TABLE eventimages
(
	-- �̹����ĺ�Ű
	eimgnum number(10) NOT NULL,
	-- �������ϸ�
	orgfilename varchar2(300) NOT NULL,
	-- �������ϸ�
	savefilename varchar2(300) NOT NULL,
	-- �̺�Ʈ�ĺ�Ű
	event_num number(10) NOT NULL,
	PRIMARY KEY (eimgnum)
);


-- ���ֹ������� ���̺�
CREATE TABLE faq
(
	-- ���ǹ�ȣ
	fnum number(10) NOT NULL,
	-- ���ֹ�������
	ftitle varchar2(100) NOT NULL,
	-- �亯
	fcontent varchar2(2000) NOT NULL,
	-- ī�װ��ĺ�Ű
	fcnum number(10) NOT NULL,
	PRIMARY KEY (fnum)
);


-- ����ī�װ�
CREATE TABLE faqcategory
(
	-- ī�װ��ĺ�Ű
	fcnum number(10) NOT NULL,
	-- ī�װ���
	fctype varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (fcnum)
);


-- ȸ��������̺�
CREATE TABLE grade
(
	-- ��޽ĺ�Ű
	gnum number(10) NOT NULL,
	-- ��޸�
	gname varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (gnum)
);


-- �������̺�
CREATE TABLE house
(
	-- ��ü�ĺ�Ű
	house_num number(10) NOT NULL,
	-- ����ĺ�Ű
	bnum number(10) NOT NULL,
	-- ���ҼҰ�
	intro varchar2(2000) NOT NULL,
	-- �Խǽð�
	checkintime date NOT NULL,
	-- ��ǽð�
	checkouttime date NOT NULL,
	-- ��ü��
	conpany varchar2(300) NOT NULL,
	-- ����ڵ�Ϲ�ȣ
	license varchar2(100) NOT NULL,
	-- ��ǥ�ڸ�
	ceo varchar2(30) NOT NULL,
	-- ����������
	orgaddr varchar2(300) NOT NULL,
	-- ����������
	workplace varchar2(300) NOT NULL,
	-- �������ȭ��ȣ
	com_tel varchar2(100) NOT NULL,
	-- ���ο���
	approval varchar2(100) NOT NULL,
	PRIMARY KEY (house_num)
);


-- �������ǽü�
CREATE TABLE houseintro
(
	-- �������ǽü��ĺ�Ű
	house_intro_num number(10) NOT NULL,
	-- ��ü�ĺ�Ű
	house_num number(10) NOT NULL,
	-- ���ǽü��ĺ�Ű
	amenities_num number(10) NOT NULL,
	PRIMARY KEY (house_intro_num)
);


-- �����̹���
CREATE TABLE house_img
(
	-- �⺻�ĺ�Ű
	house_img_num number(4) NOT NULL,
	-- ��ü�ĺ�Ű
	house_num number(10) NOT NULL,
	-- �����̹���������
	house_org_name varchar2(100) NOT NULL,
	-- �����̹��������
	house_save_name varchar2(100) NOT NULL,
	PRIMARY KEY (house_img_num)
);


-- ȸ�����̺�
CREATE TABLE members
(
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- ��޽ĺ�Ű
	gnum number(10) NOT NULL,
	-- ��й�ȣ
	mpwd varchar2(15) NOT NULL,
	-- �̸�
	mname varchar2(15) NOT NULL,
	-- ��ȭ��ȣ
	mphone varchar2(20) NOT NULL,
	-- �̸���
	memail varchar2(30) NOT NULL,
	-- �ּ�
	maddr varchar2(40) NOT NULL,
	-- ������
	mregdate date NOT NULL,
	-- ����Ʈ
	mpoint number(4,0) NOT NULL,
	PRIMARY KEY (mid)
);


-- �������� ���̺�
CREATE TABLE notice
(
	-- �������׹�ȣ
	nnum number(10) NOT NULL,
	-- ����������
	ntitle varchar2(100) NOT NULL,
	-- ��������
	ncontent varchar2(2000) NOT NULL,
	-- ������¥
	nregdate date NOT NULL,
	PRIMARY KEY (nnum)
);


-- �������̺�
CREATE TABLE payment
(
	-- ������ȣ
	pay_num number(5) NOT NULL,
	-- �����ȣ
	booking_num number(5) NOT NULL,
	-- ������ȣ
	coupon_num number(10),
	-- ���������ݾ�
	pay number(10) NOT NULL,
	-- ������¥
	pay_day date NOT NULL,
	-- ��������
	payment_type varchar2(100) NOT NULL,
	PRIMARY KEY (pay_num)
);


-- Q&A�Խ���
CREATE TABLE qnaboard
(
	-- ���ǹ�ȣ
	qna_num number(10) NOT NULL,
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- qnaī�װ��ĺ�Ű
	qna_category_num number(10) NOT NULL,
	-- ��������
	qna_title varchar2(300) NOT NULL,
	-- ���ǳ���
	qna_content varchar2(2000) NOT NULL,
	-- �亯
	anwser varchar2(2000),
	-- �����ۼ���
	qna_date date NOT NULL,
	-- �亯�ۼ���
	anwser_date date,
	PRIMARY KEY (qna_num)
);


-- Q&Aī�װ�
CREATE TABLE qna_category
(
	-- qnaī�װ��ĺ�Ű
	qna_category_num number(10) NOT NULL,
	-- qnaī�װ���
	qna_category_name varchar2(100) NOT NULL UNIQUE,
	PRIMARY KEY (qna_category_num)
);


-- �����̹���
CREATE TABLE reiew_img
(
	-- �����̹����ĺ���ȣ
	review_img_num number(10) NOT NULL,
	-- �ı�ĺ�Ű
	review_num number(10) NOT NULL,
	-- �����̹���������
	review_org_name varchar2(300) NOT NULL,
	-- �����̹��������
	review_save_name varchar2(300) NOT NULL,
	PRIMARY KEY (review_img_num)
);


-- �ı�Խ���
CREATE TABLE review
(
	-- �ı�ĺ�Ű
	review_num number(10) NOT NULL,
	-- ��ĺ���ȣ
	room_num number(10) NOT NULL,
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- ��������
	review_title varchar2(300) NOT NULL,
	-- ���䳻��
	review_content varchar2(2000) NOT NULL,
	-- �ı��ۼ���
	review_date date NOT NULL,
	-- ģ����
	kindness number(10) NOT NULL,
	-- û�ᵵ
	clean number(10) NOT NULL,
	-- ���Ǽ�
	convenience number(10) NOT NULL,
	PRIMARY KEY (review_num)
);


-- ��������
CREATE TABLE rooms
(
	-- ��ĺ���ȣ
	room_num number(10) NOT NULL,
	-- ��ü�ĺ�Ű
	house_num number(10) NOT NULL,
	-- ���Ǹ�
	roomname varchar2(100) NOT NULL,
	-- ���ǰ���
	room_prise number(10) NOT NULL,
	-- ��������
	room_info varchar2(2000) NOT NULL,
	-- ��üũ��
	room_check number(3),
	-- �ִ��ο�
	max_Personnel number(10) NOT NULL,
	PRIMARY KEY (room_num)
);


-- �����̹���
CREATE TABLE rooms_img
(
	-- �����̹����ĺ�Ű
	rooms_img_num number(10) NOT NULL,
	-- ��ĺ���ȣ
	room_num number(10) NOT NULL,
	-- �����̹���������
	room_org_name varchar2(100) NOT NULL,
	-- �����̹��������
	room_save_name varchar2(100) NOT NULL,
	PRIMARY KEY (rooms_img_num)
);


-- ����
CREATE TABLE stay
(
	-- ���½ĺ�Ű
	snum number(10) NOT NULL,
	-- ���¸�
	sname varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (snum)
);


-- ����
CREATE TABLE wishlist
(
	-- ���Ͻĺ�Ű
	wish_num number(10) NOT NULL,
	-- ȸ�����̵�
	mid varchar2(15) NOT NULL,
	-- ��ü�ĺ�Ű
	house_num number(10) NOT NULL,
	PRIMARY KEY (wish_num)
);



/* Create Foreign Keys */

ALTER TABLE houseintro
	ADD FOREIGN KEY (amenities_num)
	REFERENCES amenities (amenities_num)
;


ALTER TABLE payment
	ADD FOREIGN KEY (booking_num)
	REFERENCES Booking_TABLE (booking_num)
;


ALTER TABLE house
	ADD FOREIGN KEY (bnum)
	REFERENCES b_event (bnum)
;


ALTER TABLE payment
	ADD FOREIGN KEY (coupon_num)
	REFERENCES coupon (coupon_num)
;


ALTER TABLE eventimages
	ADD FOREIGN KEY (event_num)
	REFERENCES event (event_num)
;


ALTER TABLE faq
	ADD FOREIGN KEY (fcnum)
	REFERENCES faqcategory (fcnum)
;


ALTER TABLE members
	ADD FOREIGN KEY (gnum)
	REFERENCES grade (gnum)
;


ALTER TABLE houseintro
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE house_img
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE rooms
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE Booking_TABLE
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE qnaboard
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE review
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE qnaboard
	ADD FOREIGN KEY (qna_category_num)
	REFERENCES qna_category (qna_category_num)
;


ALTER TABLE reiew_img
	ADD FOREIGN KEY (review_num)
	REFERENCES review (review_num)
;


ALTER TABLE Booking_TABLE
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE review
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE rooms_img
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE b_event
	ADD FOREIGN KEY (snum)
	REFERENCES stay (snum)
;