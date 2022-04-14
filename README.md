# TML BLOCKS - HUBSPOT

The HubSpot TML Blocks provides sales and marketing analytics liveboards and ad-hoc search capabilities. Data is extracted from HubSpot using the HubSpot API’s and staged in tables in SnowFlake (or other CDW). A series of views are used to transform the data. ThoughtSpot connects directly to the views using an Embrace connection.
 
 # Artifacts 
 
 ## Snowflake 
 - DIM_DATE.csv
 - SnowFlakeTables Embrace v1.6.sql
 - SnowFlakeViews Embrace v1.6.sql

## Extract Hubspot Data Table Documentation 
- HubSpot Data Extraction.pdf

## ThoughtSpot SQL Script 
- ThoughtSpot -Tables and Relationships v1.6.SQL

## TML Files 
- HubSpot - Worksheets.zip
- HubSpot - Liveboards .zip
 
 # Implementation Steps 
 
**SnowFlake**
- Use the DDL Scripts to create the tables and views in SnowFlake. (SnowFlakeTables Embrace v1.6.sql and SnowFlakeViews Embrace v1.6.sql)
- Using the API calls detailed in the Cloud Data Warehouse section of this guide load the data into the tables using your ETL.
- Load the dim_Date table from the CSV file provided

**Extracting Hubspot Data**
- Refer to the "Hubspot Data Extraction.pdf" for the Snowflake Table and the corresponding API Call and Data Items. 

**ThoughtSpot**
- Using Embrace connect to the Views specified in the Cloud Data Warehouse section of this guide.
- Execute the ThoughtSpot script to create the relationships in ThoughtSpot

**TML BLocks**

- Import the workshop zip "HubSpot - Worksheets.zip" into Thoughtspot. 
- Import the pinboard zip "HubSpot - Liveboards .zip" into Thoughtspot. 

# Cloud Data Warehouse Views 

 The views are used to transform and prepare the data for ThoughtSpot. The following views are included:
- HUBSPOT_CALL
- HUBSPOT_COMPANIES
- HUBSPOT_COMPANY_CONTACT
- HUBSPOT_CONTACTS
- HUBSPOT_CONTACT_FORM_SUBMISSION
- HUBSPOT_DEAL_COMPANY
- HUBSPOT_DEAL_CONTACT
- HUBSPOT_DEALS
- HUBSPOT_EMAIL
- HUBSPOT_FORMS
- HUBSPOT_MEETING
- HUBSPOT_MARKETING_CAMPAIGN_SENT_DATE - Not required in ThoughtSpot
- HUBSPOT_MARKETING_EMAILS
- HUBSPOT_MARKETING_EMAIL_EVENTS
- HUBSPOT_MARKETING_EMAIL_TEMP - Not required in ThoughtSpot
- HUBSPOT_OWNER

# Worksheets
**HubSpot Activities**<br />
The sales activities as they relate to contacts. Sales activities include 1:1 email, bulk email campaigns, calls, meetings, form submissions.
**HubSpot Bulk Email Campaign**<br />
High level analytics for bulk email marketing campaigns such as sent, open, clicks, reply. Also includes the individual events generated by individual contacts from the campaign. An event can be a bounce, sent, open, reply, delivered, unsubscribed, not sent, spam report.
**HubSpot Deals**<br />
The deals as they relate to contacts. Provides the current deal pipeline and deal conversion data.

# Liveboards
**HubSpot BDR/SDR**
The sales activities completed - calls, 1:1emails, sequences.  

<img width="847" alt="Screen Shot 2022-04-13 at 10 18 21 PM" src="https://user-images.githubusercontent.com/102629468/163318705-09595de6-b708-4410-b8c1-d3ee39629180.png">


**HubSpot CMO**
The revenue delivered and the current forecast based on the deal pipeline. Metrics on the revenue, deal size, days to close and win rate.  

<img width="848" alt="Screen Shot 2022-04-13 at 10 18 36 PM" src="https://user-images.githubusercontent.com/102629468/163318749-e5098f3a-089a-490b-bc54-13e5cae2a563.png">


**HubSpot Health**
The overall CRM health including the number of contacts, unworked contacts, number of companies, industry coverage, contact/company location and seniority of contacts.  

<img width="828" alt="Screen Shot 2022-04-13 at 10 18 29 PM" src="https://user-images.githubusercontent.com/102629468/163318726-18ff721f-64be-4806-8457-5930eb9156aa.png">


**HubSpot Marketing**
An overview of bulk email marketing campaign performance.

<img width="830" alt="Screen Shot 2022-04-13 at 10 18 43 PM" src="https://user-images.githubusercontent.com/102629468/163318756-ec677450-e4dd-4a18-9603-be143006ab0b.png">


