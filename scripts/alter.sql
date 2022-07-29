ALTER TABLE [dbo].[Product_Category_Mapping]
  ADD CONSTRAINT FK_category
      FOREIGN KEY (category_id) REFERENCES [dbo].[Category]([id]);

ALTER TABLE [dbo].[Product_Category_Mapping]
  ADD CONSTRAINT FK_product
      FOREIGN KEY (product_id) REFERENCES [dbo].[Product]([id]);
