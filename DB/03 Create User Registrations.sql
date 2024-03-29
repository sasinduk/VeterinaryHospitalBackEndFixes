USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Insert_AppUser]    Script Date: 07/07/2019 10:32:41 PM ******/
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
		@DogDob			VARCHAR(50),
		@Qualification	VARCHAR(255) = NULL,
		@Experience		VARCHAR(255) = NULL,
		@Dob			VARCHAR(50) = NULL

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
