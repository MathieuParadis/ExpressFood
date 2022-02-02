CREATE TABLE [dbo].[Items] (
    [ItemId]      INT            NOT NULL,
    [Name]        NVARCHAR (150) NOT NULL,
    [Description] NTEXT          NOT NULL,
    [Price]       INT            NOT NULL,
    [ImageURL]    NTEXT          NULL,
    [Item_typeId] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC),
    CONSTRAINT [fk_item_type] FOREIGN KEY ([Item_typeId]) REFERENCES [dbo].[Item_types] ([Item_typeId])
);


GO

