/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/




IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
    [cst_id] int,
    [cst_key] nvarchar(50),
    [cst_firstname] nvarchar(50),
    [cst_lastname] nvarchar(50),
    [cst_marital_status] nvarchar(50),
    [cst_gndr] nvarchar(50),
    [cst_create_date] date
);

IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    [prd_id] int,
    [prd_key] nvarchar(50),
    [prd_nm] nvarchar(50),
    [prd_cost] int,
    [prd_line] nvarchar(50),
    [prd_start_dt] date,
    [prd_end_dt] date
);

IF OBJECT_ID ('bronze.crm_sales_details','U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    [sls_ord_num] nvarchar(50),
    [sls_prd_key] nvarchar(50),
    [sls_cust_id] int,
    [sls_order_dt] int,
    [sls_ship_dt] int,
    [sls_due_dt] int,
    [sls_sales] int,
    [sls_quantity] int,
    [sls_price] int
);

IF OBJECT_ID ('bronze.erp_loc_a101','U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_cust_az12','U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
	cid NVARCHAR(50),
	bdate date,
	gen NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2','U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)
);