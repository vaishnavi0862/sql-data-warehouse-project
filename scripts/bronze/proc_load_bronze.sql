/*
===============================================================================
Stored Procedure: Load Bronze Layer (Landing -> Bronze)
===============================================================================
Platform:
    Microsoft Fabric Warehouse

Script Purpose:
    This stored procedure loads data into the 'bronze' schema
    from the dbo landing tables.

    It performs the following actions:
    - Truncates the Bronze tables before loading.
    - Inserts the latest data from dbo landing tables into Bronze tables.

Architecture:
    Lakehouse -> dbo landing tables -> Bronze

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN

    PRINT '================================================';
    PRINT 'Loading Bronze Layer';
    PRINT '================================================';


    -- =========================================================
    -- CRM TABLES
    -- =========================================================

    PRINT '------------------------------------------------';
    PRINT 'Loading CRM Tables';
    PRINT '------------------------------------------------';


    PRINT '>> Truncating Table: bronze.crm_cust_info';

    TRUNCATE TABLE bronze.crm_cust_info;

    PRINT '>> Inserting Data Into: bronze.crm_cust_info';

    INSERT INTO bronze.crm_cust_info
    SELECT *
    FROM dbo.crm_cust_info;


    PRINT '>> Truncating Table: bronze.crm_prd_info';

    TRUNCATE TABLE bronze.crm_prd_info;

    PRINT '>> Inserting Data Into: bronze.crm_prd_info';

    INSERT INTO bronze.crm_prd_info
    SELECT *
    FROM dbo.crm_prd_info;


    PRINT '>> Truncating Table: bronze.crm_sales_details';

    TRUNCATE TABLE bronze.crm_sales_details;

    PRINT '>> Inserting Data Into: bronze.crm_sales_details';

    INSERT INTO bronze.crm_sales_details
    SELECT *
    FROM dbo.crm_sales_details;


    -- =========================================================
    -- ERP TABLES
    -- =========================================================

    PRINT '------------------------------------------------';
    PRINT 'Loading ERP Tables';
    PRINT '------------------------------------------------';


    PRINT '>> Truncating Table: bronze.erp_loc_a101';

    TRUNCATE TABLE bronze.erp_loc_a101;

    PRINT '>> Inserting Data Into: bronze.erp_loc_a101';

    INSERT INTO bronze.erp_loc_a101
    SELECT *
    FROM dbo.erp_loc_a101;


    PRINT '>> Truncating Table: bronze.erp_cust_az12';

    TRUNCATE TABLE bronze.erp_cust_az12;

    PRINT '>> Inserting Data Into: bronze.erp_cust_az12';

    INSERT INTO bronze.erp_cust_az12
    SELECT *
    FROM dbo.erp_cust_az12;


    PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2';

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    PRINT '>> Inserting Data Into: bronze.erp_px_cat_g1v2';

    INSERT INTO bronze.erp_px_cat_g1v2
    SELECT *
    FROM dbo.erp_px_cat_g1v2;


    PRINT '==========================================';
    PRINT 'Loading Bronze Layer is Completed';
    PRINT '==========================================';

END;
