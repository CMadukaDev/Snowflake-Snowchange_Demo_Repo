-- Select role.
-- USE ROLE SYSADMIN;
USE ROLE JDAO_ADMIN;

--  Completed: Use a warehouse
-- Completed: Grant JDAO_ADMIN to SVC_Relase_MGR user 
-- Create a table in Chinomnso Sandbox
-- Modify the script to perform an insert on the table

-- Try dropping and recreating schemachange 

-- Select warehouse.
USE WAREHOUSE COMPUTE_WH;

SELECT 'The current time is '|| CURRENT_TIMESTAMP();

-- Use database.
-- USE DATABASE EDW_TEST;
USE DATABASE EDW_SANDBOX;

-- INSERT INTO EDW_SANDBOX.CHINOMNSO.TESTDEPLOYMENT  
INSERT INTO EDW_SANDBOX.CHINOMNSO.TESTDEPLOYMENT(DEPLOYMENT_TIME) VALUES(CURRENT_TIMESTAMP());

-- CREATE OR REPLACE SCHEMA EDW_TEST.TEST_DEPLOYMENT;

-- Create or replace TEST_DEPLOYMENT_TABLE table. 
-- Do not create a table in GitHub repo. Manually create the table in Snowflake env.
-- CREATE OR REPLACE TABLE EDW_TEST.TEST_DEPLOYMENT.TEST_DEPLOYMENT_TABLE(
-- DEPLOYMENT_NAME VARCHAR(255)
-- );

-- Add a new column to the  TEST_DEPLOYMENT_TABLE table.
-- ALTER TABLE EDW_TEST.TEST_DEPLOYMENT.TEST_DEPLOYMENT_TABLE ADD COLUMN DEPLOYMENT_STATUS VARCHAR(255);

-- Grant usage on SCHEMA EDW_TEST.TEST_DEPLOYMENT to the JDAO_ADMIN role.
-- GRANT USAGE ON SCHEMA EDW_TEST.TEST_DEPLOYMENT TO ROLE JDAO_ADMIN;

-- Grant ownership on PACTS360_INT schema to the JDAO_ADMIN role.
-- GRANT OWNERSHIP ON SCHEMA EDW_TEST.TEST_DEPLOYMENT TO ROLE JDAO_ADMIN;

-- GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA EDW_TEST.TEST_DEPLOYMENT TO ROLE JDAO_ADMIN;

-- Drop table.
-- DROP TABLE EDW_TEST.TEST_DEPLOYMENT.TEST_DEPLOYMENT_TABLE;

-- Drop schema.
-- DROP SCHEMA EDW_TEST.TEST_DEPLOYMENT;
