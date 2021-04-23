
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_addResult]
	-- Add the parameters for the stored procedure here
@MethodName	nvarchar(250)
,@ResponseTest	nvarchar(MAX)
,@StartTime	datetime2(7)
,@Duration	decimal(18, 7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Declare @id int 
	Set @id=(SELECT ResponseTimeKey from ResponseTimeTests where MethodName = @MethodName and ResponseTest = @ResponseTest)

	IF(@id IS NULL OR @id = '')
	BEGIN
		    INSERT INTO ResponseTimeTests(MethodName,ResponseTest)  VALUES (@MethodName,@ResponseTest) 
			Set @id=(SELECT ResponseTimeKey from ResponseTimeTests where MethodName = @MethodName and ResponseTest = @ResponseTest)
	END


    -- Insert statements for procedure here
	INSERT INTO ResponseTimeResults(ResponseTimeKey, StartTime, Duration)  VALUES (@id,@StartTime,@Duration) 
END

