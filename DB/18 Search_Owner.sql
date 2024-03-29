USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Search_Owner]    Script Date: 31/08/2019 08:40:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Search_Owner] 
	-- Add the parameters for the stored procedure here
	@Para					VARCHAR(200) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		SELECT TOP 1 U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, DO.DogName AS DogName, DO.DogType As DogType, DO.DogAge As DogAge, DO.DogDob
		,ISNULL(Vacination,'') As Vacination, ISNULL(HRecord,'') As HRecord 
		FROM [AppUser] U
		LEFT JOIN [DogOwner] DO
		ON DO.Id = U.DogOwnerId
		LEFT JOIN [AppointmentAndRecords] A
		ON A.UserId = U.Id
		WHERE U.RegNo LIKE CONCAT('%',@Para,'%')
END
