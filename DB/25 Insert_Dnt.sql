USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Dnt]    Script Date: 02/09/2019 06:32:48 AM ******/
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
