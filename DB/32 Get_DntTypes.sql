USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Get_Dnts]    Script Date: 01/09/2019 08:43:13 PM ******/
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
