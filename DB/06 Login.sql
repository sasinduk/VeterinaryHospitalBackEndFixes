USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Get_Login]    Script Date: 07/07/2019 10:33:29 PM ******/
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
		RAISERROR ('Login Failed.', -- Error Message
               16, -- Severity.
               1 -- State.
               );
	END
END
