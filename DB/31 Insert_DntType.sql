USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Dnt]    Script Date: 01/09/2019 08:41:07 PM ******/
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
	@Description	VARCHAR(100) = NULL
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
