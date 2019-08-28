INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [ParentId], [Summary], [FullDescription], [OnCatalogueVersion]) 
	VALUES (N'S10000000-001', 
			N'10000000', 
			N'NumberOne Sol', 
			N'1.0.0', 
			4, 
			1, 
			1, 
			NULL, 
			N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius mauris ut est sollicitudin scelerisque. In in ornare lorem. Ut bibendum lorem et felis dignissim vulputate. Suspendisse potenti. Quisque ac suscipit nunc. Quisque luctus nisi non maximus cursus. Morbi bibendum ullamcorper posuere', 
			N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis ullamcorper justo a blandit. Quisque malesuada tempor molestie. Phasellus eu tellus porta elit malesuada faucibus. Vivamus pellentesque tortor sem, in tempus ligula blandit eget. Etiam dapibus, lorem ut faucibus vestibulum, eros elit interdum felis, eleifend maximus mi arcu quis magna. Aliquam ut rutrum velit, eget viverra turpis. Aliquam et sodales nulla. Vivamus eget ipsum eget justo vestibulum suscipit rhoncus vel volutpat.', 
			0)
GO

INSERT [dbo].[MarketingDetail] ([SolutionId], [AboutUrl], [Features], [ClientApplication], [Hosting], [RoadMap], [RoadMapImageUrl]) 
	VALUES (N'S10000000-001',
			NULL,
			N'{"features":["Feature 1","Feature 2","Feature 3","Feature 4","Feature 5","Feature 6","Feature 7","Feature 8","Feature 9","Feature 10"]}', 
			N'{"clientApplications":{"browser":{"responsiveDesign":true,"supportedBrowsers":["Google Chrome","Edge","Firefox"],"browserPlugins":{"pluginsRequired":true,"pluginDescription":"Some text"},"minimumConnectionSpeed":"8Mbps","minimumDesktopResolution":"16:9 - 1280 x 720","additionalInformation":"Some description"},"nativeMobile":{"supportedOS":["iOS","Android","Windows10"],"operatingSystemDescription":"Some description - 1000 characters","minimumConnectionSpeed":"5Mbps","connectivityDescription":"Support for offline usage","connectionTypes":["Bluetooth","WiFi","4G"],"minimumMemory":"1GB","storageRequirements":"512MB SD Card storage required","thirdPartyComponentsRequired":"Description of 3rd party components required by the application to operate","deviceCapabilitiesRequired":"Description of functions and features the device must have for the application to work, e.g. a 2Mb Camera","hardwareRequirements":"Additional hardware requirements of the device or external to the device e.g. a plugged in adaptor","additionalInformation":"Some description"},"desktop":{"supportedOS":"Some description list","minimumConnectionSpeed":"8Mbps","minumumProcessor":"Processor spec.","minimumMemory":"8GB","storageRequirements":"500GB SD disk","recommendedScreenResolution":"16:10 - 1280 x 800","deviceCapabilitiesRequired":"Description of functions and features the device must have for the application to work, e.g. a 2Mb Camera","hardwareRequirements":"Additional hardware requirements of the device or external to the device e.g. a plugged in adaptor","additionalInformation":"Some description"}}}', N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			NULL, 
			NULL)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [Email], [PhoneNumber], [Department]) VALUES (N'S10000000-001', NULL, NULL, N'Sales@medicman.co.uk', NULL, N'Sales')
GO

INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance]) VALUES (N'S10000000-001-001', N'S10000000-001', N'Training', N'The Training Package', N'Guidance text for purchasing')
GO
INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance]) VALUES (N'S10000000-001-002', N'S10000000-001', N'Support', N'24/7 Support', N'Optional')
GO

INSERT [dbo].[PurchasingModel] ([Id], [FrameworkId], [SolutionId], [StatusId], [AuthorityStatusId], [TransitionMinDays], [TransitionMaxDays], [TransitionAverageDays], [TransitionDescription]) VALUES (N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'NHSDGP001', N'S10000000-001', 4, 2, 10, 100, 25, N'Some very long and boring financial stuff')
GO
INSERT [dbo].[SolutionPrice] ([Id], [PurchasingModelId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'd89a6e83-4e1c-4c0b-a5cc-e56b0830aff6', N'60123d1b-7995-470a-baeb-baa94f95bf0a', 1, CAST(1.230 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-19T00:00:00.0000000' AS DateTime2))
GO

INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'123af44e-6b05-4be7-b8b4-8ffd6439d5ec', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'S10000000-001-001', 1, CAST(0.660 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-20T14:45:59.6033333' AS DateTime2))
GO
INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'7fe3b549-2f1b-43d5-b1d2-97c855e10fbb', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'S10000000-001-002', 1, CAST(1.500 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-20T14:47:21.3600000' AS DateTime2))
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'9302758d-cc42-47a7-8f66-0e009008e507', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'669a02be-be1a-417d-8528-43c113c6e5e6', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'9f71bd15-e4bf-460c-9c2c-4c141b5b0727', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'a66c2751-72c1-4e9b-a504-51792eee083e', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'f6d02574-7232-48bd-8d45-7c145d47b4c7', 1)
GO
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) VALUES (N'S10000000-001', N'bdf84761-fb3d-4548-a9dc-e06965c1375a', 1)
GO

INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'995053f0-e440-4282-b47c-021cb7cf2a9b', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'5b88a468-ad51-4c0e-94dd-14cbdc240088', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'0381bb33-a9a1-4502-a9ed-175e5c25b354', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'51908f22-7ffa-41b3-90a2-1bfafc4ac368', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'2ed02257-61c8-4a0f-be06-2453c868adf9', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'e6e9fc7c-1861-4f04-bca0-24669b566d25', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'5f6b43df-12a1-4919-bc53-2c7091fbf815', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'409a857b-1da7-47a4-a8f1-33fed057e2a0', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'd79c3c62-a40e-4491-a5e3-444ff14b54b8', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'10b52d69-4e66-41a8-b621-447bb9d58d51', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'52c7cef5-dc72-4ff0-9930-48c41c8f939b', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'65db9309-1cdb-4fec-b71a-4cb6a8e07651', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'a5378b41-7069-4350-ba5a-5901914a7212', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'a0ca80d1-6a5b-4789-9b51-73299b835037', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'3c9a5252-aed7-4aac-a751-74c74818d561', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'd6bdaf20-3cf4-49e8-81cc-782703190fd8', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'7335fc40-dff5-455c-a853-7e114fd83879', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'3a73cb30-3983-4c13-b626-81b3a4076a77', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'feebb709-4ba0-411a-a43a-81f218db2fea', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'e17178e3-f0ce-4055-a17b-87d6a5ed3745', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'13631427-42d6-479d-9e22-894c35659bf5', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'562d3ff0-a514-4eb0-a6a2-8e58893717a1', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'a113321a-e748-413d-93f4-94ec81e8f6bf', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'3c343e82-0c32-478a-9d3a-97441b93137f', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'a7b7863c-99e5-4a7e-9f0f-98b4c70edde1', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'3360bf2c-1944-4f37-aad4-998fceff1bb4', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'33d493eb-03d6-4d6c-a9b4-99f2c6e72f6e', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'1cb5e536-17be-4e56-bc0f-a3b47fca9e46', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'3719a6c2-18ae-4a8e-af49-a9ccdc124817', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'96dd4bca-1ad5-4c30-9030-b15c1d26c2d3', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'c3e0aeca-e31f-41ae-b0ab-b249ea4b82e1', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'6ade906e-aa3e-4757-957a-c1c2e4bc6939', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'55f25ec4-a636-493b-965e-c9fabf33af47', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'889202df-e71b-4f13-b2c5-ce15a43b1c7d', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'd449f08b-c3fa-4911-b0e0-d871b1a8da43', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'afd4f451-09c7-4e7f-b509-e88cdb241fe5', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'2d82e238-37d5-41ce-9bd8-eb940a3300de', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'1eae027f-bf6b-4f09-b42f-efbdbc4c05cc', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'1ed4d6be-ae74-432e-a489-f0d3f64349c3', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'22d4f21a-98fb-4306-9bab-f91db66e01ed', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'4c960873-b446-43c7-9c74-f9c76d8e9ab4', 1)
GO
INSERT [dbo].[SolutionStandard] ([SolutionId], [StandardId], [StatusId]) VALUES (N'S10000000-001', N'5731ec94-2961-46d4-9dbd-fd349b5b277f', 1)
GO


