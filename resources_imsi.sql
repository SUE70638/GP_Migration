-- drop table RESOURCE_IMSI purge;
 
Create table RESOURCE_IMSI(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
IMSI VARCHAR2(50) ,
IMSI_ACTIVE_DATE DATE not null,
IMSI_LAST_STATUS_DATE DATE ,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_RESOURCE_IMSI_ACCOUNT_NO ON RESOURCE_IMSI(ACCOUNT_NO);