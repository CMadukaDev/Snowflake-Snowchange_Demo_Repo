-- Select role.
USE ROLE JDAO_ADMIN;

-- Select warehouse.
USE WAREHOUSE COMPUTE_WH;

SELECT 'The current time is '|| CURRENT_TIMESTAMP();

-- Use database.
USE DATABASE EDW_SANDBOX;

-- INSERT INTO EDW_SANDBOX.CHINOMNSO.TESTDEPLOYMENT  
INSERT INTO EDW_SANDBOX.CHINOMNSO.TESTDEPLOYMENT(DEPLOYMENT_TIME) VALUES(CURRENT_TIMESTAMP());
