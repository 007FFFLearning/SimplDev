﻿INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (1, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'admin', 'ADMIN');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (2, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'customer', 'CUSTOMER');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") VALUES (3, 'bd3bee0b-5f1d-482d-b890-ffdc01915da3', 'guest', 'GUEST');
SELECT pg_catalog.setval('"Core_Role_Id_seq"', 3, true);


INSERT INTO "Core_User" ("Id", "UserGuid", "AccessFailedCount", "ConcurrencyStamp", "CreatedOn", "CurrentShippingAddressId", "Email", "EmailConfirmed", "FullName", "IsDeleted", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UpdatedOn", "UserName") VALUES (1, '1FFF10CE-0231-43A2-8B7D-C8DB18504F65', 0, '8620916f-e6b6-4f12-9041-83737154b338', '2016-05-20 16:50:05.707655', NULL, 'admin@simplcommerce.com', false, 'Shop Admin', false, true, NULL, 'ADMIN@SIMPLCOMMERCE.COM', 'ADMIN@SIMPLCOMMERCE.COM', 'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', NULL, false, '9e87ce89-64c0-45b9-8b52-6e0eaa79e5b7', false, '2016-05-20 16:50:05.707655', 'admin@simplcommerce.com');
SELECT pg_catalog.setval('"Core_User_Id_seq"', 1, true);

INSERT INTO "Core_UserRole" ("UserId", "RoleId") VALUES (1, 1);

INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (1, 'Category', 'Category', 'CategoryDetail')
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (2, 'Brand', 'Brand', 'BrandDetail')
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (3, 'Product', 'Product', 'ProductDetail')
INSERT INTO "Core_EntityType" ("Id", "Name", "RoutingController", "RoutingAction") VALUES (4, 'Page', 'Page', 'PageDetail')
SELECT pg_catalog.setval('"Core_EntityType_Id_seq"', 4, true);

INSERT INTO "ActivityLog_ActivityType" ("Id", "Name") VALUES (1, 'ProductView')
SELECT pg_catalog.setval('"ActivityLog_ActivityType_Id_seq"', 1, true);

INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (1, 'CarouselWidget', 'widget-carousel-create', '2016-06-19 00:00:00', 'widget-carousel-edit', true, 'Carousel Widget', 'CarouselWidget');
INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (2, 'HtmlWidget', 'widget-html-create', '2016-06-24 00:00:00', 'widget-html-edit', true, 'Html Widget', 'HtmlWidget');
INSERT INTO "Core_Widget" ("Id", "Code", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName") VALUES (3, 'ProductWidget', 'widget-product-create', '2016-06-24 00:00:00', 'widget-product-edit', true, 'Product Widget', 'ProductWidget');
SELECT pg_catalog.setval('"Core_Widget_Id_seq"', 3, true);

INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (1, NULL, 'Home Featured');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (2, NULL, 'Home Main Content');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name") VALUES (3, NULL, 'Home After Main Content');
SELECT pg_catalog.setval('"Core_WidgetZone_Id_seq"', 3, true);

INSERT INTO "Core_Country" ("Id", "Name") VALUES (1, 'Việt Nam');

INSERT INTO "Core_StateOrProvince" ("Id", "CountryId", "Name", "Type") VALUES (79, 1, 'Hồ Chí Minh', 'Thành Phố');

INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (1, NULL, 'Quận 1', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (2, NULL, 'Quận 2', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (3, NULL, 'Quận 3', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (4, NULL, 'Quận 4', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (5, NULL, 'Quận 5', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (6, NULL, 'Quận 6', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (7, NULL, 'Quận 7', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (8, NULL, 'Quận 8', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (9, NULL, 'Quận 9', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (10, NULL, 'Quận 10', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (11, NULL, 'Quận 11', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (12, NULL, 'Quận 12', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (13, NULL, 'Thủ Đức', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (14, NULL, 'Gò Vấp', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (15, NULL, 'Bình Thạnh', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (16, NULL, 'Tân Bình', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (17, NULL, 'Tân Phú', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (18, NULL, 'Phú Nhuận', 79, NULL);
INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type") VALUES (19, NULL, 'Bình Chánh', 79, NULL);

INSERT INTO "Catalog_ProductOption" ("Id", "Name") VALUES (1, 'Color');
INSERT INTO "Catalog_ProductOption" ("Id", "Name") VALUES (2, 'Size');
SELECT pg_catalog.setval('"Catalog_ProductOption_Id_seq"', 2, true);