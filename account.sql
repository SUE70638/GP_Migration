Create table ACCOUNT(ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
CREATED_DATE DATE not null,
MODIFIED_DATE DATE ,
EFFECTIVE_DATE DATE ,
CLOSE_DATE  DATE ,
STATUS VARCHAR2(1) ,
STATUS_REASON NUMBER(22) ,
DOB DATE ,
GENDER VARCHAR2(1) ,
NATIONALITY NUMBER(22) ,
CUSTOMER_GROUP VARCHAR2(10) ,
LANGUAGE NUMBER(22) ,
INVOICE_FORMAT VARCHAR2(30) ,
BSCODE VARCHAR2(80) ,
TEST_ACCOUNT VARCHAR2(20) ,
VAT_EXEMPTION VARCHAR2(1) not null,
PLMN_FLAG NUMBER(22) ,
TM_CODE NUMBER(22) ,
CUSTOMER_TYPE VARCHAR2(80) ,
USER_ID VARCHAR2(18) ,
CONTRACT_ID NUMBER(22) not null,
DEFAULT_LIMIT FLOAT(22),
PRIMARY KEY (CUST_ID)
--FOREIGN KEY (CUST_KEY) REFERENCES CUSTOMER(CUST_KEY)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_ACCOUNT_ACCT_ID ON ACCOUNT(ACCOUNT_NO);
 CREATE INDEX idx_ACCOUNT_ACCT_CODE ON ACCOUNT(CUST_ID);