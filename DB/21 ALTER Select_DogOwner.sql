USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Select_DogOwner]    Script Date: 01/09/2019 10:59:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Select_DogOwner]
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, DO.DogName AS DogName, DO.DogType As DogType, DO.DogAge As DogAge, DO.DogDob
		,ISNULL(Vacination,'') As Vacination, ISNULL(HRecord,'') As HRecord 
		FROM [AppUser] U
		LEFT JOIN [DogOwner] DO
		ON DO.Id = U.DogOwnerId
		LEFT JOIN [AppointmentAndRecords] A
		ON A.UserId = U.Id
		WHERE U.Id = @UserId 

END
