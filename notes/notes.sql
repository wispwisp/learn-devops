-- ##################################################
-- # Docker:
-- docker network create mytest
-- docker run -d \
--        --name postgres \
--        -e POSTGRES_PASSWORD=1 \
--        --network=mytest \
--        --network-alias=db \
--        postgres:15.4
-- ##################################################
-- # Psql:
-- docker run -it --rm \
--        --network mytest \
--        postgres:15.4 psql -h postgres -U postgres
-- ##################################################
-- # Connect to database in PSQL:
-- CREATE DATABASE test;
-- \c test;
-- \d


-- ##################################################
-- Create table
CREATE TABLE t1 (
    somename TEXT,
    somenumber INT PRIMARY KEY
);
