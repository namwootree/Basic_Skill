 /* 
SQL의 분류

	DML (Data Manipulation Language)
		* 데이터 조작 언어
		* 데이터를 조작 (선택, 삽입, 수정, 삭제) 하는 데 사용되는 언어
		* DML 구문이 사용되는 대상은 테이블의 행
		* DML 사용하기 위해서는 꼭 그 이전에 테이블이 정의되어 있어야 함
		* SELECT, INSERT, UPDATE, DELETE
		* 트랜잭션이 발생하는 SQL도 DML에 속함
			- 테이블의 데이터를 변경 (입력, 수정, 삭제)할 때 실제 테이블에 완전히 적용하지 않고, 임시로 적용시키는 것
			- 취소 가능
            
	DDL (Data Definition Language)
		* 데이터 정의 언어
        * 데이터 베이스, 테이블, 뷰, 인덱스 등의 데이터 베이스 개체를 생성, 삭제. 변경하는 역할
        * CREATE, DROP, ALTER 
        * DDL은 트랜잭션 발생시키지 않음
        * ROLLBACK이나 COMMIT 사용 불가
        * DDL문은 실행 즉시 MySQL에 적용
	
    DCL (Data Control Language)
		* 데이터 제어 언어
        * 사용자에게 어떤 권한을 부여하거나 빼앗을 때 주로 사용하는 구문
        * GRANT, REVOKE
*/

-- 현재 서버에 어떤 DB가 있는지 보기
SHOW DATABASES;

-- 사용할 데이터 베이스 지정
-- 지정해 놓은 후 특별히 다시 USE문 사용하거나 다른 DB를 사용하겠다고 명시하지 않는 이상 모든 SQL문은 지정 DB에서 수행
USE sakila;

-- 데이터 베이스 테이블 이름 보기
SHOW TABLES;

-- 데이터 베이스 테이블 정보 조회
SHOW TABLE STATUS;

-- 테이블에 무슨 열이 있는지 확인
DESCRIBE film_actor;
DESC film_category;

-- 요구하는 데이터를 가져오는 구문
-- 데이터 베이스 내 테이블에서 원하는 정보를 추출
-- SELECT FROM WHERE GROUP BY HAVING ORDER BY
SELECT * FROM film_actor;

-- 테이블에서 필요로 하는 열만 가져오기
-- 여러 개의 열을 가져오고 싶을 때는 콤마로 구분
-- 열 이름의 순서는 출력하고 싶은 순서대로 배열 가능
SELECT film_id, last_update FROM film_actor;

-- 조회하는 결과에 특정한 조건으로 원하는 데이터만 보고 싶을 때 사용
SELECT * FROM customer WHERE store_id = 1;

-- 관계 연산자 사용 (OR, AND, 조건, 관계)
SELECT * FROM customer WHERE store_id = 1 OR last_name = 'SMITH';

-- 데이터가 숫자로 구성되어 있어 연속적인 값은 BETWEEN AND 사용 가능
SELECT * FROM customer WHERE address_id BETWEEN 400 AND 500;

-- 이산적인 값의 조건에서는 IN() 사용
SELECT * FROM customer WHERE last_name IN('MARK', 'ROBERT');

-- 문자열의 내용 검색하기 위해 LIKE 사용
SELECT * FROM customer WHERE last_name LIKE 'M%';

-- ANY : 서브쿼리의 여러 개의 결과 중 한 가지만 만족해도 가능
SELECT * FROM customer WHERE email > ANY (SELECT email FROM customer WHERE first_name LIKE 'C%');

-- ALL : 서브쿼리의 여러 개의 결과를 모두 만족시켜야 함
SELECT * FROM customer WHERE email > ALL (SELECT email FROM customer WHERE first_name LIKE 'A%');

-- ORDER BY : 결과가 출력되는 순서를 조절
SELECT * FROM customer ORDER BY store_id ASC, address_id DESC;

-- DISTINCT : 중복된 것은 1개씩만 보여주면서 출력
SELECT DISTINCT store_id FROM customer;

-- LIMIT : 출력 개수 제한
SELECT * FROM customer LIMIT 10;

-- GROUP BY : 그룹으로 묶어주는 역할
SELECT customer_id, AVG(amount) AS 'AVG' FROM payment GROUP BY customer_id;

-- HAVING : 조건 제한
SELECT customer_id, AVG(amount) AS 'AVG' FROM payment GROUP BY customer_id HAVING AVG(amount) > 5;

-- JOIN : 여러 테이블에서 가져온 레코드를 조합하여 하나의 테이블이나 결과 집합으로 표현
SELECT * FROM payment JOIN customer ON payment.customer_id = customer.customer_id;
