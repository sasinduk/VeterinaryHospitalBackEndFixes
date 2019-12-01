-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Insert_VaccineSchedule
	-- Add the parameters for the stored procedure here
		@OwnerId		INT = 0,
		@Description	VARCHAR(200) = '',
		@UserId			INT = 0
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[VaccineSchedule]
           ([Description]
           ,[OwnerId]
		   ,[IsEnded]
           ,[CreatedUserId]
           ,[LastUpdatedUserId])
     VALUES
           (@Description
           ,@OwnerId
		   ,0
           ,@UserId
           ,@UserId)

END
GO
