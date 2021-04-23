CREATE TABLE [dbo].[ResponseTimeResults] (
    [ResultKey]       INT             IDENTITY (1, 1) NOT NULL,
    [ResponseTimeKey] INT             NOT NULL,
    [StartTime]       DATETIME2 (7)   NOT NULL,
    [Duration]        DECIMAL (18, 7) NOT NULL,
    CONSTRAINT [PK_ResponseTimeResults] PRIMARY KEY CLUSTERED ([ResultKey] ASC),
    CONSTRAINT [UQ_RESULT] UNIQUE NONCLUSTERED ([ResponseTimeKey] ASC, [StartTime] ASC, [Duration] ASC)
);

