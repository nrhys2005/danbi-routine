CREATE USER danbi_user WITH PASSWORD 'Eksql12#$';
ALTER ROLE danbi_user SET client_encoding TO 'utf8';
ALTER ROLE danbi_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE danbi_user SET TIMEZONE TO 'Asia/Seoul';

ALTER ROLE danbi_user WITH SUPERUSER;

CREATE DATABASE danbi_db;
GRANT ALL PRIVILEGES ON DATABASE danbi_db TO danbi_user;
