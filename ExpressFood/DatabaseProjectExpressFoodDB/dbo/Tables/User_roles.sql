CREATE TABLE [dbo].[User_roles] (
    [User_roleId] INT NOT NULL,
    [UserId]      INT NOT NULL,
    [RoleId]      INT NOT NULL,
    PRIMARY KEY CLUSTERED ([User_roleId] ASC),
    CONSTRAINT [fk_role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([RoleId]),
    CONSTRAINT [fk_user] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);


GO

