USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Search_User] 'DO6'   Script Date: 18/08/2019 05:10:35 PM ******/
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