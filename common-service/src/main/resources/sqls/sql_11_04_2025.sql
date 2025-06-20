USE `ROOM-MANAGEMENT-WEB`;

ALTER TABLE UTILITY_INDEX
    CHANGE CONTRACT_ID ROOM_ID INT;

ALTER TABLE SERVICE_ROOM
    CHANGE ROOM_ID CONTRACT_ID INT;

ALTER TABLE maintenance_fee
    CHANGE SERVICE_ROOM_ID SERVICE_ID INT;


ALTER TABLE SERVICE
    ADD COLUMN PRICE decimal(10,2);


ALTER TABLE UTILITY_INDEX
    ADD COLUMN MONTH_MEASURE INT;

ALTER TABLE UTILITY_INDEX
    ADD COLUMN YEAR_MEASURE INT;


ALTER TABLE maintenance_request
    ADD COLUMN ROOM_ID INT;

ALTER TABLE MAINTENANCE_REQUEST
    ADD COLUMN REQUEST_DONE_DATE timestamp;


ALTER TABLE UTILITY_INDEX
DROP COLUMN ELECTRIC_USED;


ALTER TABLE UTILITY_INDEX
DROP COLUMN ELECTRIC_RECORDED_AT;

ALTER TABLE UTILITY_INDEX
DROP COLUMN  WATER_RECORDED_AT;
