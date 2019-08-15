USE [buyingcatalogue]
GO
INSERT [dbo].[Organisation] ([Id], [OrganisationName], [Summary], [OrganisationUrl]) VALUES (N'6EF964E5', N'The Helpful Corp', NULL, NULL)
GO
INSERT [dbo].[Organisation] ([Id], [OrganisationName], [Summary], [OrganisationUrl]) VALUES (N'6B4BB7F4', N'Medic Man', NULL, NULL)
GO
INSERT [dbo].[Organisation] ([Id], [OrganisationName], [Summary], [OrganisationUrl]) VALUES (N'235F7D1A', N'Halls', NULL, NULL)
GO
INSERT [dbo].[Solution] ([Id], [OrganisationId], [SolutionName], [Version], [StatusId], [ParentId], [Summary], [AboutUrl]) VALUES (N'S6EF964E5-001', N'6EF964E5', N'Doc Mania', N'1.0.0', 4, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', NULL)
GO
INSERT [dbo].[Solution] ([Id], [OrganisationId], [SolutionName], [Version], [StatusId], [ParentId], [Summary], [AboutUrl]) VALUES (N'S6EF964E5-002', N'6EF964E5', N'GP Central', N'1.0.0', 4, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', NULL)
GO
INSERT [dbo].[Solution] ([Id], [OrganisationId], [SolutionName], [Version], [StatusId], [ParentId], [Summary], [AboutUrl]) VALUES (N'S6B4BB7F4-001', N'6B4BB7F4', N'NumberOne Sol', N'1.0.0', 4,NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', NULL)
GO
INSERT [dbo].[Solution] ([Id], [OrganisationId], [SolutionName], [Version], [StatusId], [ParentId], [Summary], [AboutUrl]) VALUES (N'S235F7D1A-001', N'235F7D1A', N'FarSight', N'1.0.0', 4, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', NULL)
GO
INSERT [dbo].[Solution] ([Id], [OrganisationId], [SolutionName], [Version], [StatusId], [ParentId], [Summary], [AboutUrl]) VALUES (N'S235F7D1A-002', N'235F7D1A', N'FarSight Practice', N'1.0.0', 4, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', NULL)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'9302758d-cc42-47a7-8f66-0e009008e507', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'669a02be-be1a-417d-8528-43c113c6e5e6', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'9f71bd15-e4bf-460c-9c2c-4c141b5b0727', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'a66c2751-72c1-4e9b-a504-51792eee083e', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'f6d02574-7232-48bd-8d45-7c145d47b4c7', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S6B4BB7F4-001', N'bdf84761-fb3d-4548-a9dc-e06965c1375a', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S235F7D1A-001', N'9f71bd15-e4bf-460c-9c2c-4c141b5b0727', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S235F7D1A-001', N'3b6976a5-5532-41c6-89bf-92948bf238ef', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S235F7D1A-002', N'9f71bd15-e4bf-460c-9c2c-4c141b5b0727', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S235F7D1A-002', N'e4d22f8a-0f5f-43d5-a8e4-60f1365e968a', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S235F7D1A-002', N'f6d02574-7232-48bd-8d45-7c145d47b4c7', 1)
GO
SET IDENTITY_INSERT [dbo].[MarketingContact] ON 
GO
INSERT [dbo].[MarketingContact] ([Id], [SolutionId], [FirstName], [LastName], [Email], [PhoneNumber], [Department]) VALUES (2, N'S235F7D1A-001', NULL, NULL, N'Sales@halls.com', NULL, N'Sales')
GO
INSERT [dbo].[MarketingContact] ([Id], [SolutionId], [FirstName], [LastName], [Email], [PhoneNumber], [Department]) VALUES (1, N'S235F7D1A-002', NULL, NULL, N'Sales@halls.com', NULL, N'Sales')
GO
SET IDENTITY_INSERT [dbo].[MarketingContact] OFF
GO
