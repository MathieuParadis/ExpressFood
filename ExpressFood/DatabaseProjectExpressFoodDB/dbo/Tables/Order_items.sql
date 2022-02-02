CREATE TABLE [dbo].[Order_items] (
    [Order_itemId]     INT NOT NULL,
    [OrderId]          INT NOT NULL,
    [Scheduled_itemId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Order_itemId] ASC),
    CONSTRAINT [fk_order] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]),
    CONSTRAINT [fk_scheduled_item] FOREIGN KEY ([Scheduled_itemId]) REFERENCES [dbo].[Scheduled_items] ([Scheduled_itemId])
);


GO

