USE [ATMore]
GO
/****** Object:  StoredProcedure [dbo].[usp_Provider_Select]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Provider_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Provider_Select]
GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Update]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Market_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Select_ByID]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Select_ByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Market_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Select]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Market_Select]
GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Insert]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Market_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Delete]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Market_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Update]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Account_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Select_ByID]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Select_ByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Account_Select_ByID]
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Create]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Create]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Account_Create]
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_CheckPhone]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_CheckPhone]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Account_CheckPhone]
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Authenticate]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Authenticate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Account_Authenticate]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Provider_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider] DROP CONSTRAINT [DF_Provider_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Market_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Market] DROP CONSTRAINT [DF_Market_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Market_Amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Market] DROP CONSTRAINT [DF_Market_Amount]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Logging_LogDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Logging] DROP CONSTRAINT [DF_Logging_LogDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ActiveCode_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActiveCode] DROP CONSTRAINT [DF_ActiveCode_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Account_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF_Account_Active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Account__Created__30F848ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF__Account__Created__30F848ED]
END

GO
/****** Object:  Table [dbo].[Provider]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider]') AND type in (N'U'))
DROP TABLE [dbo].[Provider]
GO
/****** Object:  Table [dbo].[Market]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Market]') AND type in (N'U'))
DROP TABLE [dbo].[Market]
GO
/****** Object:  Table [dbo].[Logging]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logging]') AND type in (N'U'))
DROP TABLE [dbo].[Logging]
GO
/****** Object:  Table [dbo].[ActiveCode]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveCode]') AND type in (N'U'))
DROP TABLE [dbo].[ActiveCode]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [ATMore]    Script Date: 9/26/2016 11:06:02 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ATMore')
DROP DATABASE [ATMore]
GO
/****** Object:  Database [ATMore]    Script Date: 9/26/2016 11:06:02 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ATMore')
BEGIN
CREATE DATABASE [ATMore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATMore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ATMore.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ATMore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ATMore_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [ATMore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATMore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATMore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATMore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATMore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATMore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATMore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATMore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATMore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATMore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATMore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATMore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATMore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATMore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATMore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATMore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATMore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATMore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATMore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATMore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATMore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATMore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATMore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATMore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATMore] SET RECOVERY FULL 
GO
ALTER DATABASE [ATMore] SET  MULTI_USER 
GO
ALTER DATABASE [ATMore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATMore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATMore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATMore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ATMore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATMore', N'ON'
GO
USE [ATMore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[AccountID] [bigint] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Password] [varchar](250) NULL,
	[FacebookID] [varchar](250) NULL,
	[GoogleID] [varchar](250) NULL,
	[Sex] [int] NULL,
	[Birthdate] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Avartar] [varchar](500) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActiveCode]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActiveCode](
	[GenerateID] [bigint] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](20) NULL,
	[ActiveCode] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActiveCode] PRIMARY KEY CLUSTERED 
(
	[GenerateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logging]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logging]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Logging](
	[LogID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountID] [bigint] NULL,
	[Token] [varchar](50) NULL,
	[LogDate] [datetime] NULL,
	[ExpireDate] [datetime] NULL,
 CONSTRAINT [PK_Logging] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Market]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Market]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Market](
	[PackageID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[Latgitude] [varchar](250) NULL,
	[Longitude] [varchar](250) NULL,
	[Time] [datetime] NULL,
	[Amount] [money] NULL,
	[AccountID] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[Modifydate] [datetime] NULL,
	[Status] [int] NULL,
	[Notes] [nvarchar](500) NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Provider](
	[ProviderID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](500) NULL,
	[Website] [nvarchar](500) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](50) NULL,
	[Phone3] [varchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Notes] [nvarchar](2000) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Account__Created__30F848ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] ADD  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Account_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ActiveCode_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ActiveCode] ADD  CONSTRAINT [DF_ActiveCode_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Logging_LogDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Logging] ADD  CONSTRAINT [DF_Logging_LogDate]  DEFAULT (getdate()) FOR [LogDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Market_Amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_Amount]  DEFAULT ((0)) FOR [Amount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Market_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Provider_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider] ADD  CONSTRAINT [DF_Provider_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Authenticate]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Authenticate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Account_Authenticate] AS' 
END
GO
ALTER PROC [dbo].[usp_Account_Authenticate] @Phone varchar(20),
									 @Password varchar(250),
									 @FacebookID varchar(250),
									 @GoogleID varchar(250)

as
BEGIN
	SET NOCOUNT ON;
	DECLARE @AccountID BIGINT;
	IF @Phone IS NOT NULL
		BEGIN
			SELECT @AccountID=[AccountID] FROM [Account] (NOLOCK) WHERE [Phone]=@Phone AND [Password]=@Password AND [Active]=1
		END
	ELSE IF @FacebookID IS NOT NULL
		BEGIN
			SELECT @AccountID=[AccountID] FROM [Account] (NOLOCK) WHERE FacebookID=@FacebookID AND [Active]=1
		END
	ELSE IF @GoogleID IS NOT NULL
		BEGIN
			SELECT @AccountID=[AccountID] FROM [Account] (NOLOCK) WHERE @GoogleID=@GoogleID AND [Active]=1
		END
	IF @AccountID IS NOT NULL
		BEGIN
			   DECLARE @TOKEN VARCHAR(250)
			   SET @TOKEN=NEWID();

			   INSERT INTO [Logging]
					   ([AccountID]
					   ,[Token]
					   ,[LogDate]
					   ,[ExpireDate])
				 VALUES
					   (@AccountID
					   ,@TOKEN
					   ,GETDATE()
					   ,DATEADD(dd,1,GETDATE()))


			SELECT [AccountID]
				  ,[Phone]
				  ,[Sex]
				  ,[Birthdate]
				  ,[Avartar]
				  ,@TOKEN as Token
			  FROM [Account]
			  WHERE [AccountID] = @AccountID


		END
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Account_CheckPhone]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_CheckPhone]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Account_CheckPhone] AS' 
END
GO
ALTER PROC [dbo].[usp_Account_CheckPhone] @Phone varchar(20)
as
BEGIN
	SET NOCOUNT ON;
	DECLARE @RESULT INT;
	IF EXISTS (SELECT 1 FROM [Account] (NOLOCK) WHERE [Phone]=@Phone AND [Active]=1)
		BEGIN
			SET @RESULT=1--EXISTS
		END
	ELSE
		BEGIN
			SET @RESULT=2--NOT EXISTS
		END
	RETURN @RESULT 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Create]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Create]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Account_Create] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_Account_Create]	@Phone varchar(20)='', 	@Password varchar(250)='', 	@FacebookID varchar(250)='', 	@GoogleID varchar(250)='', 	@Sex int= 0, 	@Avartar varchar(500),	@Birthdate varchar(20)=''
AS
BEGIN
	BEGIN TRAN
	 DECLARE @AccountID BIGINT;
	 DECLARE @TOKEN VARCHAR(250)
     SET @TOKEN=NEWID();

	

	IF EXISTS (SELECT 1 FROM [Account] (NOLOCK) WHERE [Phone]=@Phone AND Active=1)
		BEGIN
			UPDATE [Account]
			   SET [Password] = @Password
				  ,[FacebookID] = @FacebookID
				  ,[GoogleID] = @GoogleID
				  ,[Sex] = @Sex
				  ,[Birthdate] =@Birthdate
				  ,[ModifyDate] = GETDATE()
				  ,Avartar=@Avartar
			 WHERE [Phone]=@Phone

			 SELECT @AccountID=AccountID FROM [Account] (NOLOCK) WHERE [Phone]=@Phone
		END
	ELSE
		BEGIN
			INSERT INTO Account(Phone, Password, FacebookID, GoogleID, Sex, Birthdate,[ModifyDate],Avartar)			VALUES (@Phone, @Password, @FacebookID, @GoogleID, @Sex, @Birthdate,GETDATE(),@Avartar)			SET @AccountID=SCOPE_IDENTITY();		END
	INSERT INTO [Logging]
			([AccountID]
			,[Token]
			,[LogDate]
			,[ExpireDate])
		VALUES
			(@AccountID
			,@TOKEN
			,GETDATE()
			,DATEADD(dd,1,GETDATE()))

	SELECT [AccountID]
			,[Phone]
			,[Sex]
			,[Birthdate]
			,Avartar
			,@TOKEN as Token
	FROM [Account]
	WHERE [AccountID] = @AccountID

	IF @@Error<>0 	BEGIN		ROLLBACK	END		COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Select_ByID]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Select_ByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Account_Select_ByID] AS' 
END
GO
ALTER Procedure [dbo].[usp_Account_Select_ByID]
	@AccountID bigint
AS
SET NOCOUNT ON;
	SELECT AccountID,
	       Phone, 
		   Password, 
		   Sex, 
		   Birthdate, CreatedDate, ModifyDate,[Avartar], Active
	FROM Account WITH (NOLOCK)
	WHERE AccountID=@AccountID

GO
/****** Object:  StoredProcedure [dbo].[usp_Account_Update]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Account_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Account_Update] AS' 
END
GO
ALTER Procedure [dbo].[usp_Account_Update]
	@Sex int= 0, 
	@Birthdate varchar(20)='', 
	@AccountID bigint	,
	@Avartar varchar(500)	
AS
SET NOCOUNT ON;
	BEGIN TRAN

	UPDATE Account
	SET Sex=@Sex, 
	    Birthdate=@Birthdate, 
		ModifyDate=GETDATE(),
		Avartar=@Avartar
	WHERE AccountID=@AccountID

	IF @@Error<>0
	BEGIN
		SELECT 2 as result
		ROLLBACK
		RETURN 2
	END
	SELECT 1 as result
	COMMIT
	RETURN 1


GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Delete]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Market_Delete] AS' 
END
GO
ALTER Procedure [dbo].[usp_Market_Delete]	@PackageID bigint,
	@Status int		
AS
SET NOCOUNT ON;
	BEGIN TRAN

	UPDATE Market SET [Status] = @Status WHERE PackageID=@PackageID

	IF @@Error<>0 	BEGIN		SELECT 2 as result		ROLLBACK		RETURN 2	END	SELECT 1 as result	COMMIT	RETURN 1

GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Insert]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Market_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_Market_Insert]	@Address nvarchar(500)='', 	@Latgitude varchar(250)='', 	@Longitude varchar(250)='', 	@Time datetime= 0, 	@Amount money= 0, 	@AccountID bigint= 0, 	@Status int= 0, 	@Notes nvarchar(500)=''		
AS
SET NOCOUNT ON;
	BEGIN TRAN

	INSERT INTO Market(Address, Latgitude, Longitude, Time, Amount, AccountID,Modifydate, Status, Notes)		VALUES (@Address, @Latgitude, @Longitude, @Time, @Amount, @AccountID, GETDATE(), @Status, @Notes)	

	IF @@Error<>0 	BEGIN		SELECT 2 as result		ROLLBACK		RETURN 2	END	SELECT 1 as result	COMMIT	RETURN 1

GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Select]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Market_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_Market_Select]
	@FiterSQL NVARCHAR(MAX) = ''
	, @OrderSQL NVARCHAR(MAX) = ''
	, @PageNo int = 1 
	, @PageSize int = 20
	, @PRINT bit = 0 
AS
SET NOCOUNT ON;
	DECLARE @sql NVARCHAR(MAX)=''
	
	IF @OrderSQL = '' 
		SET @OrderSQL = 'PackageID'

	SET @sql='
	SELECT PackageID, Address, Latgitude, Longitude, Time, Amount, AccountID, CreatedDate, Modifydate, Status, Notes
		, '+CASE WHEN @PageNo=0 
			THEN 'COUNT(1)'
			ELSE 
				'CASE WHEN COUNT(1) OVER () % '+CAST(@PageSize AS VARCHAR(100))+' > 0  
					THEN COUNT(1) OVER () / '+CAST(@PageSize AS VARCHAR(100))+' + 1 
					ELSE COUNT(1) OVER () / '+CAST(@PageSize AS VARCHAR(100))+'  
				END' 
			END+' AS Pages
	FROM Market WITH (NOLOCK)
	WHERE IsActive=1'+CASE WHEN @FiterSQL<>'' THEN ' AND ('+@FiterSQL+')' ELSE '' END
	+CASE WHEN @OrderSQL<>'' THEN ' 
	ORDER BY '+@OrderSQL ELSE '' END
	+CASE WHEN @PageNo = 0 THEN '' ELSE '
	OFFSET '+CAST((@PageNo-1) AS VARCHAR(100))+'*'+CAST(@PageSize AS VARCHAR(100))+' ROWS		--> OFFSET:		exclude how many rows
	FETCH NEXT '+CAST(@PageSize AS VARCHAR(100))+' ROWS ONLY	--> FECT NEXT:	display how may rows '
	END

	IF @PRINT=1 PRINT @sql
	EXEC sp_executesql @sql, 
		N'@PageNo INT
		,  @PageSize INT'
		, @PageNo
		, @PageSize

GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Select_ByID]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Select_ByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Market_Select_ByID] AS' 
END
GO
ALTER Procedure [dbo].[usp_Market_Select_ByID]	@PackageID bigint
AS
SET NOCOUNT ON;
	SELECT M.PackageID, 	       M.Address, 		   M.Latgitude, 		   M.Longitude, 		   M.Time, 		   M.Amount, 		   M.AccountID, 		   M.CreatedDate, 		   M.Modifydate, 		   M.Status, 		   M.Notes,		   A.[Phone]	FROM Market M WITH (NOLOCK)	INNER JOIN [Account] A ON M.AccountID=A.AccountID	WHERE M.PackageID=@PackageID

GO
/****** Object:  StoredProcedure [dbo].[usp_Market_Update]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Market_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Market_Update] AS' 
END
GO
ALTER Procedure [dbo].[usp_Market_Update]	@Address nvarchar(500)='', 	@Latgitude varchar(250)='', 	@Longitude varchar(250)='', 	@Time datetime= 0, 	@Amount money= 0, 	@Notes nvarchar(500)=''	, @PackageID bigint		
AS
SET NOCOUNT ON;
	BEGIN TRAN

	UPDATE Market	SET Address=@Address, 	    Latgitude=@Latgitude, 		Longitude=@Longitude, 		Time=@Time, 		Amount=@Amount, 		Modifydate=GETDATE(), 		Notes=@Notes	WHERE PackageID=@PackageID

	IF @@Error<>0 	BEGIN		SELECT 2 as result		ROLLBACK		RETURN 2	END	SELECT 1 as result	COMMIT	RETURN 1


GO
/****** Object:  StoredProcedure [dbo].[usp_Provider_Select]    Script Date: 9/26/2016 11:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Provider_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_Provider_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[usp_Provider_Select]
	@FiterSQL NVARCHAR(MAX) = ''
	, @OrderSQL NVARCHAR(MAX) = ''
	, @PageNo int = 1 
	, @PageSize int = 20
	, @PRINT bit = 0 
AS
SET NOCOUNT ON;
	DECLARE @sql NVARCHAR(MAX)=''
	
	IF @OrderSQL = '' 
		SET @OrderSQL = 'ProviderID'

	SET @sql='
	SELECT ProviderID, ProviderName, Website, Phone1, Phone2, Phone3, Address, Notes, CreatedDate
		, '+CASE WHEN @PageNo=0 
			THEN 'COUNT(1)'
			ELSE 
				'CASE WHEN COUNT(1) OVER () % '+CAST(@PageSize AS VARCHAR(100))+' > 0  
					THEN COUNT(1) OVER () / '+CAST(@PageSize AS VARCHAR(100))+' + 1 
					ELSE COUNT(1) OVER () / '+CAST(@PageSize AS VARCHAR(100))+'  
				END' 
			END+' AS Pages
	FROM Provider WITH (NOLOCK)
	WHERE IsActive=1'+CASE WHEN @FiterSQL<>'' THEN ' AND ('+@FiterSQL+')' ELSE '' END
	+CASE WHEN @OrderSQL<>'' THEN ' 
	ORDER BY '+@OrderSQL ELSE '' END
	+CASE WHEN @PageNo = 0 THEN '' ELSE '
	OFFSET '+CAST((@PageNo-1) AS VARCHAR(100))+'*'+CAST(@PageSize AS VARCHAR(100))+' ROWS		--> OFFSET:		exclude how many rows
	FETCH NEXT '+CAST(@PageSize AS VARCHAR(100))+' ROWS ONLY	--> FECT NEXT:	display how may rows '
	END

	IF @PRINT=1 PRINT @sql
	EXEC sp_executesql @sql, 
		N'@PageNo INT
		,  @PageSize INT'
		, @PageNo
		, @PageSize

GO
USE [master]
GO
ALTER DATABASE [ATMore] SET  READ_WRITE 
GO
