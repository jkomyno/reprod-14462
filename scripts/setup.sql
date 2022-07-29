DROP TABLE IF EXISTS [dbo].[Category];
CREATE TABLE [dbo].[Category] (
    [id] int IDENTITY PRIMARY KEY CLUSTERED,
    [name] nvarchar(200) NOT NULL,
    [created_at] datetime2(7) NOT NULL
);
CREATE INDEX idx_Category_created_at ON [dbo].[Category]([created_at]);

DROP TABLE IF EXISTS [dbo].[Product];
CREATE TABLE [dbo].[Product] (
    [id] int IDENTITY PRIMARY KEY CLUSTERED,
    [name] nvarchar(200) NOT NULL,
    [created_at] datetime2(7) NOT NULL
);
CREATE INDEX idx_Product_created_at ON [dbo].[Product]([created_at]);

DROP TABLE IF EXISTS [dbo].[Product_Category_Mapping];
CREATE TABLE [dbo].[Product_Category_Mapping] (
    [id] int IDENTITY PRIMARY KEY CLUSTERED,
    [category_id] int NOT NULL,
    [product_id] int NOT NULL,
    [created_at] datetime2(7) NOT NULL
);
CREATE INDEX idx_Product_Category_Mapping_created_at ON [dbo].[Product_Category_Mapping]([created_at]);
