USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Select_Doctor]    Script Date: 31/08/2019 08:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Select_Doctor] 
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, ST.Dob, ST.Qualification, ST.Experience 
		FROM [AppUser] U
		LEFT JOIN [Staff] ST
		ON ST.Id = U.StaffId
		WHERE U.Id = @UserId 

END
