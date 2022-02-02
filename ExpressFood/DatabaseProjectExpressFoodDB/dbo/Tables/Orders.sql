CREATE TABLE [dbo].[Orders] (
    [OrderId]           INT            NOT NULL,
    [ClientId]          INT            NOT NULL,
    [Delivery_personId] INT            NOT NULL,
    [Payment_status]    NVARCHAR (100) NOT NULL,
    [Order_status]      NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [IsUserClient] CHECK ([dbo].[CheckClient]([ClientId])='True'),
    CONSTRAINT [IsUserDeliveryPerson] CHECK ([dbo].[CheckDeliveryPerson]([Delivery_personId])='True'),
    CONSTRAINT [fk_client] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[User_roles] ([User_roleId]),
    CONSTRAINT [fk_delivery_person] FOREIGN KEY ([Delivery_personId]) REFERENCES [dbo].[User_roles] ([User_roleId])
);


GO

