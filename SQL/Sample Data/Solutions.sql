--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy]) 
	VALUES (N'100000-001', 
			N'100000', 
			N'Write on Time',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy]) 
	VALUES (N'b0b981ca-b4db-4bdc-ab05-89780cc750ec', N'100000-001', 1,			
			N'["Flexible Pricing", "Lightweight interface designed for maximum usability", "DNA tracking and automatic improvement suggestions", "Web-based", "Remotely accessible"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.writeontime.com/about',
			N'Write on Time is a Citizen-facing Appointments Management system specifically designed to reduce the number of DNAs in your practice.',
			N'FULL DESCRIPTION - Write on Time is a Citizen-facing Appointments Management system specifically designed to reduce the number of DNAs in your practice.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'b0b981ca-b4db-4bdc-ab05-89780cc750ec' WHERE [Id] = '100000-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100000-001', N'Patsy', N'Delgado', N'07451593188', N'Sales@remedical.co.uk', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100000-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM Capability WHERE CapabilityRef = 'C1')
GO

INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance], [LastUpdated], [LastUpdatedBy]) VALUES (N'100000-001-001', N'100000-001', N'Training', N'The Training Package', N'Guidance text for purchasing', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance], [LastUpdated], [LastUpdatedBy]) VALUES (N'100000-001-002', N'100000-001', N'Support', N'24/7 Support', N'Optional', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[PurchasingModel] ([Id], [FrameworkId], [SolutionId], [StatusId], [AuthorityStatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'NHSDGP001', N'100000-001', 4, 2, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[SolutionPrice] ([Id], [PurchasingModelId], [UnitId], [PriceTypeId], [Price], [BandStart], [BandEnd], [Created]) VALUES (N'd89a6e83-4e1c-4c0b-a5cc-e56b0830aff6', N'60123d1b-7995-470a-baeb-baa94f95bf0a', 1, 1, CAST(1.230 AS Decimal(18, 4)), 1, NULL, GetUtcDate())
GO

INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [UnitId], [PriceTypeId], [Price], [BandStart], [BandEnd], [Created]) VALUES (N'123af44e-6b05-4be7-b8b4-8ffd6439d5ec', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'10000000-001-001', 1, 3, CAST(0.660 AS Decimal(18, 4)), 1, NULL, GetUtcDate())
GO
INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [UnitId], [PriceTypeId], [Price], [BandStart], [BandEnd], [Created]) VALUES (N'7fe3b549-2f1b-43d5-b1d2-97c855e10fbb', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'10000000-001-002', 1, 3, CAST(1.500 AS Decimal(18, 4)), 1, NULL, GetUtcDate())
GO

INSERT INTO [dbo].[FrameworkSolutions] ([FrameworkId] ,[SolutionId] ,[IsFoundation], [LastUpdated] ,[LastUpdatedBy]) VALUES ('NHSDGP001', '100000-001' ,1 ,GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO
--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy]) 
	VALUES (N'100001-001', 
			N'100001', 
			N'Appointment Gateway',
			N'1.0.0',
			3,
			1,
			1,			
			0,
			GetUtcDate(),
			N'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'26b7f5d8-69d9-40b3-a450-73f714ebab5c', N'100001-001', 1,
			N'["Tested and approved by hundred''s of GPs", "99.9% service availability guaranteed", "Appointment forwarding & referral integration", "Fully interopable with all major GP IT solutions", "Compliant with all relevant ISO standards"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.appointmentgateway.com/about',
			N'Appointment Gateway is a complete appointment management suite that has been fully integrated with all major clinical systems throughout both the UK and Europe.',
			N'FULL DESCRIPTION - Appointment Gateway is a complete appointment management suite that has been fully integrated with all major clinical systems throughout both the UK and Europe.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'26b7f5d8-69d9-40b3-a450-73f714ebab5c' WHERE [Id] = '100001-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100001-001', N'Sam', N'Thomas', N'07255920626', N'Sales@CareShare.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100001-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C1')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100001-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
GO
INSERT INTO [dbo].[FrameworkSolutions]
		([FrameworkId]
        ,[SolutionId]
        ,[IsFoundation]
        ,[LastUpdated]
        ,[LastUpdatedBy])
		VALUES
		( N'NHSDGP001'
		 ,N'100001-001'
		 ,1
		 ,GetUtcDate()
		 ,'00000000-0000-0000-0000-000000000000')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100002-001', 
			N'100002', 
			N'Zen Guidance',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'de9adcc1-4b16-4052-a2e4-7b36f82fa7d8', 
			N'100002-001',			
			3,
			N'["Advanced AI functionality", "MESH & FHIR compliant", "Remotely accessible ", "Cloud-hosted", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.zenguidance.com/about',
			N'Zen Guidance utilizes an advanced AI framework to provide clinicians with highly accurate data to support sound decision-making.',
			N'FULL DESCRIPTION - Zen Guidance utilizes an advanced AI framework to provide clinicians with highly accurate data to support sound decision-making.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'de9adcc1-4b16-4052-a2e4-7b36f82fa7d8' WHERE [Id] = '100002-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100002-001', N'Virginia', N'Wilson', N'07810401180', N'Sales@Zen.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100002-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C6')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100003-001', 
			N'100003', 
			N'Intellidoc Comms',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'4b0e4a4f-2327-44ac-8988-7317a59c110d',
			N'100003-001',
			3,
			N'["Efficient instant & scheduled messaging", "Web-based interface", "Compliant with all relevant ISO standards", "Wide range of add-ons available", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.intellidoc.com/about',
			N'Intellidoc Comms empowers all practice staff to record & send communications in an extremely streamlined and time-efficient manner.',
			N'FULL DESCRIPTION - Intellidoc Comms empowers all practice staff to record & send communications in an extremely streamlined and time-efficient manner.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'4b0e4a4f-2327-44ac-8988-7317a59c110d' WHERE [Id] = '100003-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100003-001', N'Richard', N'Perez', N'07882055950', N'Sales@CatterpillarMedworks.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100003-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C7')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100003-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100004-001', 
			N'100004', 
			N'Diagnostics XYZ',
			N'1.0.0',
			3,
			1,
			1,			
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'fcd89564-bce6-45fb-8d18-3e97b6ad416b',
			N'100004-001',			
			3,
			N'["Seamless integration with a wide range of diagnostic hardware", "Demo & free trial available", "FHIR compliant", "Plug and play - minimal deployment activity required", "Optimized for touchscreen & desktop use"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.diagnostics.xyz/about',
			N'Diagnostics XYZ introduces new diagnostic tools not currently provided by the leading clinical software suppliers.',
			N'FULL DESCRIPTION - Diagnostics XYZ introduces new diagnostic tools not currently provided by the leading clinical software suppliers.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'fcd89564-bce6-45fb-8d18-3e97b6ad416b' WHERE [Id] = '100004-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100004-001', N'Harry', N'Gonzales', N'07219884068', N'Sales@CurtisSystems.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100004-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C8')
GO

INSERT INTO [dbo].[FrameworkSolutions] ([FrameworkId] ,[SolutionId] ,[IsFoundation], [LastUpdated] ,[LastUpdatedBy]) VALUES ('NHSDGP001', '100004-001' ,1 ,GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100005-001', 
			N'100005', 
			N'Document Wizard',
			N'1.0.0',
			3,
			1,
			1,			
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'9fe7980f-0a0b-44b3-bd19-0786dd6e1f4e',
			N'100005-001',			
			3, 
			N'["Industry-leading data extraction & scanning accuracy", "Fully interopable with all major GP IT solutions", "24/7 customer support", "Fully Compliant with all relevant ISO standards", "Modular architecture to enhance compatibility and customisation"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.documentwizard.com/about',
			N'Document Wizard is the UK industry-leader for clinical document management software due to our patented lightweight interface and interoperability.',
			N'FULL DESCRIPTION - Document Wizard is the UK industry-leader for clinical document management software due to our patented lightweight interface and interoperability.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'9fe7980f-0a0b-44b3-bd19-0786dd6e1f4e' WHERE [Id] = '100005-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100005-001', N'Michelle', N'Moore', N'07849662065', N'Sales@ClinicalRaptor.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100005-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C9')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100005-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C19')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100005-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C41')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100006-001', 
			N'100006', 
			N'Paperlite',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'b6dcb30f-613d-43d7-9039-2ce4cf8508ce',
			N'100006-001',			
			3,
			N'["Revolutionary optical character recognition technology", "Can be deployed quickly at low-cost", "Web-based interface", "Cloud-hosted", "Wide range of add-ons available"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.paperlite.com/about',
			N'Paperlite utilises new OCR technology to seamlessly transfer written notes to digital patient records.',			
			N'FULL DESCRIPTION - Paperlite utilises new OCR technology to seamlessly transfer written notes to digital patient records.',			
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'b6dcb30f-613d-43d7-9039-2ce4cf8508ce' WHERE [Id] = '100006-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100006-001', N'Timothy', N'Campbell', N'07107924358', N'Sales@DocLightning.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100006-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C9')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100006-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C17')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100007-001', 
			N'100007', 
			N'Medsort',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'bf543a9e-50d4-4d44-af10-59ee753915b5',
			N'100007-001',
			3,
			N'["Fully adaptable to suit your practice''s needs", "Integrates with Spine", "FHIR compliant", "Flexible Pricing", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.medsort.com/about',
			N'Medsort enhances your medicine optimisation process and introduces new, more customisable tools that can be adapted to your local environment.',
			N'FULL DESCRIPTION - Medsort enhances your medicine optimisation process and introduces new, more customisable tools that can be adapted to your local environment.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'bf543a9e-50d4-4d44-af10-59ee753915b5' WHERE [Id] = '100007-001'
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100007-001', N'Cheryl', N'White', N'07295044295', N'Sales@DocabilitySoftware.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100007-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C30')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'99999-89', 
			N'99999', 
			N'NotEmis Web GP',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'0d5f88ef-b2ed-4e8d-966c-52e7ca3e841b',
			N'99999-89',			
			3,
			NULL,
			NULL,
			NULL,
			NULL,
			NULL,			
			NULL,			
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'0d5f88ef-b2ed-4e8d-966c-52e7ca3e841b' WHERE [Id] = '99999-89'
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '99999-89', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C1')
GO

INSERT INTO [dbo].[FrameworkSolutions] ([FrameworkId] ,[SolutionId] ,[IsFoundation], [LastUpdated] ,[LastUpdatedBy]) VALUES ('NHSDGP001', '99999-89' , 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO
