﻿SET IDENTITY_INSERT [dbo].[Core_AppSetting] ON 
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (1, N'Catalog.ProductPageSize', N'10', 1, N'Catalog')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (2, N'Global.AssetVersion', N'1.0', 1, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (3, N'News.PageSize', N'10', 1, N'News')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (4, N'GoogleAppKey', N'AIzaSyBmsQV2FUo6g52R1kovLyfvaYm4FryNs4g', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (5, N'SmtpServer', N'smtp.gmail.com', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (6, N'SmtpPort', N'587', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (7, N'SmtpUsername', N'', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (8, N'SmtpPassword', N'', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (9, N'Theme', N'Generic', 0, N'Core')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (10, N'Tax.IsProductPriceIncludeTax', N'true', 1, N'Tax')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value], [IsVisibleInCommonSettingPage], [Module]) VALUES (11, N'Tax.DefaultTaxClassId', N'1', 1, N'Tax')
SET IDENTITY_INSERT [dbo].[Core_AppSetting] OFF
GO

SET IDENTITY_INSERT [dbo].[Core_Role] ON 
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'admin', N'ADMIN', N'bd3bee0b-5f1d-482d-b890-ffdc01915da3')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'customer', N'CUSTOMER', N'bd3bee0b-5f1d-482d-b890-ffdc01915da3')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'guest', N'GUEST', N'bd3bee0b-5f1d-482d-b890-ffdc01915da3')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'vendor', N'VENDOR', N'bd3bee0b-5f1d-482d-b890-ffdc01915da3')
SET IDENTITY_INSERT [dbo].[Core_Role] OFF
GO 

SET IDENTITY_INSERT [dbo].[Core_User] ON 
INSERT [dbo].[Core_User] ([Id], [UserGuid], [FullName], [IsDeleted], [CreatedOn], [UpdatedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, '4653d7e5-f5ca-4813-a782-3385ca9739bc', N'System', 1, CAST(N'2016-05-12 23:44:13.297' AS DateTime), CAST(N'2016-05-12 23:44:13.297' AS DateTime), N'system@SimplCommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', N'system@SimplCommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'9e87ce89-64c0-45b9-8b52-6e0eaa79e5b8', N'8620916f-e6b6-4f12-9041-83737154b339', NULL, 0, 0, CAST(N'2050-05-12 23:44:13.297' AS DateTime), 1, 0)
INSERT [dbo].[Core_User] ([Id], [UserGuid], [FullName], [IsDeleted], [CreatedOn], [UpdatedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (10, '1FFF10CE-0231-43A2-8B7D-C8DB18504F65', N'Shop Admin', 0, CAST(N'2016-05-12 23:44:13.297' AS DateTime), CAST(N'2016-05-12 23:44:13.297' AS DateTime), N'admin@SimplCommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', N'admin@SimplCommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'9e87ce89-64c0-45b9-8b52-6e0eaa79e5b7', N'8620916f-e6b6-4f12-9041-83737154b338', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Core_User] OFF
GO

INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10, 1)
GO

SET IDENTITY_INSERT [dbo].[Core_EntityType] ON 
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (1, N'Category', N'Category', N'CategoryDetail', 1)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (2, N'Brand', N'Brand', N'BrandDetail', 1)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (3, N'Product', N'Product', N'ProductDetail', 0)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (4, N'Page', N'Page', N'PageDetail', 1)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (5, N'Vendor', N'Vendor', N'VendorDetail', 0)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (6, N'NewsCategory', N'NewsCategory', N'NewsCategoryDetail', 1)
INSERT [dbo].[Core_EntityType] ([Id], [Name], [RoutingController], [RoutingAction], [IsMenuable]) VALUES (7, N'NewsItem', N'NewsItem', N'NewsItemDetail', 0)
SET IDENTITY_INSERT [dbo].[Core_EntityType] OFF
GO

SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] ON 
INSERT [dbo].[ActivityLog_ActivityType] ([Id], [Name]) VALUES (1, N'EntityView')
SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] OFF
GO

SET IDENTITY_INSERT [dbo].[Core_Widget] ON 
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (1, N'CarouselWidget', N'widget-carousel-create', CAST(N'2016-06-19 00:00:00.0000000' AS DateTime2), N'widget-carousel-edit', 1, N'Carousel Widget', N'CarouselWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (2, N'HtmlWidget', N'widget-html-create', CAST(N'2016-06-24 00:00:00.0000000' AS DateTime2), N'widget-html-edit', 1, N'Html Widget', N'HtmlWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (3, N'ProductWidget', N'widget-product-create', CAST(N'2016-07-08 00:00:00.0000000' AS DateTime2), N'widget-product-edit', 1, N'Product Widget', N'ProductWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (4, N'CategoryWidget', N'widget-category-create', CAST(N'2016-07-08 00:00:00.0000000' AS DateTime2), N'widget-category-edit', 1, N'Category Widget', N'CategoryWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (5, N'SpaceBarWidget', N'widget-spacebar-create', CAST(N'2016-07-08 00:00:00.0000000' AS DateTime2), N'widget-spacebar-edit', 1, N'SpaceBar Widget', N'SpaceBarWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (6, N'SimpleProductWidget', N'widget-simple-product-create', CAST(N'2016-07-08 00:00:00.0000000' AS DateTime2), N'widget-simple-product-edit', 1, N'Simple Product Widget', N'SimpleProductWidget')
SET IDENTITY_INSERT [dbo].[Core_Widget] OFF
GO

SET IDENTITY_INSERT [dbo].[Core_WidgetZone] ON 
INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (1, NULL, N'Home Featured')
INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (2, NULL, N'Home Main Content')
INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (3, NULL, N'Home After Main Content')
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] OFF

SET IDENTITY_INSERT [dbo].[Cms_Menu] ON
INSERT [dbo].[Cms_Menu] ([Id], [IsPublished], [IsSystem], [Name]) VALUES (1, 1, 1, N'Customer services')
INSERT [dbo].[Cms_Menu] ([Id], [IsPublished], [IsSystem], [Name]) VALUES (2, 1, 1, N'Information')
SET IDENTITY_INSERT [dbo].[Cms_Menu] OFF
GO

SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] ON 
INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (1, N'Color')
INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (2, N'Size')
SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] OFF
GO

SET IDENTITY_INSERT [dbo].[Payments_PaymentProvider] ON 
INSERT [dbo].[Payments_PaymentProvider] ([Id], [AdditionalSettings], [ConfigureUrl], [IsEnabled], [LandingViewComponentName], [Name]) VALUES (1,  NULL,  N'payments-cod-config', 1, N'CoDLanding', N'Cash On Delivery')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [AdditionalSettings], [ConfigureUrl], [IsEnabled], [LandingViewComponentName], [Name]) VALUES (2, N'{"IsSandbox":true,"ClientId":"","ClientSecret":""}', N'payments-paypalExpress-config', 1, N'PaypalExpressLanding', N'Paypal Express')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [AdditionalSettings], [ConfigureUrl], [IsEnabled], [LandingViewComponentName], [Name]) VALUES (3, N'{"PublicKey": "pk_test_6pRNASCoBOKtIshFeQd4XMUh", "PrivateKey" : "sk_test_BQokikJOvBiI2HlWgH4olfQ2"}', N'payments-stripe-config', 1, N'StripeLanding', N'Stripe')
SET IDENTITY_INSERT [dbo].[Payments_PaymentProvider] OFF
GO

SET IDENTITY_INSERT [dbo].[Core_Country] ON 
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (1, N'Afghanistan', N'AF', N'AFG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (2, N'Albania', N'AL', N'ALB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (3, N'Algeria', N'DZ', N'DZA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (4, N'American Samoa', N'AS', N'ASM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (5, N'Andorra', N'AD', N'AND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (6, N'Angola', N'AO', N'AGO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (7, N'Anguilla', N'AI', N'AIA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (8, N'Antarctica', N'AQ', N'ATA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (9, N'Antigua &amp; Barbuda', N'AG', N'ATG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (10, N'Argentina', N'AR', N'ARG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (11, N'Armenia', N'AM', N'ARM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (12, N'Aruba', N'AW', N'ABW', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (13, N'Australia', N'AU', N'AUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (14, N'Austria', N'AT', N'AUT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (15, N'Azerbaijan', N'AZ', N'AZE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (16, N'Bahamas', N'BS', N'BHS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (17, N'Bahrain', N'BH', N'BHR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (18, N'Bangladesh', N'BD', N'BGD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (19, N'Barbados', N'BB', N'BRB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (20, N'Belarus', N'BY', N'BLR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (21, N'Belgium', N'BE', N'BEL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (22, N'Belize', N'BZ', N'BLZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (23, N'Benin', N'BJ', N'BEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (24, N'Bermuda', N'BM', N'BMU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (25, N'Bhutan', N'BT', N'BTN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (26, N'Bolivia', N'BO', N'BOL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (27, N'Bosnia &amp; Herzegovina', N'BA', N'BIH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (28, N'Botswana', N'BW', N'BWA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (29, N'Bouvet Island', N'BV', N'BVT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (30, N'Brazil', N'BR', N'BRA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (31, N'British Indian Ocean Territory', N'IO', N'IOT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (32, N'British Virgin Islands', N'VG', N'VGB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (33, N'Brunei', N'BN', N'BRN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (34, N'Bulgaria', N'BG', N'BGR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (35, N'Burkina Faso', N'BF', N'BFA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (36, N'Burundi', N'BI', N'BDI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (37, N'Cambodia', N'KH', N'KHM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (38, N'Cameroon', N'CM', N'CMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (39, N'Canada', N'CA', N'CAN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (40, N'Cape Verde', N'CV', N'CPV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (41, N'Cayman Islands', N'KY', N'CYM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (42, N'Central African Republic', N'CF', N'CAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (43, N'Chad', N'TD', N'TCD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (44, N'Chile', N'CL', N'CHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (45, N'China', N'CN', N'CHN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (46, N'Christmas Island', N'CX', N'CXR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (47, N'Cocos (Keeling) Islands', N'CC', N'CCK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (48, N'Colombia', N'CO', N'COL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (49, N'Comoros', N'KM', N'COM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (50, N'Congo - Brazzaville', N'CG', N'COG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (51, N'Congo - Kinshasa', N'CD', N'COD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (52, N'Cook Islands', N'CK', N'COK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (53, N'Costa Rica', N'CR', N'CRI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (54, N'Croatia', N'HR', N'HRV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (55, N'Cuba', N'CU', N'CUB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (56, N'Cyprus', N'CY', N'CYP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (57, N'Czech Republic', N'CZ', N'CZE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (58, N'Côte d’Ivoire', N'CI', N'CIV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (59, N'Denmark', N'DK', N'DNK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (60, N'Djibouti', N'DJ', N'DJI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (61, N'Dominica', N'DM', N'DMA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (62, N'Dominican Republic', N'DO', N'DOM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (63, N'Ecuador', N'EC', N'ECU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (64, N'Egypt', N'EG', N'EGY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (65, N'El Salvador', N'SV', N'SLV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (66, N'Equatorial Guinea', N'GQ', N'GNQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (67, N'Eritrea', N'ER', N'ERI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (68, N'Estonia', N'EE', N'EST', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (69, N'Ethiopia', N'ET', N'ETH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (70, N'Falkland Islands', N'FK', N'FLK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (71, N'Faroe Islands', N'FO', N'FRO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (72, N'Fiji', N'FJ', N'FJI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (73, N'Finland', N'FI', N'FIN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (74, N'France', N'FR', N'FRA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (75, N'French Guiana', N'GF', N'GUF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (76, N'French Polynesia', N'PF', N'PYF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (77, N'French Southern Territories', N'TF', N'ATF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (78, N'Gabon', N'GA', N'GAB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (79, N'Gambia', N'GM', N'GMB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (80, N'Georgia', N'GE', N'GEO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (81, N'Germany', N'DE', N'DEU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (82, N'Ghana', N'GH', N'GHA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (83, N'Gibraltar', N'GI', N'GIB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (84, N'Greece', N'GR', N'GRC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (85, N'Greenland', N'GL', N'GRL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (86, N'Grenada', N'GD', N'GRD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (87, N'Guadeloupe', N'GP', N'GLP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (88, N'Guam', N'GU', N'GUM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (89, N'Guatemala', N'GT', N'GTM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (90, N'Guernsey', N'GG', N'GGY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (91, N'Guinea', N'GN', N'GIN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (92, N'Guinea-Bissau', N'GW', N'GNB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (93, N'Guyana', N'GY', N'GUY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (94, N'Haiti', N'HT', N'HTI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (95, N'Heard &amp; McDonald Islands', N'HM', N'HMD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (96, N'Honduras', N'HN', N'HND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (97, N'Hong Kong SAR China', N'HK', N'HKG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (98, N'Hungary', N'HU', N'HUN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (99, N'Iceland', N'IS', N'ISL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (100, N'India', N'IN', N'IND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (101, N'Indonesia', N'ID', N'IDN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (102, N'Iran', N'IR', N'IRN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (103, N'Iraq', N'IQ', N'IRQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (104, N'Ireland', N'IE', N'IRL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (105, N'Isle of Man', N'IM', N'IMN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (106, N'Israel', N'IL', N'ISR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (107, N'Italy', N'IT', N'ITA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (108, N'Jamaica', N'JM', N'JAM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (109, N'Japan', N'JP', N'JPN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (110, N'Jersey', N'JE', N'JEY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (111, N'Jordan', N'JO', N'JOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (112, N'Kazakhstan', N'KZ', N'KAZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (113, N'Kenya', N'KE', N'KEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (114, N'Kiribati', N'KI', N'KIR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (115, N'Kuwait', N'KW', N'KWT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (116, N'Kyrgyzstan', N'KG', N'KGZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (117, N'Laos', N'LA', N'LAO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (118, N'Latvia', N'LV', N'LVA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (119, N'Lebanon', N'LB', N'LBN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (120, N'Lesotho', N'LS', N'LSO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (121, N'Liberia', N'LR', N'LBR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (122, N'Libya', N'LY', N'LBY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (123, N'Liechtenstein', N'LI', N'LIE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (124, N'Lithuania', N'LT', N'LTU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (125, N'Luxembourg', N'LU', N'LUX', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (126, N'Macau SAR China', N'MO', N'MAC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (127, N'Macedonia', N'MK', N'MKD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (128, N'Madagascar', N'MG', N'MDG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (129, N'Malawi', N'MW', N'MWI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (130, N'Malaysia', N'MY', N'MYS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (131, N'Maldives', N'MV', N'MDV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (132, N'Mali', N'ML', N'MLI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (133, N'Malta', N'MT', N'MLT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (134, N'Marshall Islands', N'MH', N'MHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (135, N'Martinique', N'MQ', N'MTQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (136, N'Mauritania', N'MR', N'MRT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (137, N'Mauritius', N'MU', N'MUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (138, N'Mayotte', N'YT', N'MYT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (139, N'Mexico', N'MX', N'MEX', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (140, N'Micronesia', N'FM', N'FSM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (141, N'Moldova', N'MD', N'MDA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (142, N'Monaco', N'MC', N'MCO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (143, N'Mongolia', N'MN', N'MNG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (144, N'Montenegro', N'ME', N'MNE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (145, N'Montserrat', N'MS', N'MSR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (146, N'Morocco', N'MA', N'MAR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (147, N'Mozambique', N'MZ', N'MOZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (148, N'Myanmar (Burma)', N'MM', N'MMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (149, N'Namibia', N'NA', N'NAM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (150, N'Nauru', N'NR', N'NRU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (151, N'Nepal', N'NP', N'NPL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (152, N'Netherlands', N'NL', N'NLD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (153, N'New Caledonia', N'NC', N'NCL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (154, N'New Zealand', N'NZ', N'NZL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (155, N'Nicaragua', N'NI', N'NIC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (156, N'Niger', N'NE', N'NER', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (157, N'Nigeria', N'NG', N'NGA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (158, N'Niue', N'NU', N'NIU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (159, N'Norfolk Island', N'NF', N'NFK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (160, N'North Korea', N'KP', N'PRK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (161, N'Northern Mariana Islands', N'MP', N'MNP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (162, N'Norway', N'NO', N'NOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (163, N'Oman', N'OM', N'OMN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (164, N'Pakistan', N'PK', N'PAK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (165, N'Palau', N'PW', N'PLW', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (166, N'Palestinian Territories', N'PS', N'PSE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (167, N'Panama', N'PA', N'PAN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (168, N'Papua New Guinea', N'PG', N'PNG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (169, N'Paraguay', N'PY', N'PRY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (170, N'Peru', N'PE', N'PER', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (171, N'Philippines', N'PH', N'PHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (172, N'Pitcairn Islands', N'PN', N'PCN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (173, N'Poland', N'PL', N'POL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (174, N'Portugal', N'PT', N'PRT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (175, N'Qatar', N'QA', N'QAT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (176, N'Romania', N'RO', N'ROU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (177, N'Russia', N'RU', N'RUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (178, N'Rwanda', N'RW', N'RWA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (179, N'Réunion', N'RE', N'REU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (180, N'Samoa', N'WS', N'WSM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (181, N'San Marino', N'SM', N'SMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (182, N'Saudi Arabia', N'SA', N'SAU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (183, N'Senegal', N'SN', N'SEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (184, N'Serbia', N'RS', N'SRB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (185, N'Seychelles', N'SC', N'SYC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (186, N'Sierra Leone', N'SL', N'SLE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (187, N'Singapore', N'SG', N'SGP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (188, N'Slovakia', N'SK', N'SVK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (189, N'Slovenia', N'SI', N'SVN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (190, N'Solomon Islands', N'SB', N'SLB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (191, N'Somalia', N'SO', N'SOM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (192, N'South Africa', N'ZA', N'ZAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (193, N'South Georgia &amp; South Sandwich Islands', N'GS', N'SGS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (194, N'South Korea', N'KR', N'KOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (195, N'Spain', N'ES', N'ESP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (196, N'Sri Lanka', N'LK', N'LKA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (197, N'St. Barthélemy', N'BL', N'BLM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (198, N'St. Helena', N'SH', N'SHN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (199, N'St. Kitts &amp; Nevis', N'KN', N'KNA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (200, N'St. Lucia', N'LC', N'LCA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (201, N'St. Martin', N'MF', N'MAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (202, N'St. Pierre &amp; Miquelon', N'PM', N'SPM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (203, N'St. Vincent &amp; Grenadines', N'VC', N'VCT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (204, N'Sudan', N'SD', N'SDN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (205, N'Suriname', N'SR', N'SUR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (206, N'Svalbard &amp; Jan Mayen', N'SJ', N'SJM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (207, N'Swaziland', N'SZ', N'SWZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (208, N'Sweden', N'SE', N'SWE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (209, N'Switzerland', N'CH', N'CHE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (210, N'Syria', N'SY', N'SYR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (211, N'São Tomé &amp; Príncipe', N'ST', N'STP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (212, N'Taiwan', N'TW', N'TWN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (213, N'Tajikistan', N'TJ', N'TJK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (214, N'Tanzania', N'TZ', N'TZA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (215, N'Thailand', N'TH', N'THA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (216, N'Timor-Leste', N'TL', N'TLS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (217, N'Togo', N'TG', N'TGO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (218, N'Tokelau', N'TK', N'TKL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (219, N'Tonga', N'TO', N'TON', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (220, N'Trinidad &amp; Tobago', N'TT', N'TTO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (221, N'Tunisia', N'TN', N'TUN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (222, N'Turkey', N'TR', N'TUR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (223, N'Turkmenistan', N'TM', N'TKM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (224, N'Turks &amp; Caicos Islands', N'TC', N'TCA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (225, N'Tuvalu', N'TV', N'TUV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (226, N'U.S. Outlying Islands', N'UM', N'UMI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (227, N'U.S. Virgin Islands', N'VI', N'VIR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (228, N'Uganda', N'UG', N'UGA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (229, N'Ukraine', N'UA', N'UKR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (230, N'United Arab Emirates', N'AE', N'ARE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (231, N'United Kingdom', N'GB', N'GBR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (232, N'United States', N'US', N'USA', 1, 1, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (233, N'Uruguay', N'UY', N'URY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (234, N'Uzbekistan', N'UZ', N'UZB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (235, N'Vanuatu', N'VU', N'VUT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (236, N'Vatican City', N'VA', N'VAT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (237, N'Venezuela', N'VE', N'VEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (238, N'Vietnam', N'VN', N'VNM', 1, 1, 0, 1, 0)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (239, N'Wallis &amp; Futuna', N'WF', N'WLF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (240, N'Western Sahara', N'EH', N'ESH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (241, N'Yemen', N'YE', N'YEM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (242, N'Zambia', N'ZM', N'ZMB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (243, N'Zimbabwe', N'ZW', N'ZWE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (244, N'Åland Islands', N'AX', N'ALA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code2], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsDistrictEnabled], [IsZipCodeEnabled]) VALUES (245, N'Netherlands Antilles', N'AN', N'ANT', 0, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Core_Country] OFF
GO

SET IDENTITY_INSERT Core_StateOrProvince ON 
INSERT INTO Core_StateOrProvince ([Id], [CountryId], [Name], [Type]) VALUES
(1, 238, N'Hà Nội', N'Thành Phố'),
(2, 238, N'Hà Giang', N'Tỉnh'),
(4, 238, N'Cao Bằng', N'Tỉnh'),
(6, 238, N'Bắc Kạn', N'Tỉnh'),
(8, 238, N'Tuyên Quang', N'Tỉnh'),
(10, 238, N'Lào Cai', N'Tỉnh'),
(11, 238, N'Điện Biên', N'Tỉnh'),
(12, 238, N'Lai Châu', N'Tỉnh'),
(14, 238, N'Sơn La', N'Tỉnh'),
(15, 238, N'Yên Bái', N'Tỉnh'),
(17, 238, N'Hòa Bình', N'Tỉnh'),
(19, 238, N'Thái Nguyên', N'Tỉnh'),
(20, 238, N'Lạng Sơn', N'Tỉnh'),
(22, 238, N'Quảng Ninh', N'Tỉnh'),
(24, 238, N'Bắc Giang', N'Tỉnh'),
(25, 238, N'Phú Thọ', N'Tỉnh'),
(26, 238, N'Vĩnh Phúc', N'Tỉnh'),
(27, 238, N'Bắc Ninh', N'Tỉnh'),
(30, 238, N'Hải Dương', N'Tỉnh'),
(31, 238, N'Hải Phòng', N'Thành Phố'),
(33, 238, N'Hưng Yên', N'Tỉnh'),
(34, 238, N'Thái Bình', N'Tỉnh'),
(35, 238, N'Hà Nam', N'Tỉnh'),
(36, 238, N'Nam Định', N'Tỉnh'),
(37, 238, N'Ninh Bình', N'Tỉnh'),
(38, 238, N'Thanh Hóa', N'Tỉnh'),
(40, 238, N'Nghệ An', N'Tỉnh'),
(42, 238, N'Hà Tĩnh', N'Tỉnh'),
(44, 238, N'Quảng Bình', N'Tỉnh'),
(45, 238, N'Quảng Trị', N'Tỉnh'),
(46, 238, N'Thừa Thiên Huế', N'Tỉnh'),
(48, 238, N'Đà Nẵng', N'Thành Phố'),
(49, 238, N'Quảng Nam', N'Tỉnh'),
(51, 238, N'Quảng Ngãi', N'Tỉnh'),
(52, 238, N'Bình Định', N'Tỉnh'),
(54, 238, N'Phú Yên', N'Tỉnh'),
(56, 238, N'Khánh Hòa', N'Tỉnh'),
(58, 238, N'Ninh Thuận', N'Tỉnh'),
(60, 238, N'Bình Thuận', N'Tỉnh'),
(62, 238, N'Kon Tum', N'Tỉnh'),
(64, 238, N'Gia Lai', N'Tỉnh'),
(66, 238, N'Đắk Lắk', N'Tỉnh'),
(67, 238, N'Đắk Nông', N'Tỉnh'),
(68, 238, N'Lâm Đồng', N'Tỉnh'),
(70, 238, N'Bình Phước', N'Tỉnh'),
(72, 238, N'Tây Ninh', N'Tỉnh'),
(74, 238, N'Bình Dương', N'Tỉnh'),
(75, 238, N'Đồng Nai', N'Tỉnh'),
(77, 238, N'Bà Rịa - Vũng Tàu', N'Tỉnh'),
(79, 238, N'Hồ Chí Minh', N'Thành Phố'),
(80, 238, N'Long An', N'Tỉnh'),
(82, 238, N'Tiền Giang', N'Tỉnh'),
(83, 238, N'Bến Tre', N'Tỉnh'),
(84, 238, N'Trà Vinh', N'Tỉnh'),
(86, 238, N'Vĩnh Long', N'Tỉnh'),
(87, 238, N'Đồng Tháp', N'Tỉnh'),
(89, 238, N'An Giang', N'Tỉnh'),
(91, 238, N'Kiên Giang', N'Tỉnh'),
(92, 238, N'Cần Thơ', N'Thành Phố'),
(93, 238, N'Hậu Giang', N'Tỉnh'),
(94, 238, N'Sóc Trăng', N'Tỉnh'),
(95, 238, N'Bạc Liêu', N'Tỉnh'),
(96, 238, N'Cà Mau', N'Tỉnh');
SET IDENTITY_INSERT Core_StateOrProvince OFF 
GO

INSERT INTO [Core_StateOrProvince] ([CountryId], [CountryCode], [Code], [Name]) VALUES
(232, 'US', 'AL', 'Alabama'),
(232, 'US', 'AK', 'Alaska'),
(232, 'US', 'AS', 'American Samoa'),
(232, 'US', 'AZ', 'Arizona'),
(232, 'US', 'AR', 'Arkansas'),
(232, 'US', 'AE', 'Armed Forces Africa'),
(232, 'US', 'AA', 'Armed Forces Americas'),
(232, 'US', 'AE', 'Armed Forces Canada'),
(232, 'US', 'AE', 'Armed Forces Europe'),
(232, 'US', 'AE', 'Armed Forces Middle East'),
(232, 'US', 'AP', 'Armed Forces Pacific'),
(232, 'US', 'CA', 'California'),
(232, 'US', 'CO', 'Colorado'),
(232, 'US', 'CT', 'Connecticut'),
(232, 'US', 'DE', 'Delaware'),
(232, 'US', 'DC', 'District of Columbia'),
(232, 'US', 'FM', 'Federated States Of Micronesia'),
(232, 'US', 'FL', 'Florida'),
(232, 'US', 'GA', 'Georgia'),
(232, 'US', 'GU', 'Guam'),
(232, 'US', 'HI', 'Hawaii'),
(232, 'US', 'ID', 'Idaho'),
(232, 'US', 'IL', 'Illinois'),
(232, 'US', 'IN', 'Indiana'),
(232, 'US', 'IA', 'Iowa'),
(232, 'US', 'KS', 'Kansas'),
(232, 'US', 'KY', 'Kentucky'),
(232, 'US', 'LA', 'Louisiana'),
(232, 'US', 'ME', 'Maine'),
(232, 'US', 'MH', 'Marshall Islands'),
(232, 'US', 'MD', 'Maryland'),
(232, 'US', 'MA', 'Massachusetts'),
(232, 'US', 'MI', 'Michigan'),
(232, 'US', 'MN', 'Minnesota'),
(232, 'US', 'MS', 'Mississippi'),
(232, 'US', 'MO', 'Missouri'),
(232, 'US', 'MT', 'Montana'),
(232, 'US', 'NE', 'Nebraska'),
(232, 'US', 'NV', 'Nevada'),
(232, 'US', 'NH', 'New Hampshire'),
(232, 'US', 'NJ', 'New Jersey'),
(232, 'US', 'NM', 'New Mexico'),
(232, 'US', 'NY', 'New York'),
(232, 'US', 'NC', 'North Carolina'),
(232, 'US', 'ND', 'North Dakota'),
(232, 'US', 'MP', 'Northern Mariana Islands'),
(232, 'US', 'OH', 'Ohio'),
(232, 'US', 'OK', 'Oklahoma'),
(232, 'US', 'OR', 'Oregon'),
(232, 'US', 'PW', 'Palau'),
(232, 'US', 'PA', 'Pennsylvania'),
(232, 'US', 'PR', 'Puerto Rico'),
(232, 'US', 'RI', 'Rhode Island'),
(232, 'US', 'SC', 'South Carolina'),
(232, 'US', 'SD', 'South Dakota'),
(232, 'US', 'TN', 'Tennessee'),
(232, 'US', 'TX', 'Texas'),
(232, 'US', 'UT', 'Utah'),
(232, 'US', 'VT', 'Vermont'),
(232, 'US', 'VI', 'Virgin Islands'),
(232, 'US', 'VA', 'Virginia'),
(232, 'US', 'WA', 'Washington'),
(232, 'US', 'WV', 'West Virginia'),
(232, 'US', 'WI', 'Wisconsin'),
(232, 'US', 'WY', 'Wyoming'),
(39, 'CA', 'AB', 'Alberta'),
(39, 'CA', 'BC', 'British Columbia'),
(39, 'CA', 'MB', 'Manitoba'),
(39, 'CA', 'NL', 'Newfoundland and Labrador'),
(39, 'CA', 'NB', 'New Brunswick'),
(39, 'CA', 'NS', 'Nova Scotia'),
(39, 'CA', 'NT', 'Northwest Territories'),
(39, 'CA', 'NU', 'Nunavut'),
(39, 'CA', 'ON', 'Ontario'),
(39, 'CA', 'PE', 'Prince Edward Island'),
(39, 'CA', 'QC', 'Quebec'),
(39, 'CA', 'SK', 'Saskatchewan'),
(39, 'CA', 'YT', 'Yukon Territory'),
(195, 'ES', 'A Coruсa', 'A Coruña'),
(195, 'ES', 'Alava', 'Alava'),
(195, 'ES', 'Albacete', 'Albacete'),
(195, 'ES', 'Alicante', 'Alicante'),
(195, 'ES', 'Almeria', 'Almeria'),
(195, 'ES', 'Asturias', 'Asturias'),
(195, 'ES', 'Avila', 'Avila'),
(195, 'ES', 'Badajoz', 'Badajoz'),
(195, 'ES', 'Baleares', 'Baleares'),
(195, 'ES', 'Barcelona', 'Barcelona'),
(195, 'ES', 'Burgos', 'Burgos'),
(195, 'ES', 'Caceres', 'Caceres'),
(195, 'ES', 'Cadiz', 'Cadiz'),
(195, 'ES', 'Cantabria', 'Cantabria'),
(195, 'ES', 'Castellon', 'Castellon'),
(195, 'ES', 'Ceuta', 'Ceuta'),
(195, 'ES', 'Ciudad Real', 'Ciudad Real'),
(195, 'ES', 'Cordoba', 'Cordoba'),
(195, 'ES', 'Cuenca', 'Cuenca'),
(195, 'ES', 'Girona', 'Girona'),
(195, 'ES', 'Granada', 'Granada'),
(195, 'ES', 'Guadalajara', 'Guadalajara'),
(195, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(195, 'ES', 'Huelva', 'Huelva'),
(195, 'ES', 'Huesca', 'Huesca'),
(195, 'ES', 'Jaen', 'Jaen'),
(195, 'ES', 'La Rioja', 'La Rioja'),
(195, 'ES', 'Las Palmas', 'Las Palmas'),
(195, 'ES', 'Leon', 'Leon'),
(195, 'ES', 'Lleida', 'Lleida'),
(195, 'ES', 'Lugo', 'Lugo'),
(195, 'ES', 'Madrid', 'Madrid'),
(195, 'ES', 'Malaga', 'Malaga'),
(195, 'ES', 'Melilla', 'Melilla'),
(195, 'ES', 'Murcia', 'Murcia'),
(195, 'ES', 'Navarra', 'Navarra'),
(195, 'ES', 'Ourense', 'Ourense'),
(195, 'ES', 'Palencia', 'Palencia'),
(195, 'ES', 'Pontevedra', 'Pontevedra'),
(195, 'ES', 'Salamanca', 'Salamanca'),
(195, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(195, 'ES', 'Segovia', 'Segovia'),
(195, 'ES', 'Sevilla', 'Sevilla'),
(195, 'ES', 'Soria', 'Soria'),
(195, 'ES', 'Tarragona', 'Tarragona'),
(195, 'ES', 'Teruel', 'Teruel'),
(195, 'ES', 'Toledo', 'Toledo'),
(195, 'ES', 'Valencia', 'Valencia'),
(195, 'ES', 'Valladolid', 'Valladolid'),
(195, 'ES', 'Vizcaya', 'Vizcaya'),
(195, 'ES', 'Zamora', 'Zamora'),
(195, 'ES', 'Zaragoza', 'Zaragoza')
GO

SET IDENTITY_INSERT Core_District ON 
INSERT INTO Core_District (Id, Name, [Type], [Location], StateOrProvinceId) VALUES
(1, N'Ba Đình', N'Quận', N'21 02 08N, 105 49 38E', N'01'),
(2, N'Hoàn Kiếm', N'Quận', N'21 01 53N, 105 51 09E', N'01'),
(3, N'Tây Hồ', N'Quận', N'21 04 10N, 105 49 07E', N'01'),
(4, N'Long Biên', N'Quận', N'21 02 21N, 105 53 07E', N'01'),
(5, N'Cầu Giấy', N'Quận', N'21 01 52N, 105 47 20E', N'01'),
(6, N'Đống Đa', N'Quận', N'21 00 56N, 105 49 06E', N'01'),
(7, N'Hai Bà Trưng', N'Quận', N'21 00 27N, 105 51 35E', N'01'),
(8, N'Hoàng Mai', N'Quận', N'20 58 33N, 105 51 22E', N'01'),
(9, N'Thanh Xuân', N'Quận', N'20 59 44N, 105 48 56E', N'01'),
(16, N'Sóc Sơn', N'Huyện', N'21 16 55N, 105 49 46E', N'01'),
(17, N'Đông Anh', N'Huyện', N'21 08 16N, 105 49 38E', N'01'),
(18, N'Gia Lâm', N'Huyện', N'21 01 28N, 105 56 54E', N'01'),
(19, N'Từ Liêm', N'Huyện', N'21 02 39N, 105 45 32E', N'01'),
(20, N'Thanh Trì', N'Huyện', N'20 56 32N, 105 50 55E', N'01'),
(24, N'Hà Giang', N'Thị Xã', N'22 46 23N, 105 02 39E', N'02'),
(26, N'Đồng Văn', N'Huyện', N'23 14 34N, 105 15 48E', N'02'),
(27, N'Mèo Vạc', N'Huyện', N'23 09 10N, 105 26 38E', N'02'),
(28, N'Yên Minh', N'Huyện', N'23 04 20N, 105 10 13E', N'02'),
(29, N'Quản Bạ', N'Huyện', N'23 04 03N, 104 58 05E', N'02'),
(30, N'Vị Xuyên', N'Huyện', N'22 45 50N, 104 56 26E', N'02'),
(31, N'Bắc Mê', N'Huyện', N'22 45 48N, 105 16 26E', N'02'),
(32, N'Hoàng Su Phì', N'Huyện', N'22 41 37N, 104 40 06E', N'02'),
(33, N'Xín Mần', N'Huyện', N'22 38 05N, 104 28 35E', N'02'),
(34, N'Bắc Quang', N'Huyện', N'22 23 42N, 104 55 06E', N'02'),
(35, N'Quang Bình', N'Huyện', N'22 23 07N, 104 37 11E', N'02'),
(40, N'Cao Bằng', N'Thị Xã', N'22 39 20N, 106 15 20E', N'04'),
(42, N'Bảo Lâm', N'Huyện', N'22 52 37N, 105 27 28E', N'04'),
(43, N'Bảo Lạc', N'Huyện', N'22 52 31N, 105 42 41E', N'04'),
(44, N'Thông Nông', N'Huyện', N'22 49 09N, 105 57 05E', N'04'),
(45, N'Hà Quảng', N'Huyện', N'22 53 42N, 106 06 32E', N'04'),
(46, N'Trà Lĩnh', N'Huyện', N'22 48 14N, 106 19 47E', N'04'),
(47, N'Trùng Khánh', N'Huyện', N'22 49 31N, 106 33 58E', N'04'),
(48, N'Hạ Lang', N'Huyện', N'22 42 37N, 106 41 42E', N'04'),
(49, N'Quảng Uyên', N'Huyện', N'22 40 15N, 106 27 42E', N'04'),
(50, N'Phục Hoà', N'Huyện', N'22 33 52N, 106 30 02E', N'04'),
(51, N'Hoà An', N'Huyện', N'22 41 20N, 106 02 05E', N'04'),
(52, N'Nguyên Bình', N'Huyện', N'22 38 52N, 105 57 02E', N'04'),
(53, N'Thạch An', N'Huyện', N'22 28 51N, 106 19 51E', N'04'),
(58, N'Bắc Kạn', N'Thị Xã', N'22 08 00N, 105 51 10E', N'06'),
(60, N'Pác Nặm', N'Huyện', N'22 35 46N, 105 40 25E', N'06'),
(61, N'Ba Bể', N'Huyện', N'22 23 54N, 105 43 30E', N'06'),
(62, N'Ngân Sơn', N'Huyện', N'22 25 50N, 106 01 00E', N'06'),
(63, N'Bạch Thông', N'Huyện', N'22 12 04N, 105 51 01E', N'06'),
(64, N'Chợ Đồn', N'Huyện', N'22 11 18N, 105 34 43E', N'06'),
(65, N'Chợ Mới', N'Huyện', N'21 57 56N, 105 51 29E', N'06'),
(66, N'Na Rì', N'Huyện', N'22 09 48N, 106 05 09E', N'06'),
(70, N'Tuyên Quang', N'Thị Xã', N'21 49 40N, 105 13 12E', N'08'),
(72, N'Nà Hang', N'Huyện', N'22 28 34N, 105 21 03E', N'08'),
(73, N'Chiêm Hóa', N'Huyện', N'22 12 49N, 105 14 32E', N'08'),
(74, N'Hàm Yên', N'Huyện', N'22 05 46N, 105 00 13E', N'08'),
(75, N'Yên Sơn', N'Huyện', N'21 51 53N, 105 18 14E', N'08'),
(76, N'Sơn Dương', N'Huyện', N'21 40 22N, 105 22 57E', N'08'),
(80, N'Lào Cai', N'Thành Phố', N'22 25 07N, 103 58 43E', N'10'),
(82, N'Bát Xát', N'Huyện', N'22 35 50N, 103 44 49E', N'10'),
(83, N'Mường Khương', N'Huyện', N'22 41 05N, 104 08 26E', N'10'),
(84, N'Si Ma Cai', N'Huyện', N'22 39 46N, 104 16 05E', N'10'),
(85, N'Bắc Hà', N'Huyện', N'22 30 08N, 104 18 54E', N'10'),
(86, N'Bảo Thắng', N'Huyện', N'22 22 47N, 104 10 00E', N'10'),
(87, N'Bảo Yên', N'Huyện', N'22 17 38N, 104 25 02E', N'10'),
(88, N'Sa Pa', N'Huyện', N'22 18 54N, 103 54 18E', N'10'),
(89, N'Văn Bàn', N'Huyện', N'22 03 48N, 104 10 59E', N'10'),
(94, N'Điện Biên Phủ', N'Thành Phố', N'21 24 52N, 103 02 31E', N'11'),
(95, N'Mường Lay', N'Thị Xã', N'22 01 47N, 103 07 10E', N'11'),
(96, N'Mường Nhé', N'Huyện', N'22 06 11N, 102 30 54E', N'11'),
(97, N'Mường Chà', N'Huyện', N'21 50 31N, 103 03 15E', N'11'),
(98, N'Tủa Chùa', N'Huyện', N'21 58 19N, 103 23 01E', N'11'),
(99, N'Tuần Giáo', N'Huyện', N'21 38 03N, 103 21 06E', N'11'),
(100, N'Điện Biên', N'Huyện', N'21 15 19N, 103 03 19E', N'11'),
(101, N'Điện Biên Đông', N'Huyện', N'21 14 07N, 103 15 19E', N'11'),
(102, N'Mường Ảng', N'Huyện', N'', N'11'),
(104, N'Lai Châu', N'Thị Xã', N'22 23 15N, 103 24 22E', N'12'),
(106, N'Tam Đường', N'Huyện', N'22 20 16N, 103 32 53E', N'12'),
(107, N'Mường Tè', N'Huyện', N'22 24 16N, 102 43 11E', N'12'),
(108, N'Sìn Hồ', N'Huyện', N'22 17 21N, 103 18 12E', N'12'),
(109, N'Phong Thổ', N'Huyện', N'22 38 24N, 103 22 38E', N'12'),
(110, N'Than Uyên', N'Huyện', N'21 59 35N, 103 45 30E', N'12'),
(111, N'Tân Uyên', N'Huyện', N'', N'12'),
(116, N'Sơn La', N'Thành Phố', N'21 20 39N, 103 54 52E', N'14'),
(118, N'Quỳnh Nhai', N'Huyện', N'21 46 34N, 103 39 02E', N'14'),
(119, N'Thuận Châu', N'Huyện', N'21 24 54N, 103 39 46E', N'14'),
(120, N'Mường La', N'Huyện', N'21 31 38N, 104 02 48E', N'14'),
(121, N'Bắc Yên', N'Huyện', N'21 13 23N, 104 22 09E', N'14'),
(122, N'Phù Yên', N'Huyện', N'21 13 33N, 104 41 51E', N'14'),
(123, N'Mộc Châu', N'Huyện', N'20 49 21N, 104 43 10E', N'14'),
(124, N'Yên Châu', N'Huyện', N'20 59 33N, 104 19 51E', N'14'),
(125, N'Mai Sơn', N'Huyện', N'21 10 08N, 103 59 36E', N'14'),
(126, N'Sông Mã', N'Huyện', N'21 06 04N, 103 43 56E', N'14'),
(127, N'Sốp Cộp', N'Huyện', N'20 52 46N, 103 30 38E', N'14'),
(132, N'Yên Bái', N'Thành Phố', N'21 44 28N, 104 53 42E', N'15'),
(133, N'Nghĩa Lộ', N'Thị Xã', N'21 35 58N, 104 29 22E', N'15'),
(135, N'Lục Yên', N'Huyện', N'22 06 44N, 104 43 12E', N'15'),
(136, N'Văn Yên', N'Huyện', N'21 55 55N, 104 33 51E', N'15'),
(137, N'Mù Cang Chải', N'Huyện', N'21 48 22N, 104 09 01E', N'15'),
(138, N'Trấn Yên', N'Huyện', N'21 42 20N, 104 48 56E', N'15'),
(139, N'Trạm Tấu', N'Huyện', N'21 30 40N, 104 28 03E', N'15'),
(140, N'Văn Chấn', N'Huyện', N'21 34 15N, 104 35 19E', N'15'),
(141, N'Yên Bình', N'Huyện', N'21 52 24N, 104 55 16E', N'15'),
(148, N'Hòa Bình', N'Thành Phố', N'20 50 36N, 105 19 20E', N'17'),
(150, N'Đà Bắc', N'Huyện', N'20 55 58N, 105 04 52E', N'17'),
(151, N'Kỳ Sơn', N'Huyện', N'20 54 06N, 105 23 18E', N'17'),
(152, N'Lương Sơn', N'Huyện', N'20 53 16N, 105 30 55E', N'17'),
(153, N'Kim Bôi', N'Huyện', N'20 40 34N, 105 32 15E', N'17'),
(154, N'Cao Phong', N'Huyện', N'20 41 23N, 105 17 48E', N'17'),
(155, N'Tân Lạc', N'Huyện', N'20 36 44N, 105 15 03E', N'17'),
(156, N'Mai Châu', N'Huyện', N'20 40 56N, 104 59 46E', N'17'),
(157, N'Lạc Sơn', N'Huyện', N'20 29 59N, 105 24 57E', N'17'),
(158, N'Yên Thủy', N'Huyện', N'20 25 42N, 105 37 59E', N'17'),
(159, N'Lạc Thủy', N'Huyện', N'20 29 12N, 105 44 06E', N'17'),
(164, N'Thái Nguyên', N'Thành Phố', N'21 33 20N, 105 48 26E', N'19'),
(165, N'Sông Công', N'Thị Xã', N'21 29 14N, 105 48 47E', N'19'),
(167, N'Định Hóa', N'Huyện', N'21 53 50N, 105 38 01E', N'19'),
(168, N'Phú Lương', N'Huyện', N'21 45 57N, 105 43 22E', N'19'),
(169, N'Đồng Hỷ', N'Huyện', N'21 41 10N, 105 55 43E', N'19'),
(170, N'Võ Nhai', N'Huyện', N'21 47 14N, 106 02 29E', N'19'),
(171, N'Đại Từ', N'Huyện', N'21 36 17N, 105 37 28E', N'19'),
(172, N'Phổ Yên', N'Huyện', N'21 27 08N, 105 45 19E', N'19'),
(173, N'Phú Bình', N'Huyện', N'21 29 36N, 105 57 42E', N'19'),
(178, N'Lạng Sơn', N'Thành Phố', N'21 51 19N, 106 44 50E', N'20'),
(180, N'Tràng Định', N'Huyện', N'22 18 09N, 106 26 32E', N'20'),
(181, N'Bình Gia', N'Huyện', N'22 03 56N, 106 19 01E', N'20'),
(182, N'Văn Lãng', N'Huyện', N'22 01 59N, 106 34 17E', N'20'),
(183, N'Cao Lộc', N'Huyện', N'21 53 05N, 106 50 34E', N'20'),
(184, N'Văn Quan', N'Huyện', N'21 51 04N, 106 33 04E', N'20'),
(185, N'Bắc Sơn', N'Huyện', N'21 48 57N, 106 15 28E', N'20'),
(186, N'Hữu Lũng', N'Huyện', N'21 34 33N, 106 20 33E', N'20'),
(187, N'Chi Lăng', N'Huyện', N'21 40 05N, 106 37 24E', N'20'),
(188, N'Lộc Bình', N'Huyện', N'21 40 41N, 106 58 12E', N'20'),
(189, N'Đình Lập', N'Huyện', N'21 32 07N, 107 07 25E', N'20'),
(193, N'Hạ Long', N'Thành Phố', N'20 52 24N, 107 05 23E', N'22'),
(194, N'Móng Cái', N'Thành Phố', N'21 26 31N, 107 55 09E', N'22'),
(195, N'Cẩm Phả', N'Thị Xã', N'21 03 42N, 107 17 22E', N'22'),
(196, N'Uông Bí', N'Thị Xã', N'21 04 33N, 106 45 07E', N'22'),
(198, N'Bình Liêu', N'Huyện', N'21 33 07N, 107 26 24E', N'22'),
(199, N'Tiên Yên', N'Huyện', N'21 22 24N, 107 22 50E', N'22'),
(200, N'Đầm Hà', N'Huyện', N'21 21 23N, 107 34 32E', N'22'),
(201, N'Hải Hà', N'Huyện', N'21 25 50N, 107 41 26E', N'22'),
(202, N'Ba Chẽ', N'Huyện', N'21 15 40N, 107 09 52E', N'22'),
(203, N'Vân Đồn', N'Huyện', N'20 56 17N, 107 28 02E', N'22'),
(204, N'Hoành Bồ', N'Huyện', N'21 06 30N, 107 02 43E', N'22'),
(205, N'Đông Triều', N'Huyện', N'21 07 10N, 106 34 36E', N'22'),
(206, N'Yên Hưng', N'Huyện', N'20 55 40N, 106 51 05E', N'22'),
(207, N'Cô Tô', N'Huyện', N'21 05 01N, 107 49 10E', N'22'),
(213, N'Bắc Giang', N'Thành Phố', N'21 17 36N, 106 11 18E', N'24'),
(215, N'Yên Thế', N'Huyện', N'21 31 29N, 106 09 27E', N'24'),
(216, N'Tân Yên', N'Huyện', N'21 23 23N, 106 05 55E', N'24'),
(217, N'Lạng Giang', N'Huyện', N'21 21 58N, 106 15 21E', N'24'),
(218, N'Lục Nam', N'Huyện', N'21 18 16N, 106 29 24E', N'24'),
(219, N'Lục Ngạn', N'Huyện', N'21 26 15N, 106 39 09E', N'24'),
(220, N'Sơn Động', N'Huyện', N'21 19 42N, 106 51 09E', N'24'),
(221, N'Yên Dũng', N'Huyện', N'21 12 22N, 106 14 12E', N'24'),
(222, N'Việt Yên', N'Huyện', N'21 16 16N, 106 04 59E', N'24'),
(223, N'Hiệp Hòa', N'Huyện', N'21 15 51N, 105 57 30E', N'24'),
(227, N'Việt Trì', N'Thành Phố', N'21 19 01N, 105 23 35E', N'25'),
(228, N'Phú Thọ', N'Thị Xã', N'21 24 54N, 105 13 46E', N'25'),
(230, N'Đoan Hùng', N'Huyện', N'21 36 56N, 105 08 42E', N'25'),
(231, N'Hạ Hoà', N'Huyện', N'21 35 13N, 105 00 22E', N'25'),
(232, N'Thanh Ba', N'Huyện', N'21 27 04N, 105 09 10E', N'25'),
(233, N'Phù Ninh', N'Huyện', N'21 26 59N, 105 18 13E', N'25'),
(234, N'Yên Lập', N'Huyện', N'21 22 21N, 105 01 25E', N'25'),
(235, N'Cẩm Khê', N'Huyện', N'21 23 04N, 105 05 25E', N'25'),
(236, N'Tam Nông', N'Huyện', N'21 18 24N, 105 14 59E', N'25'),
(237, N'Lâm Thao', N'Huyện', N'21 19 37N, 105 18 09E', N'25'),
(238, N'Thanh Sơn', N'Huyện', N'21 08 32N, 105 04 40E', N'25'),
(239, N'Thanh Thuỷ', N'Huyện', N'21 07 26N, 105 17 18E', N'25'),
(240, N'Tân Sơn', N'Huyện', N'', N'25'),
(243, N'Vĩnh Yên', N'Thành Phố', N'21 18 26N, 105 35 33E', N'26'),
(244, N'Phúc Yên', N'Thị Xã', N'21 18 55N, 105 43 54E', N'26'),
(246, N'Lập Thạch', N'Huyện', N'21 24 45N, 105 25 39E', N'26'),
(247, N'Tam Dương', N'Huyện', N'21 21 40N, 105 33 36E', N'26'),
(248, N'Tam Đảo', N'Huyện', N'21 27 34N, 105 35 09E', N'26'),
(249, N'Bình Xuyên', N'Huyện', N'21 19 48N, 105 39 43E', N'26'),
(250, N'Mê Linh', N'Huyện', N'21 10 53N, 105 42 05E', N'01'),
(251, N'Yên Lạc', N'Huyện', N'21 13 17N, 105 34 44E', N'26'),
(252, N'Vĩnh Tường', N'Huyện', N'21 14 58N, 105 29 37E', N'26'),
(253, N'Sông Lô', N'Huyện', N'', N'26'),
(256, N'Bắc Ninh', N'Thành Phố', N'21 10 48N, 106 03 58E', N'27'),
(258, N'Yên Phong', N'Huyện', N'21 12 40N, 105 59 36E', N'27'),
(259, N'Quế Võ', N'Huyện', N'21 08 44N, 106 11 06E', N'27'),
(260, N'Tiên Du', N'Huyện', N'21 07 37N, 106 02 19E', N'27'),
(261, N'Từ Sơn', N'Thị Xã', N'21 07 12N, 105 57 26E', N'27'),
(262, N'Thuận Thành', N'Huyện', N'21 02 24N, 106 04 10E', N'27'),
(263, N'Gia Bình', N'Huyện', N'21 03 55N, 106 12 53E', N'27'),
(264, N'Lương Tài', N'Huyện', N'21 01 33N, 106 13 28E', N'27'),
(268, N'Hà Đông', N'Quận', N'20 57 25N, 105 45 21E', N'01'),
(269, N'Sơn Tây', N'Thị Xã', N'21 05 51N, 105 28 27E', N'01'),
(271, N'Ba Vì', N'Huyện', N'21 09 40N, 105 22 43E', N'01'),
(272, N'Phúc Thọ', N'Huyện', N'21 06 32N, 105 34 52E', N'01'),
(273, N'Đan Phượng', N'Huyện', N'21 07 13N, 105 40 49E', N'01'),
(274, N'Hoài Đức', N'Huyện', N'21 01 25N, 105 42 03E', N'01'),
(275, N'Quốc Oai', N'Huyện', N'20 58 45N, 105 36 43E', N'01'),
(276, N'Thạch Thất', N'Huyện', N'21 02 17N, 105 33 05E', N'01'),
(277, N'Chương Mỹ', N'Huyện', N'20 52 46N, 105 39 01E', N'01'),
(278, N'Thanh Oai', N'Huyện', N'20 51 44N, 105 46 18E', N'01'),
(279, N'Thường Tín', N'Huyện', N'20 49 59N, 105 22 19E', N'01'),
(280, N'Phú Xuyên', N'Huyện', N'20 43 37N, 105 53 43E', N'01'),
(281, N'Ứng Hòa', N'Huyện', N'20 42 41N, 105 47 58E', N'01'),
(282, N'Mỹ Đức', N'Huyện', N'20 41 53N, 105 43 31E', N'01'),
(288, N'Hải Dương', N'Thành Phố', N'20 56 14N, 106 18 21E', N'30'),
(290, N'Chí Linh', N'Huyện', N'21 07 47N, 106 23 46E', N'30'),
(291, N'Nam Sách', N'Huyện', N'21 00 15N, 106 20 26E', N'30'),
(292, N'Kinh Môn', N'Huyện', N'21 00 04N, 106 30 23E', N'30'),
(293, N'Kim Thành', N'Huyện', N'20 55 40N, 106 30 33E', N'30'),
(294, N'Thanh Hà', N'Huyện', N'20 53 19N, 106 25 43E', N'30'),
(295, N'Cẩm Giàng', N'Huyện', N'20 57 05N, 106 12 29E', N'30'),
(296, N'Bình Giang', N'Huyện', N'20 52 36N, 106 11 24E', N'30'),
(297, N'Gia Lộc', N'Huyện', N'20 51 01N, 106 17 34E', N'30'),
(298, N'Tứ Kỳ', N'Huyện', N'20 49 05N, 106 24 05E', N'30'),
(299, N'Ninh Giang', N'Huyện', N'20 45 13N, 106 20 09E', N'30'),
(300, N'Thanh Miện', N'Huyện', N'20 46 02N, 106 12 26E', N'30'),
(303, N'Hồng Bàng', N'Quận', N'20 52 37N, 106 38 32E', N'31'),
(304, N'Ngô Quyền', N'Quận', N'20 51 13N, 106 41 57E', N'31'),
(305, N'Lê Chân', N'Quận', N'20 50 12N, 106 40 30E', N'31'),
(306, N'Hải An', N'Quận', N'20 49 38N, 106 45 57E', N'31'),
(307, N'Kiến An', N'Quận', N'20 48 26N, 106 38 03E', N'31'),
(308, N'Đồ Sơn', N'Quận', N'20 42 41N, 106 44 54E', N'31'),
(309, N'Kinh Dương', N'Quận', N'', N'31'),
(311, N'Thuỷ Nguyên', N'Huyện', N'20 56 36N, 106 39 38E', N'31'),
(312, N'An Dương', N'Huyện', N'20 53 06N, 106 35 36E', N'31'),
(313, N'An Lão', N'Huyện', N'20 47 54N, 106 33 19E', N'31'),
(314, N'Kiến Thụy', N'Huyện', N'20 45 13N, 106 41 47E', N'31'),
(315, N'Tiên Lãng', N'Huyện', N'20 42 23N, 106 36 03E', N'31'),
(316, N'Vĩnh Bảo', N'Huyện', N'20 40 56N, 106 29 57E', N'31'),
(317, N'Cát Hải', N'Huyện', N'20 47 09N, 106 58 07E', N'31'),
(318, N'Bạch Long Vĩ', N'Huyện', N'20 08 41N, 107 42 51E', N'31'),
(323, N'Hưng Yên', N'Thành Phố', N'20 39 38N, 106 03 08E', N'33'),
(325, N'Văn Lâm', N'Huyện', N'20 58 31N, 106 02 51E', N'33'),
(326, N'Văn Giang', N'Huyện', N'20 55 51N, 105 57 14E', N'33'),
(327, N'Yên Mỹ', N'Huyện', N'20 53 45N, 106 01 21E', N'33'),
(328, N'Mỹ Hào', N'Huyện', N'20 55 35N, 106 05 34E', N'33'),
(329, N'Ân Thi', N'Huyện', N'20 48 49N, 106 05 30E', N'33'),
(330, N'Khoái Châu', N'Huyện', N'20 49 53N, 105 58 28E', N'33'),
(331, N'Kim Động', N'Huyện', N'20 44 47N, 106 01 47E', N'33'),
(332, N'Tiên Lữ', N'Huyện', N'20 40 05N, 106 07 59E', N'33'),
(333, N'Phù Cừ', N'Huyện', N'20 42 51N, 106 11 30E', N'33'),
(336, N'Thái Bình', N'Thành Phố', N'20 26 45N, 106 19 56E', N'34'),
(338, N'Quỳnh Phụ', N'Huyện', N'20 38 57N, 106 21 16E', N'34'),
(339, N'Hưng Hà', N'Huyện', N'20 35 38N, 106 12 42E', N'34'),
(340, N'Đông Hưng', N'Huyện', N'20 32 50N, 106 20 15E', N'34'),
(341, N'Thái Thụy', N'Huyện', N'20 32 33N, 106 32 32E', N'34'),
(342, N'Tiền Hải', N'Huyện', N'20 21 05N, 106 32 45E', N'34'),
(343, N'Kiến Xương', N'Huyện', N'20 23 52N, 106 25 22E', N'34'),
(344, N'Vũ Thư', N'Huyện', N'20 25 29N, 106 16 43E', N'34'),
(347, N'Phủ Lý', N'Thành Phố', N'20 32 19N, 105 54 55E', N'35'),
(349, N'Duy Tiên', N'Huyện', N'20 37 33N, 105 58 01E', N'35'),
(350, N'Kim Bảng', N'Huyện', N'20 34 19N, 105 50 41E', N'35'),
(351, N'Thanh Liêm', N'Huyện', N'20 27 31N, 105 55 09E', N'35'),
(352, N'Bình Lục', N'Huyện', N'20 29 23N, 106 02 52E', N'35'),
(353, N'Lý Nhân', N'Huyện', N'20 32 55N, 106 04 48E', N'35'),
(356, N'Nam Định', N'Thành Phố', N'20 25 07N, 106 09 54E', N'36'),
(358, N'Mỹ Lộc', N'Huyện', N'20 27 21N, 106 07 56E', N'36'),
(359, N'Vụ Bản', N'Huyện', N'20 22 57N, 106 05 35E', N'36'),
(360, N'Ý Yên', N'Huyện', N'20 19 48N, 106 01 55E', N'36'),
(361, N'Nghĩa Hưng', N'Huyện', N'20 05 37N, 106 08 59E', N'36'),
(362, N'Nam Trực', N'Huyện', N'20 20 08N, 106 12 54E', N'36'),
(363, N'Trực Ninh', N'Huyện', N'20 14 42N, 106 12 45E', N'36'),
(364, N'Xuân Trường', N'Huyện', N'20 17 53N, 106 21 43E', N'36'),
(365, N'Giao Thủy', N'Huyện', N'20 14 45N, 106 28 39E', N'36'),
(366, N'Hải Hậu', N'Huyện', N'20 06 26N, 106 16 29E', N'36'),
(369, N'Ninh Bình', N'Thành Phố', N'20 14 45N, 105 58 24E', N'37'),
(370, N'Tam Điệp', N'Thị Xã', N'20 09 42N, 103 52 43E', N'37'),
(372, N'Nho Quan', N'Huyện', N'20 18 46N, 105 42 48E', N'37'),
(373, N'Gia Viễn', N'Huyện', N'20 19 50N, 105 52 20E', N'37'),
(374, N'Hoa Lư', N'Huyện', N'20 15 04N, 105 55 52E', N'37'),
(375, N'Yên Khánh', N'Huyện', N'20 11 26N, 106 04 33E', N'37'),
(376, N'Kim Sơn', N'Huyện', N'20 02 07N, 106 05 27E', N'37'),
(377, N'Yên Mô', N'Huyện', N'20 07 45N, 105 59 45E', N'37'),
(380, N'Thanh Hóa', N'Thành Phố', N'19 48 26N, 105 47 37E', N'38'),
(381, N'Bỉm Sơn', N'Thị Xã', N'20 05 21N, 105 51 48E', N'38'),
(382, N'Sầm Sơn', N'Thị Xã', N'19 45 11N, 105 54 03E', N'38'),
(384, N'Mường Lát', N'Huyện', N'20 30 42N, 104 37 27E', N'38'),
(385, N'Quan Hóa', N'Huyện', N'20 29 15N, 104 56 35E', N'38'),
(386, N'Bá Thước', N'Huyện', N'20 22 48N, 105 14 50E', N'38'),
(387, N'Quan Sơn', N'Huyện', N'20 15 17N, 104 51 58E', N'38'),
(388, N'Lang Chánh', N'Huyện', N'20 08 58N, 105 07 40E', N'38'),
(389, N'Ngọc Lặc', N'Huyện', N'20 04 08N, 105 22 39E', N'38'),
(390, N'Cẩm Thủy', N'Huyện', N'20 12 20N, 105 27 22E', N'38'),
(391, N'Thạch Thành', N'Huyện', N'21 12 41N, 105 36 38E', N'38'),
(392, N'Hà Trung', N'Huyện', N'20 03 20N, 105 51 20E', N'38'),
(393, N'Vĩnh Lộc', N'Huyện', N'20 02 29N, 105 39 28E', N'38'),
(394, N'Yên Định', N'Huyện', N'20 00 31N, 105 37 44E', N'38'),
(395, N'Thọ Xuân', N'Huyện', N'19 55 39N, 105 29 14E', N'38'),
(396, N'Thường Xuân', N'Huyện', N'19 54 55N, 105 10 46E', N'38'),
(397, N'Triệu Sơn', N'Huyện', N'19 48 11N, 105 34 03E', N'38'),
(398, N'Thiệu Hoá', N'Huyện', N'19 53 56N, 105 40 57E', N'38'),
(399, N'Hoằng Hóa', N'Huyện', N'19 51 59N, 105 51 34E', N'38'),
(400, N'Hậu Lộc', N'Huyện', N'19 56 02N, 105 53 19E', N'38'),
(401, N'Nga Sơn', N'Huyện', N'20 00 16N, 105 59 26E', N'38'),
(402, N'Như Xuân', N'Huyện', N'19 5 55N, 105 20 22E', N'38'),
(403, N'Như Thanh', N'Huyện', N'19 35 19N, 105 33 09E', N'38'),
(404, N'Nông Cống', N'Huyện', N'19 36 58N, 105 40 54E', N'38'),
(405, N'Đông Sơn', N'Huyện', N'19 47 44N, 105 42 19E', N'38'),
(406, N'Quảng Xương', N'Huyện', N'19 40 53N, 105 48 01E', N'38'),
(407, N'Tĩnh Gia', N'Huyện', N'19 27 13N, 105 43 38E', N'38'),
(412, N'Vinh', N'Thành Phố', N'18 41 06N, 105 42 05E', N'40'),
(413, N'Cửa Lò', N'Thị Xã', N'18 47 26N, 105 43 31E', N'40'),
(414, N'Thái Hoà', N'Thị Xã', N'', N'40'),
(415, N'Quế Phong', N'Huyện', N'19 42 25N, 104 54 21E', N'40'),
(416, N'Quỳ Châu', N'Huyện', N'19 32 16N, 105 03 18E', N'40'),
(417, N'Kỳ Sơn', N'Huyện', N'19 24 36N, 104 09 45E', N'40'),
(418, N'Tương Dương', N'Huyện', N'19 19 15N, 104 35 41E', N'40'),
(419, N'Nghĩa Đàn', N'Huyện', N'19 21 19N, 105 26 33E', N'40'),
(420, N'Quỳ Hợp', N'Huyện', N'19 19 24N, 105 09 12E', N'40'),
(421, N'Quỳnh Lưu', N'Huyện', N'19 14 01N, 105 37 00E', N'40'),
(422, N'Con Cuông', N'Huyện', N'19 03 50N, 107 47 15E', N'40'),
(423, N'Tân Kỳ', N'Huyện', N'19 06 11N, 105 14 14E', N'40'),
(424, N'Anh Sơn', N'Huyện', N'18 58 04N, 105 04 30E', N'40'),
(425, N'Diễn Châu', N'Huyện', N'19 01 20N, 105 34 13E', N'40'),
(426, N'Yên Thành', N'Huyện', N'19 01 25N, 105 26 17E', N'40'),
(427, N'Đô Lương', N'Huyện', N'18 55 00N, 105 21 03E', N'40'),
(428, N'Thanh Chương', N'Huyện', N'18 44 11N, 105 12 59E', N'40'),
(429, N'Nghi Lộc', N'Huyện', N'18 47 41N, 105 31 30E', N'40'),
(430, N'Nam Đàn', N'Huyện', N'18 40 28N, 105 30 32E', N'40'),
(431, N'Hưng Nguyên', N'Huyện', N'18 41 13N, 105 37 41E', N'40'),
(436, N'Hà Tĩnh', N'Thành Phố', N'18 21 20N, 105 54 00E', N'42'),
(437, N'Hồng Lĩnh', N'Thị Xã', N'18 32 05N, 105 42 40E', N'42'),
(439, N'Hương Sơn', N'Huyện', N'18 26 47N, 105 19 36E', N'42'),
(440, N'Đức Thọ', N'Huyện', N'18 29 23N, 105 36 39E', N'42'),
(441, N'Vũ Quang', N'Huyện', N'18 19 30N, 105 26 38E', N'42'),
(442, N'Nghi Xuân', N'Huyện', N'18 38 46N, 105 46 17E', N'42'),
(443, N'Can Lộc', N'Huyện', N'18 26 39N, 105 46 13E', N'42'),
(444, N'Hương Khê', N'Huyện', N'18 11 36N, 105 41 24E', N'42'),
(445, N'Thạch Hà', N'Huyện', N'18 19 29N, 105 52 43E', N'42'),
(446, N'Cẩm Xuyên', N'Huyện', N'18 11 32N, 106 00 04E', N'42'),
(447, N'Kỳ Anh', N'Huyện', N'18 05 15N, 106 15 49E', N'42'),
(448, N'Lộc Hà', N'Huyện', N'', N'42'),
(450, N'Đồng Hới', N'Thành Phố', N'17 26 53N, 106 35 15E', N'44'),
(452, N'Minh Hóa', N'Huyện', N'17 44 03N, 105 51 45E', N'44'),
(453, N'Tuyên Hóa', N'Huyện', N'17 54 04N, 105 58 17E', N'44'),
(454, N'Quảng Trạch', N'Huyện', N'17 50 04N, 106 22 24E', N'44'),
(455, N'Bố Trạch', N'Huyện', N'17 29 13N, 106 06 54E', N'44'),
(456, N'Quảng Ninh', N'Huyện', N'17 15 15N, 106 32 31E', N'44'),
(457, N'Lệ Thủy', N'Huyện', N'17 07 35N, 106 41 47E', N'44'),
(461, N'Đông Hà', N'Thành Phố', N'16 48 12N, 107 05 12E', N'45'),
(462, N'Quảng Trị', N'Thị Xã', N'16 44 37N, 107 11 20E', N'45'),
(464, N'Vĩnh Linh', N'Huyện', N'17 01 35N, 106 53 49E', N'45'),
(465, N'Hướng Hóa', N'Huyện', N'16 42 19N, 106 40 14E', N'45'),
(466, N'Gio Linh', N'Huyện', N'16 54 49N, 106 56 16E', N'45'),
(467, N'Đa Krông', N'Huyện', N'16 33 58N, 106 55 49E', N'45'),
(468, N'Cam Lộ', N'Huyện', N'16 47 09N, 106 57 52E', N'45'),
(469, N'Triệu Phong', N'Huyện', N'16 46 32N, 107 09 12E', N'45'),
(470, N'Hải Lăng', N'Huyện', N'16 41 07N, 107 13 34E', N'45'),
(471, N'Cồn Cỏ', N'Huyện', N'19 09 39N, 107 19 58E', N'45'),
(474, N'Huế', N'Thành Phố', N'16 27 16N, 107 34 29E', N'46'),
(476, N'Phong Điền', N'Huyện', N'16 32 42N, 106 16 37E', N'46'),
(477, N'Quảng Điền', N'Huyện', N'16 35 21N, 107 29 31E', N'46'),
(478, N'Phú Vang', N'Huyện', N'16 27 20N, 107 42 28E', N'46'),
(479, N'Hương Thủy', N'Huyện', N'16 19 27N, 107 37 26E', N'46'),
(480, N'Hương Trà', N'Huyện', N'16 25 49N, 107 28 37E', N'46'),
(481, N'A Lưới', N'Huyện', N'16 13 59N, 107 16 12E', N'46'),
(482, N'Phú Lộc', N'Huyện', N'16 17 16N, 107 55 25E', N'46'),
(483, N'Nam Đông', N'Huyện', N'16 07 11N, 107 41 25E', N'46'),
(490, N'Liên Chiểu', N'Quận', N'16 07 26N, 108 07 04E', N'48'),
(491, N'Thanh Khê', N'Quận', N'16 03 28N, 108 11 00E', N'48'),
(492, N'Hải Châu', N'Quận', N'16 03 38N, 108 11 46E', N'48'),
(493, N'Sơn Trà', N'Quận', N'16 06 13N, 108 16 26E', N'48'),
(494, N'Ngũ Hành Sơn', N'Quận', N'16 00 30N, 108 15 09E', N'48'),
(495, N'Cẩm Lệ', N'Quận', N'', N'48'),
(497, N'Hoà Vang', N'Huyện', N'16 03 59N, 108 01 57E', N'48'),
(498, N'Hoàng Sa', N'Huyện', N'16 21 36N, 111 57 01E', N'48'),
(502, N'Tam Kỳ', N'Thành Phố', N'15 34 37N, 108 29 52E', N'49'),
(503, N'Hội An', N'Thành Phố', N'15 53 20N, 108 20 42E', N'49'),
(504, N'Tây Giang', N'Huyện', N'15 53 46N, 107 25 52E', N'49'),
(505, N'Đông Giang', N'Huyện', N'15 54 44N, 107 47 06E', N'49'),
(506, N'Đại Lộc', N'Huyện', N'15 50 10N, 107 58 27E', N'49'),
(507, N'Điện Bàn', N'Huyện', N'15 54 15N, 108 13 38E', N'49'),
(508, N'Duy Xuyên', N'Huyện', N'15 47 58N, 108 13 27E', N'49'),
(509, N'Quế Sơn', N'Huyện', N'15 41 03N, 108 05 34E', N'49'),
(510, N'Nam Giang', N'Huyện', N'15 36 37N, 107 33 52E', N'49'),
(511, N'Phước Sơn', N'Huyện', N'15 23 17N, 107 50 22E', N'49'),
(512, N'Hiệp Đức', N'Huyện', N'15 31 09N, 108 05 56E', N'49'),
(513, N'Thăng Bình', N'Huyện', N'15 42 29N, 108 22 04E', N'49'),
(514, N'Tiên Phước', N'Huyện', N'15 29 30N, 108 15 28E', N'49'),
(515, N'Bắc Trà My', N'Huyện', N'15 08 00N, 108 05 32E', N'49'),
(516, N'Nam Trà My', N'Huyện', N'15 16 40N, 108 12 15E', N'49'),
(517, N'Núi Thành', N'Huyện', N'15 26 53N, 108 34 49E', N'49'),
(518, N'Phú Ninh', N'Huyện', N'15 30 43N, 108 24 43E', N'49'),
(519, N'Nông Sơn', N'Huyện', N'', N'49'),
(522, N'Quảng Ngãi', N'Thành Phố', N'15 07 17N, 108 48 24E', N'51'),
(524, N'Bình Sơn', N'Huyện', N'15 18 45N, 108 45 35E', N'51'),
(525, N'Trà Bồng', N'Huyện', N'15 13 30N, 108 29 57E', N'51'),
(526, N'Tây Trà', N'Huyện', N'15 11 13N, 108 22 23E', N'51'),
(527, N'Sơn Tịnh', N'Huyện', N'15 11 49N, 108 45 03E', N'51'),
(528, N'Tư Nghĩa', N'Huyện', N'15 05 25N, 108 45 23E', N'51'),
(529, N'Sơn Hà', N'Huyện', N'14 58 35N, 108 29 09E', N'51'),
(530, N'Sơn Tây', N'Huyện', N'14 58 11N, 108 21 22E', N'51'),
(531, N'Minh Long', N'Huyện', N'14 56 49N, 108 40 19E', N'51'),
(532, N'Nghĩa Hành', N'Huyện', N'14 58 06N, 108 46 05E', N'51'),
(533, N'Mộ Đức', N'Huyện', N'11 59 13N, 108 52 21E', N'51'),
(534, N'Đức Phổ', N'Huyện', N'14 44 59N, 108 56 58E', N'51'),
(535, N'Ba Tơ', N'Huyện', N'14 42 52N, 108 43 44E', N'51'),
(536, N'Lý Sơn', N'Huyện', N'15 22 50N, 109 06 56E', N'51'),
(540, N'Qui Nhơn', N'Thành Phố', N'13 47 15N, 109 12 48E', N'52'),
(542, N'An Lão', N'Huyện', N'14 32 10N, 108 47 52E', N'52'),
(543, N'Hoài Nhơn', N'Huyện', N'14 30 56N, 109 01 56E', N'52'),
(544, N'Hoài Ân', N'Huyện', N'14 20 51N, 108 54 04E', N'52'),
(545, N'Phù Mỹ', N'Huyện', N'14 14 41N, 109 05 43E', N'52'),
(546, N'Vĩnh Thạnh', N'Huyện', N'14 14 26N, 108 44 08E', N'52'),
(547, N'Tây Sơn', N'Huyện', N'13 56 47N, 108 53 06E', N'52'),
(548, N'Phù Cát', N'Huyện', N'14 03 48N, 109 03 57E', N'52'),
(549, N'An Nhơn', N'Huyện', N'13 51 28N, 109 04 02E', N'52'),
(550, N'Tuy Phước', N'Huyện', N'13 46 30N, 109 05 38E', N'52'),
(551, N'Vân Canh', N'Huyện', N'13 40 35N, 108 57 52E', N'52'),
(555, N'Tuy Hòa', N'Thành Phố', N'13 05 42N, 109 15 50E', N'54'),
(557, N'Sông Cầu', N'Thị Xã', N'13 31 40N, 109 12 39E', N'54'),
(558, N'Đồng Xuân', N'Huyện', N'13 24 59N, 108 56 46E', N'54'),
(559, N'Tuy An', N'Huyện', N'13 15 19N, 109 12 21E', N'54'),
(560, N'Sơn Hòa', N'Huyện', N'13 12 16N, 108 57 17E', N'54'),
(561, N'Sông Hinh', N'Huyện', N'12 54 19N, 108 53 38E', N'54'),
(562, N'Tây Hoà', N'Huyện', N'', N'54'),
(563, N'Phú Hoà', N'Huyện', N'13 04 07N, 109 11 24E', N'54'),
(564, N'Đông Hoà', N'Huyện', N'', N'54'),
(568, N'Nha Trang', N'Thành Phố', N'12 15 40N, 109 10 40E', N'56'),
(569, N'Cam Ranh', N'Thị Xã', N'11 59 05N, 108 08 17E', N'56'),
(570, N'Cam Lâm', N'Huyện', N'', N'56'),
(571, N'Vạn Ninh', N'Huyện', N'12 43 10N, 109 11 18E', N'56'),
(572, N'Ninh Hòa', N'Huyện', N'12 32 54N, 109 06 11E', N'56'),
(573, N'Khánh Vĩnh', N'Huyện', N'12 17 50N, 108 51 56E', N'56'),
(574, N'Diên Khánh', N'Huyện', N'12 13 19N, 109 02 16E', N'56'),
(575, N'Khánh Sơn', N'Huyện', N'12 02 17N, 108 53 47E', N'56'),
(576, N'Trường Sa', N'Huyện', N'9 07 27N, 114 15 00E', N'56'),
(582, N'Phan Rang-Tháp Chàm', N'Thành Phố', N'11 36 11N, 108 58 34E', N'58'),
(584, N'Bác Ái', N'Huyện', N'11 54 45N, 108 51 29E', N'58'),
(585, N'Ninh Sơn', N'Huyện', N'11 42 36N, 108 44 55E', N'58'),
(586, N'Ninh Hải', N'Huyện', N'11 42 46N, 109 05 41E', N'58'),
(587, N'Ninh Phước', N'Huyện', N'11 28 56N, 108 50 34E', N'58'),
(588, N'Thuận Bắc', N'Huyện', N'', N'58'),
(589, N'Thuận Nam', N'Huyện', N'', N'58'),
(593, N'Phan Thiết', N'Thành Phố', N'10 54 16N, 108 03 44E', N'60'),
(594, N'La Gi', N'Thị Xã', N'', N'60'),
(595, N'Tuy Phong', N'Huyện', N'11 20 26N, 108 41 15E', N'60'),
(596, N'Bắc Bình', N'Huyện', N'11 15 52N, 108 21 33E', N'60'),
(597, N'Hàm Thuận Bắc', N'Huyện', N'11 09 18N, 108 03 07E', N'60'),
(598, N'Hàm Thuận Nam', N'Huyện', N'10 56 20N, 107 54 38E', N'60'),
(599, N'Tánh Linh', N'Huyện', N'11 08 26N, 107 41 22E', N'60'),
(600, N'Đức Linh', N'Huyện', N'11 11 43N, 107 31 34E', N'60'),
(601, N'Hàm Tân', N'Huyện', N'10 44 41N, 107 41 33E', N'60'),
(602, N'Phú Quí', N'Huyện', N'10 33 13N, 108 57 46E', N'60'),
(608, N'Kon Tum', N'Thành Phố', N'14 20 32N, 107 58 04E', N'62'),
(610, N'Đắk Glei', N'Huyện', N'15 08 13N, 107 44 03E', N'62'),
(611, N'Ngọc Hồi', N'Huyện', N'14 44 23N, 107 38 49E', N'62'),
(612, N'Đắk Tô', N'Huyện', N'14 46 49N, 107 55 36E', N'62'),
(613, N'Kon Plông', N'Huyện', N'14 48 13N, 108 20 05E', N'62'),
(614, N'Kon Rẫy', N'Huyện', N'14 32 56N, 108 13 09E', N'62'),
(615, N'Đắk Hà', N'Huyện', N'14 36 50N, 107 59 55E', N'62'),
(616, N'Sa Thầy', N'Huyện', N'14 16 02N, 107 36 30E', N'62'),
(617, N'Tu Mơ Rông', N'Huyện', N'', N'62'),
(622, N'Pleiku', N'Thành Phố', N'13 57 42N, 107 58 03E', N'64'),
(623, N'An Khê', N'Thị Xã', N'14 01 24N, 108 41 29E', N'64'),
(624, N'Ayun Pa', N'Thị Xã', N'', N'64'),
(625, N'Kbang', N'Huyện', N'14 18 08N, 108 29 17E', N'64'),
(626, N'Đăk Đoa', N'Huyện', N'14 07 02N, 108 09 36E', N'64'),
(627, N'Chư Păh', N'Huyện', N'14 13 30N, 107 56 33E', N'64'),
(628, N'Ia Grai', N'Huyện', N'13 59 25N, 107 43 16E', N'64'),
(629, N'Mang Yang', N'Huyện', N'13 57 26N, 108 18 37E', N'64'),
(630, N'Kông Chro', N'Huyện', N'13 45 47N, 108 36 04E', N'64'),
(631, N'Đức Cơ', N'Huyện', N'13 46 16N, 107 38 26E', N'64'),
(632, N'Chư Prông', N'Huyện', N'13 35 39N, 107 47 36E', N'64'),
(633, N'Chư Sê', N'Huyện', N'13 37 04N, 108 06 56E', N'64'),
(634, N'Đăk Pơ', N'Huyện', N'13 55 47N, 108 36 16E', N'64'),
(635, N'Ia Pa', N'Huyện', N'13 31 37N, 108 30 34E', N'64'),
(637, N'Krông Pa', N'Huyện', N'13 14 13N, 108 39 12E', N'64'),
(638, N'Phú Thiện', N'Huyện', N'', N'64'),
(639, N'Chư Pưh', N'Huyện', N'', N'64'),
(643, N'Buôn Ma Thuột', N'Thành Phố', N'12 39 43N, 108 10 40E', N'66'),
(644, N'Buôn Hồ', N'Thị Xã', N'', N'66'),
(645, N'Ea H''leo', N'Huyện', N'13 13 52N, 108 12 30E', N'66'),
(646, N'Ea Súp', N'Huyện', N'13 10 59N, 107 46 49E', N'66'),
(647, N'Buôn Đôn', N'Huyện', N'12 52 45N, 107 45 20E', N'66'),
(648, N'Cư M''gar', N'Huyện', N'12 53 47N, 108 04 16E', N'66'),
(649, N'Krông Búk', N'Huyện', N'12 56 27N, 108 13 54E', N'66'),
(650, N'Krông Năng', N'Huyện', N'12 59 41N, 108 23 42E', N'66'),
(651, N'Ea Kar', N'Huyện', N'12 48 17N, 108 32 42E', N'66'),
(652, N'M''đrắk', N'Huyện', N'12 42 14N, 108 47 09E', N'66'),
(653, N'Krông Bông', N'Huyện', N'12 27 08N, 108 27 01E', N'66'),
(654, N'Krông Pắc', N'Huyện', N'12 41 20N, 108 18 42E', N'66'),
(655, N'Krông A Na', N'Huyện', N'12 31 51N, 108 05 03E', N'66'),
(656, N'Lắk', N'Huyện', N'12 19 20N, 108 12 17E', N'66'),
(657, N'Cư Kuin', N'Huyện', N'', N'66'),
(660, N'Gia Nghĩa', N'Thị Xã', N'', N'67'),
(661, N'Đắk Glong', N'Huyện', N'12 01 53N, 107 50 37E', N'67'),
(662, N'Cư Jút', N'Huyện', N'12 40 56N, 107 44 44E', N'67'),
(663, N'Đắk Mil', N'Huyện', N'12 31 08N, 107 42 24E', N'67'),
(664, N'Krông Nô', N'Huyện', N'12 22 16N, 107 53 49E', N'67'),
(665, N'Đắk Song', N'Huyện', N'12 14 04N, 107 36 30E', N'67'),
(666, N'Đắk R''lấp', N'Huyện', N'12 02 30N, 107 25 59E', N'67'),
(667, N'Tuy Đức', N'Huyện', N'', N'67'),
(672, N'Đà Lạt', N'Thành Phố', N'11 54 33N, 108 27 08E', N'68'),
(673, N'Bảo Lộc', N'Thị Xã', N'11 32 48N, 107 47 37E', N'68'),
(674, N'Đam Rông', N'Huyện', N'12 02 35N, 108 10 26E', N'68'),
(675, N'Lạc Dương', N'Huyện', N'12 08 30N, 108 27 48E', N'68'),
(676, N'Lâm Hà', N'Huyện', N'11 55 26N, 108 11 31E', N'68'),
(677, N'Đơn Dương', N'Huyện', N'11 48 26N, 108 32 48E', N'68'),
(678, N'Đức Trọng', N'Huyện', N'11 41 50N, 108 18 58E', N'68'),
(679, N'Di Linh', N'Huyện', N'11 31 10N, 108 05 23E', N'68'),
(680, N'Bảo Lâm', N'Huyện', N'11 38 31N, 107 43 25E', N'68'),
(681, N'Đạ Huoai', N'Huyện', N'11 27 11N, 107 38 08E', N'68'),
(682, N'Đạ Tẻh', N'Huyện', N'11 33 46N, 107 32 00E', N'68'),
(683, N'Cát Tiên', N'Huyện', N'11 39 38N, 107 23 27E', N'68'),
(688, N'Phước Long', N'Thị Xã', N'', N'70'),
(689, N'Đồng Xoài', N'Thị Xã', N'11 31 01N, 106 50 21E', N'70'),
(690, N'Bình Long', N'Thị Xã', N'', N'70'),
(691, N'Bù Gia Mập', N'Huyện', N'11 56 57N, 106 59 21E', N'70'),
(692, N'Lộc Ninh', N'Huyện', N'11 49 28N, 106 35 11E', N'70'),
(693, N'Bù Đốp', N'Huyện', N'11 59 08N, 106 49 54E', N'70'),
(694, N'Hớn Quản', N'Huyện', N'11 37 37N, 106 36 02E', N'70'),
(695, N'Đồng Phù', N'Huyện', N'11 28 45N, 106 57 07E', N'70'),
(696, N'Bù Đăng', N'Huyện', N'11 46 09N, 107 14 14E', N'70'),
(697, N'Chơn Thành', N'Huyện', N'11 28 45N, 106 39 26E', N'70'),
(703, N'Tây Ninh', N'Thị Xã', N'11 21 59N, 106 07 47E', N'72'),
(705, N'Tân Biên', N'Huyện', N'11 35 14N, 105 57 53E', N'72'),
(706, N'Tân Châu', N'Huyện', N'11 34 49N, 106 17 48E', N'72'),
(707, N'Dương Minh Châu', N'Huyện', N'11 22 04N, 106 16 58E', N'72'),
(708, N'Châu Thành', N'Huyện', N'11 19 02N, 106 00 15E', N'72'),
(709, N'Hòa Thành', N'Huyện', N'11 15 31N, 106 08 44E', N'72'),
(710, N'Gò Dầu', N'Huyện', N'11 09 39N, 106 14 42E', N'72'),
(711, N'Bến Cầu', N'Huyện', N'11 07 50N, 106 08 25E', N'72'),
(712, N'Trảng Bàng', N'Huyện', N'11 06 18N, 106 23 12E', N'72'),
(718, N'Thủ Dầu Một', N'Thị Xã', N'11 00 01N, 106 38 56E', N'74'),
(720, N'Dầu Tiếng', N'Huyện', N'11 19 07N, 106 26 59E', N'74'),
(721, N'Bến Cát', N'Huyện', N'11 12 42N, 106 36 28E', N'74'),
(722, N'Phú Giáo', N'Huyện', N'11 20 21N, 106 47 48E', N'74'),
(723, N'Tân Uyên', N'Huyện', N'11 06 31N, 106 49 02E', N'74'),
(724, N'Dĩ An', N'Huyện', N'10 55 03N, 106 47 09E', N'74'),
(725, N'Thuận An', N'Huyện', N'10 55 58N, 106 41 59E', N'74'),
(731, N'Biên Hòa', N'Thành Phố', N'10 56 31N, 106 50 50E', N'75'),
(732, N'Long Khánh', N'Thị Xã', N'10 56 24N, 107 14 29E', N'75'),
(734, N'Tân Phú', N'Huyện', N'11 22 51N, 107 21 35E', N'75'),
(735, N'Vĩnh Cửu', N'Huyện', N'11 14 31N, 107 00 06E', N'75'),
(736, N'Định Quán', N'Huyện', N'11 12 41N, 107 17 03E', N'75'),
(737, N'Trảng Bom', N'Huyện', N'10 58 39N, 107 00 52E', N'75'),
(738, N'Thống Nhất', N'Huyện', N'10 58 29N, 107 09 26E', N'75'),
(739, N'Cẩm Mỹ', N'Huyện', N'10 47 05N, 107 14 36E', N'75'),
(740, N'Long Thành', N'Huyện', N'10 47 38N, 106 59 42E', N'75'),
(741, N'Xuân Lộc', N'Huyện', N'10 55 39N, 107 24 21E', N'75'),
(742, N'Nhơn Trạch', N'Huyện', N'10 39 18N, 106 53 18E', N'75'),
(747, N'Vũng Tầu', N'Thành Phố', N'10 24 08N, 107 07 05E', N'77'),
(748, N'Bà Rịa', N'Thị Xã', N'10 30 33N, 107 10 47E', N'77'),
(750, N'Châu Đức', N'Huyện', N'10 39 23N, 107 15 08E', N'77'),
(751, N'Xuyên Mộc', N'Huyện', N'10 37 46N, 107 29 39E', N'77'),
(752, N'Long Điền', N'Huyện', N'10 26 47N, 107 12 53E', N'77'),
(753, N'Đất Đỏ', N'Huyện', N'10 28 40N, 107 18 27E', N'77'),
(754, N'Tân Thành', N'Huyện', N'10 34 50N, 107 05 06E', N'77'),
(755, N'Côn Đảo', N'Huyện', N'8 42 25N, 106 36 05E', N'77'),
(760, N'Quận 1', N'Quận', N'10 46 34N, 106 41 45E', N'79'),
(761, N'Quận 12', N'Quận', N'10 51 43N, 106 39 32E', N'79'),
(762, N'Thủ Đức', N'Quận', N'10 51 20N, 106 45 05E', N'79'),
(763, N'Quận 9', N'Quận', N'10 49 49N, 106 49 03E', N'79'),
(764, N'Gò Vấp', N'Quận', N'10 50 12N, 106 39 52E', N'79'),
(765, N'Bình Thạnh', N'Quận', N'10 48 46N, 106 42 57E', N'79'),
(766, N'Tân Bình', N'Quận', N'10 48 13N, 106 39 03E', N'79'),
(767, N'Tân Phú', N'Quận', N'10 47 32N, 106 37 31E', N'79'),
(768, N'Phú Nhuận', N'Quận', N'10 48 06N, 106 40 39E', N'79'),
(769, N'Quận 2', N'Quận', N'10 46 51N, 106 45 25E', N'79'),
(770, N'Quận 3', N'Quận', N'10 46 48N, 106 40 46E', N'79'),
(771, N'Quận 10', N'Quận', N'10 46 25N, 106 40 02E', N'79'),
(772, N'Quận 11', N'Quận', N'10 46 01N, 106 38 44E', N'79'),
(773, N'Quận 4', N'Quận', N'10 45 42N, 106 42 09E', N'79'),
(774, N'Quận 5', N'Quận', N'10 45 24N, 106 40 00E', N'79'),
(775, N'Quận 6', N'Quận', N'10 44 46N, 106 38 10E', N'79'),
(776, N'Quận 8', N'Quận', N'10 43 24N, 106 37 40E', N'79'),
(777, N'Bình Tân', N'Quận', N'10 46 16N, 106 35 26E', N'79'),
(778, N'Quận 7', N'Quận', N'10 44 19N, 106 43 35E', N'79'),
(783, N'Củ Chi', N'Huyện', N'11 02 17N, 106 30 20E', N'79'),
(784, N'Hóc Môn', N'Huyện', N'10 52 42N, 106 35 33E', N'79'),
(785, N'Bình Chánh', N'Huyện', N'10 45 01N, 106 30 45E', N'79'),
(786, N'Nhà Bè', N'Huyện', N'10 39 06N, 106 43 35E', N'79'),
(787, N'Cần Giờ', N'Huyện', N'10 30 43N, 106 52 50E', N'79'),
(794, N'Tân An', N'Thành Phố', N'10 31 36N, 106 24 06E', N'80'),
(796, N'Tân Hưng', N'Huyện', N'10 49 05N, 105 39 26E', N'80'),
(797, N'Vĩnh Hưng', N'Huyện', N'10 52 54N, 105 45 58E', N'80'),
(798, N'Mộc Hóa', N'Huyện', N'10 47 09N, 105 57 56E', N'80'),
(799, N'Tân Thạnh', N'Huyện', N'10 37 44N, 105 57 07E', N'80'),
(800, N'Thạnh Hóa', N'Huyện', N'10 41 37N, 106 11 08E', N'80'),
(801, N'Đức Huệ', N'Huyện', N'10 51 57N, 106 15 48E', N'80'),
(802, N'Đức Hòa', N'Huyện', N'10 53 04N, 106 23 58E', N'80'),
(803, N'Bến Lức', N'Huyện', N'10 41 40N, 106 26 28E', N'80'),
(804, N'Thủ Thừa', N'Huyện', N'10 39 41N, 106 20 12E', N'80'),
(805, N'Tân Trụ', N'Huyện', N'10 31 47N, 106 30 06E', N'80'),
(806, N'Cần Đước', N'Huyện', N'10 32 21N, 106 36 33E', N'80'),
(807, N'Cần Giuộc', N'Huyện', N'10 34 43N, 106 38 35E', N'80'),
(808, N'Châu Thành', N'Huyện', N'10 27 52N, 106 30 00E', N'80'),
(815, N'Mỹ Tho', N'Thành Phố', N'10 22 14N, 106 21 52E', N'82'),
(816, N'Gò Công', N'Thị Xã', N'10 21 55N, 106 40 24E', N'82'),
(818, N'Tân Phước', N'Huyện', N'10 30 36N, 106 13 02E', N'82'),
(819, N'Cái Bè', N'Huyện', N'10 24 21N, 105 56 01E', N'82'),
(820, N'Cai Lậy', N'Huyện', N'10 24 20N, 106 06 05E', N'82'),
(821, N'Châu Thành', N'Huyện', N'20 25 21N, 106 16 57E', N'82'),
(822, N'Chợ Gạo', N'Huyện', N'10 23 45N, 106 26 53E', N'82'),
(823, N'Gò Công Tây', N'Huyện', N'10 19 55N, 106 35 02E', N'82'),
(824, N'Gò Công Đông', N'Huyện', N'10 20 42N, 106 42 54E', N'82'),
(825, N'Tân Phú Đông', N'Huyện', N'', N'82'),
(829, N'Bến Tre', N'Thành Phố', N'10 14 17N, 106 22 26E', N'83'),
(831, N'Châu Thành', N'Huyện', N'10 17 24N, 106 17 45E', N'83'),
(832, N'Chợ Lách', N'Huyện', N'10 13 26N, 106 09 08E', N'83'),
(833, N'Mỏ Cày Nam', N'Huyện', N'10 06 56N, 106 19 40E', N'83'),
(834, N'Giồng Trôm', N'Huyện', N'10 08 46N, 106 28 12E', N'83'),
(835, N'Bình Đại', N'Huyện', N'10 09 56N, 106 37 46E', N'83'),
(836, N'Ba Tri', N'Huyện', N'10 04 08N, 106 35 10E', N'83'),
(837, N'Thạnh Phú', N'Huyện', N'9 55 53N, 106 32 45E', N'83'),
(838, N'Mỏ Cày Bắc', N'Huyện', N'', N'83'),
(842, N'Trà Vinh', N'Thị Xã', N'9 57 09N, 106 20 39E', N'84'),
(844, N'Càng Long', N'Huyện', N'9 58 18N, 106 12 52E', N'84'),
(845, N'Cầu Kè', N'Huyện', N'9 51 23N, 106 03 33E', N'84'),
(846, N'Tiểu Cần', N'Huyện', N'9 48 37N, 106 12 06E', N'84'),
(847, N'Châu Thành', N'Huyện', N'9 52 57N, 106 24 12E', N'84'),
(848, N'Cầu Ngang', N'Huyện', N'9 47 14N, 106 29 19E', N'84'),
(849, N'Trà Cú', N'Huyện', N'9 42 06N, 106 16 24E', N'84'),
(850, N'Duyên Hải', N'Huyện', N'9 39 58N, 106 26 23E', N'84'),
(855, N'Vĩnh Long', N'Thành Phố', N'10 15 09N, 105 56 08E', N'86'),
(857, N'Long Hồ', N'Huyện', N'10 13 58N, 105 55 47E', N'86'),
(858, N'Mang Thít', N'Huyện', N'10 10 58N, 106 05 13E', N'86'),
(859, N'Vũng Liêm', N'Huyện', N'10 03 32N, 106 10 35E', N'86'),
(860, N'Tam Bình', N'Huyện', N'10 03 58N, 105 58 03E', N'86'),
(861, N'Bình Minh', N'Huyện', N'10 05 45N, 105 47 21E', N'86'),
(862, N'Trà Ôn', N'Huyện', N'9 59 20N, 105 57 56E', N'86'),
(863, N'Bình Tân', N'Huyện', N'', N'86'),
(866, N'Cao Lãnh', N'Thành Phố', N'10 27 38N, 105 37 21E', N'87'),
(867, N'Sa Đéc', N'Thị Xã', N'10 19 22N, 105 44 31E', N'87'),
(868, N'Hồng Ngự', N'Thị Xã', N'', N'87'),
(869, N'Tân Hồng', N'Huyện', N'10 52 48N, 105 29 21E', N'87'),
(870, N'Hồng Ngự', N'Huyện', N'10 48 13N, 105 19 00E', N'87'),
(871, N'Tam Nông', N'Huyện', N'10 44 06N, 105 30 58E', N'87'),
(872, N'Tháp Mười', N'Huyện', N'10 33 36N, 105 47 13E', N'87'),
(873, N'Cao Lãnh', N'Huyện', N'10 29 03N, 105 41 40E', N'87'),
(874, N'Thanh Bình', N'Huyện', N'10 36 38N, 105 28 51E', N'87'),
(875, N'Lấp Vò', N'Huyện', N'10 21 27N, 105 36 06E', N'87'),
(876, N'Lai Vung', N'Huyện', N'10 14 43N, 105 38 40E', N'87'),
(877, N'Châu Thành', N'Huyện', N'10 13 27N, 105 48 38E', N'87'),
(883, N'Long Xuyên', N'Thành Phố', N'10 22 22N, 105 25 33E', N'89'),
(884, N'Châu Đốc', N'Thị Xã', N'10 41 20N, 105 05 15E', N'89'),
(886, N'An Phú', N'Huyện', N'10 50 12N, 105 05 33E', N'89'),
(887, N'Tân Châu', N'Thị Xã', N'10 49 11N, 105 11 18E', N'89'),
(888, N'Phú Tân', N'Huyện', N'10 40 26N, 105 14 40E', N'89'),
(889, N'Châu Phú', N'Huyện', N'10 34 12N, 105 12 13E', N'89'),
(890, N'Tịnh Biên', N'Huyện', N'10 33 30N, 105 00 17E', N'89'),
(891, N'Tri Tôn', N'Huyện', N'10 24 41N, 104 56 58E', N'89'),
(892, N'Châu Thành', N'Huyện', N'10 25 39N, 105 15 31E', N'89'),
(893, N'Chợ Mới', N'Huyện', N'10 27 23N, 105 26 57E', N'89'),
(894, N'Thoại Sơn', N'Huyện', N'10 16 45N, 105 15 59E', N'89'),
(899, N'Rạch Giá', N'Thành Phố', N'10 01 35N, 105 06 20E', N'91'),
(900, N'Hà Tiên', N'Thị Xã', N'10 22 54N, 104 30 10E', N'91'),
(902, N'Kiên Lương', N'Huyện', N'10 20 21N, 104 39 46E', N'91'),
(903, N'Hòn Đất', N'Huyện', N'10 14 20N, 104 55 57E', N'91'),
(904, N'Tân Hiệp', N'Huyện', N'10 05 18N, 105 14 04E', N'91'),
(905, N'Châu Thành', N'Huyện', N'9 57 37N, 105 10 16E', N'91'),
(906, N'Giồng Giềng', N'Huyện', N'9 56 05N, 105 22 06E', N'91'),
(907, N'Gò Quao', N'Huyện', N'9 43 17N, 105 17 06E', N'91'),
(908, N'An Biên', N'Huyện', N'9 48 37N, 105 03 18E', N'91'),
(909, N'An Minh', N'Huyện', N'9 40 24N, 104 59 05E', N'91'),
(910, N'Vĩnh Thuận', N'Huyện', N'9 33 25N, 105 11 30E', N'91'),
(911, N'Phú Quốc', N'Huyện', N'10 13 44N, 103 57 25E', N'91'),
(912, N'Kiên Hải', N'Huyện', N'9 48 31N, 104 37 48E', N'91'),
(913, N'U Minh Thượng', N'Huyện', N'', N'91'),
(914, N'Giang Thành', N'Huyện', N'', N'91'),
(916, N'Ninh Kiều', N'Quận', N'10 01 58N, 105 45 34E', N'92'),
(917, N'Ô Môn', N'Quận', N'10 07 28N, 105 37 51E', N'92'),
(918, N'Bình Thuỷ', N'Quận', N'10 03 42N, 105 43 17E', N'92'),
(919, N'Cái Răng', N'Quận', N'9 59 57N, 105 46 56E', N'92'),
(923, N'Thốt Nốt', N'Quận', N'10 14 23N, 105 32 02E', N'92'),
(924, N'Vĩnh Thạnh', N'Huyện', N'10 11 35N, 105 22 45E', N'92'),
(925, N'Cờ Đỏ', N'Huyện', N'10 02 48N, 105 29 46E', N'92'),
(926, N'Phong Điền', N'Huyện', N'9 59 57N, 105 39 35E', N'92'),
(927, N'Thới Lai', N'Huyện', N'', N'92'),
(930, N'Vị Thanh', N'Thị Xã', N'9 45 15N, 105 24 50E', N'93'),
(931, N'Ngã Bảy', N'Thị Xã', N'', N'93'),
(932, N'Châu Thành A', N'Huyện', N'9 55 50N, 105 38 31E', N'93'),
(933, N'Châu Thành', N'Huyện', N'9 55 22N, 105 48 37E', N'93'),
(934, N'Phụng Hiệp', N'Huyện', N'9 47 20N, 105 43 29E', N'93'),
(935, N'Vị Thuỷ', N'Huyện', N'9 48 05N, 105 32 13E', N'93'),
(936, N'Long Mỹ', N'Huyện', N'9 40 47N, 105 30 53E', N'93'),
(941, N'Sóc Trăng', N'Thành Phố', N'9 36 39N, 105 59 00E', N'94'),
(942, N'Châu Thành', N'Huyện', N'', N'94'),
(943, N'Kế Sách', N'Huyện', N'9 49 30N, 105 57 25E', N'94'),
(944, N'Mỹ Tú', N'Huyện', N'9 38 21N, 105 49 52E', N'94'),
(945, N'Cù Lao Dung', N'Huyện', N'9 37 36N, 106 12 13E', N'94'),
(946, N'Long Phú', N'Huyện', N'9 34 38N, 106 06 07E', N'94'),
(947, N'Mỹ Xuyên', N'Huyện', N'9 28 16N, 105 55 51E', N'94'),
(948, N'Ngã Năm', N'Huyện', N'9 31 38N, 105 37 22E', N'94'),
(949, N'Thạnh Trị', N'Huyện', N'9 28 05N, 105 43 02E', N'94'),
(950, N'Vĩnh Châu', N'Huyện', N'9 20 50N, 105 59 58E', N'94'),
(951, N'Trần Đề', N'Huyện', N'', N'94'),
(954, N'Bạc Liêu', N'Thị Xã', N'9 16 05N, 105 45 08E', N'95'),
(956, N'Hồng Dân', N'Huyện', N'9 30 37N, 105 24 25E', N'95'),
(957, N'Phước Long', N'Huyện', N'9 23 13N, 105 24 41E', N'95'),
(958, N'Vĩnh Lợi', N'Huyện', N'9 16 51N, 105 40 54E', N'95'),
(959, N'Giá Rai', N'Huyện', N'9 15 51N, 105 23 18E', N'95'),
(960, N'Đông Hải', N'Huyện', N'9 08 11N, 105 24 42E', N'95'),
(961, N'Hoà Bình', N'Huyện', N'', N'95'),
(964, N'Cà Mau', N'Thành Phố', N'9 10 33N, 105 11 11E', N'96'),
(966, N'U Minh', N'Huyện', N'9 22 30N, 104 57 00E', N'96'),
(967, N'Thới Bình', N'Huyện', N'9 22 50N, 105 07 35E', N'96'),
(968, N'Trần Văn Thời', N'Huyện', N'9 07 36N, 104 57 27E', N'96'),
(969, N'Cái Nước', N'Huyện', N'9 00 31N, 105 03 23E', N'96'),
(970, N'Đầm Dơi', N'Huyện', N'8 57 48N, 105 13 56E', N'96'),
(971, N'Năm Căn', N'Huyện', N'8 46 59N, 104 58 20E', N'96'),
(972, N'Phú Tân', N'Huyện', N'8 52 47N, 104 53 35E', N'96'),
(973, N'Ngọc Hiển', N'Huyện', N'8 40 47N, 104 57 58E', N'96');
SET IDENTITY_INSERT Core_District OFF 
GO

SET IDENTITY_INSERT [dbo].[Tax_TaxClass] ON 
INSERT [dbo].[Tax_TaxClass] ([Id], [Name]) VALUES (1, N'Standard VAT')
SET IDENTITY_INSERT [dbo].[Tax_TaxClass] OFF
GO

SET IDENTITY_INSERT [dbo].[Tax_TaxRate] ON 
INSERT [dbo].[Tax_TaxRate] ([Id], [CountryId], [Name], [Rate], [StateOrProvinceId], [TaxClassId]) VALUES (1, 238, N'Standard VN VAT', CAST(10.00 AS Decimal(18, 2)), NULL, 1)
SET IDENTITY_INSERT [dbo].[Tax_TaxRate] OFF
GO

SET IDENTITY_INSERT [dbo].[Core_Address] ON 
INSERT [dbo].[Core_Address] ([Id], [AddressLine1], [ContactName], [CountryId], [DistrictId], [Phone], [StateOrProvinceId], [City], [ZipCode]) VALUES (1, NULL, N'SimplCommerce', 238, NULL, NULL, 93, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Core_Address] OFF
GO

SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] ON 
INSERT [dbo].[Inventory_Warehouse] ([Id], [AddressId], [Name]) VALUES (1, 1, N'Default warehouse')
SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] OFF
GO

SET IDENTITY_INSERT [dbo].[Shipping_ShippingProvider] ON 
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [AdditionalSettings], [ConfigureUrl], [IsEnabled], [Name], [OnlyCountryIdsString], [OnlyStateOrProvinceIdsString], [ShippingPriceServiceTypeName], [ToAllShippingEnabledCountries], [ToAllShippingEnabledStatesOrProvinces]) VALUES (1, N'{MinimumOrderAmount : 100}', N'shipping-free-config', 1, N'Free Ship', NULL, NULL, N'SimplCommerce.Module.ShippingFree.Services.FreeShippingServiceProvider,SimplCommerce.Module.ShippingFree', 1, 1)
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [AdditionalSettings], [ConfigureUrl], [IsEnabled], [Name], [OnlyCountryIdsString], [OnlyStateOrProvinceIdsString], [ShippingPriceServiceTypeName], [ToAllShippingEnabledCountries], [ToAllShippingEnabledStatesOrProvinces]) VALUES (2, NULL, N'shipping-table-rate-config', 1, N'Table Rate', NULL, NULL, N'SimplCommerce.Module.ShippingTableRate.Services.TableRateShippingServiceProvider,SimplCommerce.Module.ShippingTableRate', 1, 1)
SET IDENTITY_INSERT [dbo].[Shipping_ShippingProvider] OFF
GO

SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] ON 
INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [MinOrderSubtotal], [ShippingPrice], [StateOrProvinceId]) VALUES (1, 238, CAST(0.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), 92)
INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [MinOrderSubtotal], [ShippingPrice], [StateOrProvinceId]) VALUES (2, 238, CAST(100.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 92)
SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] OFF
GO

SET IDENTITY_INSERT [dbo].[Localization_Culture] ON
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (1, N'vi-VN')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (2, N'fr-FR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (3, N'pt-BR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (4, N'uk-UA')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (5, N'ru-RU')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (6, N'ar-TN')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (7, N'ko-KR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (8, N'tr-TR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (9, N'es-ES')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (10, N'zh-CN')
SET IDENTITY_INSERT [dbo].[Localization_Culture] OFF
GO

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Register', N'Đăng ký')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Hello {0}!', N'Chào {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Log in', N'Đăng nhập')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Log off', N'Đăng xuất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'The Email field is required.', N'Địa chỉ email cần phải có ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Email', N'Địa chỉ email')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'User List', N'Danh sách người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Remember me?', N'Ghi nhớ?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Password', N'Mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Use a local account to log in.', N'Sử dụng tài khoản của bạn để đăng nhập')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Register as a new user?', N'Đăng ký người dùng mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Forgot your password?', N'Quên mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Use another service to log in.', N'Đăng nhập bằng các tài khoản khác')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Full name', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Confirm password', N'Xác nhận mật khẩu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create a new account.', N'Tạo tài khoản mới.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'All', N'Tất cả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Home', N'Trang chủ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add to cart', N'Thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product detail', N'Mô tả sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Rate this product', N'Đánh giá sản phẩm này')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Review comment', N'Mô tả đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Review title', N'Tiêu đề đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Posted by', N'Đánh giá bởi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Submit review', N'Gửi đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'You have', N'Bạn có')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'products in your cart', N'sản phẩm trong giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Continue shopping', N'Tiếp tục mua sắm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'View cart', N'Xem giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'The product has been added to your cart', N'Sản phẩm đã được thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Cart subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Shopping Cart', N'Giỏ hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Price', N'Giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Quantity', N'Số lượng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'There are no items in this cart.', N'Chưa có sản phẩm nào trong giỏ hàng của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Go to shopping', N'Đi mua sắm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order summary', N'Tóm lược đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Process to Checkout', N'Tiến hành thanh toán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Shipping address', N'Địa chỉ giao hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add another address', N'Thêm địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Contact name', N'Tên người liên hệ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Address', N'Địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'State or Province', N'Thành phố / Tỉnh')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'District', N'Quận / Huyện')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Phone', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order', N'Đặt hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'products', N'sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'reviews', N'nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add Review', N'Viết nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Customer reviews', N'Nhận xét của khách hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Your review will be showed within the next 24h.', N'Nhận xét của bạn sẽ được hiển thị trong vòng 24 tiếng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Thank you {0} for your review', N'Cảm ơn {0} đã gửi nhận xét')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Rating average', N'Đánh giá trung bình')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'stars', N'sao')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Filter by', N'Tìm theo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Category', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Brand', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Sort by:', N'Sắp xếp theo:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'results', N'kết quả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'View options', N'Xem các tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Associate your {0} account.', N'Liên kết với tài khoản {0} của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Users', N'Người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Vendors', N'Người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Reviews', N'Đánh giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Products', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Categories', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Brands', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Options', N'Tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Attribute', N'Thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Attribute Groups', N'Nhóm thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Templates', N'Mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Sales', N'Bán hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Orders', N'Đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Content Management', N'Quán lý nội dung')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Pages', N'Trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Widgets', N'Widgets')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'System', N'Hệ thống')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Configuration', N'Cấu hình')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Translations', N'Translations')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Dashboard', N'Dashboard')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Incomplete orders', N'Đơn hàng chưa xong')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Pending reviews', N'Đánh giá đang chờ duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Most search keywords', N'Từ khóa được tìm kiếm nhiều nhất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Most viewed products', N'Sản phẩm được xem nhiều nhất')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'OrderId', N'Số đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order Status', N'Trạng thái đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Customer', N'Khách hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Created On', N'Ngày tạo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'SubTotal', N'Tổng tiền')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Actions', N'Hành động')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Catalog', N'Quản lý sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Title', N'Tiêu đề')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Comment', N'Bình luận')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Status', N'Trạng thái')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Rating', N'Xếp hạng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Keyword', N'Từ khóa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Count', N'Số lần')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create User', N'Tạo người dùng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'FullName', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Roles', N'Roles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit User', N'Chỉnh sửa user')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Manager of Vendor', N'Manager of Vendor')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Save', N'Lưu lại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Cancel', N'Hủy')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Phone Number', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Vendor', N'Tạo người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Active', N'Đang hoạt động')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Vendor', N'Chỉnh sửa người bán')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Managers', N'Quản lý')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Description', N'Mô tả')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Pending', N'Đang chờ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Approved', N'Đã duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Not Approved', N'Không duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Approve', N'Duyệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product', N'Tạo sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Has Options', N'Tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Visible Individually', N'Hiển thị riêng lẻ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Featured', N'Nổi bậc')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Allowed To Order', N'Cho phép đặt hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Called For Pricing', N'Gọi để biết giá')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Stock Quantity', N'Số lượng trong kho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Is Published', N'Công bố')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Yes', N'Có')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'No', N'Không')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product', N'Chỉnh sửa sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Name', N'Tên sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Short Description', N'Mô tả ngắn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Old Price', N'Giá cũ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Special Price', N'Giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Special Price Start', N'Bắt đầu giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Special Price End', N'Kết thúc giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Thumbnail', N'Hình đại diện')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Images', N'Hình sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Documents', N'Tài liệu kỹ thuật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Out Of Stock', N'Hết hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Available Options', N'Tùy chọn khả dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add Option', N'Thêm tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Option Values', N'Giá trị của tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Delete Option', N'Xóa tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Generate Combinations', N'Tự động tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Variations', N'Những tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Option Combinations', N'Sự kết hợp của những tùy chọn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Images', N'Hình ảnh')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Apply', N'Áp dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Available Attributes', N'Đặt tính khả dụng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add Attribute', N'Thêm đặc tính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Attributes', N'Đặc tính của sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Attribute Name', N'Tên đặc tính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Value', N'Giá trị')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'General Information', N'Thông tin chung')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Category Mapping', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Related Products', N'Sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Manage Related Products', N'Quản lý sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Category', N'Tạo danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Category', N'Chỉnh sửa danh mục')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Brand', N'Tạo nhãn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Brand', N'Chỉnh sửa nhãn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Name', N'Tên')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Parent Category', N'Danh mục cha')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Group', N'Nhóm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product Attribute', N'Tạo đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product Attribute', N'Chỉnh sửa đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product Attribute Group', N'Tạo nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product Attribute Group', N'Chỉnh sửa nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product Option', N'Tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product Option', N'Chỉnh sửa tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product Display Widget', N'Create Product Display Widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product Display Widget', N'Edit Product Display Widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Widget Name', N'Widget Name')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Widget Zone', N'Widget Zone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Publish Start', N'Thời gian bắt đầu công bố')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Publish End', N'Thời gian kết thúc')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Number of Products', N'Số lượng sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order By', N'Sắp xếp theo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Product Template', N'Tạo mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Product Template', N'Chỉnh sửa mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Added Attributes', N'Những đặt tính đã thêm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Back', N'Quay về')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order Detail', N'Chi tiết đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order Information', N'Thông tin đơn hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Change', N'Thay đổi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Product Information', N'Thông tin sản phẩm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Shipping Information', N'Thông tin giao hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Application Settings', N'Application Settings')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Page', N'Tạo trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Page', N'Chỉnh sửa trang')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Body', N'Nội dung chính')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Account Dashboard', N'Quản lý tài khoản')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Account Information', N'Thông tin tài khoản')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit', N'Chỉnh sửa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Security', N'Bảo mật')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create', N'Tạo mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'External Logins', N'Đăng nhập từ mạng xã hội')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Manage', N'Quản lý')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Default shipping address', N'Địa chỉ nhận hàng mặc định')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Manage address', N'Quản lý địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'You don''t have any default address', N'Bạn chưa có địa chỉ mặc định nào')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Order History', N'Lịch sử mua hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Address Book', N'Sổ địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Add Address', N'Thêm địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Delete', N'Xóa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Set as default shipping address', N'Chọn làm địa chỉ mặc định khi nhận hàng')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Edit Address', N'Chỉnh sửa địa chỉ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Create Address', N'Tạo địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Your account', N'Tài khoản của bạn')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Date', N'Ngày')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (1, N'Customer Groups', N'Nhóm khách hàng')
GO

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Register', N'S''inscrire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Hello {0}!', N'Bonjour {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Log in', N'Connexion')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Log off', N'Déconnexion')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'The Email field is required.', N'Le champs Email est obligatoire.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Email', N'Email')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'User List', N'Liste des utilisateurs')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Remember me?', N'Se rappeler de moi?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Password', N'Mot de passe')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Use a local account to log in.', N'Utilisez un compte local pour vous connecter.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Register as a new user?', N'Enregistrez-vous en tant que nouvel utilisateur?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Forgot your password?', N'Mot de passe oublié?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Use another service to log in.', N'Utilisez un autre service pour vous connecter.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Full name', N'Nom complet')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Confirm password', N'Confirmez le mot de passe')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create a new account.', N'Créer un nouveau compte.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'All', N'Tout')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Home', N'Accueil')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add to cart', N'Ajouter au panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product detail', N'Détail du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product specification', N'Spécification de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Rate this product', N'Évaluez ce produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Review comment', N'Revue commentaire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Review title', N'Revue titre')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Posted by', N'Posté par')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Submit review', N'Poster le commentaire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'You have', N'Vous avez')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'products in your cart', N'produits dans votre panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Continue shopping', N'Continuer vos achats')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'View cart', N'Voir le panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'The product has been added to your cart', N'Le produit a été ajouté à votre panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Cart subtotal', N'Sous-total du panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Shopping Cart', N'Panier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product', N'Produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Price', N'Prix')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Quantity', N'Quantité')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'There are no items in this cart.', N'Il n''y a aucun article dans votre panier.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Go to shopping', N'Aller faire du shopping')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order summary', N'Récapitulatif de la commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Subtotal', N'Sous-Total')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Process to Checkout', N'Processus de paiement')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Shipping address', N'Adresse de livraison')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add another address', N'Ajouter une autre adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Contact name', N'Nom du contact')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Address', N'Adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'State or Province', N'Etat ou Province')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'District', N'District')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Phone', N'Téléphone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order', N'Commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'products', N'Produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'reviews', N'Avis')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add Review', N'Ajouter un commentaire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Customer reviews', N'Avis des clients')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Your review will be showed within the next 24h.', N'Votre avis sera affiché dans les prochaines 24h.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Thank you {0} for your review', N'Merci {0} pour votre commentaire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Rating average', N'Moyenne des notes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'stars', N'Etoiles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Filter by', N'Filtrer par')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Category', N'Catalogue')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Brand', N'Marque')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Sort by:', N'Trier par:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'results', N'résultats')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'View options', N'Afficher les options')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Associate your {0} account.', N'Associez votre compte {0}.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Users', N'Utilisateurs')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Vendors', N'Vendeurs')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Reviews', N'Avis')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Products', N'Produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Categories', N'Catégories')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Brands', N'Marques')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Options', N'Options du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Attribute', N'Attribut du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Attribute Groups', N'Groupes d''attributs de produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Templates', N'Modèles de produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Sales', N'Ventes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Orders', N'Ordres')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Content Management', N'Gestion de contenu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Pages', N'Pages')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Widgets', N'Widgets')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'System', N'Système')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Configuration', N'Configuration')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Translations', N'Translations')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Dashboard', N'Tableau de bord')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Incomplete orders', N'Commandes incomplètes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Pending reviews', N'Avis en attente')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Most searched keywords', N'Les mots clés les plus recherchés')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Most viewed products', N'Produits les plus consultés')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'OrderId', N'Numéro de commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order Status', N'Statut de la commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Customer', N'Client')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Created On', N'Créé en')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'SubTotal', N'Total')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Actions', N'Actions')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Catalog', N'Catalogue')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Title', N'Titre')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Comment', N'Commentaire')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Status', N'Statut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Rating', N'Évaluation')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Keyword', N'Mot-clé')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Count', N'Décompte')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create User', N'Créer un utilisateur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'FullName', N'Nom complet')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Roles', N'Rôles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit User', N'Modifier l''utilisateur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Manager of Vendor', N'Directeur du vendeur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Save', N'Sauvegarder')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Cancel', N'Annuler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Phone Number', N'Numéro de téléphone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Vendor', N'Créer un fournisseur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Active', N'Actif')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Vendor', N'Modifier le fournisseur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Managers', N'Les gestionnaires')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Description', N'Description')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Pending', N'En attente')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Approved', N'Approuvé')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Not Approved', N'Non Apprové')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Approve', N'Approuver')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product', N'Créer un produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Has Options', N'A des options')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Visible Individually', N'Est visible individuellement')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Featured', N'Est en vedette')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Allowed To Order', N'Est autorisé à commander')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Called For Pricing', N'Est appelé pour le prix')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Stock Quantity', N'Quantité en stock')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Is Published', N'Est publié')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Yes', N'Oui')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'No', N'Non')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product', N'Modifier le produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Name', N'Nom du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Short Description', N'Brève Description')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Specification', N'Spécification')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Old Price', N'Ancien prix')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Special Price', N'Prix spécial')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Special Price Start', N'Début des prix spéciaux')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Special Price End', N'Fin des prix spéciaux')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Thumbnail', N'Vignette')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Images', N'Images du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Documents', N'Documents produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Out Of Stock', N'En rupture de stock')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Available Options', N'Options disponibles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add Option', N'Ajouter une option')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Option Values', N'Valeurs d''option')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Delete Option', N'Supprimer l''option')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Generate Combinations', N'Générer des combinaisons')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Variations', N'Variations du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Option Combinations', N'Combinaisons d''options')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Images', N'Images')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Apply', N'Appliquer')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Available Attributes', N'Attributs disponibles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add Attribute', N'Ajouter un attribut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Attributes', N'Attributs du produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Attribute Name', N'Nom d''attribut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Value', N'Valeur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'General Information', N'Informations générales')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Category Mapping', N'Mapping de catégorie')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Related Products', N'Produits connexes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Manage Related Products', N'Gérer les produits connexes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Category', N'Créer une catégorie')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Category', N'Modifier la catégorie')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Brand', N'Créer une marque')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Brand', N'Modifier la marque')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Name', N'Nom')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Parent Category', N'Catégorie Parentale')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Group', N'Groupe')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product Attribute', N'Créer un attribut de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product Attribute', N'Modifier l''attribut de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product Attribute Group', N'Créer un groupe d''attributs de produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product Attribute Group', N'Modifier le groupe d''attributs de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product Option', N'Créer une option de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product Option', N'Modifier l''option de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product Display Widget', N'Créer un Widget d''affichage de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product Display Widget', N'Modifier le widget d''affichage des produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Widget Name', N'Nom du widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Widget Zone', N'Widget Zone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Publish Start', N'Commencer à publier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Publish End', N'Fin de publication')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Number of Products', N'Nombre de produits')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order By', N'Commandé par')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Product Template', N'Créer un modèle de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Product Template', N'Modifier le modèle de produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Added Attributes', N'Attributs ajoutés')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Back', N'Arrière')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order Detail', N'Détails de la commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order Information', N'Informations sur la commande')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Change', N'Changement')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Product Information', N'Information produit')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Shipping Information', N'Informations sur la livraison')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Application Settings', N'Paramètres de l''application')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Page', N'Créer une page')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Page', N'Modifier la page')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Body', N'Corps')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Account Dashboard', N'Tableau de bord des comptes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Account Information', N'Information sur le compte')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit', N'Modifier')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Security', N'Sécurité')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create', N'Créer')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'External Logins', N'Logins externes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Manage', N'Gérer')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Default shipping address', N'Adresse de livraison par défaut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Manage address', N'Gérer l''adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'You don''t have any default address', N'Vous n''avez aucune adresse par défaut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Order History', N'Historique des commandes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Address Book', N'Carnet d''adresses')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Add Address', N'Ajouter une adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Delete', N'Supprimer')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Set as default shipping address', N'Définir comme adresse de livraison par défaut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Edit Address', N'Modifier l''adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Create Address', N'Créer une adresse')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Your account', N'Votre Compte')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (2, N'Date', N'Date')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Register', N'Cadastro')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Hello {0}!', N'Olá {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Log in', N'Entrar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Log off', N'Sair')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'The Email field is required.', N'O campo Email é obrigatório. ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Email', N'Email')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'User List', N'Lista de usuários')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Remember me?', N'Lembrar?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Password', N'Senha')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Use a local account to log in.', N'Entre com seu usuário e senha ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Register as a new user?', N'Cadastrar-se como novo usuário? ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Forgot your password?', N'Esqueceu a senha?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Use another service to log in.', N'Logar utilizando outro serviço')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Full name', N'Nome completo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Confirm password', N'Confirmar senha')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Create a new account.', N'Criar uma conta.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'All', N'Todos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Home', N'Início')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Add to cart', N'Adicionar ao carrinho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Product detail', N'Detalhes do produto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Product specification', N'Especificações do produto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Rate this product', N'Avalie este produto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Review comment', N'Comentário')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Review title', N'Título da avaliação')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Posted by', N'Postado pro')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Submit review', N'Enviar avaliação')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'You have', N'Você tem')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'products in your cart', N'produtos no carrinho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Continue shopping', N'Continuar comprando')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'View cart', N'Ver carrinho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'The product has been added to your cart', N'O produto foi adicionado ao carrinho')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Cart subtotal', N'Subtotal')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Shopping Cart', N'Carrinho de compras')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Product', N'Produto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Price', N'Preço')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Quantity', N'Quantidade')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'There are no items in this cart.', N'O carrinho está vazio.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Go to shopping', N'a comprar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Order summary', N'Resumo do pedido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Subtotal', N'Subtotal')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Process to Checkout', N'Próxima etapa')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Shipping address', N'Endereço de entrega')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Add another address', N'Adicionar outro endereço')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Contact name', N'Nome completo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Address', N'Endereço')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'State or Province', N'Estado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'District', N'Cidade')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Phone', N'Telefone')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Order', N'Pedido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'products', N'produtos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'reviews', N'avaliações')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Add Review', N'Adicionar avaliação')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Customer reviews', N'Avaliações de quem comprou')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Your review will be showed within the next 24h.', N'Sua avaliação será publicada dentro de 24h.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Thank you {0} for your review', N'Muito obrigado pela avaliação, {0}')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Rating average', N'Média das avaliações')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'stars', N'estrelas')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Filter by', N'Filtrar por')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Category', N'Categoria')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Brand', N'Marca')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'Sort by:', N'Ordenar por:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (3, N'results', N'resultados')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Register', N'Зареєструватися')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Hello {0}!', N'Вітаємо, {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Log in', N'Увійти')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Log off', N'Вийти')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'The Email field is required.', N'Поле «Електронна пошта» є обов’язковим.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Email', N'Електронна пошта')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'User List', N'Список користувачів')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Remember me?', N'Запам’ятати мене?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Password', N'Пароль')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Use a local account to log in.', N'Використати локальний акаунт для входу.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Register as a new user?', N'Зареєструватися як новий користувач?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Forgot your password?', N'Забули свій пароль?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Use another service to log in.', N'Використати інший сервіс для входу.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Full name', N'Повне ім’я')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Confirm password', N'Підтвердження паролю')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Create a new account.', N'Створити новий акаунт.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'All', N'Всі')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Home', N'Головна')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Add to cart', N'Додати до кошику')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Product detail', N'Деталі товару')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Product specification', N'Специфікація товару')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Rate this product', N'Оцінити цей продукт')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Review comment', N'Текст відгуку')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Review title', N'Заголовок відгуку')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Posted by', N'Автор')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Submit review', N'Надіслати відгук')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'You have', N'Ви маєте')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'products in your cart', N'товарів у кошику')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Continue shopping', N'Tiếp tục mua sắm')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'View cart', N'Переглянути кошик')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'The product has been added to your cart', N'Товар було додано до кошику')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Cart subtotal', N'Проміжний підсумок')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Shopping Cart', N'Кошик')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Product', N'Товар')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Price', N'Ціна')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Quantity', N'Кількість')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'There are no items in this cart.', N'Товарів у кошику немає')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Go to shopping', N'Продовжити покупки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Order summary', N'Підсумок замовлення')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Subtotal', N'Підсумок')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Process to Checkout', N'Оформити замовлення')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Shipping address', N'Адреса доставки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Add another address', N'Додати іншу адресу')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Contact name', N'Контактне ім’я ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Address', N'Адреса')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'State or Province', N'Область або край')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'District', N'Район')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Phone', N'Телефон')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Order', N'Замовлення')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'products', N'товари')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'reviews', N'відгуки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Add Review', N'Додати відгук')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Customer reviews', N'Відгуки покупців')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Your review will be showed within the next 24h.', N'Ваш відгук буде опубліковано впродовж наступних 24 годин.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Thank you {0} for your review', N'Дякуємо {0} за ваш відгук')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Rating average', N'Середня оцінка')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'stars', N'зірочок')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Filter by', N'Фільтрувати за')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Category', N'Категорія')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Brand', N'Бренд')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'Sort by:', N'Сортувати за:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (4, N'results', N'результати')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Register', N'Зарегистрироваться')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Hello {0}!', N'Поздравляем, {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Log in', N'Войти')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Log off', N'Выйти')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'The Email field is required.', N'Поле «Электронная почта» является обязательным.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Email', N'Электронная почта')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'User List', N'Список пользователей')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Remember me?', N'Запомнить меня?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Password', N'Пароль')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Use a local account to log in.', N'Использовать локальный аккаунт для входа.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Register as a new user?', N'Зарегистрироваться как новый пользователь?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Forgot your password?', N'Забыли свой пароль?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Use another service to log in.', N'Использовать другой сервис для входа.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Full name', N'Полное имя')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Confirm password', N'Подтверждение пароля')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Create a new account.', N'Создать новый аккаунт.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'All', N'Все')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Home', N'Главная')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Add to cart', N'Добавить в корзину')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Product detail', N'Детали товара')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Product specification', N'Спецификация товара')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Rate this product', N'Оценить этот товар')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Review comment', N'Текст отзыва')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Review title', N'Заголовок отзыва')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Posted by', N'Автор')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Submit review', N'Отправить отзыв')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'You have', N'У вас')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'products in your cart', N'товаров в корзине')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Continue shopping', N'Продолжить покупки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'View cart', N'Просмотр корзины')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'The product has been added to your cart', N'Товар был добавлен в корзину')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Cart subtotal', N'Промежуточный итог')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Shopping Cart', N'Корзина')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Product', N'Товар')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Price', N'Цена')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Quantity', N'Количество')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'There are no items in this cart.', N'Товаров в корзине нет')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Go to shopping', N'Продолжить покупки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Order summary', N'Итог заказа')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Subtotal', N'Итого')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Process to Checkout', N'Оформить заказ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Shipping address', N'Адрес доставки')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Add another address', N'Добавить другой адрес')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Contact name', N'Контактное имя')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Address', N'Адрес')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'State or Province', N'Область или край')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'District', N'Район')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Phone', N'Телефон')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Order', N'Заказ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'products', N'товары')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'reviews', N'отзывы')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Add Review', N'Добавить отзыв')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Customer reviews', N'Отзывы покупателей')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Your review will be showed within the next 24h.', N'Ваш отзыв будет опубликован в течении следующих 24 часов.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Thank you {0} for your review', N'Спасибо {0} за ваш отзыв')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Rating average', N'Средняя оценка')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'stars', N'звездочек')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Filter by', N'Фильтровать по')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Category', N'Категория')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Brand', N'Бренд')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'Sort by:', N'Сортировать по:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (5, N'results', N'результаты')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Register', N'تسجيل')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Hello {0}!', N'!{0} مرحبا')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Log in', N'دخول')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Log off', N'خروج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'The Email field is required.', N'البريد الإلكتروني إلزامي.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Email', N'البريد الإلكتروني')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'User List', N'قائمة المستخدمين')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Remember me?', N'حفظ البيانات؟')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Password', N'كلمة المرور')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Use a local account to log in.', N'استخدم حسابا محليا لتسجيل الدخول.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Register as a new user?', N'سجل كمستخدم جديد؟')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Forgot your password?', N'هل نسيت كلمة المرور؟');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Use another service to log in.', N'استخدام خدمة أخرى للاتصال.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Full name', N'الاسم الكامل')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Confirm password', N'تأكيد كلمة السر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create a new account.', N'إنشاء حساب جديد.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'All', N'جميع')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Home', N'الرئيسية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add to cart', N'أضف إلى العربة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product detail', N'تفاصيل المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product specification', N'مواصفات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Rate this product', N'تقيم هذا المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Review comment', N'مراجعة تعليق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Review title', N'مراجعة عنوان ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Posted by', N'أرسلت بواسطة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Submit review', N'إرسال التعليق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'You have', N'عندكم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'products in your cart', N'المنتجات في عربة التسوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Continue shopping', N'تابع عملية الشراء')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'View cart', N'عرض عربة التسوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'The product has been added to your cart', N'تمت إضافة هذا المنتج الى عربة التسوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Cart subtotal', N'المجموع الفرعي لعربة التسوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Shopping Cart', N'عــربــة التســـوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product', N'المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Price', N'السعر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Quantity', N'الكمية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'There are no items in this cart.', N'لا توجد أي عناصر في سلة التسوق الخاصة بك.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Go to shopping', N'الذهاب للتسوق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order summary', N'ملخص ترتيب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Subtotal', N'المجموع الفرعي');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Process to Checkout', N'عملية الدفع')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Shipping address', N'عنوان التسليم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add another address', N'إضافة عنوان آخر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Contact name', N'اسم جهة الاتصال')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Address', N'عنوان');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'State or Province', N'الدولة أو المنطقة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'District', N'مقاطعة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Phone', N'هاتف')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order', N'طلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'products', N'المنتجات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'reviews', N'رأي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add Review', N'إضافة تعليق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Customer reviews', N'التعليقات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Your review will be showed within the next 24h.', N'سيتم عرض تعليقك في ال 24 ساعة القادمة.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Thank you {0} for your review', N'شكرا لك {0} لتعليقك')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Rating average', N'متوسط تصنيف العملاء')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'stars', N'النجوم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Filter by', N'مصنف بواسطة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Category', N'الفئة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Brand', N'العلامة التجارية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Sort by:', N'الترتيب حسب:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'results', N'النتائج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'View options', N'عرض الخيارات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Associate your {0} account.', N'.{ربط حساب {0')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Users', N'المستخدمون')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Vendors', N'الباعة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Reviews', N'التعليقات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Products', N'منتجات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Categories', N'الاقسام')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Brands', N'العلامات التجارية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Options', N'خيارات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Attribute', N'سمة المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Attribute Groups', N'مجموعات سمات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Templates', N'قوالب المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Sales', N'مبيعات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Orders', N'أوامر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Content Management', N'ادارة المحتوى')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Pages', N'الصفحات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Widgets', N'الحاجيات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'System', N'النظام')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Configuration', N'ترتيب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Translations', N'الترجمات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Dashboard', N'لوحة القيادة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Incomplete orders', N'أوامر غير مكتملة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Pending reviews', N'في انتظار المراجعة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Most search keywords', N'معظم كلمات البحث')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Most viewed products', N'معظم المنتجات المعروضة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'OrderId', N'رقم التعريف الخاص بالطلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order Status', N'حالة الطلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Customer', N'العميل')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Created On', N'تم إنشاؤها على')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'SubTotal', N'المجموع الفرعي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Actions', N'الإجراءات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Site', N'موقع')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Catalog', N'فهرس')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Title', N'عنوان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Comment', N'تعليق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Status', N'الحالة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Rating', N'تقييم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Keyword', N'كلمة مفتاحية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Count', N'إحصاء')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create User', N'إنشاء مستخدم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'FullName', N'الاسم الكامل')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Roles', N'الأدوار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit User', N'تحرير العضو')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Manager of Vendor', N'مدير المورد')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Save', N'حفظ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Cancel', N'إلغاء')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Phone Number', N'رقم الهاتف')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Vendor', N'إنشاء مورد')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Active', N'نشط')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Vendor', N'تعديل المورد')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Managers', N'المدراء')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Description', N'وصف')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Pending', N'قيد الانتظار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Approved', N'مقبول')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Not Approved', N'غير مقبول')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Approve', N'يوافق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product', N'إنشاء منتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Has Options', N'لديه خيارات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Visible Individually', N'مرئية بشكل فردي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Featured', N'هي واردة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Allowed To Order', N'مسموح به للطلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Called For Pricing', N'هو دعا للتسعير')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Stock Quantity', N'كمية المخزون')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Is Published', N'يتم نشر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Yes', N'نعم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'No', N'لا')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product', N'تحرير المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Name', N'اسم المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Short Description', N'وصف قصير')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Specification', N'تخصيص')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Old Price', N'سعر قديم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Special Price', N'سعر خاص')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Special Price Start', N'بدء سعر خاص')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Special Price End', N'إنهاء سعر خاص')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Thumbnail', N'صورة مصغرة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Images', N'صور المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Documents', N'وثائق المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Out Of Stock', N'إنتهى من المخزن')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Available Options', N'الخيارات المتاحة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add Option', N'إضافة خيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Option Values', N'قيم الخيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Delete Option', N'حذف الخيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Generate Combinations', N'إنشاء مجموعات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Variations', N'اختلافات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Option Combinations', N'تركيبات الخيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Images', N'الصور')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Apply', N'تطبيق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Available Attributes', N'السمات المتاحة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add Attribute', N'اضف ميزة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Attributes', N'سمات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Attribute Name', N'اسم السمة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Value', N'القيمة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'General Information', N'معلومات عامة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Category Mapping', N'تعيين الفئة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Related Products', N'منتجات ذات صله')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Manage Related Products', N'إدارة المنتجات ذات الصلة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Category', N'إنشاء الفئة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Category', N'تحرير الفئة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Brand', N'إنشاء علامة تجارية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Brand', N'تحرير العلامة التجارية')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Name', N'اسم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Parent Category', N'القسم الرئيسي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Group', N'مجموعة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product Attribute', N'إنشاء سمة المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product Attribute', N'تعديل سمة المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product Attribute Group', N'إنشاء مجموعة سمات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product Attribute Group', N'تحرير مجموعة سمة المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product Option', N'إنشاء المنتج الخيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product Option', N'تحرير المنتج الخيار')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product Display Widget', N'إنشاء عرض المنتج القطعة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product Display Widget', N'تحرير القطعة عرض المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Widget Name', N'اسم التطبيق المصغر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Widget Zone', N'مجال التطبيق المصغر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Publish Start', N'بدء النشر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Publish End', N'إنهاء النشر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Number of Products', N'عدد المنتجات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order By', N'ترتيب حسب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Product Template', N'إنشاء قالب المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Product Template', N'تحرير قالب المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Added Attributes', N'تمت إضافة سمات')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Back', N'الى الخلف')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order Detail', N'تفاصيل الأمر')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order Information', N'معلومات الطلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Change', N'تغيير')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Product Information', N'معلومات المنتج')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Shipping Information', N'معلومات الشحن')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Application Settings', N'إعدادات التطبيق')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Page', N'إنشاء صفحة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Page', N'تعديل الصفحة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Body', N'الجسم')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Account Dashboard', N'لوحة حساب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Account Information', N'معلومات الحساب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit', N'تصحيح')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Security', N'الأمان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create', N'إحداث')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'External Logins', N'تسجيل الدخول الخارجي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Manage', N'إدارة')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Default shipping address', N'عنوان الشحن الافتراضي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Manage address', N'إدارة العنوان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'You don''t have any default address', N'ليس لديك أي عنوان افتراضي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Order History', N'تاريخ الطلب')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Address Book', N'دليل العناوين')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Add Address', N'اضف عنوان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Delete', N'حذف')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Set as default shipping address', N'تعيين عنوان الشحن الافتراضي')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Edit Address', N'تعديل العنوان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Create Address', N'إنشاء عنوان')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Your account', N'الحساب الخاص بك')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (6, N'Date', N'تاريخ')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Register', N'레지스터')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Hello {0}!', N'안녕하세요 {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Log in', N'로그인')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Log off', N'로그 오프')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'The Email field is required.', N'이메일 입력란은 필수 항목입니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Email', N'이메일')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'User List', N'사용자 목록')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Remember me?', N'날 기억해?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Password', N'암호')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Use a local account to log in.', N'로그인하려면 로컬 계정을 사용하십시오.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Register as a new user?', N'새로운 사용자로 등록 하시겠습니까?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Forgot your password?', N'비밀번호를 잊어 버렸습니까?');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Use another service to log in.', N'다른 서비스를 사용하여 로그인하십시오.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Full name', N'성명')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Confirm password', N'비밀번호 확인')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create a new account.', N'새 계정 생성.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'All', N'모든')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Home', N'홈')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add to cart', N'장바구니에 담기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product detail', N'제품 세부 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product specification', N'제품 사양')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Rate this product', N'이 제품 평가하기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Review comment', N'댓글 검토')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Review title', N'리뷰 제목')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Posted by', N'게시자')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Submit review', N'리뷰 제출')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'You have', N'너는 가지고있다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'products in your cart', N'장바구니의 제품')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Continue shopping', N'쇼핑을 계속')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'View cart', N'장바구니보기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'The product has been added to your cart', N'상품이 장바구니에 추가되었습니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Cart subtotal', N'장바구니 소계')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Shopping Cart', N'쇼핑 카트')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product', N'생성물')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Price', N'가격')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Quantity', N'수량')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'There are no items in this cart.', N'장바구니에 항목이 없습니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Go to shopping', N'쇼핑 가다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order summary', N'주문 요약')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Subtotal', N'소계');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Process to Checkout', N'프로세스를 체크 아웃하는 중')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Shipping address', N'배송 주소')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add another address', N'다른 주소 추가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Contact name', N'담당자 이름')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Address', N'주소');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'State or Province', N'국가 또는 지방')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'District', N'지구')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Phone', N'전화')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order', N'주문')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'products', N'제작품')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'reviews', N'리뷰')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add Review', N'검토 추가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Customer reviews', N'고객 리뷰')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Your review will be showed within the next 24h.', N'귀하의 리뷰는 다음 24 시간 이내에 보여 질 것입니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Thank you {0} for your review', N'귀하의 검토를 위해 {0} 주셔서 감사합니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Rating average', N'평점 평균')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'stars', N'별')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Filter by', N'필터링 기준')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Category', N'범주')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Brand', N'상표')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Sort by:', N'정렬 기준 :')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'results', N'결과')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'View options', N'보기 옵션')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Associate your {0} account.', N'{0} 계정을 연결하십시오.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Users', N'사용자')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Vendors', N'공급 업체')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Reviews', N'리뷰')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Products', N'제작품')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Categories', N'카테고리')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Brands', N'브랜드')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Options', N'제품 옵션')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Attribute', N'제품 속성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Attribute Groups', N'제품 속성 그룹')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Templates', N'제품 템플릿')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Sales', N'매상')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Orders', N'명령')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Content Management', N'콘텐츠 관리')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Pages', N'페이지')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Widgets', N'위젯')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'System', N'체계')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Configuration', N'구성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Translations', N'번역')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Dashboard', N'계기반')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Incomplete orders', N'불완전 주문')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Pending reviews', N'검토 대기 중')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Most search keywords', N'대부분의 검색 키워드')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Most viewed products', N'가장 많이 본 제품')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'OrderId', N'주문 아이디')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order Status', N'주문 상태')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Customer', N'고객')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Created On', N'생성 일')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'SubTotal', N'소계')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Actions', N'행위')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Site', N'대지')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Catalog', N'목록')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Title', N'표제')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Comment', N'논평')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Status', N'지위')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Rating', N'평가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Keyword', N'예어')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Count', N'카운트')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create User', N'사용자 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'FullName', N'성명')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Roles', N'역할')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit User', N'사용자 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Manager of Vendor', N'공급 업체 관리자')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Save', N'구하다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Cancel', N'취소')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Phone Number', N'전화 번호')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Vendor', N'공급 업체 만들기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Active', N'활성 상태입니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Vendor', N'공급 업체 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Managers', N'관리자')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Description', N'기술')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Pending', N'대기중인')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Approved', N'승인 됨')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Not Approved', N'승인이 거절 됨')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Approve', N'승인하다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product', N'제품 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Has Options', N'옵션 있음')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Visible Individually', N'개별적으로 보입니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Featured', N'추천')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Allowed To Order', N'주문이 가능하다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Called For Pricing', N'가격 책정')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Stock Quantity', N'재고 수량')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Is Published', N'게시 됨')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Yes', N'예')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'No', N'아니오!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product', N'제품 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Name', N'상품명')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Short Description', N'간단한 설명')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Specification', N'사양')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Old Price', N'이전 가격')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Special Price', N'특별가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Special Price Start', N'특별가 시작')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Special Price End', N'특별 가격 끝')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Thumbnail', N'미리보기 이미지')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Images', N'제품 이미지')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Documents', N'제품 문서')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Out Of Stock', N'품절')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Available Options', N'사용 가능한 옵션')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add Option', N'옵션 추가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Option Values', N'옵션 값')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Delete Option', N'삭제 옵션')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Generate Combinations', N'조합 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Variations', N'제품 변형')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Option Combinations', N'옵션 조합')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Images', N'이미지')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Apply', N'대다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Available Attributes', N'사용 가능한 속성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add Attribute', N'속성 추가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Attributes', N'제품 속성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Attribute Name', N'속성 이름')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Value', N'값')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'General Information', N'일반 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Category Mapping', N'범주 매핑')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Related Products', N'관련 상품')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Manage Related Products', N'관련 제품 관리')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Category', N'카테고리 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Category', N'카테고리 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Brand', N'브랜드 만들기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Brand', N'브랜드 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Name', N'이름')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Parent Category', N'상위 카테고리')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Group', N'그룹')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product Attribute', N'제품 속성 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product Attribute', N'제품 속성 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product Attribute Group', N'제품 속성 그룹 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product Attribute Group', N'제품 속성 그룹 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product Option', N'제품 생성 옵션')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product Option', N'제품 옵션 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product Display Widget', N'제품 디스플레이 위젯 만들기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product Display Widget', N'제품 표시 위젯 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Widget Name', N'위젯 이름')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Widget Zone', N'위젯 영역')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Publish Start', N'게시 시작')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Publish End', N'게시 종료')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Number of Products', N'제품 수')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order By', N'주문')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Product Template', N'제품 템플릿 만들기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Product Template', N'제품 템플릿 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Added Attributes', N'추가 된 속성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Back', N'뒤로')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order Detail', N'주문 세부 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order Information', N'주문 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Change', N'변화')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Product Information', N'물품 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Shipping Information', N'배송 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Application Settings', N'응용 프로그램 설정')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Page', N'페이지 만들기')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Page', N'페이지 편집')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Body', N'신체')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Account Dashboard', N'계정 대시 보드')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Account Information', N'계정 정보')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit', N'편집하다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Security', N'보안')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create', N'몹시 떠들어 대다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'External Logins', N'외부 로그인')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Manage', N'꾸리다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Default shipping address', N'기본 배송 주소')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Manage address', N'주소 관리')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'You don''t have any default address', N'기본 주소가 없습니다.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Order History', N'주문 내역')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Address Book', N'주소록')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Add Address', N'주소 추가')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Delete', N'지우다')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Set as default shipping address', N'기본 배송 주소로 설정')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Edit Address', N'주소 수정')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Create Address', N'주소 생성')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Your account', N'귀하의 계정')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (7, N'Date', N'날짜')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Register', N'Kayıt olmak')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Hello {0}!', N'Merhaba {0}!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Log in', N'Oturum aç')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Log off', N'Oturumu Kapat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'The Email field is required.', N'E-posta alanı zorunludur.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Email', N'E-posta')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'User List', N'kullanıcı listesi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Remember me?', N'Beni hatırla?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Password', N'Parola')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Use a local account to log in.', N'Giriş yapmak için yerel bir hesap kullanın.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Register as a new user?', N'Yeni bir kullanıcı olarak kaydolun mu?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Forgot your password?', N'Parolanızı mı unuttunuz?');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Use another service to log in.', N'Giriş yapmak için başka bir servis kullanın.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Full name', N'Ad Soyad')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Confirm password', N'Şifreyi Onayla')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create a new account.', N'Yeni bir hesap oluştur.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'All', N'Herşey')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Home', N'Ev')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add to cart', N'Sepete ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product detail', N'Ürün ayrıntısı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product specification', N'Ürün özellikleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Rate this product', N'Bu ürünü puan ver')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Review comment', N'Yorumu gözden geçir')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Review title', N'İnceleme başlığı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Posted by', N'tarafından gönderild')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Submit review', N'İncelemeyi gönder')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'You have', N'Var')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'products in your cart', N'Sepetinizdeki Ürünler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Continue shopping', N'Alışverişe devam')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'View cart', N'Alışveriş sepetini görüntüle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'The product has been added to your cart', N'Ürün sepetinize eklenmiştir')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Cart subtotal', N'Sepet Ara Toplamı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Shopping Cart', N'Alışveriş kartı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product', N'Ürün')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Price', N'Fiyat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Quantity', N'Miktar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'There are no items in this cart.', N'Bu arabada hiç öğe yok.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Go to shopping', N'Alışverişe gitmek')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order summary', N'Sipariş özeti')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Subtotal', N'Ara toplam');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Process to Checkout', N'Satın Alma İşlemi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Shipping address', N'Teslimat adresi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add another address', N'Başka Bir Adres Ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Contact name', N'İrtibat adı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Address', N'Adres');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'State or Province', N'Eyalet veya İl')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'District', N'İlçe')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Phone', N'Telefon')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order', N'Sipariş')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'products', N'Ürünler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'reviews', N'Incelemeler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add Review', N'Yorum Ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Customer reviews', N'Musteri degerlendirmeleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Your review will be shown within the next 24h.', N'İncelemeniz önümüzdeki 24 saat içinde gösterilecektir.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Thank you {0} for your review', N'İncelemeniz için {0} ''te teşekkür ederim')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Rating average', N'Değerlendirme ortalaması')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'stars', N'yıldızlar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Filter by', N'Tarafından filtre')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Category', N'Kategori')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Brand', N'Marka')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Sort by:', N'Göre sırala:')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'results', N'Sonuçlar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'View options', N'Seçenekleri göster')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Associate your {0} account.', N'{0} hesabınızı ilişkilendirin.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Users', N'Kullanıcılar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Vendors', N'Satıcılar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Reviews', N'Yorumlar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Products', N'Ürünler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Categories', N'Kategoriler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Brands', N'Markalar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Options', N'Ürün Seçenekleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Attribute', N'Ürün Öznitelikleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Attribute Groups', N'Ürün Özellik Grupları')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Templates', N'Ürün Şablonları')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Sales', N'Satış')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Orders', N'Emirler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Content Management', N'İçerik yönetimi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Pages', N'Sayfalar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Widgets', N'Widget''lar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'System', N'Sistem')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Configuration', N'Yapılandırma')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Translations', N'Çeviriler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Dashboard', N'Gösterge Tablosu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Incomplete orders', N'Eksik siparişler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Pending reviews', N'Bekleyen incelemeler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Most searched keywords', N'En çok aranan anahtar kelimeler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Most viewed products', N'En çok görüntülenen ürünler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'OrderId', N'Sipariş Kimliği')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order Status', N'Sipariş durumu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Customer', N'Müşteri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Created On', N'Oluşturuldu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'SubTotal', N'AltToplam')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Actions', N'Eylemler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Catalog', N'Katalog')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Title', N'Başlık')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Comment', N'Yorum Yap')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Status', N'Durum')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Rating', N'Değerlendirme')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Keyword', N'Anahtar Kelime')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Count', N'Saymak')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create User', N'Kullanıcı oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'FullName', N'Ad Soyad')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Roles', N'Roller')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit User', N'Kullanıcıyı Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Manager of Vendor', N'Bayi Müdürü')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Save', N'Kayıt etmek')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Cancel', N'İptal etmek')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Phone Number', N'Telefon numarası')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Vendor', N'Satıcı oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Active', N'Aktif')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Vendor', N'Satıcıyı Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Managers', N'Yöneticiler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Description', N'Açıklama')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Pending', N'Beklemede')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Approved', N'Onaylandı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Not Approved', N'Onaylanmamış')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Approve', N'Onayla')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product', N'Ürün Yarat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Has Options', N'Seçenekleri Var')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Visible Individually', N'Bireysel olarak Görülebilir mi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Featured', N'Öne Çıkmaktadır')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Allowed To Order', N'Sipariş Edilebilir')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Called For Pricing', N'Fiyatlandırma Talep Edildi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Stock Quantity', N'Stok Miktarı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Is Published', N'Yayınlandı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Yes', N'Evet')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'No', N'Hayır!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product', N'Ürünü Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Name', N'Ürün adı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Short Description', N'Kısa Açıklama')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Specification', N'Şartname')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Old Price', N'Eski fiyat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Special Price', N'Özel fiyat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Special Price Start', N'Özel Fiyat Başlangıcı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Special Price End', N'Özel Fiyat Sonu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Thumbnail', N'Küçük resim')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Images', N'Ürün Resimleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Documents', N'Ürün Dokümanları')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Out Of Stock', N'Stoklar tükendi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Available Options', N'mevcut seçenekler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add Option', N'Seçenek Ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Option Values', N'Opsiyon Değerleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Delete Option', N'Silme Seçeneği')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Generate Combinations', N'Birleşmeleri Yarat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Variations', N'Ürün Çeşitlemeleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Option Combinations', N'Seçenek Birleşmeleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Images', N'Görüntüler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Apply', N'Uygulamak')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Available Attributes', N'Kullanılabilir Özellikler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add Attribute', N'Öznitelik Ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Attributes', N'Ürün özellikleri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Attribute Name', N'Özellik Adı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Value', N'Değer')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'General Information', N'Genel bilgi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Category Mapping', N'Kategori Eşleme')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Related Products', N'Related Products')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Manage Related Products', N'İlgili Ürünleri Yönetin')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Category', N'Kategori Oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Category', N'Kategoriyi Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Brand', N'Marka Yarat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Brand', N'Markayı Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Name', N'İsim')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Parent Category', N'aile kategorisi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Group', N'Grup')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product Attribute', N'Ürün Özellik Yarat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product Attribute', N'Ürün Özellikini Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product Attribute Group', N'Ürün Özellik Grubu Oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product Attribute Group', N'Ürün Özellik Grubunu Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product Option', N'Ürün Seçeneği Yarat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product Option', N'Ürün Seçenekini Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product Display Widget', N'Ürün Ekran Widget''ı Oluşturun')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product Display Widget', N'Ürün Ekran Widget''ini düzenleme')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Widget Name', N'Widget Adı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Widget Zone', N'Widget Bölgesi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Publish Start', N'Yayın Başlat')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Publish End', N'Sonu Yayınla')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Number of Products', N'Ürün Sayısı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order By', N'Tarafından sipariş')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Product Template', N'Ürün Şablonu Oluşturma')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Product Template', N'Ürün Şablonunu Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Added Attributes', N'Eklenen Özellikler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Back', N'Geri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order Detail', N'Sipariş detayı')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order Information', N'Sipariş Bilgisi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Change', N'Değişiklik')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Product Information', N'Ürün Bilgisi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Shipping Information', N'Nakliye Bilgisi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Application Settings', N'Uygulama ayarları')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Page', N'Sayfa oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Page', N'Sayfayı düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Body', N'Vücut')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Account Dashboard', N'Hesap Gösterge Tablosu')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Account Information', N'Hesap Bilgileri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit', N'Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Security', N'Güvenlik')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create', N'yaratmak')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'External Logins', N'Harici Girişler')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Manage', N'Yönet')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Default shipping address', N'Varsayılan kargo adresi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Manage address', N'Adres yönet')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'You don''t have any default address', N'Varsayılan adresin yok')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Order History', N'Sipariş Geçmişi')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Address Book', N'Adres defteri')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Add Address', N'Adres Ekle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Delete', N'Sil')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Set as default shipping address', N'Varsayılan gönderim adresi olarak ayarlayın')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Edit Address', N'Adres Düzenle')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Create Address', N'Adres Oluştur')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Your account', N'Hesabınız')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (8, N'Date', N'Tarih')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Register', N'Registrar,')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Hello {0}!', N'Hola!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Log in', N' Iniciar sesión')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Log off', N'Salir' )
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'The Email field is required.', N'El campo Correo electrónico es obligatorio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Email', N'Correo electrónico' )
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'User List', N'La lista de usario')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Remember me?', N'Recordarme?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Password', N'Contraseña')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Use a local account to log in.', N'Use una cuenta local para iniciar sesión.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Register as a new user?', N'Registrarse como un nuevo usuario?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Forgot your password?', N'Olvidaste tu contraseña?');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Use another service to log in.', N'Use otro servicio para iniciar sesión.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Full name', N'Nombre completo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Confirm password', N'Confirmar contraseña')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create a new account.', N'Crea una cuenta nueva.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'All', N'Todo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Home', N'Inicio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add to cart', N'Añadir a la cesta')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product detail', N'Detalle del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product specification', N'especificaciones del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Rate this product', N'Califica este producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Review comment', N'Revisión comentarios')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Review title', N'Título de Revisión ')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Posted by', N'publicado por')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Submit review', N'Enviar opinión')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'You have', N'Tienes.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'products in your cart', N'productos en su carrito')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Continue shopping', N'Seguir comprando')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'View cart', N'Ver carro')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'The product has been added to your cart', N'El producto ha sido añadido a tu carrito.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Cart subtotal', N'Subtotal del carrito')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Shopping Cart', N'Carrito de compras')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product', N'Producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Price', N'Precio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Quantity', N'수량Cantidad')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'There are no items in this cart.', N'No hay artículos en este carrito.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Go to shopping', N'Ir de compras')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order summary', N'Resumen de orden')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Subtotal', N'Total parcial')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Process to Checkout', N'Proceso para pagar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Shipping address', N'Dirección de Envío')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add another address', N'Añadir otra dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Contact name', N'Nombre de contacto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Address', N'Dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'State or Province', N'Estado o Provincia')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'District', N'Distrito')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Phone', N'Teléfono')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order', N'Orden')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'products', N'productos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'reviews', N'Comentarios')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add Review', N'Añadir Comentario')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Customer reviews', N'Reseñas de Clientes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Your review will be showed within the next 24h.', N'Su opinión será mostrada dentro de las próximas 24h.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Thank you {0} for your review', N'Gracias por su comentario.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Rating average', N'Calificación promedio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'stars', N'Estrella')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Filter by', N'Filtrar por')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Category', N'Categoría')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Brand', N'Marca')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Sort by:', N'Ordenar por :')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'results', N'resultados')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'View options', N'Ver opciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Associate your {0} account.', N'{0} Asocia tu cuenta.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Users', N'Usuarios')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Vendors', N'Vendedores')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Reviews', N'Comentarios')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Products', N'Productos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Categories', N'Categorías')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Brands', N'Marcas')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Options', N'Opciones de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Attribute', N'Producto Atributo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Attribute Groups', N'Grupos de atributos del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Templates', N'Plantillas de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Sales', N'Ventas')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Orders', N'Pedidos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Content Management', N'Gestión de contenido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Pages', N'Páginas')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Widgets', N'Herramientas')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'System', N'Sistema')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Configuration', N'Configuración')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Translations', N'Traducciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Dashboard', N'Tablero')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Incomplete orders', N'Pedidos incompletos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Pending reviews', N'Revisiones pendientes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Most search keywords', N'La mayoría de  búsqueda de las palabras clave')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Most viewed products', N'Productos más vistos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'OrderId', N'Orden')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order Status', N'Estado del pedido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Customer', N'Cliente')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Created On', N'Creado en')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'SubTotal', N'Subtotal')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Actions', N'Acciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Site', N'Sitio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Catalog', N'Catálogo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Title', N'Título')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Comment', N'Comentario')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Status', N'Estado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Rating', N'Calificación')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Keyword', N'Palabra clave')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Count', N'Recuento')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create User', N'Crear usuario')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'FullName', N'Nombre completo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Roles', N'Papel')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit User', N'editar usuario')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Manager of Vendor', N'Gerente de vendedor')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Save', N'Guardar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Cancel', N'Cancelar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Phone Number', N'Número de teléfono')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Vendor', N'Crear Vendo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Active', N'Está activo.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Vendor', N'Editar vendedor')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Managers', N'Gerentes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Description', N'Descripción')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Pending', N'Pendiente')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Approved', N'Aprobado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Not Approved', N'No aprobado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Approve', N'Aprobar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product', N'Crear producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Has Options', N'Tiene opciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Visible Individually', N'Es Visible Individualmente.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Featured', N'Es Destacado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Allowed To Order', N'Se permite ordenar.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Called For Pricing', N'Precios fijo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Stock Quantity', N'Cantidad de stock')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Is Published', N'Es publicado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Yes', N'Si')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'No', N'No!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product', N'Editar producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Name', N'Nombre del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Short Description', N'Descripción breve')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Specification', N'Especificación')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Old Price', N'Precio antiguo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Special Price', N'Precio especial')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Special Price Start', N'Inicio el especial precio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Special Price End', N'Precio especial final')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Thumbnail', N'Miniatura')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Images', N'Imágenes del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Documents', N'Documentos del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Out Of Stock', N'Agotado')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Available Options', N'Opciones disponibles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add Option', N'Agregar opción')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Option Values', N'Valores de opciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Delete Option', N'Eliminar opción')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Generate Combinations', N'Generar combinaciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Variations', N'Variaciones del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Option Combinations', N'Combinaciones de opciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Images', N'Imágenes')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Apply', N'Aplicar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Available Attributes', N'Atributos disponibles')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add Attribute', N'Añadir atributo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Attributes', N'Atributos del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Attribute Name', N'Nombre del atributo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Value', N'Valor')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'General Information', N'Información General')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Category Mapping', N'Mapeo de Categoría')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Related Products', N'Productos relacionados')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Manage Related Products', N'Administrar productos relacionados')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Category', N'Crear categoría')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Category', N'Editar categoría')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Brand', N'Crear marca')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Brand', N'Editar marca')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Name', N'Nombre')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Parent Category', N'Categoría principal')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Group', N'Grupo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product Attribute', N'Crear atributo de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product Attribute', N'Editar atributo del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product Attribute Group', N'Crear grupo de atributos del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product Attribute Group', N'Editar grupo de atributos del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product Option', N'Crear opción de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product Option', N'Editar opción de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product Display Widget', N'Crear widget de pantalla de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product Display Widget', N'Editar widget de pantalla del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Widget Name', N'Nombre del widget')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Widget Zone', N'Zona de widgets')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Publish Start', N'Publicar inicio')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Publish End', N'Publicar final')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Number of Products', N'Numeros de Productos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order By', N'Ordenar por')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Product Template', N'Crear plantilla de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Product Template', N'Editar plantilla de producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Added Attributes', N'Atributos agregados')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Back', N'Volver')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order Detail', N'Detalle del pedido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order Information', N'Información del pedido')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Change', N'Cambiar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Product Information', N'Información del producto')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Shipping Information', N'Información de envío')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Application Settings', N'Configuración de la aplicación')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Page', N'Crear página')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Page', N'Editar página')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Body', N'Cuerpo')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Account Dashboard', N'Tablero de cuenta')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Account Information', N'Información de cuenta')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit', N'Editar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Security', N'Seguridad')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create', N'Crear')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'External Logins', N'Inicios externos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Manage', N'Administrar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Default shipping address', N'Dirección de envío predeterminada')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Manage address', N'Administrar dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'You don''t have any default address', N'Usted no tiene ninguna dirección predeterminada.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Order History', N'Historial de pedidos')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Address Book', N'Libreta de direcciones')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Add Address', N'Agregar dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Delete', N'Eliminar')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Set as default shipping address', N'Establecer como dirección de envío predeterminada')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Edit Address', N'Editar dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Create Address', N'Crear dirección')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Your account', N'Tu cuenta')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (9, N'Date', N'Fecha')

INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Register', N'注册,')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Hello {0}!', N'你好!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Log in', N'登录')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Log off', N'退出登录' )
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'The Email field is required.', N'邮箱必填')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Email', N'邮箱' )
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'User List', N'用户清单')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Remember me?', N'记住我?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Password', N'密码')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Use a local account to log in.', N'使用本地帐户登录.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Register as a new user?', N'注册为新用户?')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Forgot your password?', N'忘记密码?');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Use another service to log in.', N'使用其他服务登录.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Full name', N'全名')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Confirm password', N'密码确定')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create a new account.', N'创建新账户.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'All', N'全部')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Home', N'首页')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add to cart', N'加入购物车')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product detail', N'产品详细信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product specification', N'产品规格')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Rate this product', N'评价该产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Review comment', N'回顾评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Review title', N'评论标题')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Posted by', N'发表于')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Submit review', N'提交评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'You have', N'你有.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'products in your cart', N'购物车的产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Continue shopping', N'继续购买')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'View cart', N'查看购物车')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'The product has been added to your cart', N'该产品已被添加到您的购物车.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Cart subtotal', N'购物车小计')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Shopping Cart', N'购物车')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product', N'产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Price', N'价格')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Quantity', N'数量')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'There are no items in this cart.', N'此购物车中没有商品.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Go to shopping', N'开始购买')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order summary', N'订单总结')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Subtotal', N'小计');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Process to Checkout', N'进行结算')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Shipping address', N'邮寄地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add another address', N'添加地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Contact name', N'联系人姓名')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Address', N'地址');
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'State or Province', N'州或省')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'District', N'区')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Phone', N'手机号码')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order', N'订购')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'products', N'商品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'reviews', N'评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add Review', N'添加评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Customer reviews', N'顾客评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Your review will be showed within the next 24h.', N'您的评论将在24小时内显示.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Thank you {0} for your review', N'谢谢您的评论.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Rating average', N'平均评分')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'stars', N'开始')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Filter by', N'过滤')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Category', N'类别')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Brand', N'品牌')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Sort by:', N'排序方式 :')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'results', N'结果')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'View options', N'查看选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Associate your {0} account.', N'{0} 联结账号.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Users', N'用户')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Vendors', N'供应商')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Reviews', N'评测')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Products', N'产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Categories', N'分类')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Brands', N'品牌')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Options', N'产品选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Attribute', N'产品属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Attribute Groups', N'产品属性组')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Templates', N'产品模板')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Sales', N'减价出售')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Orders', N'订货')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Content Management', N'内容管理')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Pages', N'页面')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Widgets', N'小工具')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'System', N'系统')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Configuration', N'设置')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Translations', N'翻译')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Dashboard', N'仪表板')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Incomplete orders', N'订单未完成')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Pending reviews', N'待审查')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Most search keywords', N'大多数搜索关键字')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Most viewed products', N'最受欢迎的产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'OrderId', N'排序')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order Status', N'订单状态')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Customer', N'客户')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Created On', N'创建于')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'SubTotal', N'小计')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Actions', N'操作')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Site', N'位置')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Catalog', N'目录')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Title', N'标题')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Comment', N'评论')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Status', N'状态')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Rating', N'评分')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Keyword', N'关键词')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Count', N'计数')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create User', N'创建用户')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'FullName', N'全名')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Roles', N'角色')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit User', N'编辑用户')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Manager of Vendor', N'供应商管理')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Save', N'保存')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Cancel', N'取消')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Phone Number', N'电话号码')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Vendor', N'创建供应商')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Active', N'活跃.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Vendor', N'编辑供应商')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Managers', N'管理员')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Description', N'描述')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Pending', N'有待')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Approved', N'批准')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Not Approved', N'不批准')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Approve', N'批准')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product', N'创建产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Has Options', N'有选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Visible Individually', N'单独可见.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Featured', N'精品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Allowed To Order', N'允许订购.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Called For Pricing', N'定价')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Stock Quantity', N'库存数量')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Is Published', N'发布')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Yes', N'确定')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'No', N'否!')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product', N'编辑产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Name', N'产品名称')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Short Description', N'简短描述')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Specification', N'规范')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Old Price', N'原价')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Special Price', N'特价')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Special Price Start', N'特价开始')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Special Price End', N'特价结束')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Thumbnail', N'缩略图')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Images', N'产品图片')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Documents', N'产品文件')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Out Of Stock', N'断货')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Available Options', N'可用选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add Option', N'添加选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Option Values', N'选项值')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Delete Option', N'删除选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Generate Combinations', N'生成组合')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Variations', N'产品型号')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Option Combinations', N'选项组合')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Images', N'图片')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Apply', N'提供')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Available Attributes', N'可用属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add Attribute', N'添加属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Attributes', N'产品属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Attribute Name', N'属性名称')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Value', N'值')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'General Information', N'一般信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Category Mapping', N'类别映射')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Related Products', N'相关产品')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Manage Related Products', N'相关产品管理')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Category', N'创建类别')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Category', N'编辑类别')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Brand', N'创建您的品牌')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Brand', N'修改您的品牌')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Name', N'名称')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Parent Category', N'顶级类别')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Group', N'组')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product Attribute', N'创建产品属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product Attribute', N'编辑产品属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product Attribute Group', N'创建产品属性组')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product Attribute Group', N'编辑产品属性组')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product Option', N'产品创建选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product Option', N'编辑产品选项')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product Display Widget', N'创建产品展示小部件')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product Display Widget', N'编辑产品展示小部件')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Widget Name', N'小工具名称')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Widget Zone', N'小部件区域')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Publish Start', N'开始发布')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Publish End', N'发布结束')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Number of Products', N'产品数量')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order By', N'按排序')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Product Template', N'创建产品模板')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Product Template', N'编辑产品模板')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Added Attributes', N'添加属性')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Back', N'返回')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order Detail', N'订单详情')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order Information', N'订单信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Change', N'更改')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Product Information', N'产品信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Shipping Information', N'运送信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Application Settings', N'应用设置')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Page', N'创建页面')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Page', N'编辑页面')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Body', N'体')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Account Dashboard', N'帐户信息中心')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Account Information', N'帐户信息')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit', N'编辑')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Security', N'安全')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create', N'创建')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'External Logins', N'外部登录')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Manage', N'管理')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Default shipping address', N'默认邮寄地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Manage address', N'地址管理')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'You don''t have any default address', N'您没有任何的默认地址.')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Order History', N'订单记录')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Address Book', N'地址簿')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Add Address', N'添加地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Delete', N'取消')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Set as default shipping address', N'设置为默认邮寄地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Edit Address', N'编辑地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Create Address', N'创建地址')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Your account', N'您的帐号')
INSERT [dbo].[Localization_Resource] ([CultureId], [Key], [Value]) VALUES (10, N'Date', N'日期')
