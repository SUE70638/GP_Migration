-- drop table PROFILE_SERVICE purge;
 
Create table PROFILE_SERVICE(
ACCOUNT_NO VARCHAR2(150) not null,
CUST_ID NUMBER(22) not null,
MSISDN NUMBER(22) ,
PROFILE_ID NUMBER(22) not null,
CO_ID NUMBER(22) not null,
SNCODE NUMBER(22) not null,
SPCODE_HISTNO NUMBER(22) not null,
STATUS_HISTNO NUMBER(22) not null,
ENTRY_DATE DATE not null,
CHANNEL_NUM NUMBER(22) ,
OVW_ACC_FIRST VARCHAR2(1) ,
DATE_BILLED DATE ,
SN_CLASS NUMBER(22) ,
OVW_SUBSCR VARCHAR2(1) ,
SUBSCRIPT FLOAT(22) ,
OVW_ACCESS VARCHAR2(1) ,
OVW_ACC_PRD NUMBER(22) not null,
ACCESSFEE FLOAT(22) ,
CHANNEL_EXCL VARCHAR2(1) ,
DIS_SUBSCR FLOAT(22) ,
INSTALL_DATE DATE ,
TRIAL_END_DATE DATE ,
PRM_VALUE_ID NUMBER(22) ,
CURRENCY NUMBER(22) ,
SRV_TYPE VARCHAR2(1) ,
SRV_SUBTYPE VARCHAR2(1) ,
OVW_ADV_CHARGE VARCHAR2(1) not null,
ADV_CHARGE FLOAT(22) ,
ADV_CHARGE_PRD NUMBER(22) not null,
DELETE_FLAG VARCHAR2(1) ,
REC_VERSION NUMBER(22) not null,
ATTRIB_HISTNO NUMBER(22) ,
ATTRIB_HISTNO_NNP NUMBER(22) ,
OVWACCFEE_HISTNO NUMBER(22) ,
AGE_OUT_DATE DATE ,
IND_HISTNO NUMBER(22) ,
--PRIMARY KEY (CUST_ID)
FOREIGN KEY (CUST_ID) REFERENCES ACCOUNT(CUST_ID)
)SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 
INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 65536 MINEXTENTS 1 
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT 
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "PINTABLE" ;
 CREATE INDEX idx_PROFILE_SERVICE_ACCOUNT_NO ON PROFILE_SERVICE(ACCOUNT_NO);