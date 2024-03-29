USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Get_Dnts]    Script Date: 02/09/2019 06:40:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Get_Dnts] 
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
