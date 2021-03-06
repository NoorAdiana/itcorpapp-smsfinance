USE [ITCORPDB]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser2]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdateUser2]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[spSearchUsername]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchUsername]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spSearchUsername]
GO
/****** Object:  StoredProcedure [dbo].[spSearchImportEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSearchImportEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spSearchImportEmployee]
GO
/****** Object:  StoredProcedure [dbo].[spInsertKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertKategoriTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsertKategoriTicket]
GO
/****** Object:  StoredProcedure [dbo].[spInsertFileUpload]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertFileUpload]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsertFileUpload]
GO
/****** Object:  StoredProcedure [dbo].[spInsertDataUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertDataUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsertDataUser]
GO
/****** Object:  StoredProcedure [dbo].[spImportEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spImportEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spImportEmployee]
GO
/****** Object:  StoredProcedure [dbo].[spGetTypeUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetTypeUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetTypeUser]
GO
/****** Object:  StoredProcedure [dbo].[spGetSubKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSubKategoriTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetSubKategoriTicket]
GO
/****** Object:  StoredProcedure [dbo].[spGetSub2KategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSub2KategoriTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetSub2KategoriTicket]
GO
/****** Object:  StoredProcedure [dbo].[spGetSecretKey]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSecretKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetSecretKey]
GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccMandiri]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccMandiri]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPenutupanVirtualAccMandiri]
GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccBRI]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPenutupanVirtualAccBRI]
GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccBCA]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccBCA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPenutupanVirtualAccBCA]
GO
/****** Object:  StoredProcedure [dbo].[spGetPembukaanVirtualAccBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPembukaanVirtualAccBRI]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPembukaanVirtualAccBRI]
GO
/****** Object:  StoredProcedure [dbo].[spGetMainKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetMainKategoriTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetMainKategoriTicket]
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginInfo]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLoginInfo]
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLoginAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLoginAccess]
GO
/****** Object:  StoredProcedure [dbo].[spGetKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetKategoriTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetKategoriTicket]
GO
/****** Object:  StoredProcedure [dbo].[spGetJenisTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetJenisTicket]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetJenisTicket]
GO
/****** Object:  StoredProcedure [dbo].[spGetFileUploadById]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetFileUploadById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetFileUploadById]
GO
/****** Object:  StoredProcedure [dbo].[spGetFileUpload]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetFileUpload]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetFileUpload]
GO
/****** Object:  StoredProcedure [dbo].[spGetDocumentExistDetail]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDocumentExistDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDocumentExistDetail]
GO
/****** Object:  StoredProcedure [dbo].[spGetDocumentExist]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDocumentExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDocumentExist]
GO
/****** Object:  StoredProcedure [dbo].[spGetConvertVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetConvertVirtualAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetConvertVirtualAccount]
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess2]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAppAccess2]
GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAppAccess]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAppAccess]
GO
/****** Object:  StoredProcedure [dbo].[spConvertVirtualAccountMandiri]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spConvertVirtualAccountMandiri]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spConvertVirtualAccountMandiri]
GO
/****** Object:  StoredProcedure [dbo].[spConvertVirtualAccountBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spConvertVirtualAccountBRI]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spConvertVirtualAccountBRI]
GO
/****** Object:  StoredProcedure [dbo].[getMenuParentByGroup]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getMenuParentByGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getMenuParentByGroup]
GO
/****** Object:  StoredProcedure [dbo].[getGroupMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getGroupMenu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getGroupMenu]
GO
/****** Object:  StoredProcedure [dbo].[getChildMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getChildMenu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getChildMenu]
GO
/****** Object:  StoredProcedure [dbo].[getApp]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getApp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[getApp]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] DROP CONSTRAINT [DF_TicketReplyLogs_DtmUpdate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] DROP CONSTRAINT [DF_TicketReplyLogs_UserUpdate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_DateInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] DROP CONSTRAINT [DF_TicketReplyLogs_DateInput]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] DROP CONSTRAINT [DF_TicketReplyLogs_ID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] DROP CONSTRAINT [DF_TicketAttachment_DtmUpdate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] DROP CONSTRAINT [DF_TicketAttachment_UserUpdate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_DateUpload]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] DROP CONSTRAINT [DF_TicketAttachment_DateUpload]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] DROP CONSTRAINT [DF_TicketAttachment_ID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_StatusTicket]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_StatusTicket]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DtmInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_DtmInput]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_UserUpdate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DateInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_DateInput]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DateLapor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_DateLapor]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [DF_Ticket_ID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GrandMenuUser_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GrandMenuUser] DROP CONSTRAINT [DF_GrandMenuUser_DtmUpdate]
END

GO
/****** Object:  View [dbo].[vwEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vwEmployee]'))
DROP VIEW [dbo].[vwEmployee]
GO
/****** Object:  View [dbo].[vwCustomerName]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vwCustomerName]'))
DROP VIEW [dbo].[vwCustomerName]
GO
/****** Object:  Table [dbo].[UploadFile]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UploadFile]') AND type in (N'U'))
DROP TABLE [dbo].[UploadFile]
GO
/****** Object:  Table [dbo].[TicketReplyLogs]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketReplyLogs]') AND type in (N'U'))
DROP TABLE [dbo].[TicketReplyLogs]
GO
/****** Object:  Table [dbo].[TicketAttachment]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketAttachment]') AND type in (N'U'))
DROP TABLE [dbo].[TicketAttachment]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ticket]') AND type in (N'U'))
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[tempLoginAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempLoginAccess]') AND type in (N'U'))
DROP TABLE [dbo].[tempLoginAccess]
GO
/****** Object:  Table [dbo].[TblUploadType]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblUploadType]') AND type in (N'U'))
DROP TABLE [dbo].[TblUploadType]
GO
/****** Object:  Table [dbo].[TblTypeUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblTypeUser]') AND type in (N'U'))
DROP TABLE [dbo].[TblTypeUser]
GO
/****** Object:  Table [dbo].[TblLevelKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblLevelKategoriTicket]') AND type in (N'U'))
DROP TABLE [dbo].[TblLevelKategoriTicket]
GO
/****** Object:  Table [dbo].[TblGroupUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblGroupUser]') AND type in (N'U'))
DROP TABLE [dbo].[TblGroupUser]
GO
/****** Object:  Table [dbo].[TblGroupMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblGroupMenu]') AND type in (N'U'))
DROP TABLE [dbo].[TblGroupMenu]
GO
/****** Object:  Table [dbo].[MasterUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterUser]') AND type in (N'U'))
DROP TABLE [dbo].[MasterUser]
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterMenu]') AND type in (N'U'))
DROP TABLE [dbo].[MasterMenu]
GO
/****** Object:  Table [dbo].[KategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KategoriTicket]') AND type in (N'U'))
DROP TABLE [dbo].[KategoriTicket]
GO
/****** Object:  Table [dbo].[GrandMenuUser]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrandMenuUser]') AND type in (N'U'))
DROP TABLE [dbo].[GrandMenuUser]
GO
/****** Object:  Table [dbo].[ConvertVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConvertVirtualAccount]') AND type in (N'U'))
DROP TABLE [dbo].[ConvertVirtualAccount]
GO
/****** Object:  Table [dbo].[BriVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BriVirtualAccount]') AND type in (N'U'))
DROP TABLE [dbo].[BriVirtualAccount]
GO
/****** Object:  Table [dbo].[BriVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BriVirtualAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BriVirtualAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalesDate] [datetime] NOT NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[UserPendaftaran] [varchar](10) NULL,
	[DtmPendaftaran] [datetime] NULL CONSTRAINT [DF_BriVirtualAccount_DtmPendaftaran]  DEFAULT (getdate()),
	[StatusPenutupan] [bit] NULL,
	[UserPenutupan] [varchar](10) NULL,
	[DtmPenutupan] [datetime] NULL,
 CONSTRAINT [PK__BriVirtu__3214EC272057CCD0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConvertVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConvertVirtualAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConvertVirtualAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NomorUrut] [int] NOT NULL,
	[CustomerID] [varchar](20) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[TanggalTransaksi] [datetime] NOT NULL,
	[TotalPembayaran] [money] NOT NULL,
	[BankCode] [varchar](10) NOT NULL,
	[UserConvert] [varchar](10) NULL,
	[DtmConvert] [datetime] NULL CONSTRAINT [DF_ConvertVirtualAccount_DtmConvert]  DEFAULT (getdate()),
	[IsConvert] [bit] NULL,
	[FileName] [varchar](50) NULL,
	[UserInsert] [varchar](10) NULL,
	[DtmInsert] [datetime] NULL CONSTRAINT [DF_ConvertVirtualAccount_DtmInsert]  DEFAULT (getdate()),
 CONSTRAINT [PK_ConvertVirtualAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrandMenuUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[KategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KategoriTicket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KategoriTicket](
	[ID] [varchar](36) NOT NULL,
	[KategoriID] [varchar](10) NOT NULL,
	[ParentKategoriID] [varchar](10) NULL,
	[NamaKategori] [varchar](255) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL CONSTRAINT [DF_KategoriTicket_DtmUpdate]  DEFAULT (getdate()),
	[LevelID] [int] NULL,
 CONSTRAINT [PK__Kategori__3214EC27208CD6FA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[MasterUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
	[GroupUser] [char](3) NULL,
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
/****** Object:  Table [dbo].[TblGroupMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[TblGroupUser]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblGroupUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TblGroupUser](
	[ID] [char](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NULL CONSTRAINT [DF_TblGroupUser_DtmUpdate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TblGroupUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblLevelKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblLevelKategoriTicket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TblLevelKategoriTicket](
	[ID] [char](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL CONSTRAINT [DF_TblJenisTicket_DtmUpdate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TblJenisTicket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblTypeUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[TblUploadType]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblUploadType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TblUploadType](
	[ID] [char](3) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL CONSTRAINT [DF_TblUploadType_DtmUpdate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TblUploadType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tempLoginAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[Ticket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ticket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ticket](
	[ID] [varchar](36) NOT NULL,
	[NomorTicket] [varchar](10) NOT NULL,
	[KodeCabang] [varchar](3) NOT NULL,
	[TypeTicketId] [varchar](10) NOT NULL,
	[MainKategoriId] [varchar](10) NULL,
	[KategoriId] [varchar](10) NULL,
	[SubKategoriId] [varchar](10) NULL,
	[Sub2KategoriId] [varchar](10) NULL,
	[UserPelapor] [varchar](10) NOT NULL,
	[DateLapor] [datetime] NOT NULL,
	[NomorKontak] [varchar](12) NOT NULL,
	[SubjectTicket] [varchar](100) NOT NULL,
	[IsiTicket] [text] NOT NULL,
	[UserInput] [varchar](10) NOT NULL,
	[DateInput] [datetime] NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL,
	[IsUpload] [bit] NULL,
	[StatusTicket] [char](2) NOT NULL,
	[UserClose] [varchar](10) NULL,
	[DateClose] [datetime] NULL,
	[IsAnswer] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketAttachment]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketAttachment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketAttachment](
	[ID] [varchar](36) NOT NULL,
	[NomorTicket] [varchar](10) NOT NULL,
	[NamaFile] [varchar](100) NOT NULL,
	[UserUpload] [varchar](10) NOT NULL,
	[DateUpload] [datetime] NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketReplyLogs]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketReplyLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketReplyLogs](
	[ID] [varchar](36) NOT NULL,
	[NomorTicket] [varchar](10) NOT NULL,
	[ReplySeqNo] [int] NOT NULL,
	[UserReply] [varchar](10) NOT NULL,
	[DateReply] [datetime] NOT NULL,
	[IsiReply] [text] NOT NULL,
	[UserInput] [varchar](10) NOT NULL,
	[DateInput] [datetime] NOT NULL,
	[UserUpdate] [varchar](10) NOT NULL,
	[DtmUpdate] [datetime] NOT NULL,
	[StatusTicket] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UploadFile]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UploadFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UploadFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NamaFile] [varchar](50) NOT NULL,
	[TypeFile] [varchar](50) NOT NULL,
	[PathFile] [varchar](100) NOT NULL,
	[FullPathFile] [varchar](100) NOT NULL,
	[UploadFile] [varchar](50) NOT NULL,
	[ExtFile] [varchar](5) NOT NULL,
	[SizeFile] [float] NOT NULL,
	[IsImages] [bit] NULL,
	[WidthImages] [float] NULL,
	[HeightImages] [float] NULL,
	[TypeImages] [varchar](50) NULL,
	[UserUpload] [varchar](10) NOT NULL,
	[DtmUpload] [datetime] NULL CONSTRAINT [DF_UploadFile_DtmUpload]  DEFAULT (getdate()),
	[UploadType] [varchar](3) NULL,
 CONSTRAINT [PK_UploadFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[NamaFile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vwCustomerName]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vwCustomerName]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vwCustomerName]
AS
SELECT	GoLiveDate,
		AgreementNo,
		Name,
		ContractStatus,
		A.RRDDate
FROM	[DBSVR].[SMSDB].[dbo].[Agreement] A
		LEFT JOIN [DBSVR].[SMSDB].[dbo].[Customer] C ON C.CustomerID = A.CustomerID
WHERE	A.ContractStatus NOT IN (''CAN'', ''PRP'', ''RJC'')
		AND A.ApplicationID NOT LIKE ''%.%''


' 
GO
/****** Object:  View [dbo].[vwEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vwEmployee]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vwEmployee]
AS
SELECT	NIP,
		NAMA,
		JABATAN.NMKJAB AS JABATAN,
		CASE CABANG.NMTAMBAHAN2 WHEN ''PUSAT''
			THEN ''KPNO''
			ELSE CABANG.NMTAMBAHAN2
		END AS CABANG,
		DEPARTEMENT.NMDEPT AS DEPARTEMENT,
		DIVISI.NMDIVS AS DIVISI
FROM	[KPNO-PRD-DB07].[SMSFPAYDB].[dbo].[M50PEGW] PEGAWAI
		LEFT JOIN [KPNO-PRD-DB07].[SMSFPAYDB].[dbo].[M27TAM2] CABANG ON CABANG.KDTAM2 = PEGAWAI.KDTB2 
		LEFT JOIN [KPNO-PRD-DB07].[SMSFPAYDB].[dbo].[M03DEPT] DEPARTEMENT ON DEPARTEMENT.KDDEPT = PEGAWAI.KDDEPT
		LEFT JOIN [KPNO-PRD-DB07].[SMSFPAYDB].[dbo].[M04DIVS] DIVISI ON DIVISI.KDDIVS = PEGAWAI.KDDIVS
		LEFT JOIN [KPNO-PRD-DB07].[SMSFPAYDB].[dbo].[M05KJBH] JABATAN ON JABATAN.KDKJAB = PEGAWAI.KDKJAB
WHERE	CABANG.NMTAMBAHAN2 IS NOT NULL AND KDCABA = ''01'' AND TGLKELUAR IS NULL' 
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GrandMenuUser_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GrandMenuUser] ADD  CONSTRAINT [DF_GrandMenuUser_DtmUpdate]  DEFAULT (getdate()) FOR [DtmUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_ID]  DEFAULT (newid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DateLapor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_DateLapor]  DEFAULT (getdate()) FOR [DateLapor]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DateInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_DateInput]  DEFAULT (getdate()) FOR [DateInput]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_UserUpdate]  DEFAULT (suser_sname()) FOR [UserUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_DtmInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_DtmInput]  DEFAULT (getdate()) FOR [DtmUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Ticket_StatusTicket]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_StatusTicket]  DEFAULT ('O') FOR [StatusTicket]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] ADD  CONSTRAINT [DF_TicketAttachment_ID]  DEFAULT (newid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_DateUpload]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] ADD  CONSTRAINT [DF_TicketAttachment_DateUpload]  DEFAULT (getdate()) FOR [DateUpload]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] ADD  CONSTRAINT [DF_TicketAttachment_UserUpdate]  DEFAULT (suser_sname()) FOR [UserUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketAttachment_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachment] ADD  CONSTRAINT [DF_TicketAttachment_DtmUpdate]  DEFAULT (getdate()) FOR [DtmUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_ID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] ADD  CONSTRAINT [DF_TicketReplyLogs_ID]  DEFAULT (newid()) FOR [ID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_DateInput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] ADD  CONSTRAINT [DF_TicketReplyLogs_DateInput]  DEFAULT (getdate()) FOR [DateInput]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_UserUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] ADD  CONSTRAINT [DF_TicketReplyLogs_UserUpdate]  DEFAULT (suser_sname()) FOR [UserUpdate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_TicketReplyLogs_DtmUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketReplyLogs] ADD  CONSTRAINT [DF_TicketReplyLogs_DtmUpdate]  DEFAULT (getdate()) FOR [DtmUpdate]
END

GO
/****** Object:  StoredProcedure [dbo].[getApp]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getChildMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
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
ORDER BY MenuName


GO
/****** Object:  StoredProcedure [dbo].[getGroupMenu]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getMenuParentByGroup]    Script Date: 8/14/2015 9:42:00 PM ******/
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
ORDER BY MenuName



GO
/****** Object:  StoredProcedure [dbo].[spConvertVirtualAccountBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spConvertVirtualAccountBRI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spConvertVirtualAccountBRI] AS' 
END
GO
ALTER PROCEDURE [dbo].[spConvertVirtualAccountBRI](
	@NomorUrut CHAR(2),
	@TanggalTransaksi VARCHAR(20),
	@CustomerCode VARCHAR(50),
	@TotalPembayaran MONEY,
	@BankCode VARCHAR(10),
	@FileName VARCHAR(50),
	@UserInsert VARCHAR(10)
)
AS


BEGIN TRAN ConvertVirtualAccountBRI

	DECLARE @PesanError NVARCHAR(4000),
			@LineError CHAR(4),
			@CustomerID VARCHAR(20),
			@CustomerName VARCHAR(100)

	SELECT	@CustomerID = RTRIM(RIGHT(LEFT(RTRIM(@CustomerCode), 15), 10)),
			@CustomerName = RTRIM(SUBSTRING(RTRIM(@CustomerCode), 17, 50))

	BEGIN TRY
		INSERT INTO [dbo].[ConvertVirtualAccount]
				   ([NomorUrut]
				   ,[CustomerID]
				   ,[CustomerName]
				   ,[TanggalTransaksi]
				   ,[TotalPembayaran]
				   ,[BankCode]
				   ,[UserInsert]
				   ,[FileName])
			 VALUES
				   (@NomorUrut,
				   @CustomerID,
				   @CustomerName,
				   @TanggalTransaksi,
				   @TotalPembayaran,
				   @BankCode,
				   @UserInsert,
				   @FileName)
	END TRY
	BEGIN CATCH
			SELECT @PesanError = ERROR_MESSAGE(), @LineError = ERROR_LINE()
			SET @PesanError = @PesanError + ' Error in line ' + @LineError
			IF @PesanError IS NOT NULL
				BEGIN
					GOTO ExitSP
				END
	END CATCH

COMMIT TRAN ConvertVirtualAccountBRI
RETURN

ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @PesanError AS Pesan
		ROLLBACK TRAN ConvertVirtualAccountBRI
	END

GO
/****** Object:  StoredProcedure [dbo].[spConvertVirtualAccountMandiri]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spConvertVirtualAccountMandiri]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spConvertVirtualAccountMandiri] AS' 
END
GO
ALTER PROCEDURE [dbo].[spConvertVirtualAccountMandiri](
	@NomorUrut CHAR(2),
	@CustomerID VARCHAR(20),
	@TanggalTransaksi DATETIME,
	@TotalPembayaran MONEY,
	@BankCode VARCHAR(10),
	@FileName VARCHAR(50),
	@UserInsert VARCHAR(10)
)

AS

BEGIN TRAN ConvertVirtualAccountMandiri

DECLARE @CustomerName VARCHAR(100)

SELECT @CustomerName = Name FROM vwCustomerName WHERE AgreementNo = @CustomerID

DECLARE @PesanError NVARCHAR(4000),
		@LineError CHAR(4)

	BEGIN TRY
		INSERT INTO [dbo].[ConvertVirtualAccount]
				   ([NomorUrut]
				   ,[CustomerID]
				   ,[CustomerName]
				   ,[TanggalTransaksi]
				   ,[TotalPembayaran]
				   ,[BankCode]
				   ,[UserInsert]
				   ,[FileName])
			 VALUES
				   (@NomorUrut,
				   @CustomerID,
				   @CustomerName,
				   @TanggalTransaksi,
				   @TotalPembayaran,
				   @BankCode,
				   @UserInsert,
				   @FileName)
	END TRY
	BEGIN CATCH
			SELECT @PesanError = ERROR_MESSAGE(), @LineError = ERROR_LINE()
			SET @PesanError = @PesanError + ' Error in line ' + @LineError
			IF @PesanError IS NOT NULL
				BEGIN
					GOTO ExitSP
				END
	END CATCH
COMMIT TRAN ConvertVirtualAccountMandiri
RETURN


ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @PesanError AS Pesan
		ROLLBACK TRAN ConvertVirtualAccountMandiri
	END



GO
/****** Object:  StoredProcedure [dbo].[spGetAppAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spGetAppAccess2]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spGetConvertVirtualAccount]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetConvertVirtualAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetConvertVirtualAccount] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetConvertVirtualAccount](	
	@FileName VARCHAR(50),
	@UserConvert VARCHAR(10)
)

AS

IF (SELECT MAX(LEFT(CONVERT(VARCHAR(8),TanggalTransaksi,3),2)) 
	FROM ConvertVirtualAccount 
	WHERE FileName = @FileName) > 12
		SELECT	REPLICATE(' ', 11 - LEN(CONVERT(VARCHAR,NomorUrut))) + CONVERT(VARCHAR,NomorUrut)+
				REPLICATE(' ',7)+CustomerID+REPLICATE(' ',15)+
				LEFT(LEFT(REPLACE(CustomerName,',',' '),22) +' QQ SMSF',30)+REPLICATE(' ',30-LEN(LEFT(LEFT(REPLACE(CustomerName,',',' '),22) +' QQ SMSF',30)))+
				REPLICATE(' ', 20 - LEN(CONVERT(varchar(50),CAST(TotalPembayaran AS MONEY), 1))) + CONVERT(VARCHAR(50),CAST(TotalPembayaran AS MONEY), 1)+
				REPLICATE(' ',7)+Convert(varchar(8),TanggalTransaksi,3)+
				REPLICATE(' ',5)+Convert(varchar(8),TanggalTransaksi,108)+
				REPLICATE(' ',7)+LEFT(BankCode,5) AS ConvertData
		FROM	ConvertVirtualAccount 
		WHERE	FileName = @FileName
ELSE
		SELECT	REPLICATE(' ', 11 - LEN(convert(varchar,NomorUrut))) + CONVERT(VARCHAR,NomorUrut)+
				REPLICATE(' ',7)+CustomerID+REPLICATE(' ',15)+
				LEFT(LEFT(REPLACE(CustomerName,',',' '),22) +' QQ SMSF',30)+REPLICATE(' ',30-LEN(LEFT(LEFT(REPLACE(CustomerName,',',' '),22) +' QQ SMSF',30)))+
				REPLICATE(' ', 20 - LEN(CONVERT(varchar(50),CAST(TotalPembayaran AS MONEY), 1))) + CONVERT(VARCHAR(50),CAST(TotalPembayaran AS MONEY), 1)+
				REPLICATE(' ',7)+Convert(varchar(8),TanggalTransaksi,1)+
				REPLICATE(' ',5)+Convert(varchar(8),TanggalTransaksi,108)+
				REPLICATE(' ',7)+LEFT(BankCode,5) AS ConvertData
		FROM	ConvertVirtualAccount 
		WHERE	FileName = @FileName

UPDATE	ConvertVirtualAccount
SET		IsConvert = 1, UserConvert = @UserConvert, DtmConvert = GETDATE()
WHERE	FileName = @FileName
GO
/****** Object:  StoredProcedure [dbo].[spGetDocumentExist]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDocumentExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDocumentExist] AS' 
END
GO
ALTER PROC [dbo].[spGetDocumentExist](
	@DocumentNo AS VARCHAR(30)
)

AS

SELECT	BranchFullName,
		Name,
		AgreementNo,
		AssetDocumentContent.ApplicationID,
		AssetDocID,DocumentNo, 
		ContractStatus,
		DefaultStatus,
		AgreementAsset.AssetStatus
FROM	DBSVR.SMSDB.dbo.AssetDocumentContent
		LEFT JOIN DBSVR.SMSDB.dbo.Agreement ON Agreement.ApplicationID=AssetDocumentContent.ApplicationID
		LEFT JOIN DBSVR.SMSDB.dbo.Customer ON Customer.CustomerID=Agreement.CustomerID
		LEFT JOIN DBSVR.SMSDB.dbo.Branch ON Branch.BranchID =Agreement.BranchId
		LEFT JOIN DBSVR.SMSDB.dbo.AgreementAsset ON AgreementAsset.ApplicationID=Agreement.ApplicationID
WHERE	DocumentNo = @DocumentNo AND DocumentNo <> '-'
ORDER BY AgreementNo
GO
/****** Object:  StoredProcedure [dbo].[spGetDocumentExistDetail]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDocumentExistDetail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDocumentExistDetail] AS' 
END
GO
ALTER PROC [dbo].[spGetDocumentExistDetail](
	@ApplicationID VARCHAR(16)
)

AS

SELECT	Branch.BranchId,
		Branch.BranchFullName,
		Name,
		AgreementNo,
		AssetDocumentContent.ApplicationID,
		AssetDocumentContent.AssetDocID,
		AssetDocumentList.AssetDocName,
		AssetDocumentContent.IsDocExist,
		DocumentNo, 
		CASE	WHEN Agreement.ContractStatus = 'PRP' THEN 'Prospect'
                WHEN Agreement.ContractStatus = 'LIV' THEN 'Live'
                WHEN Agreement.ContractStatus = 'RRD' THEN 'Ready to Release Document'
                WHEN Agreement.ContractStatus = 'ICP' THEN 'Incomplete Payment'
                WHEN Agreement.ContractStatus = 'ICL' THEN 'Incomplete Late Charges'
                WHEN Agreement.ContractStatus = 'EXP' THEN 'Finished'
                WHEN Agreement.ContractStatus = 'INV' THEN 'Inventoried'
                WHEN Agreement.ContractStatus = 'CAN' THEN 'Cancel'
                WHEN Agreement.ContractStatus = 'RJC' THEN 'Rejected'
                ELSE Agreement.ContractStatus
            END AS ContractStatus,
		CASE	WHEN Agreement.DefaultStatus = 'NM' THEN 'Normal'
                WHEN Agreement.DefaultStatus = 'NA' THEN 'Stop Accrued'
                WHEN Agreement.DefaultStatus = 'WO' THEN 'Write Off'
                ELSE Agreement.DefaultStatus
        END	AS DefaultStatus,
		CASE	AgreementAsset.AssetStatus
				WHEN 'RFR' THEN 'Request for Repossesion'
				WHEN 'REP' THEN 'Asset has been repossed'
				WHEN 'SLD' THEN 'Asset has been sold but hasn’t been paid yet'
				WHEN 'INV' THEN 'Inventory'
				WHEN 'RRD' THEN 'Ready to release asset document'
				WHEN 'RLS' THEN 'Asset document has been released'
				WHEN 'NOR' THEN 'Normal'
				WHEN 'PRP' THEN 'Prospek'
		END AS AssetStatus		
FROM	DBSVR.SMSDB.dbo.AssetDocumentContent
		LEFT JOIN DBSVR.SMSDB.dbo.Agreement ON Agreement.ApplicationID=AssetDocumentContent.ApplicationID
		LEFT JOIN DBSVR.SMSDB.dbo.Customer ON Customer.CustomerID=Agreement.CustomerID
		LEFT JOIN DBSVR.SMSDB.dbo.Branch ON Branch.BranchID =Agreement.BranchId
		LEFT JOIN DBSVR.SMSDB.dbo.AgreementAsset ON AgreementAsset.ApplicationID=Agreement.ApplicationID
		LEFT JOIN DBSVR.SMSDB.dbo.AssetDocumentList ON AssetDocumentList.AssetDocID = AssetDocumentContent.AssetDocID
					AND AssetDocumentList.AssetTypeID = AssetDocumentContent.AssetTypeID
WHERE	AssetDocumentContent.ApplicationID = @ApplicationID
		AND DocumentNo <> '-'
GO
/****** Object:  StoredProcedure [dbo].[spGetFileUpload]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetFileUpload]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetFileUpload] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetFileUpload](
	@DtmUpload CHAR(10) = '',
	@UploadType VARCHAR(50) = ''
)

AS

IF @DtmUpload = ''
	BEGIN
		SET @DtmUpload = (SELECT CONVERT(DATE, GETDATE()))
	END

SET @UploadType = '%' + @UploadType + '%'

SELECT	UF.[ID],
		[NamaFile],
		[TypeFile],
		[FullPathFile],
		[UploadFile],
		[SizeFile],
		[UserFullName],
		[DtmUpload],
		[UploadType]
FROM	[dbo].[UploadFile] UF
		LEFT JOIN MasterUser MU ON MU.Username = UF.UserUpload
		LEFT JOIN TblUploadType TUT ON TUT.ID = UF.UploadType
WHERE	[IsImages] = 0
		AND TUT.Description LIKE @UploadType
		AND CONVERT(DATE, DtmUpload) = @DtmUpload
ORDER BY DtmUpload DESC



GO
/****** Object:  StoredProcedure [dbo].[spGetFileUploadById]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetFileUploadById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetFileUploadById] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetFileUploadById](
	@id CHAR(4)
)

AS

SELECT ID, FullPathFile, NamaFile FROM UploadFile WHERE ID = @id

GO
/****** Object:  StoredProcedure [dbo].[spGetJenisTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetJenisTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetJenisTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetJenisTicket]
AS
SELECT KategoriID, NamaKategori FROM KategoriTicket WHERE LevelID = '1'


GO
/****** Object:  StoredProcedure [dbo].[spGetKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetKategoriTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetKategoriTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetKategoriTicket](
	@ParentKategoriID VARCHAR(10)
)
AS
SELECT KategoriID, NamaKategori FROM KategoriTicket WHERE ParentKategoriID = @ParentKategoriID AND LevelID = 3


GO
/****** Object:  StoredProcedure [dbo].[spGetLoginAccess]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spGetLoginInfo]    Script Date: 8/14/2015 9:42:00 PM ******/
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
			IsAdminAccess AS IsAdmin,
			IsActive,
			SecretKey,
			IsTicketAccess AS IsTicket,
			IsTasklogAccess AS IsTasklog,
			IsMonitoringAccess AS IsMonitoring,
			IsDailyJobsAccess AS IsDailyJobs,
			GroupUser
	FROM	MasterUser
	WHERE	MasterUser.Username = @Username 
END



GO
/****** Object:  StoredProcedure [dbo].[spGetMainKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetMainKategoriTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetMainKategoriTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetMainKategoriTicket]
AS
SELECT KategoriID, NamaKategori FROM KategoriTicket WHERE LevelID = '2'


GO
/****** Object:  StoredProcedure [dbo].[spGetPembukaanVirtualAccBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPembukaanVirtualAccBRI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPembukaanVirtualAccBRI] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetPembukaanVirtualAccBRI](
	@StartDate DATETIME, 
	@EndDate DATETIME,
	@Username VARCHAR(10)
)

AS

INSERT INTO BriVirtualAccount (SalesDate, CustomerID, CustomerName, UserPendaftaran, DtmPendaftaran)
SELECT	SalesDate,
		RTRIM(Agreement.AgreementNo) AS KodeCustomer,
		RTRIM(Customer.Name) AS Nama,
		@Username,
		GETDATE()
FROM	DBSVR.SMSDB.dbo.Agreement
		LEFT JOIN DBSVR.SMSDB.dbo.AgreementAsset with(nolock)  on AgreementAsset.ApplicationID = Agreement.ApplicationId 
			AND Agreement.Branchid = AgreementAsset.BranchId and AgreementAsset.AssetSeqNo = 1
		LEFT JOIN DBSVR.SMSDB.dbo.Customer ON Customer.CustomerID = Agreement.CustomerID
		LEFT JOIN DBSVR.SMSDB.dbo.Sales ON Sales.ApplicationID =  Agreement.ApplicationID
WHERE	Agreement.ContractStatus = 'LIV' 
		AND AgreementAsset.AssetTypeID = 1
		AND AgreementAsset.AssetStatus = 'NOR'
		AND Agreement.DefaultStatus='NM'
		AND Agreement.AgreementNo not like('%.%')
		AND SalesDate BETWEEN @StartDate AND @EndDate
ORDER BY Agreement.AgreementNo
	 	 				
SELECT 'No|Brivano|CustCode|CustName|Type|OverwriteAddRemove|Amount|LastPeriode|Keterangan' AS Pembukaan
UNION ALL
SELECT	CAST(ROW_NUMBER() OVER (ORDER BY BriVirtualAccount.CustomerID) AS VARCHAR) + '|' +
		'32451' + '|' +
		RTRIM(BriVirtualAccount.CustomerID) + '|' +
		RTRIM(BriVirtualAccount.CustomerName) + '|' +
		'K' + '|' +
		'A' + '|' +
		'0' + '|' +
		'' + '|' +
		''
FROM	BriVirtualAccount
WHERE	BriVirtualAccount.SalesDate BETWEEN @StartDate AND @EndDate
GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccBCA]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccBCA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPenutupanVirtualAccBCA] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetPenutupanVirtualAccBCA]
	@StartDate AS DATETIME, 
	@EndDate AS DATETIME
AS

SELECT	'0'+'4033'+'0000005'+RIGHT('0000000'+RTRIM(RTRIM(LTRIM(COUNT(VirtualAccountAgreementNo)))),7)+(
			SELECT RIGHT('0000000'+RTRIM(RTRIM(LTRIM(COUNT(VirtualAccountAgreementNo)))),7)  
			FROM DBSVR.SMSDB.dbo.VirtualAccountAgreement VA with(nolock) 
			INNER JOIN (SELECT	AgreementNo,
								EffectiveDate, 
								RRDDate
						FROM	DBSVR.SMSDB.dbo.Agreement WITH(NOLOCK)  
								INNER JOIN DBSVR.SMSDB.dbo.Customer WITH(NOLOCK) ON Agreement.CustomerID = Customer.CustomerID
						WHERE	ContractStatus NOT IN ('CAN', 'RJC')
						) AS QryCustomer ON QryCustomer.AgreementNo = VA.VirtualAccountAgreementNo
			WHERE  RRDDate IS NOT NULL and (RRDDate BETWEEN @StartDate AND @EndDate)
		)  AS Penutupan
FROM	DBSVR.SMSDB.dbo.VirtualAccountAgreement VA WITH(NOLOCK)
		INNER JOIN (SELECT	AgreementNo,
							EffectiveDate, 
							RRDDate
					FROM	DBSVR.SMSDB.dbo.Agreement WITH(NOLOCK)   
							INNER JOIN DBSVR.SMSDB.dbo.Customer WITH(NOLOCK) ON Agreement.CustomerID = Customer.CustomerID
					WHERE	ContractStatus NOT IN ('CAN', 'RJC')
					) AS QryCustomer ON QryCustomer.AgreementNo = VA.VirtualAccountAgreementNo
WHERE  RRDDate IS NULL AND EffectiveDate IS NOT NULL AND (EffectiveDate BETWEEN @StartDate AND @EndDate OR RRDDate BETWEEN @StartDate AND @EndDate)
UNION ALL
SELECT	'1'+
		RTRIM(LTRIM(VirtualAccountAgreementNo))+
		UPPER(VA.VirtualAccountAgreementName)+
		SPACE(24- LEN(UPPER(VA.VirtualAccountAgreementName)))+	
		CASE	WHEN QryCustomer.RRDDate IS NULL AND EffectiveDate IS NOT NULL THEN 'O'
				WHEN QryCustomer.RRDDate IS NOT NULL AND EffectiveDate IS NOT NULL THEN 'C'
				ELSE '-'
		END AS PenutupanBCA
FROM	DBSVR.SMSDB.dbo.VirtualAccountAgreement VA WITH(NOLOCK) 
		INNER JOIN (SELECT	AgreementNo,
							EffectiveDate, 
							RRDDate
					FROM	DBSVR.SMSDB.dbo.Agreement WITH(NOLOCK)   
							INNER JOIN DBSVR.SMSDB.dbo.Customer WITH(NOLOCK) ON Agreement.CustomerID = Customer.CustomerID
					WHERE	ContractStatus NOT IN ('CAN', 'RJC')
					) AS QryCustomer ON QryCustomer.AgreementNo = VA.VirtualAccountAgreementNo
WHERE	(RRDDate BETWEEN @StartDate AND @EndDate)

GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccBRI]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccBRI]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPenutupanVirtualAccBRI] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetPenutupanVirtualAccBRI](
	@StartDate DATETIME, 
	@EndDate DATETIME,
	@Username VARCHAR(10)
)

AS
 	 				
SELECT 'No|Brivano|CustCode|CustName|Type|OverwriteAddRemove|Amount|LastPeriode|Keterangan' AS Penutupan
UNION ALL
SELECT	CAST(ROW_NUMBER() OVER (ORDER BY BriVirtualAccount.CustomerID) AS VARCHAR) + '|' +
		'32451' + '|' +
		RTRIM(BriVirtualAccount.CustomerID) + '|' +
		RTRIM(BriVirtualAccount.CustomerName) + '|' +
		'K' + '|' +
		'R' + '|' +
		'0' + '|' +
		'' + '|' +
		''
FROM	BriVirtualAccount
		INNER JOIN vwCustomerName CV ON CV.AgreementNo = BriVirtualAccount.CustomerID
WHERE	CV.RRDDate BETWEEN @StartDate AND @EndDate AND BriVirtualAccount.StatusPenutupan IS NULL

UPDATE	BriVirtualAccount
SET		StatusPenutupan = 1, UserPenutupan = @Username, DtmPenutupan = GETDATE()
WHERE	BriVirtualAccount.CustomerID IN (
			SELECT	BriVirtualAccount.CustomerID
			FROM	BriVirtualAccount
					INNER JOIN vwCustomerName CV ON CV.AgreementNo = BriVirtualAccount.CustomerID
			WHERE	CV.RRDDate BETWEEN @StartDate AND @EndDate
		)
GO
/****** Object:  StoredProcedure [dbo].[spGetPenutupanVirtualAccMandiri]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPenutupanVirtualAccMandiri]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPenutupanVirtualAccMandiri] AS' 
END
GO


ALTER PROCEDURE [dbo].[spGetPenutupanVirtualAccMandiri]
	@StartDate AS datetime, 
	@EndDate AS datetime	
AS
SELECT	REPLACE(RTRIM(Agreement.AgreementNo),'.','') + '|||' + 'IDR' + '|'
		+ REPLACE(LEFT(UPPER(Customer.Name),25),',','.') + '|'
		+ CASE Customer.CustomerType	WHEN 'C' THEN LEFT(REPLACE(CompanyCustomer.CompanyCity,',',' '),20)
										WHEN 'P' THEN LEFT(REPLACE(PersonalCustomer.ResidenceCity,',',' '),20)
		  END + '|'
		+ LEFT(REPLACE(AgreementAsset.LicensePlate,' ',''),10) + '|' 
		+ LEFT(AgreementAssetLeveling.AssetCode,10)
		-----------REPLICATE-------------
		+ REPLICATE('|', 22)
		---------------------------------
		+ REPLACE(CONVERT(VARCHAR, golivedate,111),'/','') + '|' 
		+ REPLACE(CONVERT(VARCHAR, Agreement.RRDDate,111),'/','') + '|' 
		+ '01' + '\' + 'Pembayaran' + '\' + 'Pembayaran' + '\55' + '|'
		+ REPLICATE('\\\|', 24) + '~' AS Penutupan
FROM	DBSVR.SMSDB.dbo.Agreement
		LEFT JOIN DBSVR.SMSDB.dbo.Customer ON customer.customerid=agreement.customerid
		LEFT JOIN DBSVR.SMSDB.dbo.PersonalCustomer WITH(NOLOCK) ON Customer.CustomerId = PersonalCustomer.CustomerId
		LEFT JOIN DBSVR.SMSDB.dbo.CompanyCustomer WITH(NOLOCK) ON Customer.CustomerId = CompanyCustomer.CustomerId
		LEFT JOIN DBSVR.SMSDB.dbo.AgreementAsset WITH(NOLOCK) ON AgreementAsset.ApplicationID = Agreement.ApplicationId 
			AND Agreement.Branchid = AgreementAsset.BranchId and AgreementAsset.AssetSeqNo = 1
		LEFT JOIN DBSVR.SMSDB.dbo.AgreementAssetLeveling WITH(NOLOCK) ON Agreement.ApplicationId = AgreementAssetLeveling.ApplicationID
			AND AgreementAsset.BranchID = AgreementAssetLeveling.BranchId
			AND AgreementAssetLeveling.AssetSeqNo = AgreementASset.AssetSeqNo
		INNER JOIN (SELECT DISTINCT ApplicationID FROM DBSVR.SMSDB.dbo.PaymentHistoryHeader WITH(NOLOCK) WHERE BankAccountID = 'VIRMNDR')	PH ON PH.ApplicationID = Agreement.ApplicationID
WHERE	Agreement.RRDDate < MaturityDate
		AND Agreement.RRDDate BETWEEN @StartDate AND @EndDate
		AND AgreementAssetLeveling.AssetLevel = 1



GO
/****** Object:  StoredProcedure [dbo].[spGetSecretKey]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spGetSub2KategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSub2KategoriTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetSub2KategoriTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetSub2KategoriTicket](
	@ParentKategoriID VARCHAR(10)
)
AS
SELECT KategoriID, NamaKategori FROM KategoriTicket WHERE ParentKategoriID = @ParentKategoriID AND LevelID = 5


GO
/****** Object:  StoredProcedure [dbo].[spGetSubKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetSubKategoriTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetSubKategoriTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spGetSubKategoriTicket](
	@ParentKategoriID VARCHAR(10)
)
AS
SELECT KategoriID, NamaKategori FROM KategoriTicket WHERE ParentKategoriID = @ParentKategoriID AND LevelID = 4


GO
/****** Object:  StoredProcedure [dbo].[spGetTypeUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spImportEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertDataUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertFileUpload]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertFileUpload]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spInsertFileUpload] AS' 
END
GO
ALTER PROCEDURE [dbo].[spInsertFileUpload](
	@NamaFile VARCHAR(50),
	@TypeFile VARCHAR(50),
	@PathFile VARCHAR(100),
	@FullPathFile VARCHAR(100),
	@UploadFile VARCHAR(50),
	@ExtFile VARCHAR(5),
	@SizeFile FLOAT,
	@IsImages BIT,
	@WidthImages FLOAT,
	@HeightImages FLOAT,
	@TypeImages VARCHAR(50),
	@UserUpload VARCHAR(10),
	@UploadType VARCHAR(50)
)

AS

DECLARE @PesanError NVARCHAR(4000),
		@LineError CHAR(4)

BEGIN TRAN InsertFileUpload
	BEGIN TRY
		INSERT INTO [dbo].[UploadFile]
			([NamaFile]
			,[TypeFile]
			,[PathFile]
			,[FullPathFile]
			,[UploadFile]
			,[ExtFile]
			,[SizeFile]
			,[IsImages]
			,[WidthImages]
			,[HeightImages]
			,[TypeImages]
			,[UserUpload]
			,[UploadType])
		VALUES
			(@NamaFile
			,@TypeFile
			,@PathFile
			,@FullPathFile
			,@UploadFile
			,@ExtFile
			,@SizeFile
			,@IsImages
			,@WidthImages
			,@HeightImages
			,@TypeImages
			,@UserUpload
			,@UploadType)
	END TRY
	BEGIN CATCH
		SELECT @PesanError = ERROR_MESSAGE(), @LineError = ERROR_LINE()
		SET @PesanError = @PesanError + ' Error in line ' + @LineError
		IF @PesanError IS NOT NULL
			BEGIN
				GOTO ExitSP
			END
	END CATCH

COMMIT TRAN InsertFileUpload
SELECT 'Success' AS Status, 'Insert berhasil' AS Pesan
RETURN

ExitSP:
	BEGIN
		SELECT 'Failed' AS Status, @PesanError AS Pesan
		ROLLBACK TRAN InsertFileUpload
	END

GO
/****** Object:  StoredProcedure [dbo].[spInsertKategoriTicket]    Script Date: 8/14/2015 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsertKategoriTicket]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spInsertKategoriTicket] AS' 
END
GO
ALTER PROCEDURE [dbo].[spInsertKategoriTicket](
	@ParentKategoriID VARCHAR(10),
	@NamaKategori VARCHAR(255),
	@UserUpdate VARCHAR(10),
	@LevelID CHAR(1)
)

AS

DECLARE @NewId VARCHAR(36) = NEWID(),
		@KategoriID VARCHAR(10),
		@Code CHAR(2)

IF @LevelID = 1
	BEGIN
		SET @Code = 'JS'
	END
ELSE IF @LevelID =2
	BEGIN
		SET @Code = 'MK'
	END 
ELSE IF @LevelID = 3
	BEGIN
		SET @Code = 'KT'
	END 
ELSE IF @LevelID = 4
	BEGIN
		SET @Code = 'S1'
	END 
ELSE IF @LevelID = 5
	BEGIN
		SET @Code = 'S2'
	END 

SET @KategoriID = @Code + (SELECT LEFT(@NewId, 8))

INSERT INTO [KategoriTicket]
           ([ID]
           ,[KategoriID]
           ,[ParentKategoriID]
           ,[NamaKategori]
           ,[UserUpdate]
		   ,[LevelID])
     VALUES
           (@NewId, @KategoriID, @ParentKategoriID, @NamaKategori, @UserUpdate, @LevelID)



GO
/****** Object:  StoredProcedure [dbo].[spSearchImportEmployee]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spSearchUsername]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 8/14/2015 9:42:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spUpdateUser2]    Script Date: 8/14/2015 9:42:00 PM ******/
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
