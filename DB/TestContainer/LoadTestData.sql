USE [MagenicAutomation]

DECLARE @StartTime datetime2(7)
set @StartTime = SYSUTCDATETIME()
EXECUTE [dbo].[sp_addResult] 'TestMethod' ,'First' , @StartTime, 1.1 

set @StartTime = dateadd(minute, -4, SYSUTCDATETIME())
EXECUTE [dbo].[sp_addResult] 'TestMethod' ,'First' , @StartTime, 1.1 

set @StartTime = dateadd(minute, -3, SYSUTCDATETIME()) 
EXECUTE [dbo].[sp_addResult] 'TestMethod' ,'First' , @StartTime, 1.11 

set @StartTime = dateadd(minute, -2, SYSUTCDATETIME())
EXECUTE [dbo].[sp_addResult] 'TestMethod' ,'Second' , @StartTime, 1.12 

set @StartTime = dateadd(minute, -1, SYSUTCDATETIME())
EXECUTE [dbo].[sp_addResult] 'TestMethod' ,'First' , @StartTime, 1.13 

set @StartTime = SYSUTCDATETIME()
EXECUTE [dbo].[sp_addResult] 'TestMethod2' ,'Third' , @StartTime, 1.14 ;
GO