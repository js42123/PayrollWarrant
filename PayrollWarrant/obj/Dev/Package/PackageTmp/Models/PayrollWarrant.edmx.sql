
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/19/2019 13:12:33
-- Generated from EDMX file: D:\tfs_applications\AASIS Payroll Warrant Search\PayrollWarrantSearch\PayrollWarrant\Models\PayrollWarrant.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PayrollWarrant];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[T101_PAY_WARNT]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T101_PAY_WARNT];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'T101_PAY_WARNT'
CREATE TABLE [dbo].[T101_PAY_WARNT] (
    [FISCAL_YEAR] char(4)  NOT NULL,
    [CHECK_NO] char(13)  NOT NULL,
    [AGENCY] char(2)  NOT NULL,
    [CHK_PRINT_DATE] char(8)  NOT NULL,
    [HEADER_AMT] decimal(16,2)  NOT NULL,
    [PAYMENT_METHOD] char(1)  NOT NULL,
    [VOID_CHK_REASON] char(2)  NOT NULL,
    [PAYEE_NUMBER] char(10)  NOT NULL,
    [PAYEE_NAME] char(35)  NOT NULL,
    [SAP_CLRING_DOC_NO] char(10)  NOT NULL,
    [REISSUE] char(1)  NOT NULL,
    [PREFIX] char(1)  NOT NULL,
    [REFDOC_FISCAL_YR] char(4)  NOT NULL,
    [VOUCH_NO] char(3)  NOT NULL,
    [PAGE_NO] decimal(3,0)  NOT NULL,
    [LINE_NO] decimal(2,0)  NOT NULL,
    [DETAIL_TYPE] char(1)  NOT NULL,
    [SEQUENCE_NO] decimal(5,0)  NOT NULL,
    [POSTING_DATE] char(8)  NOT NULL,
    [DETAIL_AMT] decimal(16,2)  NOT NULL,
    [DOC_TYPE] char(4)  NOT NULL,
    [ORDER_NUMBER] char(12)  NOT NULL,
    [WBS_ELEMENT] char(22)  NOT NULL,
    [COST_CENTER] char(10)  NOT NULL,
    [GL_ACCOUNT] char(10)  NOT NULL,
    [COMPANY_CODE] char(4)  NOT NULL,
    [SAP_INVOICE_DOC_NO] char(10)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [FISCAL_YEAR], [CHECK_NO], [SEQUENCE_NO] in table 'T101_PAY_WARNT'
ALTER TABLE [dbo].[T101_PAY_WARNT]
ADD CONSTRAINT [PK_T101_PAY_WARNT]
    PRIMARY KEY CLUSTERED ([FISCAL_YEAR], [CHECK_NO], [SEQUENCE_NO] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------