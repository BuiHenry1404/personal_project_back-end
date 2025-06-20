USE `ROOM-MANAGEMENT-WEB`;
ALTER TABLE ROOM_MEMBER
    ADD COLUMN CONTRACT_ID INT;
ALTER TABLE ROOM_MEMBER
    ADD COLUMN IS_ROOM_REPRESENTATIVE TINYINT(1);
ALTER TABLE MAINTENANCE_REQUEST
    DROP COLUMN ROOM_ID,
    ADD COLUMN CONTRACT_ID INT;
ALTER TABLE MAINTENANCE_REQUEST
    ADD COLUMN SERVICE_ROOM_ID INT;
ALTER TABLE SERVICE_ROOM
    ADD COLUMN STATUS VARCHAR(40);
ALTER TABLE SERVICE_ROOM
    DROP COLUMN ROOM_ID,
    ADD COLUMN CONTRACT_ID INT,
    ADD COLUMN SERVICE_TYPE VARCHAR(40);
ALTER TABLE INVOICE
    DROP COLUMN ROOM_ID,
    DROP COLUMN USER_ID,
    ADD COLUMN CONTRACT_ID INT;
