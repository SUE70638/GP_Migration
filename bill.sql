-- drop table BILL purge;
 
Create table BILL(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
MSISDN NUMBER(22) not null,
CREATED_DATE DATE not null,
MODIFIED_DATE DATE not null,
BILL_NO NUMBER(22) not null,
CURENT_TOTAL FLOAT(22) ,
CURRENCY NUMBER(22) not null,
BILL_END_DATE DATE not null,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_BILL_ACCOUNT_NO ON BILL(ACCOUNT_NO);