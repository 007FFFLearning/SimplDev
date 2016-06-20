﻿DELETE FROM [dbo].[Core_UrlSlug]
GO
DELETE FROM [dbo].[Orders_CartItem]
GO
DELETE FROM [dbo].[Orders_OrderItem]
GO
DELETE FROM [dbo].[Orders_Order]
GO
DELETE FROM [dbo].[Core_ProductOptionCombination]
GO
DELETE FROM [dbo].[Core_ProductOptionValue]
GO
DELETE FROM [dbo].[Core_ProductAttribute]
GO
DELETE FROM [dbo].[Core_ProductAttributeGroup]
GO
DELETE FROM [dbo].[Core_ProductMedia]
GO
DELETE FROM [dbo].[Core_ProductCategory]
GO
DELETE FROM [dbo].[Core_ProductLink]
GO
DELETE FROM [dbo].[Core_Product]
GO
DELETE FROM [dbo].[Core_Media]
GO
DELETE FROM [dbo].[Core_Category]
GO
DELETE FROM [dbo].[Core_Brand]
GO
DELETE FROM [dbo].[Core_ProductTemplateProductAttribute]
GO
DELETE FROM [dbo].[Core_ProductTemplate]
GO
DELETE FROM [dbo].[Cms_Page]
GO

SET IDENTITY_INSERT [dbo].[Core_Category] ON 
INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (1, N'Phones', N'mobile-tablets', NULL, 0, 1, 0, NULL, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (2, N'Smart Phones', N'smart-phones', NULL, 0, 1, 0, 1, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (3, N'Basic Phones', N'basic-phones', NULL, 0, 1, 0, 1, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (4, N'Tablets', N'tablets', NULL, 0, 1, 0, NULL, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (5, N'Wifi + Cellular tablets', N'wifi-cellular-tablets', NULL, 0, 1, 0, 4, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (6, N'Cellular tablets', N'cellular-tablets', NULL, 0, 1, 0, 4, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (7, N'Computers', N'desktops', NULL, 0, 1, 0, NULL, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (8, N'Gaming', N'gaming', NULL, 0, 1, 0, 7, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (9, N'Business', N'business', NULL, 0, 1, 0, 7, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (10, N'Accessories', N'accessories', NULL, 0, 1, 0, NULL, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (11, N'Headphones', N'headphones', NULL, 0, 1, 0, 10, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (12, N'Cables', N'cables', NULL, 0, 1, 0, 10, NULL)

INSERT [dbo].[Core_Category] ([Id], [Name], [SeoTitle], [Description], [DisplayOrder], [IsPublished], [IsDeleted], [ParentId], [Image]) VALUES (13, N'USB Drives', N'usb-drives', NULL, 0, 1, 0, 10, NULL)

SET IDENTITY_INSERT [dbo].[Core_Category] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_Brand] ON 
INSERT [dbo].[Core_Brand] ([Id], [Name], [SeoTitle], [Description], [IsPublished], [IsDeleted]) VALUES (1, N'Apple', N'apple', NULL, 1, 0)
INSERT [dbo].[Core_Brand] ([Id], [Name], [SeoTitle], [Description], [IsPublished], [IsDeleted]) VALUES (2, N'Samsung', N'samsung', NULL, 1, 0)
INSERT [dbo].[Core_Brand] ([Id], [Name], [SeoTitle], [Description], [IsPublished], [IsDeleted]) VALUES (3, N'Dell', N'dell', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Core_Brand] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductAttributeGroup] ON 
INSERT [dbo].[Core_ProductAttributeGroup] ([Id], [Name]) VALUES (1, N'General')
INSERT [dbo].[Core_ProductAttributeGroup] ([Id], [Name]) VALUES (2, N'Screen')
INSERT [dbo].[Core_ProductAttributeGroup] ([Id], [Name]) VALUES (3, N'Connectivity')
INSERT [dbo].[Core_ProductAttributeGroup] ([Id], [Name]) VALUES (4, N'Camera')
SET IDENTITY_INSERT [dbo].[Core_ProductAttributeGroup] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductAttribute] ON 
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (1, N'CPU', 1)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (2, N'OS', 1)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (3, N'GPU', 1)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (4, N'RAM', 1)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (5, N'Capacity', 1)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (6, N'Size', 2)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (7, N'Type', 2)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (8, N'Resolution', 2)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (9, N'2G', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (10, N'3G', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (11, N'4G', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (12, N'Wifi', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (13, N'Bluetooth', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (14, N'NFC', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (15, N'USP', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (16, N'GPS', 3)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (17, N'Main camera', 4)
INSERT [dbo].[Core_ProductAttribute] ([Id], [Name], [GroupId]) VALUES (18, N'Sub camera', 4)
SET IDENTITY_INSERT [dbo].[Core_ProductAttribute] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductTemplate] ON 
INSERT [dbo].[Core_ProductTemplate] ([Id], [Name]) VALUES (1, N'Tablet')
INSERT [dbo].[Core_ProductTemplate] ([Id], [Name]) VALUES (2, N'Phone')
SET IDENTITY_INSERT [dbo].[Core_ProductTemplate] OFF 
GO

INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (1, 1)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (1, 2)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (1, 3)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (1, 4)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 1)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 2)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 3)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 4)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 5)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 6)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 7)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 8)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 11)
INSERT [dbo].[Core_ProductTemplateProductAttribute] ([ProductTemplateId], [ProductAttributeId]) VALUES (2, 17)
GO

SET IDENTITY_INSERT [dbo].[Core_Media] ON 
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (1, NULL, N'd74fd909-6fe0-4bc3-bf61-86d12dc98a2e.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (2, NULL, N'81b606ea-0bb0-4cea-a9d7-6406175df9bb.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (3, NULL, N'68c7ff8f-014e-46c8-8daa-f35c646cc10a.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (4, NULL, N'89374e88-b14c-4d38-b5cd-eacdc5ce3015.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (5, NULL, N'ffc255b3-07c8-4ee5-94e9-d472c6af3f07.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (6, NULL, N'bb1243c9-63d5-4518-bbd5-cb3e35ade294.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (7, NULL, N'282e5cd3-b664-43dc-ba06-d7e91721c560.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (8, NULL, N'd013921e-5f11-4472-b5ff-7f78d5987a69.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (9, NULL, N'ea0af866-a650-4909-877d-00eabbf3d8fd.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (10, NULL, N'3a3f587c-9c70-4e68-b480-20829a9f3e95.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (11, NULL, N'f9a76a94-6e1a-4489-bf7d-3dc6a68a0785.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (12, NULL, N'a88b4a09-5824-4398-ac08-101d9061f927.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (13, NULL, N'fdfd1daf-ec7a-4c6e-83dd-a862eae735db.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (14, NULL, N'4495b930-a901-44e2-9275-935f7e8ec53c.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (15, NULL, N'284b77c8-2ba8-43e1-826d-7c79c5cf4489.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (16, NULL, N'e32c3caa-f7bc-4a3c-b970-f62c503b85bc.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (17, NULL, N'bffb6f2c-8a3f-4fdd-817d-09a9f18cd190.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (18, NULL, N'25d3da45-b57b-40b6-8f41-2fc5170cb6b7.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (19, NULL, N'7da07700-9a17-498b-ba58-526559343878.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (20, NULL, N'fefe68b9-aee8-4e7d-a49a-17f805555591.jpg', 0, 0)
SET IDENTITY_INSERT [dbo].[Core_Media] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_Product] ON 
INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (1, 1, NULL, CAST(N'2016-06-19 00:15:59.9468401' AS DateTime2), N'<p><img src="/UserContents/9874f0f5-46dc-495d-8c61-2c515577aa05.jpg" style="width: 976px;"></p><p>Suốt thời gian qua, iPad vẫn luôn được đánh giá là dòng sản phẩm máy tính bảng tốt nhất. Với khả năng tối ưu hoàn hảo giữa thiết kế phần cứng và hệ điều hành iOS, iPad luôn đáp ứng mọi tác vụ người dùng một cách trơn tru và mượt mà tuyệt đối. Và, trong khi không còn nhiều tên tuổi mặn mà với dòng sản phẩm tablet cao cấp, Apple lại tiếp tục ra mắt iPad Pro, một siêu phẩm với niềm tin sẽ đưa chuẩn mực của một chiếc máy tính bảng lên tầm cao mới.</p><p><img src="/UserContents/5887a479-bb96-436f-8414-fa188cdc2aac.jpg" style="width: 976px;"></p><p>Hãng “táo cắn dở” trong suốt một thời gian dài vẫn trung thành với màn hình 9.7 inch của iPad thường, 7.9 inch với dòng iPad Mini. Nhưng trên iPad Pro, tiêu chuẩn ấy đã hoàn toàn bị phá vỡ với kích thước lên tới 12.9 inch, độ phân giải “chuẩn” Retina 2732 x 2048 pixel. Kích thước của iPad Pro đã lớn hơn tới 78% so với iPad Air 2 trước đó. Kích thước màn hình này cho ta cảm giác đây giống như một chiếc laptop hơn là tablet. Nhưng, kích thước đó cũng sẽ mang tới nhiều không gian trải nghiệm hơn, nhiều khoảng trống làm việc hơn để dành cho nhiều ý tưởng lớn hơn.<br></p>', 0, 1, 0, 1, 1, NULL, NULL, NULL, N'iPad Pro Wi-Fi 4G 128GB', NULL, CAST(25000000.00 AS Decimal(18, 2)), CAST(21290000.00 AS Decimal(18, 2)), NULL, N'ipad-pro-wi-fi-4g-128gb', N'<p>Bảo hành 12 tháng (hóa đơn)Thiết kế vượt trội với màn hình "ngoại cỡ" 12.9 inchCấu hình mạnh mẽ; hiệu năng nhanh hơn LaptopTương tác thông minh; làm hai việc cùng lúc<br></p>', NULL, NULL, 1, NULL, CAST(N'2016-06-19 00:15:59.9468401' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (2, 1, NULL, CAST(N'2016-06-19 00:15:59.9798387' AS DateTime2), N'<p><img src="/UserContents/9874f0f5-46dc-495d-8c61-2c515577aa05.jpg" style="width: 976px;"></p><p>Suốt thời gian qua, iPad vẫn luôn được đánh giá là dòng sản phẩm máy tính bảng tốt nhất. Với khả năng tối ưu hoàn hảo giữa thiết kế phần cứng và hệ điều hành iOS, iPad luôn đáp ứng mọi tác vụ người dùng một cách trơn tru và mượt mà tuyệt đối. Và, trong khi không còn nhiều tên tuổi mặn mà với dòng sản phẩm tablet cao cấp, Apple lại tiếp tục ra mắt iPad Pro, một siêu phẩm với niềm tin sẽ đưa chuẩn mực của một chiếc máy tính bảng lên tầm cao mới.</p><p><img src="/UserContents/5887a479-bb96-436f-8414-fa188cdc2aac.jpg" style="width: 976px;"></p><p>Hãng “táo cắn dở” trong suốt một thời gian dài vẫn trung thành với màn hình 9.7 inch của iPad thường, 7.9 inch với dòng iPad Mini. Nhưng trên iPad Pro, tiêu chuẩn ấy đã hoàn toàn bị phá vỡ với kích thước lên tới 12.9 inch, độ phân giải “chuẩn” Retina 2732 x 2048 pixel. Kích thước của iPad Pro đã lớn hơn tới 78% so với iPad Air 2 trước đó. Kích thước màn hình này cho ta cảm giác đây giống như một chiếc laptop hơn là tablet. Nhưng, kích thước đó cũng sẽ mang tới nhiều không gian trải nghiệm hơn, nhiều khoảng trống làm việc hơn để dành cho nhiều ý tưởng lớn hơn.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPad Pro Wi-Fi 4G 128GB Gray', N'Gray', CAST(25000000.00 AS Decimal(18, 2)), CAST(20290000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:15:59.9798387' AS DateTime2), N'ipad-pro-wi-fi-4g-128gb-gray', N'<p>Bảo hành 12 tháng (hóa đơn)Thiết kế vượt trội với màn hình "ngoại cỡ" 12.9 inchCấu hình mạnh mẽ; hiệu năng nhanh hơn LaptopTương tác thông minh; làm hai việc cùng lúc<br></p>', NULL, NULL, 1, NULL, CAST(N'2016-06-19 00:15:59.9798387' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (3, 1, NULL, CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2), N'<p><img src="/UserContents/9874f0f5-46dc-495d-8c61-2c515577aa05.jpg" style="width: 976px;"></p><p>Suốt thời gian qua, iPad vẫn luôn được đánh giá là dòng sản phẩm máy tính bảng tốt nhất. Với khả năng tối ưu hoàn hảo giữa thiết kế phần cứng và hệ điều hành iOS, iPad luôn đáp ứng mọi tác vụ người dùng một cách trơn tru và mượt mà tuyệt đối. Và, trong khi không còn nhiều tên tuổi mặn mà với dòng sản phẩm tablet cao cấp, Apple lại tiếp tục ra mắt iPad Pro, một siêu phẩm với niềm tin sẽ đưa chuẩn mực của một chiếc máy tính bảng lên tầm cao mới.</p><p><img src="/UserContents/5887a479-bb96-436f-8414-fa188cdc2aac.jpg" style="width: 976px;"></p><p>Hãng “táo cắn dở” trong suốt một thời gian dài vẫn trung thành với màn hình 9.7 inch của iPad thường, 7.9 inch với dòng iPad Mini. Nhưng trên iPad Pro, tiêu chuẩn ấy đã hoàn toàn bị phá vỡ với kích thước lên tới 12.9 inch, độ phân giải “chuẩn” Retina 2732 x 2048 pixel. Kích thước của iPad Pro đã lớn hơn tới 78% so với iPad Air 2 trước đó. Kích thước màn hình này cho ta cảm giác đây giống như một chiếc laptop hơn là tablet. Nhưng, kích thước đó cũng sẽ mang tới nhiều không gian trải nghiệm hơn, nhiều khoảng trống làm việc hơn để dành cho nhiều ý tưởng lớn hơn.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPad Pro Wi-Fi 4G 128GB Silver', N'Silver', CAST(25000000.00 AS Decimal(18, 2)), CAST(21290000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2), N'ipad-pro-wi-fi-4g-128gb-silver', N'<p>Bảo hành 12 tháng (hóa đơn)Thiết kế vượt trội với màn hình "ngoại cỡ" 12.9 inchCấu hình mạnh mẽ; hiệu năng nhanh hơn LaptopTương tác thông minh; làm hai việc cùng lúc<br></p>', NULL, NULL, 1, NULL, CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (4, 1, NULL, CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2), N'<p><img src="/UserContents/9874f0f5-46dc-495d-8c61-2c515577aa05.jpg" style="width: 976px;"></p><p>Suốt thời gian qua, iPad vẫn luôn được đánh giá là dòng sản phẩm máy tính bảng tốt nhất. Với khả năng tối ưu hoàn hảo giữa thiết kế phần cứng và hệ điều hành iOS, iPad luôn đáp ứng mọi tác vụ người dùng một cách trơn tru và mượt mà tuyệt đối. Và, trong khi không còn nhiều tên tuổi mặn mà với dòng sản phẩm tablet cao cấp, Apple lại tiếp tục ra mắt iPad Pro, một siêu phẩm với niềm tin sẽ đưa chuẩn mực của một chiếc máy tính bảng lên tầm cao mới.</p><p><img src="/UserContents/5887a479-bb96-436f-8414-fa188cdc2aac.jpg" style="width: 976px;"></p><p>Hãng “táo cắn dở” trong suốt một thời gian dài vẫn trung thành với màn hình 9.7 inch của iPad thường, 7.9 inch với dòng iPad Mini. Nhưng trên iPad Pro, tiêu chuẩn ấy đã hoàn toàn bị phá vỡ với kích thước lên tới 12.9 inch, độ phân giải “chuẩn” Retina 2732 x 2048 pixel. Kích thước của iPad Pro đã lớn hơn tới 78% so với iPad Air 2 trước đó. Kích thước màn hình này cho ta cảm giác đây giống như một chiếc laptop hơn là tablet. Nhưng, kích thước đó cũng sẽ mang tới nhiều không gian trải nghiệm hơn, nhiều khoảng trống làm việc hơn để dành cho nhiều ý tưởng lớn hơn.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPad Pro Wi-Fi 4G 128GB Gold', N'Gold', CAST(25000000.00 AS Decimal(18, 2)), CAST(22290000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2), N'ipad-pro-wi-fi-4g-128gb-gold', N'<p>Bảo hành 12 tháng (hóa đơn)Thiết kế vượt trội với màn hình "ngoại cỡ" 12.9 inchCấu hình mạnh mẽ; hiệu năng nhanh hơn LaptopTương tác thông minh; làm hai việc cùng lúc<br></p>', NULL, NULL, 1, NULL, CAST(N'2016-06-19 00:15:59.9818408' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (5, 2, NULL, CAST(N'2016-06-19 00:19:55.8562434' AS DateTime2), N'<p>Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.<br></p>', 0, 1, 0, 1, 1, NULL, NULL, NULL, N'Samsung Galaxy A5', NULL, CAST(9999000.00 AS Decimal(18, 2)), CAST(8999000.00 AS Decimal(18, 2)), NULL, N'samsung-galaxy-a5', N'<p>Màn hình: FullHD, 5.2 inchesHĐH: Android 5.1 LollipopCPU: 8 nhân 1.6GHz, RAM 2GBCamera: 13.0MP, 2 SIMDung lượng pin: 2900 mAh<br></p>', NULL, NULL, 5, NULL, CAST(N'2016-06-19 00:19:55.8562434' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (6, 2, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'<p>Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'Samsung Galaxy A5 Pink', N'Pink', CAST(9999000.00 AS Decimal(18, 2)), CAST(8999000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'samsung-galaxy-a5-pink', N'<p>Màn hình: FullHD, 5.2 inchesHĐH: Android 5.1 LollipopCPU: 8 nhân 1.6GHz, RAM 2GBCamera: 13.0MP, 2 SIMDung lượng pin: 2900 mAh<br></p>', NULL, NULL, 5, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (7, 2, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'<p>Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'Samsung Galaxy A5 Black', N'Black', CAST(9999000.00 AS Decimal(18, 2)), CAST(7999000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'samsung-galaxy-a5-black', N'<p>Màn hình: FullHD, 5.2 inchesHĐH: Android 5.1 LollipopCPU: 8 nhân 1.6GHz, RAM 2GBCamera: 13.0MP, 2 SIMDung lượng pin: 2900 mAh<br></p>', NULL, NULL, 5, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (8, 2, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'<p>Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.Tiếp nối thành công của dòng điện thoại A series, ông lớn Samsung tiếp tục ra mắt smartphoneSamsung Galaxy A5 (A510F) với phiên bản 2016 mạnh mẽ và chất lượng hơn so với thiết bị A5 tiền nhiệm. Siêu phẩm này sở hữu thiết kế khung nhôm, vỏ kính cực kỳ tinh tế và sành điệu, đồng thời, máy cũng được nâng cấp về cấu hình, dung lượng pin và màn hình kích thước lớn hơn, đáp ứng nhu cầu sử dụng, làm hài lòng các khách hàng khó tính nhất.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'Samsung Galaxy A5 Gold', N'Gold', CAST(9999000.00 AS Decimal(18, 2)), CAST(9999000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2), N'samsung-galaxy-a5-gold', N'<p>Màn hình: FullHD, 5.2 inchesHĐH: Android 5.1 LollipopCPU: 8 nhân 1.6GHz, RAM 2GBCamera: 13.0MP, 2 SIMDung lượng pin: 2900 mAh<br></p>', NULL, NULL, 5, NULL, CAST(N'2016-06-19 00:19:55.8892432' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (9, 1, NULL, CAST(N'2016-06-19 00:23:42.6582261' AS DateTime2), N'<p>Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.<br></p>', 0, 1, 0, 1, 1, NULL, NULL, NULL, N'iPhone 6s 16GB', NULL, CAST(16880000.00 AS Decimal(18, 2)), CAST(16880000.00 AS Decimal(18, 2)), NULL, N'iphone-6s-16gb', N'<p>Màn hình Retina 3D TouchChip xử lý A9 64-bit tiên tiến; Hệ điều hành iOS 9RAM 2GB; ROM 16GBCamera trước 5MP; Camera sau 12MPQuay phim độ phân giải 4KVỏ nhôm Aluminum 7000 Series chắc chắn<br></p>', NULL, NULL, 10, NULL, CAST(N'2016-06-19 00:23:42.6582261' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (10, 1, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'<p>Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPhone 6s 16GB Gray', N'Gray', CAST(16880000.00 AS Decimal(18, 2)), CAST(15880000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'iphone-6s-16gb-gray', N'<p>Màn hình Retina 3D TouchChip xử lý A9 64-bit tiên tiến; Hệ điều hành iOS 9RAM 2GB; ROM 16GBCamera trước 5MP; Camera sau 12MPQuay phim độ phân giải 4KVỏ nhôm Aluminum 7000 Series chắc chắn<br></p>', NULL, NULL, 10, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (11, 1, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'<p>Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPhone 6s 16GB Pink', N'Pink', CAST(16880000.00 AS Decimal(18, 2)), CAST(16880000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'iphone-6s-16gb-pink', N'<p>Màn hình Retina 3D TouchChip xử lý A9 64-bit tiên tiến; Hệ điều hành iOS 9RAM 2GB; ROM 16GBCamera trước 5MP; Camera sau 12MPQuay phim độ phân giải 4KVỏ nhôm Aluminum 7000 Series chắc chắn<br></p>', NULL, NULL, 10, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (12, 1, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'<p>Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPhone 6s 16GB Gold', N'Gold', CAST(16880000.00 AS Decimal(18, 2)), CAST(19880000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'iphone-6s-16gb-gold', N'<p>Màn hình Retina 3D TouchChip xử lý A9 64-bit tiên tiến; Hệ điều hành iOS 9RAM 2GB; ROM 16GBCamera trước 5MP; Camera sau 12MPQuay phim độ phân giải 4KVỏ nhôm Aluminum 7000 Series chắc chắn<br></p>', NULL, NULL, 10, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (13, 1, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'<p>Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.Với kích thước màn hình không thay đổi so với dòng iPhone 6, 6 Plus trước đó, điểm khác biệt mà Apple đã đưa vào hai sản phẩm mới này của mình nằm ở chất liệu khung máy bền bỉ hơn, công nghệ màn hình cảm ứng 3D Touch tối tân, nâng cấp cụm camera, ứng dụng chỉnh sửa ảnh kết hợp video Live Photos và không thể không nhắc đến việc nâng cấp lên chip xử lý A9 64-bit cho hiệu quả đáng kinh ngạc.<br></p>', 0, 0, 0, 1, 0, NULL, NULL, NULL, N'iPhone 6s 16GB Silver', N'Silver', CAST(16880000.00 AS Decimal(18, 2)), CAST(17880000.00 AS Decimal(18, 2)), CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2), N'iphone-6s-16gb-silver', N'<p>Màn hình Retina 3D TouchChip xử lý A9 64-bit tiên tiến; Hệ điều hành iOS 9RAM 2GB; ROM 16GBCamera trước 5MP; Camera sau 12MPQuay phim độ phân giải 4KVỏ nhôm Aluminum 7000 Series chắc chắn<br></p>', NULL, NULL, 10, NULL, CAST(N'2016-06-19 00:23:42.6962206' AS DateTime2))

INSERT [dbo].[Core_Product] ([Id], [BrandId], [CreatedById], [CreatedOn], [Description], [DisplayOrder], [HasOptions], [IsDeleted], [IsPublished], [IsVisibleIndividually], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [NormalizedName], [OldPrice], [Price], [PublishedOn], [SeoTitle], [ShortDescription], [Sku], [Specification], [ThumbnailImageId], [UpdatedById], [UpdatedOn]) VALUES (14, 3, NULL, CAST(N'2016-06-19 00:30:45.8467606' AS DateTime2), N'<p>Dòng XPS là dòng laptop cao cấp được quan tâm nhiều nhất của Dell. Không chỉ bởi cấu hình khủng mà còn bởi mức giá ngất ngưởng của nó. XPS là dòng sản phẩm thiết kế từ những thành phần công nghệ cao cấp. Các bạn hãy cùng Prolap đánh giá chiếc Dell XPS 15 9550 này nhé. Đây là một phiên bản lớn hơn của chiếc XPS 13, với chip đồ họa và CPU High – Power cho phép bạn chơi các tựa game mới nhất với chất lượng đồ họa tuyệt hảo. &nbsp;DELL XPS 15 &nbsp;9550 cũng giữ lại tính linh động của mình. Nó không chỉ là một chiếc laptop để bạn có thế mang đi cà phê sau giờ làm. Nó còn là một chiếc máy tính gia đình mạnh mẽ, có khả năng đảm đương những tác vụ nặng trong công việc.<br></p>', 0, 0, 0, 1, 1, NULL, NULL, NULL, N'Dell XPS 15 9550', NULL, CAST(34990000.00 AS Decimal(18, 2)), CAST(34990000.00 AS Decimal(18, 2)), NULL, N'dell-xps-15-9550', N'<p>CPU: 6th Gen Intel® Core™ i7 (Skylake) 6700HQ (Quad-Core, up to 3.2GHz)</p><p>RAM: 8GB DDR4 2133MHz</p><p>Màn hình: 15.6 inch</p><p>Card đồ họa: 2GB NVIDIA® GeForce® GTX 960M GDDR5</p><p>Windows 10 bản quyền</p>', NULL, NULL, 16, NULL, CAST(N'2016-06-19 00:30:45.8467606' AS DateTime2))

SET IDENTITY_INSERT [dbo].[Core_Product] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductMedia] ON 
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (1, 0, 2, 1)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (2, 0, 4, 1)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (3, 0, 3, 1)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (4, 0, 9, 5)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (5, 0, 8, 5)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (6, 0, 7, 5)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (7, 0, 6, 5)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (8, 0, 14, 9)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (9, 0, 11, 9)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (10, 0, 12, 9)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (11, 0, 13, 9)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (12, 0, 15, 9)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (13, 0, 17, 14)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (14, 0, 18, 14)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (15, 0, 19, 14)
INSERT [dbo].[Core_ProductMedia] ([Id], [DisplayOrder], [MediaId], [ProductId]) VALUES (16, 0, 20, 14)
SET IDENTITY_INSERT [dbo].[Core_ProductMedia] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductAttributeValue] ON 
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (1, 1, 1, N'A9')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (2, 4, 3, N'4GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (3, 5, 3, N'128 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (4, 8, 3, N'2732 x 2048 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (5, 8, 2, N'2732 x 2048 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (6, 5, 2, N'128 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (7, 4, 2, N'4GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (8, 2, 2, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (9, 1, 2, N'A9')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (10, 2, 3, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (11, 1, 4, N'A9')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (12, 1, 3, N'A9')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (13, 4, 4, N'4GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (14, 5, 4, N'128 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (15, 8, 4, N'2732 x 2048 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (16, 8, 1, N'2732 x 2048 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (17, 5, 1, N'128 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (18, 4, 1, N'4GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (19, 2, 1, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (20, 2, 4, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (21, 1, 5, N'Octa-core 1.6 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (22, 1, 6, N'Octa-core 1.6 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (23, 2, 6, N'Android')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (24, 4, 6, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (25, 5, 6, N'32 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (26, 6, 6, N'144.8 x 71 x 7.3 mm')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (27, 8, 6, N'1080 x 1920 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (28, 5, 7, N'32 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (29, 11, 6, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (30, 17, 7, N'8 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (31, 11, 7, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (32, 8, 7, N'1080 x 1920 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (33, 1, 7, N'Octa-core 1.6 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (34, 2, 7, N'Android')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (35, 4, 7, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (36, 17, 6, N'8 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (37, 1, 8, N'Octa-core 1.6 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (38, 6, 7, N'144.8 x 71 x 7.3 mm')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (39, 4, 8, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (40, 5, 8, N'32 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (41, 6, 8, N'144.8 x 71 x 7.3 mm')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (42, 8, 8, N'1080 x 1920 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (43, 11, 8, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (44, 17, 8, N'8 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (45, 2, 5, N'Android')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (46, 4, 5, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (47, 17, 5, N'8 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (48, 2, 8, N'Android')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (49, 5, 5, N'32 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (50, 11, 5, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (51, 8, 5, N'1080 x 1920 pixels')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (52, 6, 5, N'144.8 x 71 x 7.3 mm')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (53, 1, 9, N'Apple A9, Dual-core 1.84 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (54, 17, 10, N'12 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (55, 1, 11, N'Apple A9, Dual-core 1.84 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (56, 4, 11, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (57, 5, 11, N'16 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (58, 8, 11, N'750 x 1334 px')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (59, 11, 11, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (60, 17, 11, N'12 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (61, 1, 12, N'Apple A9, Dual-core 1.84 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (62, 2, 12, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (63, 4, 12, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (64, 5, 12, N'16 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (65, 8, 12, N'750 x 1334 px')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (66, 11, 12, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (67, 17, 12, N'12 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (68, 1, 13, N'Apple A9, Dual-core 1.84 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (69, 2, 13, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (70, 4, 13, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (71, 5, 13, N'16 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (72, 8, 13, N'750 x 1334 px')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (73, 11, 13, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (74, 17, 13, N'12 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (75, 11, 10, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (76, 8, 10, N'750 x 1334 px')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (77, 2, 11, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (78, 4, 10, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (79, 2, 10, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (80, 17, 9, N'12 MP')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (81, 1, 10, N'Apple A9, Dual-core 1.84 GHz')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (82, 5, 10, N'16 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (83, 11, 9, N'Yes')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (84, 8, 9, N'750 x 1334 px')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (85, 2, 9, N'IOS')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (86, 4, 9, N'2 GB')
INSERT [dbo].[Core_ProductAttributeValue] ([Id], [AttributeId], [ProductId], [Value]) VALUES (87, 5, 9, N'16 GB')
SET IDENTITY_INSERT [dbo].[Core_ProductAttributeValue] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductCategory] ON 
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (1, 6, 0, 0, 3)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (2, 4, 0, 0, 3)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (3, 4, 0, 0, 4)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (4, 6, 0, 0, 4)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (5, 5, 0, 0, 3)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (6, 6, 0, 0, 2)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (7, 5, 0, 0, 2)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (8, 5, 0, 0, 4)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (9, 4, 0, 0, 2)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (10, 4, 0, 0, 1)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (11, 6, 0, 0, 1)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (12, 5, 0, 0, 1)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (13, 3, 0, 0, 7)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (14, 3, 0, 0, 8)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (15, 1, 0, 0, 8)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (16, 1, 0, 0, 7)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (17, 2, 0, 0, 7)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (18, 3, 0, 0, 6)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (19, 2, 0, 0, 6)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (20, 2, 0, 0, 8)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (21, 1, 0, 0, 6)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (22, 1, 0, 0, 5)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (23, 3, 0, 0, 5)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (24, 2, 0, 0, 5)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (25, 1, 0, 0, 12)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (26, 3, 0, 0, 9)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (27, 2, 0, 0, 9)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (28, 1, 0, 0, 9)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (29, 2, 0, 0, 11)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (30, 1, 0, 0, 11)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (31, 3, 0, 0, 12)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (32, 1, 0, 0, 13)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (33, 2, 0, 0, 13)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (34, 3, 0, 0, 13)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (35, 2, 0, 0, 10)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (36, 3, 0, 0, 10)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (37, 1, 0, 0, 10)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (38, 3, 0, 0, 11)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (39, 2, 0, 0, 12)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (40, 7, 0, 0, 14)
INSERT [dbo].[Core_ProductCategory] ([Id], [CategoryId], [DisplayOrder], [IsFeaturedProduct], [ProductId]) VALUES (41, 9, 0, 0, 14)
SET IDENTITY_INSERT [dbo].[Core_ProductCategory] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductLink] ON 
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (1, 1, 4, 1)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (2, 1, 2, 1)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (3, 1, 3, 1)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (4, 1, 6, 5)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (5, 1, 8, 5)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (6, 1, 7, 5)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (7, 1, 12, 9)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (8, 1, 10, 9)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (9, 1, 11, 9)
INSERT [dbo].[Core_ProductLink] ([Id], [LinkType], [LinkedProductId], [ProductId]) VALUES (10, 1, 13, 9)
SET IDENTITY_INSERT [dbo].[Core_ProductLink] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductOptionCombination] ON 
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (1, 1, 0, 2, N'Gray')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (2, 1, 0, 3, N'Silver')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (3, 1, 0, 4, N'Gold')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (4, 1, 0, 6, N'Pink')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (5, 1, 0, 8, N'Gold')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (6, 1, 0, 7, N'Black')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (7, 1, 0, 11, N'Pink')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (8, 1, 0, 10, N'Gray')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (9, 1, 0, 12, N'Gold')
INSERT [dbo].[Core_ProductOptionCombination] ([Id], [OptionId], [ProducdtId], [ProductId], [Value]) VALUES (10, 1, 0, 13, N'Silver')
SET IDENTITY_INSERT [dbo].[Core_ProductOptionCombination] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_ProductOptionValue] ON 
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (1, 1, 1, N'Silver')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (2, 1, 1, N'Gold')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (3, 1, 1, N'Gray')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (4, 1, 5, N'Gold')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (5, 1, 5, N'Black')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (6, 1, 5, N'Pink')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (7, 1, 9, N'Gray')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (8, 1, 9, N'Pink')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (9, 1, 9, N'Gold')
INSERT [dbo].[Core_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value]) VALUES (10, 1, 9, N'Silver')
SET IDENTITY_INSERT [dbo].[Core_ProductOptionValue] OFF 
GO

SET IDENTITY_INSERT [dbo].[Cms_Page] ON 
INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (1, N'<h1>About us</h1><p>Your information. Use admin site to update</p>', N'About us', N'about-us', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-10 08:45:44.953' AS DateTime), CAST(N'2016-04-10 08:45:44.953' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (2, N'<h1>Term and Conditions</h1><p>Your term and conditions. Use admin site to update</p>', N'Terms & Conditions', N'terms-of-use', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 02:54:57.177' AS DateTime), CAST(N'2016-04-11 02:54:57.177' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (3, N'<h1>Privacy Policy</h1><p>Your privacy policy information. Use admin site to update</p>', N'Privacy Policy', N'privacy', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 02:59:31.963' AS DateTime), CAST(N'2016-04-11 02:59:31.963' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (4, N'<h1>Help center</h1><p><a href="/help-center/how-to-buy">How to buy</a></p><p><a href="help-center/shipping">Shipping and delivery</a></p><p><a href="help-center/how-to-return">How to return</a></p><p><a href="help-center/warranty">Warranty</a></p>', N'Help Center', N'help-center', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 03:14:04.447' AS DateTime), CAST(N'2016-04-11 03:14:04.447' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (5, N'<h1>How to buy</h1><p>Your how to buy instructions. Use admin site to update</p>', N'How to buy', N'help-center/how-to-buy', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 03:16:14.323' AS DateTime), CAST(N'2016-04-11 03:24:13.833' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (6, N'<h1>Shipping and Delivery</h1><p>Shipping and delivery information. Use admin site to update</p>', N'Shipping and delivery', N'help-center/shipping', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 02:57:13.497' AS DateTime), CAST(N'2016-04-11 03:23:31.597' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (7, N'<h1>How to return</h1><p>Your how to return instructions. Use admin site to update</p>', N'How to return', N'help-center/how-to-return', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 03:17:42.067' AS DateTime), CAST(N'2016-04-11 03:17:42.067' AS DateTime), NULL, NULL)

INSERT [dbo].[Cms_Page] ([Id], [Body], [Name], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedOn], [UpdatedOn], [CreatedById], [UpdatedById]) VALUES (8, N'<h1>Warranty</h1><p>Your warranty policy. Use admin site to update</p>', N'Warranty', N'help-center/warranty', NULL, NULL, NULL, 1, NULL, 0, CAST(N'2016-04-11 03:19:01.927' AS DateTime), CAST(N'2016-04-11 03:19:01.927' AS DateTime), NULL, NULL)

SET IDENTITY_INSERT [dbo].[Cms_Page] OFF 
GO

SET IDENTITY_INSERT [dbo].[Core_UrlSlug] ON 
INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (1, N'mobile-tablets', 1, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (2, N'smart-phones', 2, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (3, N'basic-phones', 3, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (4, N'tablets', 4, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (5, N'wifi-cellular-tablets', 5, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (6, N'cellular-tablets', 6, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (7, N'desktops', 7, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (8, N'gaming', 8, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (9, N'business', 9, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (10, N'accessories', 10, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (11, N'headphones', 11, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (12, N'cables', 12, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (13, N'usb-drives', 13, N'Category')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (18, N'about-us', 1, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (19, N'terms-of-use', 2, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (20, N'privacy', 3, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (21, N'help-center', 4, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (22, N'help-center/how-to-buy', 5, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (23, N'help-center/shipping', 6, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (24, N'help-center/how-to-return', 7, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [Slug], [EntityId], [EntityName]) VALUES (25, N'help-center/warranty', 8, N'Page')

INSERT [dbo].[Core_UrlSlug] ([Id], [EntityId], [EntityName], [Slug]) VALUES (26, 1, N'Product', N'ipad-pro-wi-fi-4g-128gb')

INSERT [dbo].[Core_UrlSlug] ([Id], [EntityId], [EntityName], [Slug]) VALUES (27, 5, N'Product', N'samsung-galaxy-a5')

INSERT [dbo].[Core_UrlSlug] ([Id], [EntityId], [EntityName], [Slug]) VALUES (28, 9, N'Product', N'iphone-6s-16gb')

INSERT [dbo].[Core_UrlSlug] ([Id], [EntityId], [EntityName], [Slug]) VALUES (29, 3, N'Brand', N'dell')

INSERT [dbo].[Core_UrlSlug] ([Id], [EntityId], [EntityName], [Slug]) VALUES (30, 14, N'Product', N'dell-xps-15-9550')

SET IDENTITY_INSERT [dbo].[Core_UrlSlug] OFF 
GO

