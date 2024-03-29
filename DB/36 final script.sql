USE [VeteDB]
GO
/****** Object:  Table [dbo].[AppointmentAndRecords]    Script Date: 03/09/2019 07:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointmentAndRecords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Vacination] [varchar](220) NULL,
	[HRecord] [varchar](220) NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Address] [varchar](220) NULL,
	[Email] [varchar](30) NOT NULL,
	[ContactNo] [varchar](20) NOT NULL,
	[RegNo] [varchar](200) NOT NULL,
	[PassWord] [varchar](20) NOT NULL,
	[UserType] [tinyint] NOT NULL,
	[StaffId] [int] NULL,
	[DogOwnerId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dnt]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dnt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Url] [varchar](150) NOT NULL,
	[Description] [varchar](400) NOT NULL,
	[Type] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DntType]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DntType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DogOwner]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DogOwner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DogName] [varchar](50) NOT NULL,
	[DogType] [varchar](50) NOT NULL,
	[DogAge] [tinyint] NOT NULL,
	[DogDob] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Subject] [varchar](100) NOT NULL,
	[Message] [varchar](400) NOT NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 03/09/2019 07:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [varchar](255) NOT NULL,
	[Experience] [varchar](255) NOT NULL,
	[Dob] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppointmentAndRecords] ON 

INSERT [dbo].[AppointmentAndRecords] ([Id], [UserId], [Vacination], [HRecord], [CreatedDate], [LastUpdatedDate]) VALUES (1, 2, N'wertyuio', N'wertyuio', CAST(N'2019-07-09T07:19:49.223' AS DateTime), CAST(N'2019-07-09T07:19:49.223' AS DateTime))
INSERT [dbo].[AppointmentAndRecords] ([Id], [UserId], [Vacination], [HRecord], [CreatedDate], [LastUpdatedDate]) VALUES (2, 5, N'ertyui', N'fsdfddff', CAST(N'2019-08-31T23:00:26.657' AS DateTime), CAST(N'2019-08-31T23:00:26.657' AS DateTime))
SET IDENTITY_INSERT [dbo].[AppointmentAndRecords] OFF
SET IDENTITY_INSERT [dbo].[AppUser] ON 

INSERT [dbo].[AppUser] ([Id], [FirstName], [LastName], [Sex], [Address], [Email], [ContactNo], [RegNo], [PassWord], [UserType], [StaffId], [DogOwnerId], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'Admin', N'Admin', 0, N'dssasdsdssds', N'steve.bart@gmail.com', N'12345678', N'admin', N'admin', 4, NULL, NULL, CAST(N'2019-07-07T13:04:40.080' AS DateTime), CAST(N'2019-07-07T13:04:40.080' AS DateTime))
SET IDENTITY_INSERT [dbo].[AppUser] OFF
SET IDENTITY_INSERT [dbo].[Dnt] ON 

INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'Lyme Disease', N'lyme diseases(5).jpg', N'Antibiotics are the treatment of choice. In more complicated Lyme infections, like those affecting the kidneys, hospitalization and supportive care will be recommended.', 1, CAST(N'2019-09-02T06:23:54.837' AS DateTime), CAST(N'2019-09-02T06:23:54.837' AS DateTime))
INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'Canine Influenza', N'canine-influenza-(6).jpg', N'The mild form of dog flu is usually treated with cough suppressants. Antibiotics may be used if there is a secondary bacterial infection. Rest and isolation from other dogs is very important.', 1, CAST(N'2019-09-02T06:25:08.217' AS DateTime), CAST(N'2019-09-02T06:25:08.217' AS DateTime))
INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (3, N'Gum Disease', N'dog gum-disease-(7).jpg', N'The specific treatment for periodontal disease depends on how advanced the disease is. In the early stages, treatment is focused on controlling plaque and preventing attachment loss. This is achieved by daily brushing with animal safe toothpaste, professional cleansing, polishing, and the prescribed application of fluoride.', 1, CAST(N'2019-09-02T06:26:20.970' AS DateTime), CAST(N'2019-09-02T06:26:20.970' AS DateTime))
INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (4, N'Hair Loss', N'dog hair-loss(8).jpg', N'Few things are sadder than the sight of a balding dog. Although it’s tempting to jump to conclusions about the cause, it can be very challenging to accurately diagnose hair loss in dogs without a veterinary exam and diagnostics such as a skin scraping to examine the skin cells under a microscope.', 2, CAST(N'2019-09-02T06:27:28.973' AS DateTime), CAST(N'2019-09-02T06:27:28.973' AS DateTime))
INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (5, N'Sores and Hot Spots', N'hot spots(9).jpg', N'Other common causes of pruritus (itchy skin) are external parasites such as mites and fleas (in non-allergic dogs), and primary bacterial infections. Hot spots, or moist dermatitis, are often seen in the dog and can spread very quickly. If you spot any red, sticky sores on your dog, get him evaluated before it worsens.', 2, CAST(N'2019-09-02T06:28:28.373' AS DateTime), CAST(N'2019-09-02T06:28:28.373' AS DateTime))
INSERT [dbo].[Dnt] ([Id], [Title], [Url], [Description], [Type], [CreatedDate], [LastUpdatedDate]) VALUES (6, N'Itchy Skin', N'dog-itchy-skin(10).jpg', N'Dogs with itchy skin, officially referred to as pruritus, are a very common sight in the clinic. In fact, dog itching is the primary complaint associated with up to 40% of all vet visits for a skin problem. Persistent scratching can consume a dog’s life, keeping both the pet and the owner up all night. Those who have suffered alongside their itchy dog are well versed in the sounds of a dog going t', 2, CAST(N'2019-09-02T06:35:22.663' AS DateTime), CAST(N'2019-09-02T06:35:22.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[Dnt] OFF
SET IDENTITY_INSERT [dbo].[DntType] ON 

INSERT [dbo].[DntType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'Common Diseases', CAST(N'2019-09-01T23:59:19.403' AS DateTime), CAST(N'2019-09-01T23:59:19.403' AS DateTime))
INSERT [dbo].[DntType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'Skin Diseases', CAST(N'2019-09-01T23:59:40.863' AS DateTime), CAST(N'2019-09-01T23:59:40.863' AS DateTime))
SET IDENTITY_INSERT [dbo].[DntType] OFF
SET IDENTITY_INSERT [dbo].[DogOwner] ON 

SET IDENTITY_INSERT [dbo].[DogOwner] OFF
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (1, N'DO6', N'zxxczxcxzc@sdsd', N'fsdfsfdsdf', N'dfffdsdfsfdsfdsf', CAST(N'2019-08-14T13:21:36.710' AS DateTime))
INSERT [dbo].[Message] ([Id], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (2, N'DO6', N'zxxczxcxzc@sdsd', N'fsdfsfdsdf', N'dfffdsdfsfdsfdsf', CAST(N'2019-08-14T13:22:16.607' AS DateTime))
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

SET IDENTITY_INSERT [dbo].[Staff] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'Doctor', CAST(N'2019-07-07T11:38:31.547' AS DateTime), CAST(N'2019-07-07T11:38:31.547' AS DateTime))
INSERT [dbo].[UserType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'Clinic Staff', CAST(N'2019-07-07T11:38:31.547' AS DateTime), CAST(N'2019-07-07T11:38:31.547' AS DateTime))
INSERT [dbo].[UserType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (3, N'Dog Owner', CAST(N'2019-07-07T11:38:31.547' AS DateTime), CAST(N'2019-07-07T11:38:31.547' AS DateTime))
INSERT [dbo].[UserType] ([Id], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (4, N'Admin', CAST(N'2019-07-07T11:38:31.547' AS DateTime), CAST(N'2019-07-07T11:38:31.547' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[AppointmentAndRecords] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AppointmentAndRecords] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[Dnt] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Dnt] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[DntType] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DntType] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[DogOwner] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DogOwner] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[UserType] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserType] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Dnt]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_Dnt]
	@Id		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM [dbo].[Dnt]
	  WHERE Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_DntType]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_DntType] 
	@Id		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM [dbo].[DntType]
	  WHERE Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_User]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_User]
	-- Add the parameters for the stored procedure here
	@Id			INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF 3 = (SELECT UserType FROM AppUser WHERE Id = @Id)
	BEGIN
		DELETE DogOwner WHERE Id = (SELECT DogOwnerId FROM AppUser WHERE Id = @Id)
		DELETE AppointmentAndRecords WHERE UserId = @Id
		DELETE AppUser WHERE Id = @Id
	END
	ELSE
	BEGIN
		DELETE Staff WHERE Id = (SELECT StaffId FROM AppUser WHERE Id = @Id)
		DELETE AppUser WHERE Id = @Id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Dnts]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Dnts] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT d.[Id]
		  ,[Title]
		  ,[Url]
		  ,d.[Description]
		  ,d.[CreatedDate]
		  ,d.[LastUpdatedDate]
		  ,d.[Type]
		  ,dt.[Description] AS TypeDesc
	  FROM [VeteDB].[dbo].[Dnt] d
	  INNER JOIN [DntType] dt ON d.Type = dt.Id
END
GO
/****** Object:  StoredProcedure [dbo].[Get_DntTypes]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_DntTypes] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT [Id]
		  ,[Description]
		  ,[CreatedDate]
		  ,[LastUpdatedDate]
	  FROM [dbo].[DntType]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Login]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Login] 
	-- Add the parameters for the stored procedure here
	@RegNo		VARCHAR(220) = NULL,
	@PassWord	VARCHAR(20) = NULL,
	@UserType	TINYINT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF 0 < (SELECT 1 FROM AppUser WHERE RegNo = @RegNo AND PassWord = @PassWord AND UserType = @UserType)
	BEGIN
		SELECT Id As UserId, RegNo As RegNo, UserType As Type , PassWord As PassWord  
		FROM AppUser WHERE RegNo = @RegNo AND PassWord = @PassWord AND UserType = @UserType
	END
	ELSE
	BEGIN
		RAISERROR ('Invalid login credentials.', -- Error Message
			   16, -- Severity.
			   1 -- State.
			   );
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Messages]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Messages]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Select statements for procedure here
	SELECT TOP (1000) [Id]
	  ,[Name]
	  ,[Email]
	  ,[Subject]
	  ,[Message]
	  ,[CreatedDate]
	FROM [VeteDB].[dbo].[Message]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Users]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_Users] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT U.Id, U.FirstName, U.LastName, U.RegNo, U.UserType, U.Sex, U.ContactNo, U.Email, U.Address, UT.[Description] AS Type 
		FROM [AppUser] U
		LEFT JOIN UserType UT ON UT.Id = U.UserType
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_AppUser]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_AppUser] 
	-- Add the parameters for the stored procedure here
		@FirstName		VARCHAR(50) = NULL,           
		@LastName		VARCHAR(50) = NULL,          
		@Email			VARCHAR(30) = NULL,          
		@ContactNo		VARCHAR(20) = NULL,  
		@Address		VARCHAR(220) = NULL,
		@Sex			BIT = 0,
		@PassWord		VARCHAR(20) = NULL,
		@UserType		TINYINT = 0,
		@DogName		VARCHAR(50) = NULL,
		@DogType		VARCHAR(50) = NULL,
		@DogAge			TINYINT = 0,
		@DogDob			VARCHAR(50) = NULL,
		@Qualification	VARCHAR(255) = '',
		@Experience		VARCHAR(255) = NULL,
		@Dob			VARCHAR(50) = NULL,
		@Title			TINYINT = 0

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @OwnerId INT = NULL,
			@StaffId INT = NULL,
			@UserId  INT = NULL,
			@RegNo	 VARCHAR(220);

	IF @UserType = 3 --IF DOG OWNER
	BEGIN
		-- INSERT DOG OWNER
			INSERT INTO [dbo].[DogOwner]
			   ([DogName]
			   ,[DogType]
			   ,[DogAge]
			   ,[DogDob])
			VALUES
			   (@DogName
			   ,@DogType
			   ,@DogAge
			   ,@DogDob)
			SET @OwnerId = (SELECT SCOPE_IDENTITY())
			SET @RegNo = 'DO' + CAST(@OwnerId AS varchar(210));
	END
	ELSE
	BEGIN
		-- INSERT STAFF MEMBER 
			INSERT INTO [dbo].[Staff]
			   ([Qualification]
			   ,[Experience]
			   ,[Dob])
			VALUES
			   (@Qualification
			   ,@Experience
			   ,@Dob)
			SET @StaffId = (SELECT SCOPE_IDENTITY())
			IF @UserType = 1 --IF DOCTOR
			BEGIN
				SET @RegNo = 'DOC' + CAST(@StaffId AS varchar(210));
			END
			ELSE
			BEGIN
				SET @RegNo = 'STA' + CAST(@StaffId AS varchar(210));
			END
	END

	INSERT INTO [dbo].[AppUser]
		   ([FirstName]
		   ,[LastName]
		   ,[Sex]
		   ,[Address]
		   ,[Email]
		   ,[ContactNo]
		   ,[RegNo]
		   ,[PassWord]
		   ,[UserType]
		   ,[StaffId]
		   ,[DogOwnerId])
	 VALUES
		   (@FirstName
		   ,@LastName
		   ,@Sex
		   ,@Address
		   ,@Email
		   ,@ContactNo
		   ,@RegNo
		   ,@PassWord
		   ,@UserType
		   ,@StaffId
		   ,@OwnerId)
	SET @UserId = (SELECT SCOPE_IDENTITY())

	SELECT @RegNo As RegNo, @UserId As UserId, @UserType As Type, @PassWord As Pass
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Dnt]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_Dnt] 
	-- Add the parameters for the stored procedure here
	@Url			VARCHAR(150) = NULL,
	@Title			VARCHAR(100) = NULL,
	@Description	VARCHAR(400) = NULL,
	@Type			INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	INSERT INTO [dbo].[Dnt]
		   ([Title]
		   ,[Url]
		   ,[Description]
		   ,[Type])
	 VALUES
		   (@Title
		   ,@Url
		   ,@Description
		   ,@Type)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_DntType]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[Insert_DntType] 
	-- Add the parameters for the stored procedure here
	@Description	VARCHAR(400) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	INSERT INTO [dbo].[DntType]
		   ([Description])
	 VALUES
		   (@Description)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Message]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_Message] 
	-- Add the parameters for the stored procedure here
	@Name				VARCHAR(100) = NULL,
	@Email				VARCHAR(100) = NULL,
	@Subject			VARCHAR(100) = NULL,
	@Message			VARCHAR(400) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	INSERT INTO [dbo].[Message]
		   ([Name]
		   ,[Email]
		   ,[Subject]
		   ,[Message])
	 VALUES
		   (@Name
		   ,@Email
		   ,@Subject
		   ,@Message)
END
GO
/****** Object:  StoredProcedure [dbo].[Search_Owner]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Search_Owner] 
	-- Add the parameters for the stored procedure here
	@Para					VARCHAR(200) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		SELECT Top 1 U.Id, U.RegNo, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, ISNULL(DO.DogName,'') AS DogName, ISNULL(DO.DogType,'') As DogType
		,ISNULL(Vacination,'') As Vacination, ISNULL(HRecord,'') As HRecord 
		FROM [AppUser] U
		LEFT JOIN [DogOwner] DO
		ON DO.Id = U.DogOwnerId
		LEFT JOIN [AppointmentAndRecords] A
		ON A.UserId = U.Id
		WHERE U.RegNo LIKE CONCAT('%',@Para,'%')
END
GO
/****** Object:  StoredProcedure [dbo].[Search_User]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Search_User] 
	-- Add the parameters for the stored procedure here
	@Para					VARCHAR(200) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.RegNo, U.UserType, U.ContactNo, U.Email, U.Address, UT.[Description] AS Type 
		FROM [AppUser] U
		LEFT JOIN UserType UT ON UT.Id = U.UserType
		WHERE U.Id LIKE CONCAT('%',@Para,'%') OR U.FirstName LIKE CONCAT('%',@Para,'%') OR
			  U.LastName LIKE CONCAT('%',@Para,'%') OR UT.[Description] LIKE CONCAT('%',@Para,'%')
END
GO
/****** Object:  StoredProcedure [dbo].[Select_Doctor]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_Doctor] 
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, ST.Dob, ST.Qualification, ST.Experience 
		FROM [AppUser] U
		LEFT JOIN [Staff] ST
		ON ST.Id = U.StaffId
		WHERE U.Id = @UserId 

END
GO
/****** Object:  StoredProcedure [dbo].[Select_DogOwner]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_DogOwner]
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, DO.DogName AS DogName, DO.DogType As DogType, DO.DogAge As DogAge, DO.DogDob
		,ISNULL(Vacination,'') As Vacination, ISNULL(HRecord,'') As HRecord 
		FROM [AppUser] U
		LEFT JOIN [DogOwner] DO
		ON DO.Id = U.DogOwnerId
		LEFT JOIN [AppointmentAndRecords] A
		ON A.UserId = U.Id
		WHERE U.Id = @UserId 

END
GO
/****** Object:  StoredProcedure [dbo].[Select_Staff]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_Staff] 
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, ST.Dob, ST.Qualification, ST.Experience 
		FROM [AppUser] U
		LEFT JOIN [Staff] ST
		ON ST.Id = U.StaffId
		WHERE U.Id = @UserId 

END
GO
/****** Object:  StoredProcedure [dbo].[Update_Dnt]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Dnt]
	-- Add the parameters for the stored procedure here
	@Id				INT,
	@Url			VARCHAR(150) = NULL,
	@Title			VARCHAR(100) = NULL,
	@Description	VARCHAR(400) = NULL,
	@Type			INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	UPDATE Dnt SET [Url] = @Url, [Title] = @Title, [Description] = @Description, Type= @Type WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DntType]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[Update_DntType]
	-- Add the parameters for the stored procedure here
	@Id				INT,
	@Description	VARCHAR(100) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	UPDATE DntType SET [Description] = @Description WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DoctorInfo]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_DoctorInfo] 
	-- Add the parameters for the stored procedure here
	@UserId			INT = 0,
	@Experience		VARCHAR(220) = NULL,
	@Qualification	VARCHAR(220) = NULL
AS
BEGIN

		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		DECLARE @StaffId INT;
		SET NOCOUNT ON;

		SET @StaffId = (SELECT StaffId FROM AppUser WHERE Id = @UserId)

		UPDATE Staff
		SET Experience = @Experience,
			Qualification = @Qualification
		WHERE Id = @StaffId
END
GO
/****** Object:  StoredProcedure [dbo].[Update_DogInfo]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_DogInfo] 
	-- Add the parameters for the stored procedure here
	@UserId			INT = 0,
	@DogName		VARCHAR(20) = NULL,
	@Vacination		VARCHAR(220) = NULL,
	@HRecord		VARCHAR(220) = NULL
AS
BEGIN

	IF @UserId > 0
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		DECLARE @OwnerId INT;
		SET NOCOUNT ON;

		SET @OwnerId = (SELECT DogOwnerId FROM AppUser WHERE Id = @UserId)

		UPDATE DogOwner
		SET DogName = @DogName
		WHERE Id = @OwnerId

		-- Insert statements for procedure here
		IF 0 < (SELECT 1 FROM AppointmentAndRecords WHERE UserId = @UserId)
		BEGIN
			UPDATE AppointmentAndRecords 
			SET Vacination = @Vacination ,
				HRecord = @HRecord
			WHERE UserId = @UserId
			SELECT 1 AS Status
		END
		ELSE
		BEGIN
			INSERT INTO [dbo].[AppointmentAndRecords]
			   ([UserId]
			   ,[Vacination]
			   ,[HRecord])
			VALUES
			   (@UserId
			   ,@Vacination
			   ,@HRecord)
			SELECT 1 AS Status
		END
	END
	ELSE
	BEGIN
		RAISERROR ('Invalid User.', -- Error Message
			   16, -- Severity.
			   1 -- State.
			   );
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Update_PassAdmin]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_PassAdmin]
	-- Add the parameters for the stored procedure here
	@UserId			INT = 0,
	@NewPass		VARCHAR(100) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	IF EXISTS(SELECT 1 FROM AppUser WHERE Id = @UserId)
	BEGIN
		UPDATE AppUser SET PassWord = @NewPass WHERE Id = @UserId
	END
	ELSE
	BEGIN
		RAISERROR ('User does not exsist.', -- Error Message
			   16, -- Severity.
			   1 -- State.
			   );
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Update_Password]    Script Date: 03/09/2019 07:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Password]
	-- Add the parameters for the stored procedure here
	@UserId			INT = 0, 
	@OldPass		VARCHAR(100) = NULL,
	@NewPass		VARCHAR(100) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	IF EXISTS(SELECT 1 FROM AppUser WHERE Id = @UserId AND RTRIM(LTRIM([PassWord])) = RTRIM(LTRIM(@OldPass)))
	BEGIN
		UPDATE AppUser SET PassWord = RTRIM(LTRIM(@NewPass)) WHERE Id = @UserId
	END
	ELSE
	BEGIN
		RAISERROR ('Please enter your current password correctly.', -- Error Message
			   16, -- Severity.
			   1 -- State.
			   );
	END
END
GO

