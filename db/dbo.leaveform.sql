CREATE TABLE [dbo].[leaveform] (
    [LId]              INT           IDENTITY (1, 1) NOT NULL,
    [Id]               INT           NOT NULL,
    [course]           NCHAR (15)    NOT NULL,
    [div]              NCHAR (10)    NULL,
    [trimester]        INT           NOT NULL,
    [dateofsubmission] NVARCHAR (25) NOT NULL,
    [fromdate]         NVARCHAR (24) NOT NULL,
    [todate]           NVARCHAR (25) NOT NULL,
    [numofdays]        INT           NOT NULL,
    [leavetype]        NCHAR (25)    NOT NULL,
    [reason]           NVARCHAR (50) NULL,
    [leaveresult]      NCHAR (20)    NULL,
    PRIMARY KEY CLUSTERED ([LId] ASC),
    FOREIGN KEY ([Id]) REFERENCES [dbo].[studentdata] ([Id])
);

