
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2019 08:56:51
-- Generated from EDMX file: D:\tfs_applications\AASIS Payroll\PayrollWarrant - Final\PayrollWarrant\Models\UserProv.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [AHTD_UserProv];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[Security].[FK_AccessRequests_AccessRequestActions]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AccessRequests] DROP CONSTRAINT [FK_AccessRequests_AccessRequestActions];
GO
IF OBJECT_ID(N'[Security].[FK_AccessRequests_Directory]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AccessRequests] DROP CONSTRAINT [FK_AccessRequests_Directory];
GO
IF OBJECT_ID(N'[Security].[FK_AccessRequests_SecurityInstances]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AccessRequests] DROP CONSTRAINT [FK_AccessRequests_SecurityInstances];
GO
IF OBJECT_ID(N'[Security].[FK_AppAdmins_Directory]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppAdmins] DROP CONSTRAINT [FK_AppAdmins_Directory];
GO
IF OBJECT_ID(N'[Security].[FK_AppBudgets_Budgets]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppBudgets] DROP CONSTRAINT [FK_AppBudgets_Budgets];
GO
IF OBJECT_ID(N'[Security].[FK_AppClaims_Claims]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppClaims] DROP CONSTRAINT [FK_AppClaims_Claims];
GO
IF OBJECT_ID(N'[Security].[FK_AppLocations_Locations]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppLocations] DROP CONSTRAINT [FK_AppLocations_Locations];
GO
IF OBJECT_ID(N'[Security].[FK_AppRequests_AccessRequests]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppRequests] DROP CONSTRAINT [FK_AppRequests_AccessRequests];
GO
IF OBJECT_ID(N'[Security].[FK_AppRequests_Budgets]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppRequests] DROP CONSTRAINT [FK_AppRequests_Budgets];
GO
IF OBJECT_ID(N'[Security].[FK_AppRequests_Directory]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppRequests] DROP CONSTRAINT [FK_AppRequests_Directory];
GO
IF OBJECT_ID(N'[Security].[FK_AppRequests_Locations]', 'F') IS NOT NULL
    ALTER TABLE [Security].[AppRequests] DROP CONSTRAINT [FK_AppRequests_Locations];
GO
IF OBJECT_ID(N'[Security].[FK_Budgets_Locations]', 'F') IS NOT NULL
    ALTER TABLE [Security].[Budgets] DROP CONSTRAINT [FK_Budgets_Locations];
GO
IF OBJECT_ID(N'[UsrProv].[FK_Directory_Budgets]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Directory] DROP CONSTRAINT [FK_Directory_Budgets];
GO
IF OBJECT_ID(N'[UsrProv].[FK_Directory_Sections]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Directory] DROP CONSTRAINT [FK_Directory_Sections];
GO
IF OBJECT_ID(N'[UsrProv].[FK_DirectoryReportsTo_Directory]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Directory] DROP CONSTRAINT [FK_DirectoryReportsTo_Directory];
GO
IF OBJECT_ID(N'[Security].[FK_GrantedAccess_Budgets]', 'F') IS NOT NULL
    ALTER TABLE [Security].[GrantedAccess] DROP CONSTRAINT [FK_GrantedAccess_Budgets];
GO
IF OBJECT_ID(N'[Security].[FK_GrantedAccess_Locations]', 'F') IS NOT NULL
    ALTER TABLE [Security].[GrantedAccess] DROP CONSTRAINT [FK_GrantedAccess_Locations];
GO
IF OBJECT_ID(N'[Security].[FK_GrantedAccess_SecurityInstances]', 'F') IS NOT NULL
    ALTER TABLE [Security].[GrantedAccess] DROP CONSTRAINT [FK_GrantedAccess_SecurityInstances];
GO
IF OBJECT_ID(N'[Security].[FK_Locations_LocationTypes]', 'F') IS NOT NULL
    ALTER TABLE [Security].[Locations] DROP CONSTRAINT [FK_Locations_LocationTypes];
GO
IF OBJECT_ID(N'[UsrProv].[FK_Messages_AccessRequest]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_Messages_AccessRequest];
GO
IF OBJECT_ID(N'[UsrProv].[FK_Messages_AppRequest]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_Messages_AppRequest];
GO
IF OBJECT_ID(N'[UsrProv].[FK_Messages_MessageTypes]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_Messages_MessageTypes];
GO
IF OBJECT_ID(N'[UsrProv].[FK_MessagesPrimaryRecipient_Directory]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_MessagesPrimaryRecipient_Directory];
GO
IF OBJECT_ID(N'[UsrProv].[FK_MessagesResponseBy_Directory]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_MessagesResponseBy_Directory];
GO
IF OBJECT_ID(N'[UsrProv].[FK_MessagesStartedBy_Directory]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_MessagesStartedBy_Directory];
GO
IF OBJECT_ID(N'[UsrProv].[FK_MessagesTargetUser_Directory]', 'F') IS NOT NULL
    ALTER TABLE [UsrProv].[Messages] DROP CONSTRAINT [FK_MessagesTargetUser_Directory];
GO
IF OBJECT_ID(N'[Security].[FK_RoleSecurityTypes_SecurityTypes]', 'F') IS NOT NULL
    ALTER TABLE [Security].[RoleSecurityTypes] DROP CONSTRAINT [FK_RoleSecurityTypes_SecurityTypes];
GO
IF OBJECT_ID(N'[Security].[FK_SecurityInstances_Directory]', 'F') IS NOT NULL
    ALTER TABLE [Security].[SecurityInstances] DROP CONSTRAINT [FK_SecurityInstances_Directory];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[Security].[AccessRequestActions]', 'U') IS NOT NULL
    DROP TABLE [Security].[AccessRequestActions];
GO
IF OBJECT_ID(N'[Security].[AccessRequests]', 'U') IS NOT NULL
    DROP TABLE [Security].[AccessRequests];
GO
IF OBJECT_ID(N'[Security].[AppAdmins]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppAdmins];
GO
IF OBJECT_ID(N'[Security].[AppBudgets]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppBudgets];
GO
IF OBJECT_ID(N'[Security].[AppClaims]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppClaims];
GO
IF OBJECT_ID(N'[Security].[AppLocations]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppLocations];
GO
IF OBJECT_ID(N'[Security].[AppPrerequisites]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppPrerequisites];
GO
IF OBJECT_ID(N'[Security].[AppRequests]', 'U') IS NOT NULL
    DROP TABLE [Security].[AppRequests];
GO
IF OBJECT_ID(N'[Security].[Budgets]', 'U') IS NOT NULL
    DROP TABLE [Security].[Budgets];
GO
IF OBJECT_ID(N'[Security].[Claims]', 'U') IS NOT NULL
    DROP TABLE [Security].[Claims];
GO
IF OBJECT_ID(N'[Security].[GrantedAccess]', 'U') IS NOT NULL
    DROP TABLE [Security].[GrantedAccess];
GO
IF OBJECT_ID(N'[Security].[Locations]', 'U') IS NOT NULL
    DROP TABLE [Security].[Locations];
GO
IF OBJECT_ID(N'[Security].[LocationTypes]', 'U') IS NOT NULL
    DROP TABLE [Security].[LocationTypes];
GO
IF OBJECT_ID(N'[Security].[Platforms]', 'U') IS NOT NULL
    DROP TABLE [Security].[Platforms];
GO
IF OBJECT_ID(N'[Security].[RequiredShareFolders]', 'U') IS NOT NULL
    DROP TABLE [Security].[RequiredShareFolders];
GO
IF OBJECT_ID(N'[Security].[RoleSecurityTypes]', 'U') IS NOT NULL
    DROP TABLE [Security].[RoleSecurityTypes];
GO
IF OBJECT_ID(N'[Security].[Sections]', 'U') IS NOT NULL
    DROP TABLE [Security].[Sections];
GO
IF OBJECT_ID(N'[Security].[SecurityInstances]', 'U') IS NOT NULL
    DROP TABLE [Security].[SecurityInstances];
GO
IF OBJECT_ID(N'[Security].[SecurityTypes]', 'U') IS NOT NULL
    DROP TABLE [Security].[SecurityTypes];
GO
IF OBJECT_ID(N'[Security].[SubWorkflow]', 'U') IS NOT NULL
    DROP TABLE [Security].[SubWorkflow];
GO
IF OBJECT_ID(N'[UsrProv].[Directory]', 'U') IS NOT NULL
    DROP TABLE [UsrProv].[Directory];
GO
IF OBJECT_ID(N'[UsrProv].[Messages]', 'U') IS NOT NULL
    DROP TABLE [UsrProv].[Messages];
GO
IF OBJECT_ID(N'[UsrProv].[MessageTypes]', 'U') IS NOT NULL
    DROP TABLE [UsrProv].[MessageTypes];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[LDAP]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[LDAP];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[TerminalServices]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[TerminalServices];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_AHTDDirectory_EmpUserID]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_AHTDDirectory_EmpUserID];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_AccessRequestsForActiveUsers]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_AccessRequestsForActiveUsers];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_GrantedAccess]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_GrantedAccess];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_OutstandingMessages]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_OutstandingMessages];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_PAHREmployees]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_PAHREmployees];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_PAHREmployeesNotInAD]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_PAHREmployeesNotInAD];
GO
IF OBJECT_ID(N'[UserProvModelStoreContainer].[vw_SupervisorLookup]', 'U') IS NOT NULL
    DROP TABLE [UserProvModelStoreContainer].[vw_SupervisorLookup];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AccessRequestActions'
CREATE TABLE [dbo].[AccessRequestActions] (
    [AccessRequestActionId] int IDENTITY(1,1) NOT NULL,
    [ActionName] varchar(15)  NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'AccessRequests'
CREATE TABLE [dbo].[AccessRequests] (
    [AccessRequestId] int IDENTITY(1,1) NOT NULL,
    [SecurityInstanceId] int  NOT NULL,
    [RequestDate] datetime  NOT NULL,
    [OriginatorId] int  NOT NULL,
    [SupervisorApproveDate] datetime  NULL,
    [CompletedDate] datetime  NULL,
    [AccessRequestActionId] int  NOT NULL
);
GO

-- Creating table 'AppAdmins'
CREATE TABLE [dbo].[AppAdmins] (
    [DirectoryId] int  NOT NULL,
    [AppId] int  NOT NULL,
    [Priority] int  NOT NULL
);
GO

-- Creating table 'AppBudgets'
CREATE TABLE [dbo].[AppBudgets] (
    [AppBudgetId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [BudgetId] int  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'AppClaims'
CREATE TABLE [dbo].[AppClaims] (
    [AppClaimId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [ClaimId] int  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'AppLocations'
CREATE TABLE [dbo].[AppLocations] (
    [AppLocationId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [LocationId] int  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'AppPrerequisites'
CREATE TABLE [dbo].[AppPrerequisites] (
    [AppPrereqId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [RequiredAppId] int  NOT NULL,
    [Sequence] int  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'AppRequests'
CREATE TABLE [dbo].[AppRequests] (
    [AppRequestId] int IDENTITY(1,1) NOT NULL,
    [AccessRequestId] int  NOT NULL,
    [AppId] int  NOT NULL,
    [RoleId] int  NULL,
    [BudgetId] int  NULL,
    [LocationId] int  NULL,
    [RequestApproved] bit  NULL,
    [AllowAccess] bit  NOT NULL,
    [Notes] varchar(250)  NULL,
    [ProcessedBy] int  NULL,
    [ProcessDate] datetime  NULL,
    [ExpiryDate] datetime  NULL
);
GO

-- Creating table 'Budgets'
CREATE TABLE [dbo].[Budgets] (
    [BudgetId] int IDENTITY(1,1) NOT NULL,
    [Budget1] char(3)  NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [SpecialProject] bit  NOT NULL,
    [LocationId] int  NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL,
    [OU] varchar(4)  NOT NULL,
    [HomeServerName] varchar(25)  NULL
);
GO

-- Creating table 'Claims'
CREATE TABLE [dbo].[Claims] (
    [ClaimId] int IDENTITY(1,1) NOT NULL,
    [ShortDescription] varchar(50)  NOT NULL,
    [Description] varchar(500)  NOT NULL,
    [ClaimType] varchar(100)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'GrantedAccesses'
CREATE TABLE [dbo].[GrantedAccesses] (
    [GrantedAccessId] int IDENTITY(1,1) NOT NULL,
    [SecurityInstanceId] int  NOT NULL,
    [AppId] int  NOT NULL,
    [RoleId] int  NOT NULL,
    [LocationId] int  NULL,
    [BudgetId] int  NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [LocationId] int IDENTITY(1,1) NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [LocationTypeId] int  NOT NULL,
    [PAHRIndicator] char(4)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'LocationTypes'
CREATE TABLE [dbo].[LocationTypes] (
    [LocationTypeId] int IDENTITY(1,1) NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'Platforms'
CREATE TABLE [dbo].[Platforms] (
    [PlatformId] int IDENTITY(1,1) NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'RequiredShareFolders'
CREATE TABLE [dbo].[RequiredShareFolders] (
    [RequiredShareFoldersId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [AppRoleId] int  NULL,
    [UNCPath] nvarchar(255)  NOT NULL,
    [ACLModify] bit  NOT NULL,
    [ACLReadExecute] bit  NOT NULL,
    [ACLList] bit  NOT NULL,
    [ACLRead] bit  NOT NULL,
    [ACLWrite] bit  NOT NULL
);
GO

-- Creating table 'RoleSecurityTypes'
CREATE TABLE [dbo].[RoleSecurityTypes] (
    [RoleSecurityTypeId] int IDENTITY(1,1) NOT NULL,
    [RoleId] int  NOT NULL,
    [SecurityTypeId] int  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'Sections'
CREATE TABLE [dbo].[Sections] (
    [SectionId] int IDENTITY(1,1) NOT NULL,
    [Section1] char(4)  NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'SecurityInstances'
CREATE TABLE [dbo].[SecurityInstances] (
    [SecurityInstanceId] int IDENTITY(1,1) NOT NULL,
    [DirectoryId] int  NOT NULL,
    [StartDate] datetime  NULL,
    [EndDate] datetime  NULL,
    [Suspended] bit  NOT NULL
);
GO

-- Creating table 'SecurityTypes'
CREATE TABLE [dbo].[SecurityTypes] (
    [SecurityTypeId] int IDENTITY(1,1) NOT NULL,
    [ShortDescription] varchar(100)  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'SubWorkflows'
CREATE TABLE [dbo].[SubWorkflows] (
    [XamlId] int IDENTITY(1,1) NOT NULL,
    [AppId] int  NOT NULL,
    [AllowAccessRequest] bit  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Body] varbinary(max)  NOT NULL,
    [RequiresInteraction] bit  NOT NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NOT NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Directories'
CREATE TABLE [dbo].[Directories] (
    [DirectoryId] int IDENTITY(1,1) NOT NULL,
    [EmployeeId] int  NULL,
    [EmployeeNumber] char(9)  NULL,
    [UserId] varchar(9)  NULL,
    [EmployeeStatus] char(2)  NULL,
    [RecordType] varchar(20)  NULL,
    [LastName] varchar(27)  NULL,
    [FirstName] varchar(15)  NULL,
    [BudgetId] int  NULL,
    [JobItemNo] char(4)  NULL,
    [JobTitle] varchar(30)  NULL,
    [WorkPhone] char(10)  NULL,
    [WorkExtension] char(4)  NULL,
    [EngineerNumber] char(2)  NULL,
    [SectionId] int  NULL,
    [DivisionDistrictIndicator] char(4)  NULL,
    [CrewNumber] char(5)  NULL,
    [Location] varchar(30)  NULL,
    [Email] varchar(319)  NULL,
    [ReportsToId] int  NULL,
    [DeleteFlag] bit  NULL,
    [DeleteFlagDate] datetime  NULL,
    [TerminalServices] bit  NULL,
    [Enabled] bit  NOT NULL,
    [DateEnabled] datetime  NULL,
    [DateDisabled] datetime  NULL,
    [LastChangeDate] datetime  NOT NULL,
    [LastChangeUser] varchar(9)  NOT NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [MessageId] int IDENTITY(1,1) NOT NULL,
    [WorkflowId] uniqueidentifier  NOT NULL,
    [StartedById] int  NOT NULL,
    [MessageEntryDate] datetime  NOT NULL,
    [Title] nvarchar(256)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL,
    [ResponseById] int  NULL,
    [Response] nvarchar(512)  NULL,
    [TargetDirectoryId] int  NOT NULL,
    [MessageTypeId] int  NOT NULL,
    [Completed] bit  NULL,
    [AppRequestId] int  NULL,
    [AccessRequestId] int  NULL,
    [SendEmailBy] datetime  NULL,
    [EmailSent] bit  NULL,
    [PrimaryRecipientId] int  NULL
);
GO

-- Creating table 'MessageTypes'
CREATE TABLE [dbo].[MessageTypes] (
    [TypeId] int  NOT NULL,
    [TypeName] nvarchar(50)  NOT NULL,
    [Description] nvarchar(300)  NOT NULL
);
GO

-- Creating table 'LDAPs'
CREATE TABLE [dbo].[LDAPs] (
    [row_id] int IDENTITY(1,1) NOT NULL,
    [cn] varchar(256)  NULL,
    [employee_number] varchar(30)  NULL,
    [userid] varchar(30)  NULL,
    [email] varchar(316)  NULL,
    [user_status] varchar(10)  NULL,
    [Budget] varchar(3)  NULL,
    [Room] varchar(30)  NULL,
    [Location] varchar(50)  NULL,
    [manager] varchar(256)  NULL,
    [ReportsToID] varchar(30)  NULL,
    [adspath] varchar(256)  NULL,
    [ReportsTo] varchar(319)  NULL
);
GO

-- Creating table 'TerminalServices'
CREATE TABLE [dbo].[TerminalServices] (
    [row_id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(55)  NULL,
    [userid] varchar(50)  NULL
);
GO

-- Creating table 'vw_AHTDDirectory_EmpUserID'
CREATE TABLE [dbo].[vw_AHTDDirectory_EmpUserID] (
    [Record_Type] varchar(20)  NULL,
    [DirectoryID] int IDENTITY(1,1) NOT NULL,
    [Employee_Number] char(9)  NULL,
    [UserID] varchar(9)  NULL,
    [Name_Last] varchar(27)  NULL,
    [Name_First] varchar(15)  NULL
);
GO

-- Creating table 'vw_AccessRequestsForActiveUsers'
CREATE TABLE [dbo].[vw_AccessRequestsForActiveUsers] (
    [AccessRequestId] int IDENTITY(1,1) NOT NULL,
    [SecurityInstanceId] int  NOT NULL,
    [RequestDate] datetime  NOT NULL,
    [OriginatorId] int  NOT NULL,
    [CompletedDate] datetime  NULL
);
GO

-- Creating table 'vw_GrantedAccess'
CREATE TABLE [dbo].[vw_GrantedAccess] (
    [SecurityInstanceId] int  NOT NULL,
    [AppId] int  NOT NULL,
    [RoleId] int  NULL,
    [BudgetId] int  NULL,
    [LocationId] int  NULL,
    [AppRequestId] int  NOT NULL,
    [ProcessDate] datetime  NULL
);
GO

-- Creating table 'vw_OutstandingMessages'
CREATE TABLE [dbo].[vw_OutstandingMessages] (
    [MessageId] int  NOT NULL,
    [WorkflowId] uniqueidentifier  NOT NULL,
    [StartedById] int  NOT NULL,
    [MessageEntryDate] datetime  NOT NULL,
    [Title] nvarchar(256)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL,
    [ResponseById] int  NULL,
    [Response] nvarchar(512)  NULL,
    [TargetDirectoryId] int  NOT NULL,
    [MessageTypeId] int  NOT NULL,
    [Completed] bit  NULL,
    [AppRequestId] int  NULL,
    [AccessRequestId] int  NULL,
    [SendEmailBy] datetime  NULL,
    [EmailSent] bit  NULL,
    [PrimaryRecipientId] int  NULL,
    [Email] varchar(319)  NULL
);
GO

-- Creating table 'vw_PAHREmployees'
CREATE TABLE [dbo].[vw_PAHREmployees] (
    [EmployeeNumber] char(9)  NOT NULL,
    [FirstName] varchar(15)  NULL,
    [MiddleName] varchar(10)  NULL,
    [LastName] varchar(27)  NULL,
    [NickName] varchar(25)  NULL,
    [PhoneArea] varchar(3)  NULL,
    [PhonePrefix] varchar(3)  NULL,
    [PhoneNumber] varchar(4)  NULL,
    [PhoneExt] varchar(4)  NULL,
    [Budget] varchar(30)  NULL,
    [EngineerNumber] varchar(2)  NULL,
    [CrewNumber] varchar(5)  NULL,
    [SectionId] varchar(4)  NULL,
    [DivisionDistrictIndicator] varchar(4)  NULL,
    [JobTitle] varchar(30)  NULL,
    [JobItemNumber] varchar(4)  NULL,
    [RoomNumber] varchar(30)  NULL,
    [Location] varchar(50)  NULL
);
GO

-- Creating table 'vw_PAHREmployeesNotInAD'
CREATE TABLE [dbo].[vw_PAHREmployeesNotInAD] (
    [EmployeeNumber] char(9)  NOT NULL,
    [FirstName] varchar(15)  NULL,
    [MiddleName] varchar(10)  NULL,
    [LastName] varchar(27)  NULL,
    [NickName] varchar(25)  NULL,
    [PhoneArea] varchar(3)  NULL,
    [PhonePrefix] varchar(3)  NULL,
    [PhoneNumber] varchar(4)  NULL,
    [PhoneExt] varchar(4)  NULL,
    [Budget] varchar(30)  NULL,
    [EngineerNumber] varchar(2)  NULL,
    [CrewNumber] varchar(5)  NULL,
    [DivisionDistrictIndicator] varchar(4)  NULL,
    [JobTitle] varchar(30)  NULL,
    [JobItemNumber] varchar(4)  NULL,
    [SectionId] int  NULL
);
GO

-- Creating table 'vw_SupervisorLookup'
CREATE TABLE [dbo].[vw_SupervisorLookup] (
    [EmployeeNumber] char(9)  NOT NULL,
    [Branch] char(6)  NULL,
    [DivDist] char(6)  NULL,
    [Subset] char(6)  NULL,
    [SecRECrew] char(6)  NULL,
    [SupervisoryCode] char(1)  NULL,
    [SupervisorEmployeeNo] char(9)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AccessRequestActionId] in table 'AccessRequestActions'
ALTER TABLE [dbo].[AccessRequestActions]
ADD CONSTRAINT [PK_AccessRequestActions]
    PRIMARY KEY CLUSTERED ([AccessRequestActionId] ASC);
GO

-- Creating primary key on [AccessRequestId] in table 'AccessRequests'
ALTER TABLE [dbo].[AccessRequests]
ADD CONSTRAINT [PK_AccessRequests]
    PRIMARY KEY CLUSTERED ([AccessRequestId] ASC);
GO

-- Creating primary key on [DirectoryId], [AppId] in table 'AppAdmins'
ALTER TABLE [dbo].[AppAdmins]
ADD CONSTRAINT [PK_AppAdmins]
    PRIMARY KEY CLUSTERED ([DirectoryId], [AppId] ASC);
GO

-- Creating primary key on [AppBudgetId] in table 'AppBudgets'
ALTER TABLE [dbo].[AppBudgets]
ADD CONSTRAINT [PK_AppBudgets]
    PRIMARY KEY CLUSTERED ([AppBudgetId] ASC);
GO

-- Creating primary key on [AppClaimId] in table 'AppClaims'
ALTER TABLE [dbo].[AppClaims]
ADD CONSTRAINT [PK_AppClaims]
    PRIMARY KEY CLUSTERED ([AppClaimId] ASC);
GO

-- Creating primary key on [AppLocationId] in table 'AppLocations'
ALTER TABLE [dbo].[AppLocations]
ADD CONSTRAINT [PK_AppLocations]
    PRIMARY KEY CLUSTERED ([AppLocationId] ASC);
GO

-- Creating primary key on [AppPrereqId] in table 'AppPrerequisites'
ALTER TABLE [dbo].[AppPrerequisites]
ADD CONSTRAINT [PK_AppPrerequisites]
    PRIMARY KEY CLUSTERED ([AppPrereqId] ASC);
GO

-- Creating primary key on [AppRequestId] in table 'AppRequests'
ALTER TABLE [dbo].[AppRequests]
ADD CONSTRAINT [PK_AppRequests]
    PRIMARY KEY CLUSTERED ([AppRequestId] ASC);
GO

-- Creating primary key on [BudgetId] in table 'Budgets'
ALTER TABLE [dbo].[Budgets]
ADD CONSTRAINT [PK_Budgets]
    PRIMARY KEY CLUSTERED ([BudgetId] ASC);
GO

-- Creating primary key on [ClaimId] in table 'Claims'
ALTER TABLE [dbo].[Claims]
ADD CONSTRAINT [PK_Claims]
    PRIMARY KEY CLUSTERED ([ClaimId] ASC);
GO

-- Creating primary key on [GrantedAccessId] in table 'GrantedAccesses'
ALTER TABLE [dbo].[GrantedAccesses]
ADD CONSTRAINT [PK_GrantedAccesses]
    PRIMARY KEY CLUSTERED ([GrantedAccessId] ASC);
GO

-- Creating primary key on [LocationId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([LocationId] ASC);
GO

-- Creating primary key on [LocationTypeId] in table 'LocationTypes'
ALTER TABLE [dbo].[LocationTypes]
ADD CONSTRAINT [PK_LocationTypes]
    PRIMARY KEY CLUSTERED ([LocationTypeId] ASC);
GO

-- Creating primary key on [PlatformId] in table 'Platforms'
ALTER TABLE [dbo].[Platforms]
ADD CONSTRAINT [PK_Platforms]
    PRIMARY KEY CLUSTERED ([PlatformId] ASC);
GO

-- Creating primary key on [RequiredShareFoldersId] in table 'RequiredShareFolders'
ALTER TABLE [dbo].[RequiredShareFolders]
ADD CONSTRAINT [PK_RequiredShareFolders]
    PRIMARY KEY CLUSTERED ([RequiredShareFoldersId] ASC);
GO

-- Creating primary key on [RoleSecurityTypeId] in table 'RoleSecurityTypes'
ALTER TABLE [dbo].[RoleSecurityTypes]
ADD CONSTRAINT [PK_RoleSecurityTypes]
    PRIMARY KEY CLUSTERED ([RoleSecurityTypeId] ASC);
GO

-- Creating primary key on [SectionId] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [PK_Sections]
    PRIMARY KEY CLUSTERED ([SectionId] ASC);
GO

-- Creating primary key on [SecurityInstanceId] in table 'SecurityInstances'
ALTER TABLE [dbo].[SecurityInstances]
ADD CONSTRAINT [PK_SecurityInstances]
    PRIMARY KEY CLUSTERED ([SecurityInstanceId] ASC);
GO

-- Creating primary key on [SecurityTypeId] in table 'SecurityTypes'
ALTER TABLE [dbo].[SecurityTypes]
ADD CONSTRAINT [PK_SecurityTypes]
    PRIMARY KEY CLUSTERED ([SecurityTypeId] ASC);
GO

-- Creating primary key on [XamlId] in table 'SubWorkflows'
ALTER TABLE [dbo].[SubWorkflows]
ADD CONSTRAINT [PK_SubWorkflows]
    PRIMARY KEY CLUSTERED ([XamlId] ASC);
GO

-- Creating primary key on [DirectoryId] in table 'Directories'
ALTER TABLE [dbo].[Directories]
ADD CONSTRAINT [PK_Directories]
    PRIMARY KEY CLUSTERED ([DirectoryId] ASC);
GO

-- Creating primary key on [MessageId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([MessageId] ASC);
GO

-- Creating primary key on [TypeId] in table 'MessageTypes'
ALTER TABLE [dbo].[MessageTypes]
ADD CONSTRAINT [PK_MessageTypes]
    PRIMARY KEY CLUSTERED ([TypeId] ASC);
GO

-- Creating primary key on [row_id] in table 'LDAPs'
ALTER TABLE [dbo].[LDAPs]
ADD CONSTRAINT [PK_LDAPs]
    PRIMARY KEY CLUSTERED ([row_id] ASC);
GO

-- Creating primary key on [row_id] in table 'TerminalServices'
ALTER TABLE [dbo].[TerminalServices]
ADD CONSTRAINT [PK_TerminalServices]
    PRIMARY KEY CLUSTERED ([row_id] ASC);
GO

-- Creating primary key on [DirectoryID] in table 'vw_AHTDDirectory_EmpUserID'
ALTER TABLE [dbo].[vw_AHTDDirectory_EmpUserID]
ADD CONSTRAINT [PK_vw_AHTDDirectory_EmpUserID]
    PRIMARY KEY CLUSTERED ([DirectoryID] ASC);
GO

-- Creating primary key on [AccessRequestId], [SecurityInstanceId], [RequestDate], [OriginatorId] in table 'vw_AccessRequestsForActiveUsers'
ALTER TABLE [dbo].[vw_AccessRequestsForActiveUsers]
ADD CONSTRAINT [PK_vw_AccessRequestsForActiveUsers]
    PRIMARY KEY CLUSTERED ([AccessRequestId], [SecurityInstanceId], [RequestDate], [OriginatorId] ASC);
GO

-- Creating primary key on [SecurityInstanceId], [AppId], [AppRequestId] in table 'vw_GrantedAccess'
ALTER TABLE [dbo].[vw_GrantedAccess]
ADD CONSTRAINT [PK_vw_GrantedAccess]
    PRIMARY KEY CLUSTERED ([SecurityInstanceId], [AppId], [AppRequestId] ASC);
GO

-- Creating primary key on [MessageId], [WorkflowId], [StartedById], [MessageEntryDate], [Title], [Body], [TargetDirectoryId], [MessageTypeId] in table 'vw_OutstandingMessages'
ALTER TABLE [dbo].[vw_OutstandingMessages]
ADD CONSTRAINT [PK_vw_OutstandingMessages]
    PRIMARY KEY CLUSTERED ([MessageId], [WorkflowId], [StartedById], [MessageEntryDate], [Title], [Body], [TargetDirectoryId], [MessageTypeId] ASC);
GO

-- Creating primary key on [EmployeeNumber] in table 'vw_PAHREmployees'
ALTER TABLE [dbo].[vw_PAHREmployees]
ADD CONSTRAINT [PK_vw_PAHREmployees]
    PRIMARY KEY CLUSTERED ([EmployeeNumber] ASC);
GO

-- Creating primary key on [EmployeeNumber] in table 'vw_PAHREmployeesNotInAD'
ALTER TABLE [dbo].[vw_PAHREmployeesNotInAD]
ADD CONSTRAINT [PK_vw_PAHREmployeesNotInAD]
    PRIMARY KEY CLUSTERED ([EmployeeNumber] ASC);
GO

-- Creating primary key on [EmployeeNumber] in table 'vw_SupervisorLookup'
ALTER TABLE [dbo].[vw_SupervisorLookup]
ADD CONSTRAINT [PK_vw_SupervisorLookup]
    PRIMARY KEY CLUSTERED ([EmployeeNumber] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AccessRequestActionId] in table 'AccessRequests'
ALTER TABLE [dbo].[AccessRequests]
ADD CONSTRAINT [FK_AccessRequests_AccessRequestActions]
    FOREIGN KEY ([AccessRequestActionId])
    REFERENCES [dbo].[AccessRequestActions]
        ([AccessRequestActionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccessRequests_AccessRequestActions'
CREATE INDEX [IX_FK_AccessRequests_AccessRequestActions]
ON [dbo].[AccessRequests]
    ([AccessRequestActionId]);
GO

-- Creating foreign key on [OriginatorId] in table 'AccessRequests'
ALTER TABLE [dbo].[AccessRequests]
ADD CONSTRAINT [FK_AccessRequests_Directory]
    FOREIGN KEY ([OriginatorId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccessRequests_Directory'
CREATE INDEX [IX_FK_AccessRequests_Directory]
ON [dbo].[AccessRequests]
    ([OriginatorId]);
GO

-- Creating foreign key on [SecurityInstanceId] in table 'AccessRequests'
ALTER TABLE [dbo].[AccessRequests]
ADD CONSTRAINT [FK_AccessRequests_SecurityInstances]
    FOREIGN KEY ([SecurityInstanceId])
    REFERENCES [dbo].[SecurityInstances]
        ([SecurityInstanceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccessRequests_SecurityInstances'
CREATE INDEX [IX_FK_AccessRequests_SecurityInstances]
ON [dbo].[AccessRequests]
    ([SecurityInstanceId]);
GO

-- Creating foreign key on [AccessRequestId] in table 'AppRequests'
ALTER TABLE [dbo].[AppRequests]
ADD CONSTRAINT [FK_AppRequests_AccessRequests]
    FOREIGN KEY ([AccessRequestId])
    REFERENCES [dbo].[AccessRequests]
        ([AccessRequestId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppRequests_AccessRequests'
CREATE INDEX [IX_FK_AppRequests_AccessRequests]
ON [dbo].[AppRequests]
    ([AccessRequestId]);
GO

-- Creating foreign key on [AccessRequestId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_AccessRequest]
    FOREIGN KEY ([AccessRequestId])
    REFERENCES [dbo].[AccessRequests]
        ([AccessRequestId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_AccessRequest'
CREATE INDEX [IX_FK_Messages_AccessRequest]
ON [dbo].[Messages]
    ([AccessRequestId]);
GO

-- Creating foreign key on [DirectoryId] in table 'AppAdmins'
ALTER TABLE [dbo].[AppAdmins]
ADD CONSTRAINT [FK_AppAdmins_Directory]
    FOREIGN KEY ([DirectoryId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BudgetId] in table 'AppBudgets'
ALTER TABLE [dbo].[AppBudgets]
ADD CONSTRAINT [FK_AppBudgets_Budgets]
    FOREIGN KEY ([BudgetId])
    REFERENCES [dbo].[Budgets]
        ([BudgetId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppBudgets_Budgets'
CREATE INDEX [IX_FK_AppBudgets_Budgets]
ON [dbo].[AppBudgets]
    ([BudgetId]);
GO

-- Creating foreign key on [ClaimId] in table 'AppClaims'
ALTER TABLE [dbo].[AppClaims]
ADD CONSTRAINT [FK_AppClaims_Claims]
    FOREIGN KEY ([ClaimId])
    REFERENCES [dbo].[Claims]
        ([ClaimId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppClaims_Claims'
CREATE INDEX [IX_FK_AppClaims_Claims]
ON [dbo].[AppClaims]
    ([ClaimId]);
GO

-- Creating foreign key on [LocationId] in table 'AppLocations'
ALTER TABLE [dbo].[AppLocations]
ADD CONSTRAINT [FK_AppLocations_Locations]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppLocations_Locations'
CREATE INDEX [IX_FK_AppLocations_Locations]
ON [dbo].[AppLocations]
    ([LocationId]);
GO

-- Creating foreign key on [BudgetId] in table 'AppRequests'
ALTER TABLE [dbo].[AppRequests]
ADD CONSTRAINT [FK_AppRequests_Budgets]
    FOREIGN KEY ([BudgetId])
    REFERENCES [dbo].[Budgets]
        ([BudgetId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppRequests_Budgets'
CREATE INDEX [IX_FK_AppRequests_Budgets]
ON [dbo].[AppRequests]
    ([BudgetId]);
GO

-- Creating foreign key on [ProcessedBy] in table 'AppRequests'
ALTER TABLE [dbo].[AppRequests]
ADD CONSTRAINT [FK_AppRequests_Directory]
    FOREIGN KEY ([ProcessedBy])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppRequests_Directory'
CREATE INDEX [IX_FK_AppRequests_Directory]
ON [dbo].[AppRequests]
    ([ProcessedBy]);
GO

-- Creating foreign key on [LocationId] in table 'AppRequests'
ALTER TABLE [dbo].[AppRequests]
ADD CONSTRAINT [FK_AppRequests_Locations]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AppRequests_Locations'
CREATE INDEX [IX_FK_AppRequests_Locations]
ON [dbo].[AppRequests]
    ([LocationId]);
GO

-- Creating foreign key on [AppRequestId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_AppRequest]
    FOREIGN KEY ([AppRequestId])
    REFERENCES [dbo].[AppRequests]
        ([AppRequestId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_AppRequest'
CREATE INDEX [IX_FK_Messages_AppRequest]
ON [dbo].[Messages]
    ([AppRequestId]);
GO

-- Creating foreign key on [LocationId] in table 'Budgets'
ALTER TABLE [dbo].[Budgets]
ADD CONSTRAINT [FK_Budgets_Locations]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Budgets_Locations'
CREATE INDEX [IX_FK_Budgets_Locations]
ON [dbo].[Budgets]
    ([LocationId]);
GO

-- Creating foreign key on [BudgetId] in table 'Directories'
ALTER TABLE [dbo].[Directories]
ADD CONSTRAINT [FK_Directory_Budgets]
    FOREIGN KEY ([BudgetId])
    REFERENCES [dbo].[Budgets]
        ([BudgetId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Directory_Budgets'
CREATE INDEX [IX_FK_Directory_Budgets]
ON [dbo].[Directories]
    ([BudgetId]);
GO

-- Creating foreign key on [BudgetId] in table 'GrantedAccesses'
ALTER TABLE [dbo].[GrantedAccesses]
ADD CONSTRAINT [FK_GrantedAccess_Budgets]
    FOREIGN KEY ([BudgetId])
    REFERENCES [dbo].[Budgets]
        ([BudgetId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GrantedAccess_Budgets'
CREATE INDEX [IX_FK_GrantedAccess_Budgets]
ON [dbo].[GrantedAccesses]
    ([BudgetId]);
GO

-- Creating foreign key on [LocationId] in table 'GrantedAccesses'
ALTER TABLE [dbo].[GrantedAccesses]
ADD CONSTRAINT [FK_GrantedAccess_Locations]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GrantedAccess_Locations'
CREATE INDEX [IX_FK_GrantedAccess_Locations]
ON [dbo].[GrantedAccesses]
    ([LocationId]);
GO

-- Creating foreign key on [SecurityInstanceId] in table 'GrantedAccesses'
ALTER TABLE [dbo].[GrantedAccesses]
ADD CONSTRAINT [FK_GrantedAccess_SecurityInstances]
    FOREIGN KEY ([SecurityInstanceId])
    REFERENCES [dbo].[SecurityInstances]
        ([SecurityInstanceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GrantedAccess_SecurityInstances'
CREATE INDEX [IX_FK_GrantedAccess_SecurityInstances]
ON [dbo].[GrantedAccesses]
    ([SecurityInstanceId]);
GO

-- Creating foreign key on [LocationTypeId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_Locations_LocationTypes]
    FOREIGN KEY ([LocationTypeId])
    REFERENCES [dbo].[LocationTypes]
        ([LocationTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Locations_LocationTypes'
CREATE INDEX [IX_FK_Locations_LocationTypes]
ON [dbo].[Locations]
    ([LocationTypeId]);
GO

-- Creating foreign key on [SecurityTypeId] in table 'RoleSecurityTypes'
ALTER TABLE [dbo].[RoleSecurityTypes]
ADD CONSTRAINT [FK_RoleSecurityTypes_SecurityTypes]
    FOREIGN KEY ([SecurityTypeId])
    REFERENCES [dbo].[SecurityTypes]
        ([SecurityTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleSecurityTypes_SecurityTypes'
CREATE INDEX [IX_FK_RoleSecurityTypes_SecurityTypes]
ON [dbo].[RoleSecurityTypes]
    ([SecurityTypeId]);
GO

-- Creating foreign key on [SectionId] in table 'Directories'
ALTER TABLE [dbo].[Directories]
ADD CONSTRAINT [FK_Directory_Sections]
    FOREIGN KEY ([SectionId])
    REFERENCES [dbo].[Sections]
        ([SectionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Directory_Sections'
CREATE INDEX [IX_FK_Directory_Sections]
ON [dbo].[Directories]
    ([SectionId]);
GO

-- Creating foreign key on [DirectoryId] in table 'SecurityInstances'
ALTER TABLE [dbo].[SecurityInstances]
ADD CONSTRAINT [FK_SecurityInstances_Directory]
    FOREIGN KEY ([DirectoryId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SecurityInstances_Directory'
CREATE INDEX [IX_FK_SecurityInstances_Directory]
ON [dbo].[SecurityInstances]
    ([DirectoryId]);
GO

-- Creating foreign key on [ReportsToId] in table 'Directories'
ALTER TABLE [dbo].[Directories]
ADD CONSTRAINT [FK_DirectoryReportsTo_Directory]
    FOREIGN KEY ([ReportsToId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirectoryReportsTo_Directory'
CREATE INDEX [IX_FK_DirectoryReportsTo_Directory]
ON [dbo].[Directories]
    ([ReportsToId]);
GO

-- Creating foreign key on [PrimaryRecipientId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessagesPrimaryRecipient_Directory]
    FOREIGN KEY ([PrimaryRecipientId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MessagesPrimaryRecipient_Directory'
CREATE INDEX [IX_FK_MessagesPrimaryRecipient_Directory]
ON [dbo].[Messages]
    ([PrimaryRecipientId]);
GO

-- Creating foreign key on [ResponseById] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessagesResponseBy_Directory]
    FOREIGN KEY ([ResponseById])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MessagesResponseBy_Directory'
CREATE INDEX [IX_FK_MessagesResponseBy_Directory]
ON [dbo].[Messages]
    ([ResponseById]);
GO

-- Creating foreign key on [StartedById] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessagesStartedBy_Directory]
    FOREIGN KEY ([StartedById])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MessagesStartedBy_Directory'
CREATE INDEX [IX_FK_MessagesStartedBy_Directory]
ON [dbo].[Messages]
    ([StartedById]);
GO

-- Creating foreign key on [TargetDirectoryId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessagesTargetUser_Directory]
    FOREIGN KEY ([TargetDirectoryId])
    REFERENCES [dbo].[Directories]
        ([DirectoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MessagesTargetUser_Directory'
CREATE INDEX [IX_FK_MessagesTargetUser_Directory]
ON [dbo].[Messages]
    ([TargetDirectoryId]);
GO

-- Creating foreign key on [MessageTypeId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_MessageTypes]
    FOREIGN KEY ([MessageTypeId])
    REFERENCES [dbo].[MessageTypes]
        ([TypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_MessageTypes'
CREATE INDEX [IX_FK_Messages_MessageTypes]
ON [dbo].[Messages]
    ([MessageTypeId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------