CREATE TABLE [dbo].[ResponseTimeTests] (
    [ResponseTimeKey] INT            IDENTITY (1, 1) NOT NULL,
    [MethodName]      NVARCHAR (250) NULL,
    [ResponseTest]    NVARCHAR (250) NULL,
    CONSTRAINT [PK_ResponseTimeTests] PRIMARY KEY CLUSTERED ([ResponseTimeKey] ASC),
    CONSTRAINT [UQ_PERFTEST] UNIQUE NONCLUSTERED ([MethodName] ASC, [ResponseTest] ASC)
);

