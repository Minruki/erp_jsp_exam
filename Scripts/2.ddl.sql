-- 내 스키마
DROP SCHEMA IF EXISTS erp_jsp_exam;

-- 내 스키마
CREATE SCHEMA erp_jsp_exam;

-- 직책
CREATE TABLE erp_jsp_exam.Title (
   titleNo   INT         NOT NULL COMMENT '직책코드', -- 직책코드
   titleName VARCHAR(20) NOT NULL COMMENT '직책명' -- 직책명
)
COMMENT '직책';

-- 직책
ALTER TABLE erp_jsp_exam.Title
   ADD CONSTRAINT PK_Title -- 직책 기본키
      PRIMARY KEY (
         titleNo -- 직책코드
      );

-- 부서
CREATE TABLE erp_jsp_exam.department (
   deptNo   INT         NOT NULL COMMENT '부서번호', -- 부서번호
   deptName VARCHAR(20) NOT NULL COMMENT '부서명', -- 부서명
   floor    INT         NULL     COMMENT '위치' -- 위치
)
COMMENT '부서';

-- 부서
ALTER TABLE erp_jsp_exam.department
   ADD CONSTRAINT PK_department -- 부서 기본키
      PRIMARY KEY (
         deptNo -- 부서번호
      );

-- 사원
CREATE TABLE erp_jsp_exam.employee (
   empno   INT         NOT NULL COMMENT '사원번호', -- 사원번호
   empname VARCHAR(20) NOT NULL COMMENT '사원명', -- 사원명
   title   INT         NULL     COMMENT '직책', -- 직책
   manager INT         NULL     COMMENT '직속상사', -- 직속상사
   salary  INT         NULL     COMMENT '급여', -- 급여
   dept    INT         NULL     COMMENT '부서', -- 부서
   hiredate date	      NULL     COMMENT '입사일' -- 입사일
)
COMMENT '사원';

-- 사원
ALTER TABLE erp_jsp_exam.employee
   ADD CONSTRAINT PK_employee -- 사원 기본키
      PRIMARY KEY (
         empno -- 사원번호
      );

-- 사원
ALTER TABLE erp_jsp_exam.employee
   ADD CONSTRAINT FK_Title_TO_employee -- 직책 -> 사원
      FOREIGN KEY (
         title -- 직책
      )
      REFERENCES erp_jsp_exam.Title ( -- 직책
         titleNo -- 직책코드
      );

-- 사원
ALTER TABLE erp_jsp_exam.employee
   ADD CONSTRAINT FK_employee_TO_employee -- 사원 -> 사원
      FOREIGN KEY (
         manager -- 직속상사
      )
      REFERENCES erp_jsp_exam.employee ( -- 사원
         empno -- 사원번호
      );

-- 사원
ALTER TABLE erp_jsp_exam.employee
   ADD CONSTRAINT FK_department_TO_employee -- 부서 -> 사원
      FOREIGN KEY (
         dept -- 부서
      )
      REFERENCES erp_jsp_exam.department ( -- 부서
         deptNo -- 부서번호
      );
      