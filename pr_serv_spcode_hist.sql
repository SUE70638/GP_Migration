-- drop table PR_SERV_SPCODE_HIST purge;
 
Create table PR_SERV_SPCODE_HIST(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
MSISDN NUMBER(22) ,
PROFILE_ID NUMBER(22) not null,
CO_ID NUMBER(22) not null,
SNCODE NUMBER(22) not null,
HISTNO NUMBER(22) not null,
SPCODE NUMBER(22) not null,
TRANSACTIONNO NUMBER(22) not null,
VALID_FROM_DATE DATE ,
ENTRY_DATE DATE not null,
REQUEST_ID NUMBER(22) ,
REC_VERSION NUMBER(22) not null,
AGE_OUT_DATE DATE ,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_PR_SERV_SPCODE_HIST_ACCOUNT_NO ON PR_SERV_SPCODE_HIST(ACCOUNT_NO);