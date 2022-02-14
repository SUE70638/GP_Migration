-- drop table BILLINFO purge;
 
Create table BILLINFO(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
MSISDN NUMBER(22) ,
SEQ_NO NUMBER(22) not null,
BILLINFO_ID NUMBER(22) not null,
PRIMARY_ACCOUNT VARCHAR2(1) ,
CREATED_DATE DATE not null,
MODIFIED_DATE DATE not null,
BDOM VARCHAR2(2) not null,
BILL_WHEN  VARCHAR2(1) not null,
CURRENCY NUMBER(22) not null,
BILLING_STATUS CHAR(1) not null,
BILLING_STATUS_FLAGS NUMBER(22) not null,
LAST_BILL_DATE DATE,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_BILLINFO_ACCOUNT_NO ON BILLINFO(ACCOUNT_NO);