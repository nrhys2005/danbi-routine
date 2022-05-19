CREATE USER routine_user WITH PASSWORD 'Rouine1!';
ALTER ROLE routine_user SET client_encoding TO 'utf8';
ALTER ROLE routine_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE routine_user SET TIMEZONE TO 'Asia/Seoul';

ALTER ROLE routine_user WITH SUPERUSER;

CREATE DATABASE routine_db;
GRANT ALL PRIVILEGES ON DATABASE routine_db TO routine_user;
