USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Update_DogInfo]    Script Date: 01/09/2019 10:48:59 AM ******/
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
