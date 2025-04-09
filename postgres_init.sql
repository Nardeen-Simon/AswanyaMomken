CREATE ROLE postgres WITH SUPERUSER LOGIN PASSWORD 'admin';
CREATE DATABASE fastapi_database;
GRANT ALL PRIVILEGES ON DATABASE fastapi_database TO postgres;
------------------------------------------------------------------------------
