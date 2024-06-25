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
    conNo bigint primary key auto_increment,
    orderer varchar(50),
    oriCon varchar(50),
    subCon varchar(50),
    conName varchar(150),
    conLocation varchar(150),
    conAmount bigint,
    laborCost bigint
);

desc contract_table;

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