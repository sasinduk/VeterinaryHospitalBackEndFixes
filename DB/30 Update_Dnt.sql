USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Update_Dnt]    Script Date: 02/09/2019 06:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Update_Dnt]
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
