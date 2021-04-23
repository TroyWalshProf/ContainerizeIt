

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_getMeansAndAverages]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT r.ResponseTimeKey, r.MethodName, r.ResponseTest,AVG(t.Duration) as Average, STDEV(t.Duration) as Deviation FROM ResponseTimeTests as r
	JOIN ResponseTimeResults as t on (t.ResponseTimeKey = r.ResponseTimeKey)
	group by r.ResponseTimeKey, r.MethodName, r.ResponseTest
END


