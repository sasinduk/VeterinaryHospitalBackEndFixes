USE [VeteDB]
GO
/****** Object:  StoredProcedure [dbo].[Select_DogOwner]    Script Date: 07/07/2019 10:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Select_DogOwner]
	-- Add the parameters for the stored procedure here
	@UserId    INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @UserId > 0
	BEGIN
		SELECT U.Id, U.FirstName, U.LastName, U.Sex, U.ContactNo, U.Email, U.Address, DO.DogName AS DogName, DO.DogType As DogType, DO.DogAge As DogAge, DO.DogDob 
		FROM [AppUser] U
		LEFT JOIN [DogOwner] DO
		ON DO.Id = U.DogOwnerId
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
