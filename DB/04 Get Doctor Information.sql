USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Select_Doctor]    Script Date: 07/07/2019 10:32:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_Doctor] 
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @UserId > 0
	BEGIN
		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, ST.Dob, ST.Qualification, ST.Experience 
		FROM [AppUser] U
		LEFT JOIN [Staff] ST
		ON ST.Id = U.StaffId
		WHERE U.Id = @UserId 
	END
	ELSE
	BEGIN
		RAISERROR ('Invalid User.', -- Error Message
               16, -- Severity.
               1 -- State.
               );
	END

END
