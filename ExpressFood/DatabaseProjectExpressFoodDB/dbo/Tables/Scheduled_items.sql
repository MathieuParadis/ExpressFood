CREATE TABLE [dbo].[Scheduled_items] (
    [Scheduled_itemId] INT  NOT NULL,
    [ItemId]           INT  NOT NULL,
    [Date]             DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([Scheduled_itemId] ASC),
    CONSTRAINT [fk_item] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Items] ([ItemId])
);


GO

