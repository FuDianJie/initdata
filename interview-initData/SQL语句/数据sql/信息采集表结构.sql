------------------------------------------------------------------
-- Export file for user INTERVIEW_DEV@10.1.167.175:1532/HROSDEV --
-- Created by beyond10.hik on 2019/11/14, 19:09:35 ---------------
------------------------------------------------------------------

set define off
spool 表结构.log

prompt
prompt Creating table T_APPLICANT
prompt ==========================
prompt
create table T_APPLICANT
(
  id            VARCHAR2(50) not null,
  first_name    VARCHAR2(60),
  last_name     VARCHAR2(60),
  email         VARCHAR2(100),
  process_state NUMBER(1),
  send_email    NUMBER(1),
  transfer_oa   NUMBER(1),
  status        NUMBER(1),
  crname        VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1),
  roles         VARCHAR2(50) default 1 not null,
  sys_language  NUMBER(1) default 0,
  local_date    TIMESTAMP(6),
  agree_state   VARCHAR2(2)
)
;
comment on table T_APPLICANT
  is '候选人申请表';
alter table T_APPLICANT
  add constraint PK_APPLICANT primary key (ID);

prompt
prompt Creating table T_ATTACHMENT_INFO
prompt ================================
prompt
create table T_ATTACHMENT_INFO
(
  id               VARCHAR2(50) not null,
  source_file_name VARCHAR2(200),
  file_type        VARCHAR2(5),
  file_link        VARCHAR2(300),
  upload_time      TIMESTAMP(6),
  uploader         VARCHAR2(50),
  main_id          VARCHAR2(50),
  crname           VARCHAR2(50),
  ctime            TIMESTAMP(6),
  chname           VARCHAR2(50),
  mtime            TIMESTAMP(6),
  deleted          NUMBER(1),
  file_name        VARCHAR2(300),
  file_size        VARCHAR2(10),
  display_order    NUMBER(2),
  is_resume        VARCHAR2(10)
)
;
comment on table T_ATTACHMENT_INFO
  is '附件信息表';
alter table T_ATTACHMENT_INFO
  add constraint PK_ATTACHMENT_INFO primary key (ID);

prompt
prompt Creating table T_ATTACHMENT_ROLE
prompt ================================
prompt
create table T_ATTACHMENT_ROLE
(
  id            VARCHAR2(50) not null,
  attachment_id VARCHAR2(50),
  role_id       VARCHAR2(50),
  crname        VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1)
)
;
alter table T_ATTACHMENT_ROLE
  add constraint PK_ATTACHMENT_ROLE primary key (ID);

prompt
prompt Creating table T_BANK_INFO_ASIAN_NE
prompt ===================================
prompt
create table T_BANK_INFO_ASIAN_NE
(
  id                  VARCHAR2(50) not null,
  bank_name           VARCHAR2(150),
  bank_branch         VARCHAR2(150),
  bank_branch_address VARCHAR2(900),
  bank_account_number VARCHAR2(150),
  bank_holder_name    VARCHAR2(150),
  swift_code          VARCHAR2(150),
  area                VARCHAR2(20),
  status              NUMBER(1),
  crname              VARCHAR2(50),
  ctime               TIMESTAMP(6),
  chname              VARCHAR2(50),
  mtime               TIMESTAMP(6),
  applicant_id        VARCHAR2(50),
  deleted             NUMBER(1),
  iban_no             VARCHAR2(150),
  type_of_currency    VARCHAR2(20)
)
;
comment on table T_BANK_INFO_ASIAN_NE
  is '亚洲-中东北非-银行信息表';
alter table T_BANK_INFO_ASIAN_NE
  add constraint PK_BANK_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_BANK_INFO_NA
prompt =============================
prompt
create table T_BANK_INFO_NA
(
  id                        VARCHAR2(50),
  salary_account            VARCHAR2(150),
  salary_branch_code        VARCHAR2(150),
  salary_bank               VARCHAR2(150),
  reimbursement_account     VARCHAR2(150),
  reimbursement_branch_code VARCHAR2(150),
  reimbursement_bank        VARCHAR2(150),
  status                    NUMBER(1),
  cname                     VARCHAR2(50),
  ctime                     TIMESTAMP(6),
  chname                    VARCHAR2(50),
  mtime                     TIMESTAMP(6),
  applicant_id              VARCHAR2(50),
  deleted                   NUMBER(1)
)
;
comment on table T_BANK_INFO_NA
  is '拉美银行信息表';

prompt
prompt Creating table T_BASIC_INFO_ASIAN_NE
prompt ====================================
prompt
create table T_BASIC_INFO_ASIAN_NE
(
  id                   VARCHAR2(50) not null,
  name                 VARCHAR2(150),
  english_name         VARCHAR2(300),
  first_name           VARCHAR2(60),
  middle_name          VARCHAR2(60),
  last_name            VARCHAR2(60),
  gender               VARCHAR2(20),
  date_of_birth        DATE,
  birth_city           VARCHAR2(150),
  nationality          VARCHAR2(100),
  nationality2         VARCHAR2(100),
  ethnicity            VARCHAR2(300),
  religious_belief     VARCHAR2(20),
  phone_number         VARCHAR2(60),
  email                VARCHAR2(150),
  blood_type           VARCHAR2(10),
  marital_status       VARCHAR2(15),
  hobby                VARCHAR2(900),
  cur_res_addr         VARCHAR2(900),
  addr_in_home_country VARCHAR2(900),
  ei_account           VARCHAR2(150),
  ui_account           VARCHAR2(150),
  iit_number           VARCHAR2(150),
  mi_account           VARCHAR2(150),
  area                 VARCHAR2(20),
  status               NUMBER(1),
  cname                VARCHAR2(50),
  ctime                TIMESTAMP(6),
  chname               VARCHAR2(50),
  mtime                TIMESTAMP(6),
  applicant_id         VARCHAR2(50) not null,
  deleted              NUMBER(1)
)
;
comment on table T_BASIC_INFO_ASIAN_NE
  is '亚洲-中东北非-基础信息表';
alter table T_BASIC_INFO_ASIAN_NE
  add constraint PK_BASIC_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_BASIC_INFO_NA
prompt ==============================
prompt
create table T_BASIC_INFO_NA
(
  id               VARCHAR2(50) not null,
  first_name       VARCHAR2(60),
  middle_name      VARCHAR2(60),
  last_name        VARCHAR2(60),
  gender           VARCHAR2(20),
  ethnicity        VARCHAR2(100),
  marital_status   VARCHAR2(20),
  date_of_birth    DATE,
  nationality      VARCHAR2(20),
  birth_city       VARCHAR2(150),
  birth_state      VARCHAR2(150),
  birth_country    VARCHAR2(50),
  education_level  VARCHAR2(20),
  blood_type       VARCHAR2(20),
  retired_employee CHAR(1),
  status           NUMBER(1),
  cname            VARCHAR2(50),
  ctime            TIMESTAMP(6),
  chname           VARCHAR2(50),
  mtime            TIMESTAMP(6),
  application_id   VARCHAR2(50),
  deleted          NUMBER(1)
)
;
comment on table T_BASIC_INFO_NA
  is '拉美-基础信息表';
alter table T_BASIC_INFO_NA
  add constraint PK_BASIC_INFO_NA primary key (ID);

prompt
prompt Creating table T_COMPONENT_ROLE
prompt ===============================
prompt
create table T_COMPONENT_ROLE
(
  id           VARCHAR2(50) not null,
  component_id VARCHAR2(50),
  role_id      VARCHAR2(50),
  crname       VARCHAR2(50),
  ctime        TIMESTAMP(6),
  chname       VARCHAR2(50),
  mtime        TIMESTAMP(6),
  deleted      NUMBER(1)
)
;
alter table T_COMPONENT_ROLE
  add constraint PK_COMPONENT_ROLE primary key (ID);

prompt
prompt Creating table T_CONTACT_INFO_NA
prompt ================================
prompt
create table T_CONTACT_INFO_NA
(
  id           VARCHAR2(50) not null,
  email        VARCHAR2(150),
  cell_phone   VARCHAR2(60),
  phone        VARCHAR2(60),
  district     VARCHAR2(150),
  city         VARCHAR2(150),
  country      VARCHAR2(20),
  zip_code     VARCHAR2(60),
  address      VARCHAR2(900),
  status       NUMBER(1),
  cname        VARCHAR2(50),
  ctime        TIMESTAMP(6),
  chname       VARCHAR2(50),
  mtime        TIMESTAMP(6),
  applicant_id VARCHAR2(50),
  deleted      NUMBER(1)
)
;
comment on table T_CONTACT_INFO_NA
  is '拉美-联系信息表';
alter table T_CONTACT_INFO_NA
  add constraint PK_CONTACT_INFO_NA primary key (ID);

prompt
prompt Creating table T_CURWORK_INFO_ASIAN_NE
prompt ======================================
prompt
create table T_CURWORK_INFO_ASIAN_NE
(
  id                VARCHAR2(50) not null,
  first_worked_date DATE,
  date_from         DATE,
  date_to           DATE,
  company           VARCHAR2(150),
  position          VARCHAR2(150),
  working_hours     NUMBER(10,5),
  area              VARCHAR2(20),
  status            NUMBER(1),
  crname            VARCHAR2(50),
  ctime             TIMESTAMP(6),
  chname            VARCHAR2(50),
  mtime             TIMESTAMP(6),
  applicnat_id      VARCHAR2(50),
  deleted           NUMBER(1),
  curwork_status    VARCHAR2(10)
)
;
comment on table T_CURWORK_INFO_ASIAN_NE
  is '亚洲-中东北非-当前工作信息表';
alter table T_CURWORK_INFO_ASIAN_NE
  add constraint PK_CURWORK_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_DEPENDENTS_INFO
prompt ================================
prompt
create table T_DEPENDENTS_INFO
(
  id                          VARCHAR2(50) not null,
  first_name                  VARCHAR2(20),
  middle_name                 VARCHAR2(20),
  last_name                   VARCHAR2(20),
  family_relation             VARCHAR2(20),
  nationality                 VARCHAR2(50),
  tax_id                      VARCHAR2(50),
  date_of_birth               DATE,
  for_income_tax              CHAR(1),
  for_social_security_purpose CHAR(1),
  status                      NUMBER(1),
  cname                       VARCHAR2(50),
  ctime                       TIMESTAMP(6),
  chname                      VARCHAR2(50),
  mtime                       TIMESTAMP(6),
  applicant_id                VARCHAR2(50),
  deleted                     NUMBER(1)
)
;
comment on table T_DEPENDENTS_INFO
  is '家庭关系联系表(暂时无用)';
alter table T_DEPENDENTS_INFO
  add constraint PK_DEPENDENTS_INFO primary key (ID);

prompt
prompt Creating table T_EDUCATION_INFO_ASIAN_NE
prompt ========================================
prompt
create table T_EDUCATION_INFO_ASIAN_NE
(
  id                VARCHAR2(50) not null,
  date_from         DATE,
  date_to           DATE,
  school_name       VARCHAR2(300),
  country_of_school VARCHAR2(900),
  major             VARCHAR2(150),
  degree            VARCHAR2(150),
  area              VARCHAR2(20),
  status            NUMBER(1),
  city              VARCHAR2(150),
  crname            VARCHAR2(50),
  ctime             TIMESTAMP(6),
  chname            VARCHAR2(50),
  mtime             TIMESTAMP(6),
  applicant_id      VARCHAR2(50),
  deleted           NUMBER(1)
)
;
comment on table T_EDUCATION_INFO_ASIAN_NE
  is '亚洲-中东北非-学历信息表';
alter table T_EDUCATION_INFO_ASIAN_NE
  add constraint PK_EDUCATION_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_EMERGENCY_INFO_ASIAN_NE
prompt ========================================
prompt
create table T_EMERGENCY_INFO_ASIAN_NE
(
  id              VARCHAR2(50) not null,
  relation_ship   VARCHAR2(30),
  name            VARCHAR2(150),
  contact_number  VARCHAR2(60),
  contact_address VARCHAR2(900),
  area            VARCHAR2(20),
  status          NUMBER(1),
  crname          VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  applicant_id    VARCHAR2(50),
  deleted         NUMBER(1)
)
;
comment on table T_EMERGENCY_INFO_ASIAN_NE
  is '亚洲-中东北非-紧急联系人信息表';
alter table T_EMERGENCY_INFO_ASIAN_NE
  add constraint PK_EMERGENCY_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_EMERGENCY_INFO_NA
prompt ==================================
prompt
create table T_EMERGENCY_INFO_NA
(
  id            VARCHAR2(50) not null,
  first_name    VARCHAR2(60),
  middle_name   VARCHAR2(60),
  last_name     VARCHAR2(60),
  relation_ship VARCHAR2(20),
  cell_phone    VARCHAR2(60),
  status        NUMBER(1),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  applicant_id  VARCHAR2(50),
  deleted       NUMBER(1)
)
;
comment on table T_EMERGENCY_INFO_NA
  is '拉美-紧急联系人信息表';
alter table T_EMERGENCY_INFO_NA
  add constraint PK_EMERGENCY_INFO_NA primary key (ID);

prompt
prompt Creating table T_FAMILY_INFO_ASIAN_NE
prompt =====================================
prompt
create table T_FAMILY_INFO_ASIAN_NE
(
  id                 VARCHAR2(50) not null,
  first_name         VARCHAR2(60),
  middle_name        VARCHAR2(60),
  last_name          VARCHAR2(60),
  relation_ship      VARCHAR2(30),
  date_of_birth      DATE,
  occupation         VARCHAR2(150),
  is_depended_on_you CHAR(1),
  area               VARCHAR2(20),
  status             NUMBER(1),
  crname             VARCHAR2(50),
  ctime              TIMESTAMP(6),
  chname             VARCHAR2(50),
  mtime              TIMESTAMP(6),
  applicant_id       VARCHAR2(50),
  deleted            NUMBER(1)
)
;
comment on table T_FAMILY_INFO_ASIAN_NE
  is '亚洲-中东北非-家庭关系';
alter table T_FAMILY_INFO_ASIAN_NE
  add constraint PK_FAMILY_INFO_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_FAMILY_INFO_NA
prompt ===============================
prompt
create table T_FAMILY_INFO_NA
(
  id                          VARCHAR2(50) not null,
  first_name                  VARCHAR2(60),
  middle_name                 VARCHAR2(60),
  last_name                   VARCHAR2(60),
  relation                    VARCHAR2(20),
  nationality                 VARCHAR2(50),
  tax_id                      VARCHAR2(150),
  date_of_birth               DATE,
  for_income_tax              CHAR(1),
  for_social_security_purpose CHAR(1),
  status                      NUMBER(1),
  cname                       VARCHAR2(50),
  ctime                       TIMESTAMP(6),
  chname                      VARCHAR2(50),
  mtime                       TIMESTAMP(6),
  applicant_id                VARCHAR2(50),
  deleted                     NUMBER(1)
)
;
comment on table T_FAMILY_INFO_NA
  is '候选人家庭成员信息（拉美）';
alter table T_FAMILY_INFO_NA
  add constraint PK_T_FAMILY_INFO_NA primary key (ID);

prompt
prompt Creating table T_ID_INFO_NA
prompt ===========================
prompt
create table T_ID_INFO_NA
(
  id                        VARCHAR2(50) not null,
  id_card                   VARCHAR2(150),
  id_state                  VARCHAR2(150),
  id_date_of_issue          DATE,
  tax_id                    VARCHAR2(150),
  social_security_id        VARCHAR2(150),
  security_date_of_issue    DATE,
  voter_id                  VARCHAR2(150),
  zone                      VARCHAR2(150),
  section                   VARCHAR2(150),
  work_book                 VARCHAR2(150),
  serial_no                 VARCHAR2(150),
  work_state                VARCHAR2(150),
  military_id               VARCHAR2(150),
  military_class            VARCHAR2(150),
  military_district         VARCHAR2(150),
  other_id                  VARCHAR2(150),
  id_type                   VARCHAR2(150),
  other_id_state            VARCHAR2(150),
  visa                      VARCHAR2(150),
  visa_type                 VARCHAR2(60),
  visa_country              VARCHAR2(60),
  passport                  VARCHAR2(150),
  passport_state            VARCHAR2(150),
  drive_license             VARCHAR2(150),
  drive_state               VARCHAR2(150),
  drive_issue_date          DATE,
  drive_expiry_date         DATE,
  professional_class_entity VARCHAR2(150),
  professional_name         VARCHAR2(150),
  professional_state        VARCHAR2(150),
  professional_issue_date   DATE,
  professional_expiry_date  DATE,
  status                    NUMBER(1),
  cname                     VARCHAR2(50),
  ctime                     TIMESTAMP(6),
  chname                    VARCHAR2(50),
  mtime                     TIMESTAMP(6),
  applicant_id              VARCHAR2(50),
  deleted                   NUMBER(1)
)
;
comment on table T_ID_INFO_NA
  is '拉美-证件信息表';
alter table T_ID_INFO_NA
  add constraint PK_T_ID_INFO_NA primary key (ID);

prompt
prompt Creating table T_INFORMATION_ROLE
prompt =================================
prompt
create table T_INFORMATION_ROLE
(
  id             VARCHAR2(50) not null,
  information_id VARCHAR2(50),
  role_id        VARCHAR2(50),
  crname         VARCHAR2(50),
  ctime          TIMESTAMP(6),
  chname         VARCHAR2(50),
  mtime          TIMESTAMP(6),
  deleted        NUMBER(1)
)
;
alter table T_INFORMATION_ROLE
  add constraint PK_INFORMATION_ROLE primary key (ID);

prompt
prompt Creating table T_NOTIFICATION_RECORD
prompt ====================================
prompt
create table T_NOTIFICATION_RECORD
(
  id              VARCHAR2(50) not null,
  sender          VARCHAR2(20),
  receive_address VARCHAR2(50),
  send_time       TIMESTAMP(6),
  status          NUMBER(1),
  type            VARCHAR2(10),
  crname          VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  deleted         NUMBER(1)
)
;
comment on table T_NOTIFICATION_RECORD
  is '????????';
alter table T_NOTIFICATION_RECORD
  add constraint PK_NOTIFICATION_RECORD primary key (ID);

prompt
prompt Creating table T_NOTIFICATION_ROLE
prompt ==================================
prompt
create table T_NOTIFICATION_ROLE
(
  id              VARCHAR2(50) not null,
  notification_id VARCHAR2(50),
  role_id         VARCHAR2(50),
  crname          VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  deleted         NUMBER(1)
)
;
alter table T_NOTIFICATION_ROLE
  add constraint PK_NOTIFICATION_ROLE primary key (ID);

prompt
prompt Creating table T_OTHER_DOC_ASIAN_NE
prompt ===================================
prompt
create table T_OTHER_DOC_ASIAN_NE
(
  id                VARCHAR2(50) not null,
  types_of_valid_id VARCHAR2(50),
  no                VARCHAR2(150),
  issue_date        DATE,
  expiry_date       DATE,
  document_name     VARCHAR2(150),
  area              VARCHAR2(20),
  status            NUMBER(1),
  authority         VARCHAR2(150),
  crname            VARCHAR2(50),
  ctime             TIMESTAMP(6),
  chname            VARCHAR2(50),
  mtime             TIMESTAMP(6),
  applicant_id      VARCHAR2(50),
  deleted           NUMBER(1)
)
;
comment on table T_OTHER_DOC_ASIAN_NE
  is '亚洲-中东北非-其他证件信息表';
alter table T_OTHER_DOC_ASIAN_NE
  add constraint PK_OTHER_DOC_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_OTHER_ID_INFO_NA
prompt =================================
prompt
create table T_OTHER_ID_INFO_NA
(
  id             VARCHAR2(50) not null,
  other_id       VARCHAR2(150),
  id_type        VARCHAR2(150),
  other_id_state VARCHAR2(150),
  status         NUMBER(1),
  cname          VARCHAR2(50),
  ctime          TIMESTAMP(6),
  chname         VARCHAR2(50),
  mtime          TIMESTAMP(6),
  applicant_id   VARCHAR2(50),
  deleted        NUMBER(1)
)
;
comment on table T_OTHER_ID_INFO_NA
  is '候选人其他证件信息（拉美）';
alter table T_OTHER_ID_INFO_NA
  add constraint PK_OTHER_ID_INFO_NA primary key (ID);

prompt
prompt Creating table T_OTHER_INFO
prompt ===========================
prompt
create table T_OTHER_INFO
(
  id            VARCHAR2(50) not null,
  question_code VARCHAR2(20),
  answer        VARCHAR2(50),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  applicant_id  VARCHAR2(50),
  deleted       NUMBER(1),
  info_note     VARCHAR2(300)
)
;
comment on table T_OTHER_INFO
  is '其他信息表';
alter table T_OTHER_INFO
  add constraint PK_OTHER_INFO primary key (ID);

prompt
prompt Creating table T_PAGE_ROLE
prompt ==========================
prompt
create table T_PAGE_ROLE
(
  id      VARCHAR2(50) not null,
  page_id VARCHAR2(50),
  role_id VARCHAR2(50),
  crname  VARCHAR2(50),
  ctime   TIMESTAMP(6),
  chname  VARCHAR2(50),
  mtime   TIMESTAMP(6),
  deleted NUMBER(1)
)
;
alter table T_PAGE_ROLE
  add constraint PK_PAGE_ROLE primary key (ID);

prompt
prompt Creating table T_PASSPORT_INFO_ASIAN_NE
prompt =======================================
prompt
create table T_PASSPORT_INFO_ASIAN_NE
(
  id           VARCHAR2(50) not null,
  passport_no  VARCHAR2(150),
  issue_date   DATE,
  expiry_date  DATE,
  authority    VARCHAR2(150),
  area         VARCHAR2(20),
  status       NUMBER(1),
  crname       VARCHAR2(50),
  ctime        TIMESTAMP(6),
  chname       VARCHAR2(50),
  mtime        TIMESTAMP(6),
  applicant_id VARCHAR2(50),
  deleted      NUMBER(1)
)
;
comment on table T_PASSPORT_INFO_ASIAN_NE
  is '亚洲-中东北非-护照信息表';
alter table T_PASSPORT_INFO_ASIAN_NE
  add primary key (ID);

prompt
prompt Creating table T_QUESTION
prompt =========================
prompt
create table T_QUESTION
(
  id      VARCHAR2(50) not null,
  code    VARCHAR2(5),
  content VARCHAR2(300),
  area    VARCHAR2(20),
  status  NUMBER(1),
  cname   VARCHAR2(50),
  ctime   TIMESTAMP(6),
  chname  VARCHAR2(50),
  mtime   TIMESTAMP(6),
  deleted NUMBER(1)
)
;
comment on table T_QUESTION
  is '问卷答案';
alter table T_QUESTION
  add constraint PK_QUESTION primary key (ID);

prompt
prompt Creating table T_ROLE_FUNCTION
prompt ==============================
prompt
create table T_ROLE_FUNCTION
(
  id          VARCHAR2(50) not null,
  role_id     VARCHAR2(50),
  function_id VARCHAR2(50),
  crname      VARCHAR2(50),
  ctime       TIMESTAMP(6),
  chname      VARCHAR2(50),
  mtime       TIMESTAMP(6),
  deleted     NUMBER(1)
)
;
comment on table T_ROLE_FUNCTION
  is '角色-功能对应表';
alter table T_ROLE_FUNCTION
  add constraint PK_ROLE_FUNCTION primary key (ID);

prompt
prompt Creating table T_ROLE_USER
prompt ==========================
prompt
create table T_ROLE_USER
(
  id      VARCHAR2(50) not null,
  role_id VARCHAR2(50),
  user_id VARCHAR2(50),
  crname  VARCHAR2(50),
  ctime   TIMESTAMP(6),
  chname  VARCHAR2(50),
  mtime   TIMESTAMP(6),
  deleted NUMBER(1)
)
;
comment on table T_ROLE_USER
  is '角色-用户对应表';
alter table T_ROLE_USER
  add constraint PK_ROLE_USER primary key (ID);

prompt
prompt Creating table T_SYS_ATTACHMENT_DETAIL
prompt ======================================
prompt
create table T_SYS_ATTACHMENT_DETAIL
(
  id                    VARCHAR2(50) not null,
  attachment_name       VARCHAR2(100),
  display_order         NUMBER(5),
  attachment_template   VARCHAR2(50),
  required              VARCHAR2(2),
  status                NUMBER(1),
  attachment_display_id VARCHAR2(50),
  cname                 VARCHAR2(50),
  ctime                 TIMESTAMP(6),
  chname                VARCHAR2(50),
  mtime                 TIMESTAMP(6),
  deleted               NUMBER(1),
  is_resume             VARCHAR2(5)
)
;
comment on table T_SYS_ATTACHMENT_DETAIL
  is '附件详情表';
alter table T_SYS_ATTACHMENT_DETAIL
  add primary key (ID);

prompt
prompt Creating table T_SYS_ATTACHMENT_DISPLAY
prompt =======================================
prompt
create table T_SYS_ATTACHMENT_DISPLAY
(
  id              VARCHAR2(50) not null,
  attachment_page VARCHAR2(50),
  language        VARCHAR2(50),
  applying_role   VARCHAR2(50),
  cname           VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  deleted         NUMBER(1),
  step_tips       CLOB,
  operation_tips  CLOB
)
;
comment on table T_SYS_ATTACHMENT_DISPLAY
  is '附件显示表';
alter table T_SYS_ATTACHMENT_DISPLAY
  add primary key (ID);

prompt
prompt Creating table T_SYS_ATTACHMENT_TEMPLATE
prompt ========================================
prompt
create table T_SYS_ATTACHMENT_TEMPLATE
(
  id              VARCHAR2(50) not null,
  template_name   VARCHAR2(200),
  link_url        VARCHAR2(300),
  language        VARCHAR2(50),
  applying_role   VARCHAR2(50),
  status          NUMBER(1),
  cname           VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  deleted         NUMBER(1),
  template_note   VARCHAR2(255),
  attachment_name VARCHAR2(200)
)
;
comment on table T_SYS_ATTACHMENT_TEMPLATE
  is '附件模板表';
alter table T_SYS_ATTACHMENT_TEMPLATE
  add constraint PK_SYS_ATTACHMENT_TEMPLATE primary key (ID);

prompt
prompt Creating table T_SYS_COMPONENT
prompt ==============================
prompt
create table T_SYS_COMPONENT
(
  id            VARCHAR2(50) not null,
  component     VARCHAR2(20),
  function_link VARCHAR2(100),
  language      VARCHAR2(50),
  status        NUMBER(1),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1),
  role_id       VARCHAR2(50)
)
;
alter table T_SYS_COMPONENT
  add constraint PK_SYS_COMPONENT primary key (ID);

prompt
prompt Creating table T_SYS_FUNCTION
prompt =============================
prompt
create table T_SYS_FUNCTION
(
  id        VARCHAR2(50) not null,
  name      VARCHAR2(20),
  url       VARCHAR2(50),
  show_sort NUMBER(3),
  status    NUMBER(1),
  cname     VARCHAR2(50),
  ctime     TIMESTAMP(6),
  chname    VARCHAR2(50),
  mtime     TIMESTAMP(6),
  deleted   NUMBER(1)
)
;
comment on table T_SYS_FUNCTION
  is '系统功能表';
alter table T_SYS_FUNCTION
  add constraint PK_SYS_FUNCTION primary key (ID);

prompt
prompt Creating table T_SYS_INFORMATION_DISPLAY
prompt ========================================
prompt
create table T_SYS_INFORMATION_DISPLAY
(
  id                   VARCHAR2(50) not null,
  information_template VARCHAR2(50),
  information_page     VARCHAR2(50),
  information_name     VARCHAR2(50),
  display_order        NUMBER(3),
  language             VARCHAR2(50),
  applying_role        VARCHAR2(50),
  status               VARCHAR2(4),
  cname                VARCHAR2(20),
  ctime                TIMESTAMP(6),
  chname               VARCHAR2(20),
  mtime                TIMESTAMP(6),
  deleted              NUMBER(1)
)
;
comment on table T_SYS_INFORMATION_DISPLAY
  is '信息显示表';
alter table T_SYS_INFORMATION_DISPLAY
  add primary key (ID);

prompt
prompt Creating table T_SYS_INFORMATION_TEMPLATE
prompt =========================================
prompt
create table T_SYS_INFORMATION_TEMPLATE
(
  id            VARCHAR2(50) not null,
  template_name VARCHAR2(50),
  function_link VARCHAR2(100),
  language      VARCHAR2(50),
  applying_role VARCHAR2(50),
  status        VARCHAR2(1),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1)
)
;
comment on table T_SYS_INFORMATION_TEMPLATE
  is '信息模板表';
alter table T_SYS_INFORMATION_TEMPLATE
  add constraint PK_SYS_INFORMATION_TEMPLATE primary key (ID);

prompt
prompt Creating table T_SYS_NOTIFICATION_TEMPLATE
prompt ==========================================
prompt
create table T_SYS_NOTIFICATION_TEMPLATE
(
  id                 VARCHAR2(50) not null,
  notification_title VARCHAR2(100),
  language           VARCHAR2(50),
  applying_role      VARCHAR2(40),
  notification_type  VARCHAR2(50),
  transmit_channel   VARCHAR2(10),
  status             NUMBER(1),
  cname              VARCHAR2(50),
  ctime              TIMESTAMP(6),
  chname             VARCHAR2(50),
  mtime              TIMESTAMP(6),
  deleted            NUMBER(1),
  content            CLOB,
  email_title        VARCHAR2(100)
)
;
comment on table T_SYS_NOTIFICATION_TEMPLATE
  is '邮件模板表';
alter table T_SYS_NOTIFICATION_TEMPLATE
  add constraint PK_SYS_NOTIFICATION_TEMPLATE primary key (ID);

prompt
prompt Creating table T_SYS_PAGE
prompt =========================
prompt
create table T_SYS_PAGE
(
  id             VARCHAR2(50) not null,
  page_name      VARCHAR2(50),
  link_url       VARCHAR2(100),
  page_attribute VARCHAR2(50),
  applying_role  VARCHAR2(50),
  language       VARCHAR2(50),
  status         NUMBER(1),
  cname          VARCHAR2(50),
  ctime          TIMESTAMP(6),
  chname         VARCHAR2(50),
  mtime          TIMESTAMP(6),
  deleted        NUMBER(1)
)
;
comment on table T_SYS_PAGE
  is '页面配置表';
alter table T_SYS_PAGE
  add constraint PK_SYS_PAGE primary key (ID);

prompt
prompt Creating table T_SYS_ROLE
prompt =========================
prompt
create table T_SYS_ROLE
(
  id            VARCHAR2(50) not null,
  role_name     VARCHAR2(200),
  business_area VARCHAR2(20),
  country       VARCHAR2(50),
  operator      VARCHAR2(10),
  languages     VARCHAR2(50),
  status        NUMBER(1),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1),
  spare1        VARCHAR2(20),
  spare2        VARCHAR2(20),
  spare3        VARCHAR2(20),
  spare4        VARCHAR2(20)
)
;
comment on table T_SYS_ROLE
  is '系统角色表';
alter table T_SYS_ROLE
  add constraint PK_T_SYS_ROLE primary key (ID);

prompt
prompt Creating table T_SYS_SET
prompt ========================
prompt
create table T_SYS_SET
(
  id          VARCHAR2(50) not null,
  name        VARCHAR2(50),
  type        VARCHAR2(20),
  description VARCHAR2(100),
  father_id   VARCHAR2(50),
  status      NUMBER(1),
  cname       VARCHAR2(50),
  ctime       TIMESTAMP(6),
  chname      VARCHAR2(50),
  mtime       TIMESTAMP(6),
  deleted     NUMBER(1)
)
;
comment on table T_SYS_SET
  is 'SET集合表';
alter table T_SYS_SET
  add constraint PK_SYS_SET primary key (ID);

prompt
prompt Creating table T_SYS_STATEMENT
prompt ==============================
prompt
create table T_SYS_STATEMENT
(
  id                 VARCHAR2(50) not null,
  statement_template VARCHAR2(50),
  language           VARCHAR2(50),
  statement_title    VARCHAR2(50),
  subtitle           VARCHAR2(300),
  status             NUMBER(1),
  applying_role      VARCHAR2(50),
  cname              VARCHAR2(50),
  ctime              TIMESTAMP(6),
  chname             VARCHAR2(50),
  mtime              TIMESTAMP(6),
  deleted            NUMBER(1),
  content            CLOB,
  note_tips          CLOB
)
;
comment on table T_SYS_STATEMENT
  is '前台声明表';
alter table T_SYS_STATEMENT
  add constraint PK_SYS_STATEMENT primary key (ID);

prompt
prompt Creating table T_SYS_SUBMIT_TEMPLATE
prompt ====================================
prompt
create table T_SYS_SUBMIT_TEMPLATE
(
  id               VARCHAR2(50) not null,
  submit_page      VARCHAR2(50),
  language         VARCHAR2(50),
  applying_role    VARCHAR2(50),
  status           NUMBER(1),
  cname            VARCHAR2(50),
  ctime            TIMESTAMP(6),
  chname           VARCHAR2(50),
  mtime            TIMESTAMP(6),
  deleted          NUMBER(1),
  submit_tips      CLOB,
  submit_subtitles CLOB
)
;
comment on table T_SYS_SUBMIT_TEMPLATE
  is '前台提交页面';
alter table T_SYS_SUBMIT_TEMPLATE
  add constraint PK_SYS_SUBMIT_TEMPLATE primary key (ID);

prompt
prompt Creating table T_SYS_TIME_ZONE
prompt ==============================
prompt
create table T_SYS_TIME_ZONE
(
  id            VARCHAR2(50) not null,
  time_zone     VARCHAR2(50),
  bias          NUMBER(2),
  business_area VARCHAR2(50),
  status        NUMBER(1),
  cname         VARCHAR2(50),
  ctime         TIMESTAMP(6),
  chname        VARCHAR2(50),
  mtime         TIMESTAMP(6),
  deleted       NUMBER(1)
)
;
comment on table T_SYS_TIME_ZONE
  is '系统时区表';
alter table T_SYS_TIME_ZONE
  add constraint PK_SYS_TIME_ZONE primary key (ID);

prompt
prompt Creating table T_SYS_USER
prompt =========================
prompt
create table T_SYS_USER
(
  id                 VARCHAR2(50) not null,
  user_name          VARCHAR2(50),
  user_pwd           VARCHAR2(200),
  salt               VARCHAR2(50),
  corresponding_role VARCHAR2(1000),
  email              VARCHAR2(100),
  area               VARCHAR2(20),
  start_date         DATE,
  end_date           DATE,
  status             NUMBER(1),
  cname              VARCHAR2(50),
  ctime              TIMESTAMP(6),
  chname             VARCHAR2(50),
  mtime              TIMESTAMP(6),
  deleted            NUMBER(1),
  role_id            VARCHAR2(50),
  send_email         NUMBER(1)
)
;
comment on table T_SYS_USER
  is '系统用户表';
alter table T_SYS_USER
  add constraint PK_T_SYS_USER primary key (ID);

prompt
prompt Creating table T_SYS_VALUE
prompt ==========================
prompt
create table T_SYS_VALUE
(
  id              VARCHAR2(50) not null,
  set_id          VARCHAR2(50),
  set_value       VARCHAR2(300),
  language        VARCHAR2(50),
  status          NUMBER(1),
  cname           VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  deleted         NUMBER(1),
  father_value_id VARCHAR2(300),
  translation     VARCHAR2(300),
  value_sort      NUMBER(3),
  value_code      VARCHAR2(20)
)
;
comment on table T_SYS_VALUE
  is 'value表';
alter table T_SYS_VALUE
  add constraint PK_T_SYS_VALUE primary key (ID);
alter table T_SYS_VALUE
  add constraint FK_T_SYS_VA_REFERENCE_T_SYS_SE foreign key (SET_ID)
  references T_SYS_SET (ID);

prompt
prompt Creating table T_TRAINING_EXP_ASIAN_NE
prompt ======================================
prompt
create table T_TRAINING_EXP_ASIAN_NE
(
  id              VARCHAR2(50) not null,
  date_from       DATE,
  date_to         DATE,
  training_agency VARCHAR2(150),
  briefly_stating VARCHAR2(300),
  licenses        VARCHAR2(150),
  area            VARCHAR2(20),
  status          NUMBER(1),
  crname          VARCHAR2(50),
  ctime           TIMESTAMP(6),
  chname          VARCHAR2(50),
  mtime           TIMESTAMP(6),
  applicant_id    VARCHAR2(50),
  deleted         NUMBER(1)
)
;
comment on table T_TRAINING_EXP_ASIAN_NE
  is '培训经历表';
alter table T_TRAINING_EXP_ASIAN_NE
  add constraint PK_TRAINING_EXP_ASIAN_NE primary key (ID);

prompt
prompt Creating table T_VISA_INFO
prompt ==========================
prompt
create table T_VISA_INFO
(
  id           VARCHAR2(50) not null,
  visa_no      VARCHAR2(150),
  visa_type    VARCHAR2(50),
  visa_country VARCHAR2(50),
  applicant_id VARCHAR2(50),
  status       VARCHAR2(50),
  deleted      VARCHAR2(50),
  ctime        TIMESTAMP(6),
  cname        VARCHAR2(50),
  mtime        TIMESTAMP(6),
  chname       VARCHAR2(50)
)
;
comment on table T_VISA_INFO
  is '签证表';
alter table T_VISA_INFO
  add constraint AK_ID_T_VISA_ID primary key (ID);

prompt
prompt Creating table T_WORK_EXPERIENCE_ASIAN_NE
prompt =========================================
prompt
create table T_WORK_EXPERIENCE_ASIAN_NE
(
  id                     VARCHAR2(50) not null,
  date_from              DATE,
  date_to                DATE,
  company                VARCHAR2(150),
  position               VARCHAR2(150),
  reason_for_leaving     VARCHAR2(300),
  superior_attestor      VARCHAR2(60),
  position_of_superior   VARCHAR2(150),
  phone_of_superior      VARCHAR2(60),
  same_level_attestor    VARCHAR2(60),
  position_of_same_level VARCHAR2(150),
  phone_of_same_level    VARCHAR2(60),
  area                   VARCHAR2(20),
  status                 NUMBER(1),
  crname                 VARCHAR2(50),
  ctime                  TIMESTAMP(6),
  chname                 VARCHAR2(50),
  mtime                  TIMESTAMP(6),
  applicant_id           VARCHAR2(50),
  deleted                NUMBER(1)
)
;
comment on table T_WORK_EXPERIENCE_ASIAN_NE
  is '工作经历表';
alter table T_WORK_EXPERIENCE_ASIAN_NE
  add constraint PK_WORK_EXPERIENCE_ASIAN_NE primary key (ID);


spool off
