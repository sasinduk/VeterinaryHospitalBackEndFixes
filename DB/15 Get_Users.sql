USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Get_Users]    Script Date: 15/08/2019 08:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_Users] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT U.Id, U.FirstName, U.LastName, U.RegNo, U.UserType, U.Sex, U.ContactNo, U.Email, U.Address, UT.[Description] AS Type 
		FROM [AppUser] U
		LEFT JOIN UserType UT ON UT.Id = U.UserType
END
