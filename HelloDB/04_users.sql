.mode csv
.import users.csv users

-- 1. age가 30 이상인 사람
SELECT * FROM users WHERE age >= 30;

-- 2. age가 30 이상인 사람의 first_name
SELECT first_name FROM users WHERE age >=30;

-- 3. 30이상, last_name='김' 인 사람의 first_name 과 age
SELECT first_name,age FROM users WHERE age >=30 and last_name="김";

-- 4. 30이상, 김씨 인원수
SELECT count(*) FROM users WHERE age >=30 and last_name="김";

-- 5. 전체 데이터 갯수
SELECT count(*) FROM users;

-- 6. 전체 평균 나이
SELECT AVG(age) FROM users;

-- 7. 30살 이상인 사람의 평균 나이
SELECT AVG(age) FROM users WHERE age >=30;

-- 8. balance 가장 높은 사람과 액수
SELECT first_name,MAX(balance) FROM users;

-- 9. 30살 이상인 사람의 평균 잔액
SELECT AVG(balance) FROM users WHERE age >=30;

-- 10. 20 대인 사람은??
SELECT * FROM users WHERE age LIKE '2_';

-- 11. 지역번호가 02인 사람 (서울)
SELECT * FROM users WHERE phone LIKE '02-%';

-- 12. 이름이 준으로 끝나는 사람
SELECT * FROM users WHERE first_name LIKE '%준';

-- 13. 중간번호가 5114 인사람
SELECT * FROM users WHERE phone LIKE '%-5114-%';
SELECT * FROM users WHERE phone LIKE '%-%11%-%';

-- 14. 나이많은사람 10명
SELECT * FROM users ORDER BY age DESC LIMIT 10;

--15. 나이, 성순으로 오름차순 10명
SELECT * FROM users ORDER BY age DESC, last_name LIMIT 10;


ALTER TABLE articles RENAME TO news;

ALTER TABLE news ADD COLUMN created_at DATETIME NOT NULL;