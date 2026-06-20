/*
===============================================================================
Data Warehouse Initialization Script
===============================================================================

Project     : Data Warehouse Project

Description:
    This script recreates the complete Data Warehouse environment.

    The script performs the following actions:

    1. Checks whether the Datawarehouse database already exists.
    2. Drops the database if it exists.
    3. Creates a new Datawarehouse database.
    4. Switches to the newly created database.
    5. Creates Bronze, Silver, and Gold schemas.

Data Warehouse Architecture:

    Bronze Layer
    ------------
    Stores raw data ingested directly from source systems with minimal
    or no transformations.

    Silver Layer
    ------------
    Stores cleaned, standardized, and transformed data prepared for
    business processing.

    Gold Layer
    ----------
    Stores business-ready datasets, aggregated metrics, and reporting
    tables used for analytics and dashboards.

WARNING:
    Running this script will permanently delete all existing objects
    inside the Datawarehouse database.

Execution:
    Run this script before creating tables and loading data.

===============================================================================
*/


/*-----------------------------------------------------------------------------
 Step 1: Remove Existing Data Warehouse Database
-----------------------------------------------------------------------------*/
DROP DATABASE IF EXISTS Datawarehouse;


/*-----------------------------------------------------------------------------
 Step 2: Create a Fresh Data Warehouse Database
-----------------------------------------------------------------------------*/
CREATE DATABASE Datawarehouse;


/*-----------------------------------------------------------------------------
 Step 3: Switch to Data Warehouse Database
-----------------------------------------------------------------------------*/
USE Datawarehouse;


/*-----------------------------------------------------------------------------
 Step 4: Create Bronze Schema
 Purpose: Store raw source data
-----------------------------------------------------------------------------*/
CREATE SCHEMA bronze;


/*-----------------------------------------------------------------------------
 Step 5: Create Silver Schema
 Purpose: Store cleaned and transformed data
-----------------------------------------------------------------------------*/
CREATE SCHEMA silver;


/*-----------------------------------------------------------------------------
 Step 6: Create Gold Schema
 Purpose: Store business-ready and aggregated data
-----------------------------------------------------------------------------*/
CREATE SCHEMA gold;


/*-----------------------------------------------------------------------------
 Step 7: Verify Creation
-----------------------------------------------------------------------------*/
SHOW DATABASES;
