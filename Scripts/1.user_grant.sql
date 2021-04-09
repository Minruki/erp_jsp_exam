
-- 계정 권한 부여
grant all 
   on ERP_JSP_EXAM.* 
   to 'user_grant'@'localhost' identified by 'rootroot';

-- file 권한(backup, load) -- root만 권한 부여 가능
GRANT File 
   ON *.* 
   TO 'user_grant'@'localhost';