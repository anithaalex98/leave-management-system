CREATE TABLE [dbo].[studentdata] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [name]     NVARCHAR (50) NOT NULL,
    [rollno]   INT           NOT NULL,
    [course]   NCHAR (10)    NOT NULL,
    [email]    VARCHAR (50)  NOT NULL,
    [password] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([email] ASC),
    UNIQUE NONCLUSTERED ([email] ASC)
);

