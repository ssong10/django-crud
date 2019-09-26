CREATE TABLE classmates (
    name TEXT,
    age INTERGER,
    address TEXT
)
-- DATA 추가(Create)
INSERT INTO classmates (name,age)
    VALUES ('홍길동',23);

-- 모든 열의 데이터를 넣을 때는 컬럼을 명시할 필요가 없다!
INSERT INTO classmates
    VALUES ('홍길동',30,'서울');

SELECT rowid, * FROM classmates;

DROP TABLE classmates;
CREATE TABLE classmates(
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

SELECT age,name FROM classmates;

CREATE TABLE tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
    );

--LIMIT
SELECT name FROM classmates LIMIT 1
--OFSET
SELECT name FROM classmates LIMIT 1 OFFSET 1;
--WHERE
SELECT rowid, name FROM classmates WHERE address ='서울';
-- 특정 column 중복 제거
SELECT DISTINCT age FROM classmates;
-- DELETE
DELETE FROM classmates WHERE rowid=1;
-- 마지막 데이터를 삭제하고 새롭게 추가해보면, id가 다시 활용되는 것을 볼 수있다.ON
-- 이를 방지하려면, AUTOINCREMENT (django에서 id값)
CREATE TABLE tests(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);
​
UPDATE classmates
SET age=10
WHERE rowid=3;
​
SELECT rowid, * FROM classmates