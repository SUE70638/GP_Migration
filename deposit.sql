-- drop table DEPOSIT purge;
 
Create table DEPOSIT(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
MSISDN NUMBER(22) not null,
DEPOSIT_ID NUMBER(22) not null,
BATCH_NO NUMBER(22) ,
CHANNEL_ID VARCHAR2(60) ,
TRANS_ID VARCHAR2(30) ,
PAYMENT_ID NUMBER(22) not null,
DEPOSIT_AMOUNT FLOAT(22) ,
RECEIVED_DATE DATE not null,
GL_ID VARCHAR2(30) ,
CURRENCY_ID NUMBER(22) not null,
USER_ID VARCHAR2(16) not null,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_DEPOSIT_ACCOUNT_NO ON DEPOSIT(ACCOUNT_NO);