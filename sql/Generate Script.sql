USE [ITCORPDB]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser2]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdateUser2]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[spSearchUsername]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchUsername]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spSearchUsername]
GO
/****** Object:  StoredProcedure [dbo].[spSearchImportEmployee]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchImportEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spSearchImportEmployee]
GO
/****** Object:  StoredProcedure [dbo].[spInsertDataUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertDataUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsertDataUser]
GO
/****** Object:  StoredProcedure [dbo].[spImportEmployee]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spImportEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spImportEmployee]
GO
/****** Object:  StoredProcedure [dbo].[spGetTypeUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetTypeUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetTypeUser]
GO
/****** Object:  StoredProcedure [dbo].[spGetSecretKey]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSecretKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetSecretKey]
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginInfo]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLoginInfo]
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLoginAccess]
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess2]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAppAccess2]
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAppAccess]
GO
/****** Object:  StoredProcedure [dbo].[getMenuParentByGroup]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getMenuParentByGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getMenuParentByGroup]
GO
/****** Object:  StoredProcedure [dbo].[getGroupMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getGroupMenu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getGroupMenu]
GO
/****** Object:  StoredProcedure [dbo].[getChildMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getChildMenu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getChildMenu]
GO
/****** Object:  StoredProcedure [dbo].[getApp]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getApp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getApp]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GrandMenuUser_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GrandMenuUser] DROP CONSTRAINT [DF_GrandMenuUser_DtmUpdate]
END

GO
/****** Object:  Table [dbo].[tempLoginAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempLoginAccess]') AND type in (N'U'))
DROP TABLE [dbo].[tempLoginAccess]
GO
/****** Object:  Table [dbo].[TblTypeUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblTypeUser]') AND type in (N'U'))
DROP TABLE [dbo].[TblTypeUser]
GO
/****** Object:  Table [dbo].[TblGroupMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblGroupMenu]') AND type in (N'U'))
DROP TABLE [dbo].[TblGroupMenu]
GO
/****** Object:  Table [dbo].[MasterUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterUser]') AND type in (N'U'))
DROP TABLE [dbo].[MasterUser]
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterMenu]') AND type in (N'U'))
DROP TABLE [dbo].[MasterMenu]
GO
/****** Object:  Table [dbo].[GrandMenuUser]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrandMenuUser]') AND type in (N'U'))
DROP TABLE [dbo].[GrandMenuUser]
GO
/****** Object:  UserDefinedFunction [dbo].[ProperCase]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProperCase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ProperCase]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenerateUsername]    Script Date: 7/14/2015 7:38:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnGenerateUsername]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnGenerateUsername]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenerateUsername]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnGenerateUsername]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fnGenerateUsername](
	@TypeUser CHAR(3)
)
RETURNS VARCHAR(10)
WITH EXECUTE AS CALLER
AS
BEGIN
DECLARE @NomorUrut CHAR(5),
		@Username CHAR(10)

SELECT @NomorUrut = REPLICATE(''0'',(5 - LEN(NomorUrut))) + CONVERT(CHAR(5), NomorUrut) FROM TblTypeUser WHERE ID = @TypeUser

SET @Username = (@TypeUser + @NomorUrut)

RETURN(@Username)

END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[ProperCase]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProperCase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ProperCase](@String AS VARCHAR(8000))
RETURNS VARCHAR(8000)
AS
BEGIN
  DECLARE @i INT           -- index
  DECLARE @l INT           -- input length
  DECLARE @c NCHAR(1)      -- current char
  DECLARE @f INT           -- first letter flag (1/0)
  DECLARE @o VARCHAR(255)  -- output string
  DECLARE @w VARCHAR(10)   -- characters considered as white space

  SET @w = ''['' + CHAR(13) + CHAR(10) + CHAR(9) + CHAR(160) + '' '' + '']''
  SET @i = 0
  SET @l = LEN(@string)
  SET @f = 1
  SET @o = ''''

  WHILE @i <= @l
  BEGIN
    SET @c = SUBSTRING(@string, @i, 1)
    IF @f = 1 
    BEGIN
     SET @o = @o + @c
     SET @f = 0
    END
    ELSE
    BEGIN
     SET @o = @o + LOWER(@c)
    END

    IF @c LIKE @w SET @f = 1

    SET @i = @i + 1
  END

  RETURN @o
END' 
END

GO
/****** Object:  Table [dbo].[GrandMenuUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrandMenuUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GrandMenuUser](
	[GrandId] [int] IDENTITY(1,1) NOT NULL,
	[MenuGroup] [varchar](10) NOT NULL,
	[MenuId] [int] NOT NULL,
	[Username] [varchar](10) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_GrandMenuUser] PRIMARY KEY CLUSTERED 
(
	[GrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterMenu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](150) NULL,
	[MenuUrl] [varchar](150) NULL,
	[GroupMenu] [char](10) NULL,
	[MenuParent] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_MasterMenu_IsActive]  DEFAULT ((1)),
	[UserUpdate] [varchar](10) NULL,
	[DtmUpdate] [datetime] NULL CONSTRAINT [DF_MasterMenu_DtmUpdate]  DEFAULT (getdate()),
 CONSTRAINT [PK_MasterMenu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MasterUser](
	[Username] [varchar](10) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[UserFullName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Jabatan] [varchar](100) NOT NULL,
	[Cabang] [varchar](100) NOT NULL,
	[Departement] [varchar](100) NOT NULL,
	[Divisi] [varchar](100) NOT NULL,
	[Type] [char](3) NOT NULL,
	[IsAdminAccess] [bit] NULL CONSTRAINT [DF_MasterUser_IsAdminAccess]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_MasterUser_IsActive]  DEFAULT ((1)),
	[SecretKey] [varchar](50) NOT NULL,
	[UserExport] [varchar](10) NOT NULL,
	[ExportDate] [datetime] NOT NULL CONSTRAINT [DF_MasterUser_ExportDate]  DEFAULT (getdate()),
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL CONSTRAINT [DF_MasterUser_DtmUpdate]  DEFAULT (getdate()),
	[IsTicketAccess] [bit] NULL,
	[IsTasklogAccess] [bit] NULL,
	[IsMonitoringAccess] [bit] NULL,
	[IsDailyJobsAccess] [bit] NULL,
 CONSTRAINT [PK_MasterUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[Password] ASC,
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblGroupMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblGroupMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TblGroupMenu](
	[ID] [char](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NULL CONSTRAINT [DF_TblGroupMenu_DtmUpdate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TblGroupMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblTypeUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblTypeUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TblTypeUser](
	[ID] [char](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL CONSTRAINT [DF_TblTypeUser_DtmUpdate]  DEFAULT (getdate()),
	[NomorUrut] [int] NULL,
 CONSTRAINT [PK_TblTypeUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tempLoginAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempLoginAccess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tempLoginAccess](
	[ID] [varchar](10) NOT NULL,
	[CountLoginAccess] [int] NULL,
	[LastLoginAccess] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MasterMenu] ON 

INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (1, N'Dashboard', N'welcome/dashboard', NULL, 0, 1, N'sa', CAST(N'2015-07-11 20:25:17.940' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (2, N'Daily Jobs', N'#', N'DJB       ', 0, 1, N'sa', CAST(N'2015-07-11 20:25:17.940' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (3, N'Check Document Exist', N'dailyjobs/document_exist', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:25:17.940' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (4, N'Check TTS Used', N'dailyjobs/tts_used', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:27:52.047' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (5, N'Delete XML', N'dailyjobs/delete_xml', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:27:55.090' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (6, N'Perpanjang Reposses Date', N'dailyjobs/repo_date', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:28:00.030' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (7, N'RFR To Normal', N'dailyjobs/rfr_normal', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:28:02.997' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (8, N'Upload', N'dailyjobs/upload', N'DJB       ', 2, 1, N'sa', CAST(N'2015-07-11 20:28:04.637' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (9, N'End Of Day', N'#', N'DJB       ', 0, 1, N'sa', CAST(N'2015-07-11 20:30:19.773' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (10, N'Confins Service', N'eod/services', N'DJB       ', 9, 1, N'sa', CAST(N'2015-07-11 20:30:29.217' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (11, N'Head Cashier', N'eod/head_cashir', N'DJB       ', 9, 1, N'sa', CAST(N'2015-07-11 20:30:29.717' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (12, N'Mirroring Database', N'eod/mirroring', N'DJB       ', 9, 1, N'sa', CAST(N'2015-07-11 20:30:33.553' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (13, N'Proses EOD', N'eod/proses_eod', N'DJB       ', 9, 1, N'sa', CAST(N'2015-07-11 20:30:35.227' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (14, N'Monitoring', N'#', N'MTR       ', 0, 1, N'sa', CAST(N'2015-07-11 20:33:14.810' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (15, N'Mirroring', N'monitoring/mirroring', N'MTR       ', 14, 1, N'sa', CAST(N'2015-07-11 20:33:18.967' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (16, N'Replication', N'monitoring/replication', N'MTR       ', 14, 1, N'sa', CAST(N'2015-07-11 20:33:22.757' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (17, N'Jobs', N'monitoring/jobs', N'MTR       ', 14, 1, N'sa', CAST(N'2015-07-11 20:33:31.133' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (18, N'Backup', N'monitoring/backup', N'MTR       ', 14, 1, N'sa', CAST(N'2015-07-11 20:33:32.110' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (19, N'Report', N'report', N'DJB       ', 0, 1, N'sa', CAST(N'2015-07-11 20:34:16.037' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (20, N'Setting', N'#', NULL, 0, 1, N'sa', CAST(N'2015-07-11 20:34:19.023' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (21, N'Treasury', N'#', N'DJB       ', 0, 1, N'sa', CAST(N'2015-07-11 20:34:22.717' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (22, N'Import Data', N'treasury/import', N'DJB       ', 21, 1, N'sa', CAST(N'2015-07-11 20:34:23.843' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (23, N'Generate Text File', N'treasury/generate_file', N'DJB       ', 21, 1, N'sa', CAST(N'2015-07-11 20:34:31.953' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (24, N'Report', N'treasury/report', N'DJB       ', 21, 1, N'sa', CAST(N'2015-07-11 20:34:36.060' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (25, N'Virtual Account', N'#', N'DJB       ', 0, 1, N'sa', CAST(N'2015-07-11 20:34:39.940' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (26, N'Pembukaan', N'virtual_account/pembukaan', N'DJB       ', 25, 1, N'sa', CAST(N'2015-07-11 20:34:42.660' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (27, N'Penutupan', N'virtual_account/pebutupan', N'DJB       ', 25, 1, N'sa', CAST(N'2015-07-11 20:34:45.543' AS DateTime))
INSERT [dbo].[MasterMenu] ([MenuID], [MenuName], [MenuUrl], [GroupMenu], [MenuParent], [IsActive], [UserUpdate], [DtmUpdate]) VALUES (28, N'Generate Text File', N'virtual_account/generate_file', N'DJB       ', 25, 1, N'sa', CAST(N'2015-07-11 20:34:46.617' AS DateTime))
SET IDENTITY_INSERT [dbo].[MasterMenu] OFF
INSERT [dbo].[MasterUser] ([Username], [Password], [UserFullName], [Email], [Jabatan], [Cabang], [Departement], [Divisi], [Type], [IsAdminAccess], [IsActive], [SecretKey], [UserExport], [ExportDate], [UserUpdate], [DtmUpdate], [IsTicketAccess], [IsTasklogAccess], [IsMonitoringAccess], [IsDailyJobsAccess]) VALUES (N'KNO1300457', N'f65758445637efd00d3a7f57bcd8d01b0d11bcf2', N'NURADIYANA                                                  ', N'nuradiyana.mbs@smsfinance.co.id', N'STAFF                         ', N'KPNO                          ', N'INFORMATION & TECHNOLOGY      ', N'TECHNOLOGY & SYSPRO           ', N'KRY', 1, 1, N'LAOZwffoc+TuI9OxHAiXlwS0vBdiCd9uvg/nKyx0', N'Admin', CAST(N'2015-07-10 19:35:47.963' AS DateTime), N'Admin', CAST(N'2015-07-11 02:05:59.673' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[MasterUser] ([Username], [Password], [UserFullName], [Email], [Jabatan], [Cabang], [Departement], [Divisi], [Type], [IsAdminAccess], [IsActive], [SecretKey], [UserExport], [ExportDate], [UserUpdate], [DtmUpdate], [IsTicketAccess], [IsTasklogAccess], [IsMonitoringAccess], [IsDailyJobsAccess]) VALUES (N'KNO1300514', N'3014643f34c256cfa16364c948eda7d3363ce3d6', N'YOSEVINA SITANGGANG', N'yosevina.sitanggang@smsfinance.co.id', N'STAFF', N'KPNO', N'SYSTEM & PROCEDURE', N'TECHNOLOGY & SYSPRO', N'KRY', 0, 1, N'JFQkRTacrFDlcUb6DHJEv4QZN/p9fGQKbtsgCei/', N'Admin', CAST(N'2015-07-11 00:08:57.223' AS DateTime), N'Admin', CAST(N'2015-07-11 00:08:57.223' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[MasterUser] ([Username], [Password], [UserFullName], [Email], [Jabatan], [Cabang], [Departement], [Divisi], [Type], [IsAdminAccess], [IsActive], [SecretKey], [UserExport], [ExportDate], [UserUpdate], [DtmUpdate], [IsTicketAccess], [IsTasklogAccess], [IsMonitoringAccess], [IsDailyJobsAccess]) VALUES (N'OTS00001  ', N'd5b5ab103a9dd6217bc6582a46079b5baafec923', N'YOSEVINA SITANGGANG', N'yosevina.sitanggang@smsfinance.co.id', N'SENIOR STAFF', N'KPNO', N'INFORMATION & TECHNOLOGY', N'TECHNOLOGY & SYSPRO', N'OTS', 0, 0, N'poE08z5tSxWjizPne2omfLO9/RNsgp+vtGrF+Y+c', N'Admin', CAST(N'2015-07-10 15:19:33.290' AS DateTime), N'Admin', CAST(N'2015-07-11 00:13:02.237' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[TblGroupMenu] ([ID], [Description], [UserUpdate], [DtmUpdate]) VALUES (N'DJB', N'DAILY JOBS', N'sa', CAST(N'2015-07-12 21:22:17.070' AS DateTime))
INSERT [dbo].[TblGroupMenu] ([ID], [Description], [UserUpdate], [DtmUpdate]) VALUES (N'MTR', N'MONITORING', N'sa', CAST(N'2015-07-12 21:19:59.150' AS DateTime))
INSERT [dbo].[TblGroupMenu] ([ID], [Description], [UserUpdate], [DtmUpdate]) VALUES (N'TKT', N'TICKET', N'sa', CAST(N'2015-07-12 21:19:50.397' AS DateTime))
INSERT [dbo].[TblGroupMenu] ([ID], [Description], [UserUpdate], [DtmUpdate]) VALUES (N'TSK', N'TASKLOG', N'sa', CAST(N'2015-07-12 21:21:41.390' AS DateTime))
INSERT [dbo].[TblTypeUser] ([ID], [Description], [UserUpdate], [DtmUpdate], [NomorUrut]) VALUES (N'KRY', N'Karyawan SMS Finance', N'sa', CAST(N'2015-07-09 08:46:53.940' AS DateTime), NULL)
INSERT [dbo].[TblTypeUser] ([ID], [Description], [UserUpdate], [DtmUpdate], [NomorUrut]) VALUES (N'MBS', N'Magang Bakti SMS Finance', N'sa', CAST(N'2015-07-09 08:46:53.940' AS DateTime), 1)
INSERT [dbo].[TblTypeUser] ([ID], [Description], [UserUpdate], [DtmUpdate], [NomorUrut]) VALUES (N'MDP', N'Management Development Program', N'sa', CAST(N'2015-07-09 08:46:53.940' AS DateTime), 1)
INSERT [dbo].[TblTypeUser] ([ID], [Description], [UserUpdate], [DtmUpdate], [NomorUrut]) VALUES (N'OTS', N'Karyawan Outsourcing', N'sa', CAST(N'2015-07-09 08:46:53.940' AS DateTime), 2)
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GrandMenuUser_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GrandMenuUser] ADD  CONSTRAINT [DF_GrandMenuUser_DtmUpdate]  DEFAULT (getdate()) FOR [DtmUpdate]
END

GO
/****** Object:  StoredProcedure [dbo].[getApp]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getApp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[getApp] AS' 
END
GO
ALTER PROCEDURE [dbo].[getApp]
AS
SELECT  ID, 
		dbo.ProperCase(Description) AS Description 
FROM	TblGroupMenu

GO
/****** Object:  StoredProcedure [dbo].[getChildMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getChildMenu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[getChildMenu] AS' 
END
GO
ALTER PROCEDURE [dbo].[getChildMenu](
	@MenuParent CHAR(3)
)
AS
SELECT	MenuID,
		MenuName,
		MenuUrl,
		IsActive
FROM	MasterMenu
WHERE	MenuParent = @MenuParent AND IsActive = 1
GO
/****** Object:  StoredProcedure [dbo].[getGroupMenu]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getGroupMenu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[getGroupMenu] AS' 
END
GO
ALTER PROCEDURE [dbo].[getGroupMenu]
AS
SELECT	ID, Description FROM	TblGroupMenu
GO
/****** Object:  StoredProcedure [dbo].[getMenuParentByGroup]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getMenuParentByGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[getMenuParentByGroup] AS' 
END
GO
ALTER PROCEDURE [dbo].[getMenuParentByGroup](
	@GroupMenu CHAR(3)
)
AS
SELECT	MasterMenu.MenuID,
		MenuName,
		MenuUrl,
		GroupMenu,
		ISNULL(ChildMenuCount, 0) AS ChildMenuCount,
		RTRIM(CONVERT(CHAR(5), ISNULL(MM2.MenuParent, 0))) AS MenuParentId,
		'' AS ChildMenu,
		IsActive
FROM	MasterMenu
		LEFT JOIN (SELECT	MenuParent,
							COUNT('') AS ChildMenuCount 
					FROM	MasterMenu 
					WHERE	MenuParent <> 0 
					GROUP BY MenuParent) MM2 ON MM2.MenuParent = MasterMenu.MenuID
WHERE	GroupMenu = @GroupMenu AND MasterMenu.MenuParent = 0 AND IsActive = 1
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAppAccess] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetAppAccess](
	@Username CHAR(10),
	@Column VARCHAR(25)
)
AS

DECLARE @Query VARCHAR(1000) = 'SELECT ' + @Column + ' AS Access FROM MasterUser WHERE Username = ''' + @Username + ''''
EXEC(@Query)
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess2]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAppAccess2] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetAppAccess2](
	@Username CHAR(10)
)
AS

SELECT	IsAdminAccess AS Admin, 
		IsTicketAccess AS Ticket,
		IsTasklogAccess AS Tasklog,
		IsMonitoringAccess AS Monitoring, 
		IsDailyJobsAccess AS DailyJobs
FROM	MasterUser WHERE Username = @Username
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginAccess]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginAccess]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetLoginAccess] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetLoginAccess](
	@Username VARCHAR(10)
)

AS
BEGIN TRAN spGetLoginAccess

DECLARE @CountLoginAccess INT

IF EXISTS(SELECT '' FROM tempLoginAccess WHERE ID = @Username)
	BEGIN
		SELECT @CountLoginAccess = (ISNULL(CountLoginAccess, 0) + 1) FROM tempLoginAccess WHERE ID = @Username

		UPDATE	tempLoginAccess
		SET		CountLoginAccess = @CountLoginAccess,
				LastLoginAccess = GETDATE()
		WHERE	ID = @Username
	END
ELSE
	BEGIN
		INSERT INTO tempLoginAccess (ID, CountLoginAccess, LastLoginAccess)
		VALUES (@Username, 1, GETDATE())
	END

SELECT @CountLoginAccess = (ISNULL(CountLoginAccess, 0) + 1) FROM tempLoginAccess WHERE ID = @Username
IF @CountLoginAccess > 3
	BEGIN
		UPDATE	MasterUser
		SET		IsActive = 0
		WHERE	Username = @Username
	END

SELECT 'Success' AS Status

COMMIT TRAN spGetLoginAccess
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginInfo]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetLoginInfo] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetLoginInfo](
	@Username VARCHAR(10)
)
AS
BEGIN
	SELECT	MasterUser.Username,
			Password,
			UserFullName,
			Email,
			Cabang,
			Divisi,
			IsAdminAccess,
			IsActive,
			SecretKey,
			IsTicketAccess,
			IsTasklogAccess,
			IsMonitoringAccess,
			IsDailyJobsAccess
	FROM	MasterUser
	WHERE	MasterUser.Username = @Username 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSecretKey]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSecretKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetSecretKey] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetSecretKey](
	@Username VARCHAR(10)
)
AS
BEGIN
	SELECT	Username,
			SecretKey
	FROM	MasterUser
	WHERE	Username = @Username 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTypeUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetTypeUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetTypeUser] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetTypeUser]
AS
SELECT ID, Description FROM TblTypeUser ORDER BY Description

GO
/****** Object:  StoredProcedure [dbo].[spImportEmployee]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spImportEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spImportEmployee] AS' 
END
GO
--exec [dbo].[spSearchImportEmployee] '1', '%'

ALTER PROCEDURE [dbo].[spImportEmployee](
	@NomorInduk VARCHAR(10),
	@Email VARCHAR(100),
	@Password VARCHAR(255),
	@Username VARCHAR(10),
	@SecretKey VARCHAR(50),
	@Type CHAR(3)
)
AS

BEGIN TRAN ImportEmployee

	DECLARE @UserFullName VARCHAR(100),
			@Jabatan VARCHAR(100),
			@Cabang VARCHAR(100),
			@Departement VARCHAR(100),
			@Divisi VARCHAR(100),
			@IsActive CHAR(1),
			@DtmUpdate DATETIME,
			@Pesan VARCHAR(100)

	SELECT	@UserFullName = NAMA,
			@Jabatan = JABATAN,
			@Cabang = CABANG,
			@Departement = DEPARTEMENT,
			@Divisi = DIVISI
	FROM	vwEmployee
	WHERE	NIP = @NomorInduk

	IF NOT EXISTS(SELECT '' FROM vwEmployee WHERE NIP = @NomorInduk)
		BEGIN
			SET @Pesan = 'Data dengan NIK ' + @NomorInduk + ' tidak ada'
			GOTO ExitSP
		END
	
	IF EXISTS(SELECT '' FROM MasterUser WHERE Username = @NomorInduk)
		BEGIN
			SET @Pesan = 'Data dengan NIK ' + @NomorInduk + ' sudah ada'
			GOTO ExitSP
		END

	SET @IsActive = 1
	SET @DtmUpdate = GETDATE()

	INSERT INTO MasterUser (Username, Password, UserFullName, Email, Jabatan,
							Cabang, Departement, Divisi, IsActive, SecretKey,
							UserExport, ExportDate, UserUpdate, DtmUpdate, Type)
				VALUES		(@NomorInduk, @Password, @UserFullName, @Email, @Jabatan,
							 @Cabang, @Departement, @Divisi, @IsActive, @SecretKey, 
							 @Username, @DtmUpdate, @Username, @DtmUpdate, @Type)
	SET @Pesan = 'Import data dengan NIK ' + @NomorInduk + ' berhasil'
	SELECT 'Success' AS Status, @Pesan AS Pesan
COMMIT TRAN ImportEmployee
RETURN

ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @Pesan AS Pesan
		ROLLBACK TRAN ImportEmployee
		RETURN
	END


GO
/****** Object:  StoredProcedure [dbo].[spInsertDataUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertDataUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spInsertDataUser] AS' 
END
GO
ALTER PROCEDURE [dbo].[spInsertDataUser](
	@Password VARCHAR(255),
	@UserFullName VARCHAR(100),
	@Email VARCHAR(100),
	@Jabatan VARCHAR(100),
	@Cabang VARCHAR(100),
	@Departement VARCHAR(100),
	@Divisi VARCHAR(100),
	@Type CHAR(3),
	@SecretKey VARCHAR(50),
	@UserUpdate VARCHAR(10)
)
AS
BEGIN TRAN InsertDataUser

DECLARE @Pesan VARCHAR(100),
		@Status VARCHAR(25),
		@DtmUpdate DATETIME,
		@IsActive INT,
		@Username VARCHAR(10)

exec @Username = fnGenerateUsername @Type

IF EXISTS(SELECT '' FROM MasterUser WHERE Username = @Username)
		BEGIN
			SET @Pesan = 'Data user dengan username ' + @Username + ' sudah ada.'
			GOTO ExitSP
		END

SET @IsActive = 1
SET @DtmUpdate = GETDATE()

INSERT INTO MasterUser (Username, Password, UserFullName, Email, Jabatan,
						Cabang, Departement, Divisi, IsActive, SecretKey,
						UserExport, ExportDate, UserUpdate, DtmUpdate, Type)
			VALUES		(@Username, @Password, @UserFullName, @Email, @Jabatan,
							@Cabang, @Departement, @Divisi, @IsActive, @SecretKey, 
							@UserUpdate, @DtmUpdate, @UserUpdate, @DtmUpdate, @Type)

UPDATE TblTypeUser SET NomorUrut = NomorUrut + 1 WHERE ID = @Type

SET @Pesan = 'Data user dengan username ' + @Username + ' berhasil dibuat'
SELECT 'Success' AS Status, @Pesan AS Pesan

COMMIT TRAN InsertDataUser
RETURN


ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @Pesan AS Pesan
		ROLLBACK TRAN InsertDataUser
		RETURN
	END

GO
/****** Object:  StoredProcedure [dbo].[spSearchImportEmployee]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchImportEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spSearchImportEmployee] AS' 
END
GO
ALTER PROCEDURE [dbo].[spSearchImportEmployee](
	@Type CHAR(1),
	@Parameter VARCHAR(255)
)
AS

-- Jika Type Pencarian adalah NIP
IF @Type = 1
	BEGIN
		SELECT	RTRIM(NIP) AS NIP,
				RTRIM(NAMA) AS NAMA,
				RTRIM(JABATAN) AS JABATAN,
				RTRIM(CABANG) AS CABANG,
				RTRIM(DEPARTEMENT) AS DEPARTEMENT,
				RTRIM(DIVISI) AS DIVISI,
				'' AS EMAIL
		FROM vwEmployee WHERE NIP LIKE ''+@Parameter+''
	END
-- Jika Type Pencarian adalah nama
ELSE IF @Type = 2
	BEGIN
		SELECT	RTRIM(NIP) AS NIP,
				RTRIM(NAMA) AS NAMA,
				RTRIM(JABATAN) AS JABATAN,
				RTRIM(CABANG) AS CABANG,
				RTRIM(DEPARTEMENT) AS DEPARTEMENT,
				RTRIM(DIVISI) AS DIVISI,
				'' AS EMAIL
		FROM	vwEmployee WHERE NAMA LIKE ''+@Parameter+''
	END
-- Jika pencarian dari menu tambah user
ELSE IF @Type = 3
	BEGIN
		SELECT	RTRIM(NIP) AS NIP,
				RTRIM(NAMA) AS NAMA,
				RTRIM(JABATAN) AS JABATAN,
				RTRIM(CABANG) AS CABANG,
				RTRIM(DEPARTEMENT) AS DEPARTEMENT,
				RTRIM(DIVISI) AS DIVISI,
				'' AS EMAIL
		FROM	vwEmployee WHERE NIP = @Parameter
	END
GO
/****** Object:  StoredProcedure [dbo].[spSearchUsername]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchUsername]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spSearchUsername] AS' 
END
GO
ALTER PROCEDURE [dbo].[spSearchUsername](
	@Type CHAR(1),
	@Parameter VARCHAR(255)
)
AS

-- Jika Type Pencarian adalah username
IF @Type = 1
	BEGIN
		SELECT	RTRIM(Username) AS Username,
				RTRIM(UserFullName) AS UserFullName,
				RTRIM(Email) AS Email,
				RTRIM(Jabatan) AS Jabatan,
				RTRIM(Cabang) AS Cabang,
				RTRIM(Departement) AS Departement,
				RTRIM(Divisi) AS Divisi,
				RTRIM(Type) AS Type,
				RTRIM(UPPER(Description)) AS TypeDescription,
				RTRIM(IsAdminAccess) AS IsAdminAccess,
				RTRIM(IsActive) AS IsActive
		FROM	MasterUser 
				LEFT JOIN TblTypeUser TU ON TU.ID = MasterUser.Type
		WHERE	Username LIKE ''+@Parameter+''
	END
-- Jika Type Pencarian adalah nama
ELSE IF @Type = 2
	BEGIN
		SELECT	RTRIM(Username) AS Username,
				RTRIM(UserFullName) AS UserFullName,
				RTRIM(Email) AS Email,
				RTRIM(Jabatan) AS Jabatan,
				RTRIM(Cabang) AS Cabang,
				RTRIM(Departement) AS Departement,
				RTRIM(Divisi) AS Divisi,
				RTRIM(Type) AS Type,
				RTRIM(UPPER(Description)) AS TypeDescription,
				RTRIM(IsAdminAccess) AS IsAdminAccess,
				RTRIM(IsActive) AS IsActive
		FROM	MasterUser 
				LEFT JOIN TblTypeUser TU ON TU.ID = MasterUser.Type
		WHERE	UserFullName LIKE ''+@Parameter+''
	END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spUpdateUser] AS' 
END
GO
ALTER PROCEDURE [dbo].[spUpdateUser](
	@Email VARCHAR(100),
	@Password VARCHAR(50),
	@UserUpdate VARCHAR(10),
	@Username VARCHAR(10),
	@IsActive CHAR(1),
	@IsAdminAccess CHAR(1),
	@IsChangePassword CHAR(1)
)

AS

BEGIN TRAN spUpdateUser

DECLARE @PesanError VARCHAR(100)

-- Jika tidak reset password
IF @IsChangePassword <> 1
	BEGIN
		SELECT @Password = Password FROM MasterUser WHERE Username = @Username 
	END


IF NOT EXISTS (SELECT '' FROM MasterUser WHERE Username = @Username)
	BEGIN
		SET @PesanError = 'Tidak ada user dengan username ' + @Username
		GOTO ExitSP
	END

--Proses Update
UPDATE	MasterUser
SET		Email = @Email,
		Password = @Password,
		IsAdminAccess = @IsAdminAccess,
		IsActive = @IsActive,
		UserUpdate = @UserUpdate,
		DtmUpdate = GETDATE()
WHERE	Username = @Username
IF @@ERROR < 0
	BEGIN
		SET @PesanError = 'Error dalam proses update'
		GOTO ExitSP
	END

--Proces delete tempLoginAccess untuk set menjadi 0
IF @IsActive = 1
	BEGIN
		DELETE FROM tempLoginAccess WHERE ID = @Username
	END
IF @@ERROR < 0
	BEGIN
		SET @PesanError = 'Error dalam proses update'
		GOTO ExitSP
	END

SELECT 'Success' AS Status, 'Update sudah dilakukan' AS Pesan

COMMIT TRAN spUpdateUser
RETURN

ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @PesanError AS Pesan
		ROLLBACK TRAN spUpdateUser
		RETURN
	END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser2]    Script Date: 7/14/2015 7:38:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spUpdateUser2] AS' 
END
GO
ALTER PROCEDURE [dbo].[spUpdateUser2](
	@Username VARCHAR(10),
	@Password VARCHAR(255),
	@UserFullName VARCHAR(100),
	@Email VARCHAR(100),
	@Jabatan VARCHAR(100),
	@Cabang VARCHAR(100),
	@Departement VARCHAR(100),
	@Divisi VARCHAR(100),
	@IsAdminAccess CHAR(1),
	@IsActive CHAR(1),
	@UserUpdate VARCHAR(10),
	@IsChangePassword CHAR(1)
)

AS

BEGIN TRAN UpdateUser2

DECLARE @PesanError VARCHAR(100),
		@DtmUpdate DATETIME

SET @DtmUpdate = GETDATE()

-- Jika tidak reset password
IF @IsChangePassword <> 1
	BEGIN
		SELECT @Password = Password FROM MasterUser WHERE Username = @Username 
	END


IF NOT EXISTS (SELECT '' FROM MasterUser WHERE Username = @Username)
	BEGIN
		SET @PesanError = 'Tidak ada user dengan username ' + @Username
		GOTO ExitSP
	END

UPDATE	MasterUser
SET		Password = @Password,
		UserFullName = @UserFullName,
		Email = @Email,
		Jabatan = @Jabatan,
		Cabang = @Cabang,
		Departement = @Departement,
		Divisi = @Divisi,
		IsAdminAccess = @IsAdminAccess,
		IsActive = @IsActive,
		UserUpdate = @UserUpdate,
		DtmUpdate = @DtmUpdate
WHERE	Username = @Username
IF @@ERROR < 0
	BEGIN
		SET @PesanError = 'Error dalam proses update'
		GOTO ExitSP
	END

--Proces delete tempLoginAccess untuk set menjadi 0
IF @IsActive = 1
	BEGIN
		DELETE FROM tempLoginAccess WHERE ID = @Username
	END
IF @@ERROR < 0
	BEGIN
		SET @PesanError = 'Error dalam proses update'
		GOTO ExitSP
	END

SELECT 'Success' AS Status, 'Update sudah dilakukan' AS Pesan

COMMIT TRAN UpdateUser2
RETURN

ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @PesanError AS Pesan
		ROLLBACK TRAN UpdateUser2
		RETURN
	END
GO
