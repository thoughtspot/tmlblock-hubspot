-- HS_HUBSPOT."PUBLIC".HS_CALL_DISPOSITIONS definition

create or replace TABLE HS_CALL_DISPOSITIONS (
	ID VARCHAR(16777216),
	LABEL VARCHAR(16777216)
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".HS_COMPANIES definition

create or replace TABLE HS_COMPANIES (
	ID NUMBER(38,0) NOT NULL,
	CREATED_AT TIMESTAMP_NTZ(9),
	ARCHIVED BOOLEAN,
	COUNTRY VARCHAR(16777216),
	CITY VARCHAR(16777216),
	CREATEDATE TIMESTAMP_NTZ(9),
	INDUSTRY VARCHAR(16777216),
	NUMBEROFEMPLOYEES NUMBER(38,9),
	HS_ANALYTICS_SOURCE VARCHAR(16777216),
	STATE VARCHAR(16777216),
	ZIP VARCHAR(16777216),
	HS_NUM_OPEN_DEALS NUMBER(38,9),
	WEBSITE VARCHAR(16777216),
	NAME VARCHAR(16777216),
	TOTAL_REVENUE NUMBER(38,9)
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".HS_CONTACTS definition

create or replace TABLE HS_CONTACTS (
	ID NUMBER(38,0) NOT NULL,
	ARCHIVED BOOLEAN,
	HS_TIME_TO_FIRST_ENGAGEMENT NUMBER(38,9),
	CREATEDATE TIMESTAMP_NTZ(9),
	HS_LAST_SALES_ACTIVITY_DATE TIMESTAMP_NTZ(9),
	HS_EMAIL_LAST_SEND_DATE TIMESTAMP_NTZ(9),
	HS_COUNT_IS_WORKED NUMBER(38,9),
	LASTNAME VARCHAR(16777216),
	HS_SA_FIRST_ENGAGEMENT_DATE TIMESTAMP_NTZ(9),
	HS_SA_FIRST_ENGAGEMENT_OBJECT_TYPE VARCHAR(16777216),
	HS_IS_UNWORKED BOOLEAN,
	FIRSTNAME VARCHAR(16777216),
	HS_ANALYTICS_NUM_VISITS NUMBER(38,9),
	HS_SOCIAL_LINKEDIN_CLICKS NUMBER(38,9),
	HS_ANALYTICS_SOURCE VARCHAR(16777216),
	EMAIL VARCHAR(16777216),
	JOBTITLE VARCHAR(16777216),
	HS_SOCIAL_GOOGLE_PLUS_CLICKS NUMBER(38,9),
	HS_SOCIAL_FACEBOOK_CLICKS NUMBER(38,9),
	HS_SOCIAL_TWITTER_CLICKS NUMBER(38,9),
	LIFECYCLESTAGE VARCHAR(16777216),
	HS_EMAIL_SENDS_SINCE_LAST_ENGAGEMENT NUMBER(38,9),
	HS_COUNT_IS_UNWORKED NUMBER(38,9),
	MOBILEPHONE VARCHAR(16777216),
	STATE VARCHAR(16777216),
	PHONE VARCHAR(16777216),
	HS_EMAIL_LAST_OPEN_DATE TIMESTAMP_NTZ(9),
	ZIP VARCHAR(16777216),
	CITY VARCHAR(16777216),
	COUNTRY VARCHAR(16777216),
	HS_EMAIL_LAST_CLICK_DATE TIMESTAMP_NTZ(9),
	HS_EMAIL_FIRST_CLICK_DATE TIMESTAMP_NTZ(9),
	HS_SEQUENCES_IS_ENROLLED BOOLEAN,
	HS_SEQUENCES_ENROLLED_COUNT NUMBER(38,9),
	HS_SEQUENCES_ACTIVELY_ENROLLED_COUNT NUMBER(38,9),
	HS_LATEST_SEQUENCE_ENDED_DATE TIMESTAMP_NTZ(9),
	SENIORITY VARCHAR(16777216),
	HS_ANALYTICS_LAST_URL VARCHAR(16777216),
	HS_ANALYTICS_FIRST_URL VARCHAR(16777216),
	FIRST_DEAL_CREATED_DATE TIMESTAMP_NTZ(9),
	NUM_ASSOCIATED_DEALS NUMBER(38,9),
	HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CREATION NUMBER(38,9),
	HS_ANALYTICS_LAST_REFERRER VARCHAR(16777216),
	DAYS_TO_CLOSE NUMBER(38,9),
	HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CLOSE NUMBER(38,9),
	CLOSEDATE TIMESTAMP_NTZ(9),
	TOTAL_REVENUE NUMBER(38,9),
	HS_EMAIL_LAST_REPLY_DATE TIMESTAMP_NTZ(9),
	HS_ANALYTICS_FIRST_REFERRER VARCHAR(16777216),
	FIRST_CONVERSION_DATE TIMESTAMP_NTZ(9),
	FIRST_CONVERSION_EVENT_NAME VARCHAR(16777216),
	CURRENTLYINWORKFLOW VARCHAR(16777216),
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".HS_CONTACT_COMPANY_ASSOCIATION definition

create or replace TABLE HS_CONTACT_COMPANY_ASSOCIATION (
	CONTACT_ID NUMBER(38,0) NOT NULL,
	COMPANY_ID NUMBER(38,0) NOT NULL,
	TYPE VARCHAR(16777216)
	primary key (CONTACT_ID, COMPANY_ID)
);



-- HS_HUBSPOT."PUBLIC".HS_CONTACT_ENGAGEMENT_ASSOCIATION definition

create or replace TABLE HS_CONTACT_ENGAGEMENT_ASSOCIATION (
	CONTACT_ID NUMBER(38,0) NOT NULL,
	ENGAGEMENT_ID NUMBER(38,0) NOT NULL
	primary key (CONTACT_ID, ENGAGEMENT_ID)
);


-- HS_HUBSPOT."PUBLIC".HS_CONTACT_FORM_SUBMISSION definition

create or replace TABLE HS_CONTACT_FORM_SUBMISSION (
	SUBMITTED_AT NUMBER(38,0),
	FORM_ID VARCHAR(16777216),
	CONTACT_ID NUMBER(38,0)
);


-- HS_HUBSPOT."PUBLIC".HS_DEALS definition

create or replace TABLE HS_DEALS (
	ID NUMBER(38,0) NOT NULL,
	DEALNAME VARCHAR(16777216),
	HS_FORECAST_AMOUNT NUMBER(38,9),
	CREATEDATE TIMESTAMP_NTZ(9),
	HS_IS_CLOSED BOOLEAN,
	HS_DEAL_STAGE_PROBABILITY NUMBER(38,9),
	DAYS_TO_CLOSE NUMBER(38,9),
	HS_CREATED_BY_USER_ID NUMBER(38,9),
	HS_PROJECTED_AMOUNT NUMBER(38,9),
	HS_IS_CLOSED_WON BOOLEAN,
	DEALSTAGE VARCHAR(16777216),
	HS_CLOSED_AMOUNT_IN_HOME_CURRENCY NUMBER(38,9),
	DESCRIPTION VARCHAR(16777216),
	AMOUNT_IN_HOME_CURRENCY NUMBER(38,9),
	HS_CLOSED_AMOUNT NUMBER(38,9),
	DEALTYPE VARCHAR(16777216),
	AMOUNT NUMBER(38,9),
	CLOSEDATE TIMESTAMP_NTZ(9),
	PIPELINE VARCHAR(16777216),
	HS_LASTMODIFIEDDATE TIMESTAMP_NTZ(9)
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".HS_DEALS_PIPELINES definition

create or replace TABLE HS_DEALS_PIPELINES (
	ID VARCHAR(16777216) NOT NULL,
	LABEL VARCHAR(16777216),
	ARCHIVED BOOLEAN
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".HS_DEALS_PIPELINE_STAGES definition

create or replace TABLE HS_DEALS_PIPELINE_STAGES (
	ARCHIVED BOOLEAN,
	PROBABILITY VARCHAR(16777216),
	PIPELINE_ID VARCHAR(16777216) NOT NULL,
	DISPLAY_ORDER NUMBER(38,0),
	ID VARCHAR(16777216) NOT NULL,
	LABEL VARCHAR(16777216),
	IS_CLOSED VARCHAR(16777216)
	primary key (PIPELINE_ID, ID)
);


-- HS_HUBSPOT."PUBLIC".HS_DEAL_COMPANY_ASSOCIATION definition

create or replace TABLE HS_DEAL_COMPANY_ASSOCIATION (
	DEAL_ID NUMBER(38,0) NOT NULL,
	COMPANY_ID NUMBER(38,0) NOT NULL
	primary key (DEAL_ID, COMPANY_ID)
);


-- HS_HUBSPOT."PUBLIC".HS_DEAL_CONTACT_ASSOCIATION definition

create or replace TABLE HS_DEAL_CONTACT_ASSOCIATION (
	DEAL_ID NUMBER(38,0) NOT NULL,
	CONTACT_ID NUMBER(38,0) NOT NULL
	primary key (DEAL_ID, CONTACT_ID)
);




-- HS_HUBSPOT."PUBLIC".HS_EMAIL_EVENTS definition

create or replace TABLE HS_EMAIL_EVENTS (
	APP_ID NUMBER(38,0),
	APP_NAME VARCHAR(16777216),
	CREATED NUMBER(38,0),
	EMAIL_CAMPAIGN_ID NUMBER(38,0),
	ID VARCHAR(16777216) NOT NULL,
	PORTAL_ID NUMBER(38,0),
	RECIPIENT VARCHAR(16777216),
	TYPE VARCHAR(16777216),
	SENT_BY_CREATED NUMBER(38,0),
	SENT_BY_ID VARCHAR(16777216),
	BROWSER_NAME VARCHAR(16777216),
	LOCATION_CITY VARCHAR(16777216),
	LOCATION_COUNTRY VARCHAR(16777216),
	LOCATION_STATE VARCHAR(16777216),
	USER_AGENT VARCHAR(16777216),
	DURATION VARCHAR(16777216),
	SOURCE VARCHAR(16777216),
	PORTAL_SUBSCRIPTION_STATUS VARCHAR(16777216),
	ATTEMPT NUMBER(38,0),
	RESPONSE VARCHAR(16777216),
	URL VARCHAR(16777216),
	SUBJECT VARCHAR(16777216),
	"FROM" VARCHAR(16777216),
	DROP_MESSAGE VARCHAR(16777216),
	CAUSED_BY_ID VARCHAR(16777216)
	primary key (ID)
);



-- HS_HUBSPOT."PUBLIC".HS_ENGAGEMENTS definition

create or replace TABLE HS_ENGAGEMENTS (
	ID NUMBER(38,0) NOT NULL,
	CREATED_AT NUMBER(38,0),
	CREATED_BY NUMBER(38,0)
	primary key (ID)
);



-- HS_HUBSPOT."PUBLIC".HS_ENGAGEMENT_CALL definition

create or replace TABLE HS_ENGAGEMENT_CALL (
	BODY VARCHAR(16777216),
	DISPOSITION VARCHAR(16777216),
	TITLE VARCHAR(16777216),
	ENGAGEMENT_ID NUMBER(38,0) NOT NULL
	primary key (ENGAGEMENT_ID)
);


-- HS_HUBSPOT."PUBLIC".HS_ENGAGEMENT_EMAIL definition

create or replace TABLE HS_ENGAGEMENT_EMAIL (
	HTML VARCHAR(16777216),
	ENGAGEMENT_ID NUMBER(38,0) NOT NULL,
	FROM_EMAIL VARCHAR(16777216),
	SENDER_EMAIL VARCHAR(16777216),
	SUBJECT VARCHAR(16777216),
	TEXT VARCHAR(16777216),
	STATUS VARCHAR(16777216),
	FROM_FIRST_NAME VARCHAR(16777216),
	FROM_LAST_NAME VARCHAR(16777216)
	primary key (ENGAGEMENT_ID)
);




-- HS_HUBSPOT."PUBLIC".HS_ENGAGEMENT_MEETING definition

create or replace TABLE HS_ENGAGEMENT_MEETING (
	START_TIME NUMBER(38,0),
	END_TIME NUMBER(38,0),
	TITLE VARCHAR(16777216),
	BODY VARCHAR(16777216),
	EXTERNAL_URL VARCHAR(16777216),
	ENGAGEMENT_ID NUMBER(38,0) NOT NULL,
	MEETING_OUTCOME VARCHAR(16777216),
	LOCATION VARCHAR(16777216)
	primary key (ENGAGEMENT_ID)
);


-- HS_HUBSPOT."PUBLIC".HS_FORMS definition

create or replace TABLE HS_FORMS (
	GUID VARCHAR(16777216) NOT NULL,
	NAME VARCHAR(16777216),
	ACTION VARCHAR(16777216),
	SUBMIT_TEXT VARCHAR(16777216),
	LEAD_NURTURING_CAMPAIGN_ID VARCHAR(16777216)
	primary key (GUID)
);


-- HS_HUBSPOT."PUBLIC".HS_MARKETING_EMAILS definition

create or replace TABLE HS_MARKETING_EMAILS (
	OBJECTS VARIANT
);


-- HS_HUBSPOT."PUBLIC".HS_OWNERS definition

create or replace TABLE HS_OWNERS (
	ID NUMBER(38,0) NOT NULL,
	EMAIL VARCHAR(16777216),
	FIRST_NAME VARCHAR(16777216),
	LAST_NAME VARCHAR(16777216),
	USER_ID NUMBER(38,0)
	ARCHIVED BOOLEAN
	primary key (ID)
);


-- HS_HUBSPOT."PUBLIC".dim_Date definition

create or replace TABLE dim_Date (
	DATE date
);
