

--�ж�����
truncate table T_BANK_INFO_ASIAN_NE;

truncate table T_BASIC_INFO_ASIAN_NE;

truncate table T_CURWORK_INFO_ASIAN_NE;

truncate table T_EDUCATION_INFO_ASIAN_NE;

truncate table T_EMERGENCY_INFO_ASIAN_NE;

truncate table T_FAMILY_INFO_ASIAN_NE;

truncate table T_OTHER_DOC_ASIAN_NE;

truncate table T_PASSPORT_INFO_ASIAN_NE;

truncate table T_BANK_INFO_ASIAN_NE;

truncate table T_TRAINING_EXP_ASIAN_NE;

truncate table T_WORK_EXPERIENCE_ASIAN_NE;


--����
truncate table T_BANK_INFO_NA;

truncate table T_BASIC_INFO_NA;

truncate table T_CONTACT_INFO_NA;

truncate table T_EMERGENCY_INFO_NA;

truncate table T_FAMILY_INFO_NA;

truncate table T_ID_INFO_NA;

truncate table T_OTHER_ID_INFO_NA;

truncate table T_VISA_INFO;

--ɾ����ѡ��

delete from T_APPLICANT;

delete from T_SYS_USER u where u.role_id in (select r.id from T_SYS_ROLE r where r.operator = 1);
