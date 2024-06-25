CREATE DATABASE highgarden_db default CHARACTER SET UTF8;

SHOW DATABASES;

CREATE USER 'highgarden_user'@'localhost' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON highgarden_db.* TO 'highgarden_user'@'localhost';

SHOW GRANTS FOR 'highgarden_user'@'localhost';

USE highgarden_db;

show tables;

/*계약 테이블*/
create table contract_table
(
    conNo bigint primary key auto_increment, /*인덱스*/
    orderer varchar(50) not null, /*발주자*/
    oriCon varchar(50) not null, /*원사업자*/
    subCon varchar(50) not null, /*하도사업자*/
    conName varchar(150) not null, /*공사명*/
    conLocation varchar(150) not null, /*공사장소*/
    conAmount bigint not null, /*계약금액*/
    laborCost bigint not null /*노무비*/
);

desc contract_table;

insert into contract_table(conNo,orderer,oriCon,subCon,conName,conLocation,conAmount,laborCost) values(0,'한국전력공사','성도이엔지','대양기초','시흥시 파일공사','경기도 시흥',50000000,3000000);

select * from contract_table;

/*정산 테이블*/
create table board_table
(
    id bigint primary key auto_increment,
    boardTitle varchar(50),
    boardWriter varchar(20),
    boardContents varchar(500),
    createdAt datetime default now(),
    fileAttached int default 0
);

/*사업자 테이블*/
create table board_table
(
    id bigint primary key auto_increment,
    boardTitle varchar(50),
    boardWriter varchar(20),
    boardContents varchar(500),
    createdAt datetime default now(),
    fileAttached int default 0
);

/*서류 테이블*/
create table boardDoc_table1
(
    id bigint primary key auto_increment,
    boardTitle varchar(50),
    boardWriter varchar(20),
    boardContents varchar(500),
    createdAt datetime default now(),
    fileAttached int default 0
);

/*샘플양식 테이블*/
create table boardDocSample_table
(
    id bigint primary key auto_increment,
    boardTitle varchar(50),
    boardWriter varchar(20),
    boardContents varchar(500),
    createdAt datetime default now(),
    fileAttached int default 0
);


create table board_file_table
(
    id	bigint auto_increment primary key,
    originalFileName varchar(100),
    storedFileName varchar(100),
    boardId bigint,
    constraint fk_board_file foreign key(boardId) references board_table(id) on delete cascade
);