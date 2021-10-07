#DB 삭제/생성/사용
DROP DATABASE IF EXISTS am;
CREATE DATABASE am;
USE am;

# 게시물 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    title CHAR(255) NOT NULL,
    `body` LONGTEXT NOT NULL
);
DROP TABLE `member`;
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    loginId CHAR(100) NOT NULL UNIQUE,
    loginPw CHAR(100) NOT NULL ,
    `name` CHAR(50) NOT NULL
    );
SELECT * FROM `member`;

SELECT *
FROM `member`
WHERE loginId = loginId;


# 게시물 데이터 추가 
INSERT INTO article 
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article 
SET regDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article 
SET regDate = NOW(),
title = '제목3',
`body` = '내용3';

INSERT INTO article 
SET regDate = NOW(),
title = '제목4',
`body` = '내용4';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '홍길동';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '홍길순';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
`name` = 'admin';

#게시물 테이블에 memberId칼럼 추가
ALTER TABLE `article` ADD COLUMN memberId INT(10) UNSIGNED NOT NULL AFTER regDate ;

SELECT * FROM article;

UPDATE article
SET memberId = 2
WHERE memberId = 0;

SELECT COUNT(*) FROM article;

INSERT INTO article (regDate,title,`body`)
SELECT NOW(),CONCAT('제목_',RAND()),CONCAT('내용_',RAND())
FROM article;

