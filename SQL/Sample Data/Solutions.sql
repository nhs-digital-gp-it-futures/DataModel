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

INSERT INTO [dbo].[Solution] 
	([Id], [ParentId], [SupplierId], [Name], [Version], 
	[PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], 
	[ServiceLevelAgreement], [WorkOfPlan], [LastUpdated], [LastUpdatedBy]) 
	
	VALUES (N'99999-89', NULL, N'99999', N'NotEmis Web GP', N'1.0.0', 
	3, 1, 1, 0, NULL, NULL, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO

INSERT INTO [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [Email], [PhoneNumber], [Department], [LastUpdated], [LastUpdatedBy]) 
VALUES (N'99999-89', N'', N'', N'info@egton.net', N'0845 1245 245 and select Option 1', N'Internal Sales Team', GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO

INSERT INTO [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [ImplementationDetail], [RoadMap], [IntegrationsUrl], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy]) 
VALUES (N'0d5f88ef-b2ed-4e8d-966c-52e7ca3e841b', 
N'99999-89', 
3, 
N'["Access to real-time patient data that can be shared between locations and healthcare organisations","One-click access to patient summary information","Quick data entry using protocols, templates and concepts tailored to your practice requirements","Integrated clinical safety alerts graded to highlight severity","Automatic notification of linked pre-existing conditions when recording a new acute problem","Integrated patient recall system to target specific lists of patients for specific clinics","Intelligent alerts and auto-templates to capture outstanding QOF information","Integrated QOF-finder to identify patients where you are losing QOF points","Seamless data exchange with over 100 partners including Graphnet, Cerner and Optum","Integration with Patient Access enables patients to book appointments and order prescriptions"]', 
N'{"ClientApplicationTypes":["browser-based","native-mobile","native-desktop"],"BrowsersSupported":["Google Chrome","Chromium","Internet Explorer 11","Internet Explorer 10"],"MobileResponsive":true,"Plugins":{"Required":false,"AdditionalInformation":""},"MinimumConnectionSpeed":"2Mbps","MinimumDesktopResolution":"16:9 - 1366 x 768","HardwareRequirements":"The browser activities are only supported in relation the native desktop client therefore mirror the native desktop client hardware requirements detailed below.","NativeMobileHardwareRequirements":"Any device capable of supporting the listed supported operating systems is compliant.","NativeDesktopHardwareRequirements":"The spoke server is an important part of the solution. It provides a patch distribution system for client updates and acts as a local cache. \r\nEMIS Health recommends that your spoke is a dedicated device; however, if you use your spoke to perform other functions, such as act as a domain controller, store business documents or host other applications, then a Windows server class operating system will be required, along with an appropriate specification of server hardware.","AdditionalInformation":"","MobileFirstDesign":false,"NativeMobileFirstDesign":false,"MobileOperatingSystems":{"OperatingSystems":["Apple IOS","Android","Other"],"OperatingSystemsDescription":"•\tiOS v 10.3.3.3 and above\r\n•\tAndroid v 6 and above\r\n•\tWindows 10 (Build 14393)"},"MobileConnectionDetails":{"MinimumConnectionSpeed":"","ConnectionType":["GPRS","3G","LTE","4G","5G","Wifi"],"Description":"The mobile application only requires internet connectivity to synchronize therefore there is no minimum connection speed required."},"MobileMemoryAndStorage":{"MinimumMemoryRequirement":"2GB","Description":"All compliant devices have a minimum 16GB storage"},"MobileThirdParty":{"ThirdPartyComponents":"","DeviceCapabilities":"The device should have access to the relevant App Store to enable the installation of the respective application although deployment via mobile device management solutions is supported."},"NativeMobileAdditionalInformation":"Apple have recently announced that a new operating system, designed specifically for iPad devices.\r\nWe have tested this and can confirm that EMIS Mobile is fully compatible.","NativeDesktopOperatingSystemsDescription":"Microsoft Windows 7 (x86 x64)\r\nMicrosoft Windows 8.1 (x86 x64)\r\nMicrosoft Windows 10 (x86 x64)","NativeDesktopMinimumConnectionSpeed":"2Mbps","NativeDesktopThirdParty":{"ThirdPartyComponents":".NET framework 4","DeviceCapabilities":"The application requires connectivity to the EMIS Data Centre."},"NativeDesktopMemoryAndStorage":{"MinimumMemoryRequirement":"4GB","StorageRequirementsDescription":"10GB free disk space","MinimumCpu":"Intel Core i3 equivalent or higher","RecommendedResolution":"16:9 - 1366 x 768"},"NativeDesktopAdditionalInformation":"The minimum connection speed is dependent on the number of clients that need to be supported.\r\n\r\nEMISHealth do not support the use of on-screen keyboards for 2 in 1 devices."}', 
N'{"PublicCloud":{"Summary":"This service is not available on public cloud","Link":""},"PrivateCloud":{"Summary":"EMIS Web is hosted in EMIS’ own data centres and the solution is provided as Software as a Service","Link":"","HostingModel":"Model complies with GPIT Futures requirements for hosting","RequiresHSCN":"End user devices must be connected to HSCN/N3"}}', 
N'The typical timescales for the implementation of EMIS Web are around 12 weeks depending on the patient list size. 

An implementation plan is provided and agreed at the beginning of the process outlining all key dates and activities, where required these dates are negotiable to fit the needs of the customer.

Key activities:

•	Customer supplied with high level implementation plan and welcome pack

•	Engineer visit to perform install of client software and check connectivity

•	Customer supplied test data loaded into a test system and made available

•	Learning needs analysis performed & agreed training plan for go live

•	On site visit to train the customer how to check and cleanse their data

•	Any defects and corrections completed on migrated data

•	Practice sign off of test data

•	Agreed training provide pre and post go live in line with results from LNA

•	Go live day, trainers and engineer onsite to support a smooth transition', 
N'The following roadmap details all IT Futures managed capacity items. EMIS Health is committed to delivering against the effective date. The roadmap provides visibility on which items have been completed, are scheduled and are in the pipeline to be scheduled.', 
N'https://www.emishealth.com/products/partner-products/', 
N'', 
N'EMIS Web is the most widely used GP clinical system in the UK. Created by clinicians for clinicians, it helps run efficient practices, whilst delivering the best possible patient care. With patient safety at its core, EMIS Web enables you to deliver safe and informed on demand care across locations.', 
N'EMIS Web GP is a comprehensive, flexible and powerful clinical management tool for healthcare organisations. It is intuitive, easy to learn and was ranked the number one clinical system in the UK for interoperability (KLAS report).

EMIS Web GP is fully accredited to securely exchange data with the NHS SPINE and incorporates functionality such as GP2GP, Electronic Prescription Service (EPS), Personal Demographics Service (PDS), NHS e-Referral Service (e-RS) , Summary Care Record (SCR), eMED3 (Fitnotes), SNOMED CT and Female genital mutilation (FGM).

Using EMIS Web, healthcare professionals can provide the best possible patient care with patient safety at its core. We safely and securely hold more patient records than any other supplier and work with clinicians and pharmacists to ensure the highest possible standards of patient safety are upheld. The system provides secure access to all the information they need to make the right decisions for their patients.', 
GetUtcDate(), 
N'00000000-0000-0000-0000-000000000000')
GO

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'0d5f88ef-b2ed-4e8d-966c-52e7ca3e841b' WHERE [Id] = '99999-89'
GO

INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'20b09859-6fc2-404c-b7a4-3830790e63ab', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d805aad-d43a-480e-9bc0-41a755bafe2f', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e5521a71-a28e-4bc9-bddf-599f0a90719d', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'dd649cc4-a710-4472-98b3-663d9d12a8b7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'6e77147d-d2af-46bd-a2f2-bb4f235daf3a', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'a71f2be1-6395-4db7-828c-d4733b42b5b5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO

INSERT INTO [dbo].[FrameworkSolutions] ([FrameworkId] ,[SolutionId] ,[IsFoundation], [LastUpdated] ,[LastUpdatedBy]) VALUES ('NHSDGP001', '99999-89' , 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E4', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E6', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'efd93d25-447b-4ca3-9d78-108d42afeae0', N'C5E7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E4', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E6', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', N'C12E7', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E10', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E11', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E12', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E13', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E14', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E4', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E5', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E6', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E7', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E8', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8bee1ff3-84d4-430b-a678-336f57c57387', N'C30E9', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'20b09859-6fc2-404c-b7a4-3830790e63ab', N'C11E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'20b09859-6fc2-404c-b7a4-3830790e63ab', N'C11E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d805aad-d43a-480e-9bc0-41a755bafe2f', N'C10E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d805aad-d43a-480e-9bc0-41a755bafe2f', N'C10E2', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e5521a71-a28e-4bc9-bddf-599f0a90719d', N'C17E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'e5521a71-a28e-4bc9-bddf-599f0a90719d', N'C17E2', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'dd649cc4-a710-4472-98b3-663d9d12a8b7', N'C16E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E10', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E11', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E12', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E13', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E14', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E15', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E16', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E17', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E18', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E19', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E20', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E21', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E4', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E6', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E8', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', N'C13E9', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E4', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E6', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9442dcc4-22df-494b-8672-b7b4dd077496', N'C15E8', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E10', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E11', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E12', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E13', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E14', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E15', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E16', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E2', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E4', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E6', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E8', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', N'C14E9', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'a71f2be1-6395-4db7-828c-d4733b42b5b5', N'C6E1', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'a71f2be1-6395-4db7-828c-d4733b42b5b5', N'C6E2', 3, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'a71f2be1-6395-4db7-828c-d4733b42b5b5', N'C6E3', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'a71f2be1-6395-4db7-828c-d4733b42b5b5', N'C6E4', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E1', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E10', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E11', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E12', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E13', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E2', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E3', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E4', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E5', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E6', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E7', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E8', 2, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionEpic] ([SolutionId], [CapabilityId], [EpicId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99999-89', N'9d325dec-6e5b-44e4-876b-eacf6cd41b3e', N'C20E9', 1, GetUtcDate(), N'00000000-0000-0000-0000-000000000000')
GO

--************************************************************************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'99998-98', 
			N'99998', 
			N'NotSystmOne',
			N'1.0.0',
			3,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
			

INSERT INTO [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [ImplementationDetail], [RoadMap], [IntegrationsUrl], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy]) 
VALUES (N'c9945761-4209-49fd-abef-f6f5b14f0a78', 
N'99998-98', 
3, 
N'["Full Spine Compliance - EPS, PDS, SCR, eRS, GP2GP","Standards - SNOMED CT, HL7 V2, V3, FHIR, GP Connect","Appointments - Configurable Clinics, Dedicated Appointments, Visits Screens, SMS Integration","Prescribing - Acute, Repeat, Formularies, Action Groups, Decision Support","Complete Electronic Health Record (EHR)","Comprehensive consultations – Recalls, Referrals, Structured Data","Clinical Development Kit - Data Entry Templates, Views, Questionnaires, Integrated Word Letters","Full Workflow Support including Automatic Consultations","Analytics - Customisable Reports, Batch Reports, Bulk Actions, QOF Tools, Automatic Submissions","Patient Online Services - Appointment Booking, Medication Requests, Record Access, Proxy Access"]', 
N'{"ClientApplicationTypes":["native-desktop"],"BrowsersSupported":[],"NativeMobileHardwareRequirements":"The OS system drive must have a drive letter of C.","NativeDesktopHardwareRequirements":"The OS system drive must have a drive letter of C.","NativeMobileFirstDesign":false,"MobileOperatingSystems":{"OperatingSystems":["Other"],"OperatingSystemsDescription":"Windows"},"MobileConnectionDetails":{"MinimumConnectionSpeed":"1Mbps","ConnectionType":["3G","4G","Wifi"],"Description":"CPU of 1 GHz or faster 32-bit or 64-bit processor"},"MobileMemoryAndStorage":{"MinimumMemoryRequirement":"1GB","Description":"4GB of free space on the C drive"},"MobileThirdParty":{"ThirdPartyComponents":"","DeviceCapabilities":"Minimum screen resolution of 1024 x 720 pixels."},"NativeDesktopOperatingSystemsDescription":"TPP supports all versions of Windows for desktops that are currently supported by Microsoft. Following verification of the configuration by TPP, installation of Windows to a virtual environment is supported to the products and versions including Virtual VMware View 5+, Citrix Xen Desktop 6+ and Microsoft Server 2012+.\r\nInstallation of the SystmOne client to any Server Operating System is not licensed by TPP. It should also be noted that both 32-bit and 64-bit versions of Microsoft Windows are supported unless otherwise stated. Windows RT is not supported.","NativeDesktopMinimumConnectionSpeed":"0.5Mbps","NativeDesktopThirdParty":{"ThirdPartyComponents":"Windows 7 requires 1GB and Office 2010 requires 256 MB. Other third party applications, shared graphics or peripherals (such as attached printers) should also be taken into account. These will all increase the amount of memory required for the computer to run smoothly.","DeviceCapabilities":"A minimum screen resolution of 1024 x 768 pixels with 16-bit colours is required. TPP recommends a minimum of a 17” TFT flat screen monitor with a resolution of 1280 x 1024 and 32-bit colours."},"NativeDesktopMemoryAndStorage":{"MinimumMemoryRequirement":"512MB","StorageRequirementsDescription":"4GB of free space on the C drive. Where a SystmOne Gateway client is used, 100GB of free space on the C drive is recommended.","MinimumCpu":"A minimum of a 2.0 GHz Pentium 4 series CPI is required.","RecommendedResolution":"5:4 - 1280 x 1024"},"NativeDesktopAdditionalInformation":"Applications that can open/view rich text file (.rtf) and comma separated (.csv) documents are required. To perform letter writing, Microsoft Word is also required. TPP only supports versions of Office that are supported by Microsoft which currently includes Office 2010, 2013, 2016 and 2019."}', 
N'{"PrivateCloud":{"Summary":"The SystmOne Solution requires the following key items to be in place for smooth operation:\r\n-UDP Ports 2120-2130 and TCP Ports 2130-2140 should be opened to 20.146.120.128/25 and 20.146.248.128/25. TCP port 443 is also required for SystmOnline and Mobile Working to systmonline.tpp-uk.com. TPP also recommend allowing ICMP traffic for diagnostic purposes.\r\n\r\nA full list of requirements can be found in the SystmOne WES.","Link":"","HostingModel":"TPP provide a centralised solution with all server hardware hosted in TPP''s private cloud infrastructure. All server patching, security updates and feature releases are managed by TPP. The solution is hosted within 2 geographically separated private cloud instances with data replicated between the sites in real time in order to provide a high level of resiliency.\r\n\r\nTPP use a number of tools to monitor capacity, analyse usage trends and log the utilisation of the system. This ensures the solution scales to demand and new functionality / business requirements.","RequiresHSCN":"End user devices must be connected to HSCN/N3"}}', 
N'If a greenfield unit is required, the turn-around time to receive the Live unit can be as quick as two weeks, once a signed contract is in place and all staff have received the required training. 
TPP will assess the request and set up the unit as specified in the order details. Once the Live system is ready to use, TPP will be in touch with the contact who requested the unit.

When transitioning from a previous system that has a mature adapter in place (EMIS Web, Vision, Microtest), implementation is a quick rollout of 8 weeks, including data migration of any existing patient records. 

The main phases for this implementation are: 
•	Initial data production
•	Data checking
•	Training
•	Data reload & sign-off
•	Final data production 
•	Go Live

If transitioning from any other system, an additional 8-week adapter build period would be required.

TPP maintain close contact with staff at the unit throughout these phases to ensure an efficient and accurate implementation.', 
NULL, 
N'https://www.tpp-uk.com/partners', 
N'https://www.tpp-uk.com/products/systmone', 
N'SystmOne GP has been evolving for over 20 years, with continuous clinical input. It is one of the most advanced clinical systems in the world and is used by more than 2,700 GP practices nationwide. SystmOne GP is the ideal solution to meet the ever-changing needs of modern General Practice.', 
N'SystmOne GP has been in use across UK General Practice for over 20 years. It is the system of choice for over 2,700 practices and is used by over 75,000 staff members. SystmOne GP is an advanced solution that goes far beyond the main functionality required for running a GP practice. It contains complete workflow support, a full analytics module, QOF tracking, and a comprehensive clinical development kit. Improving the quality of care across settings is core to TPP’s vision. The GP product is ideal for cross-organisational working and fully supports the requirements of Primary Care Networks.
It enables true integrated care between GP, hospital, mental health and social care settings. TPP GP is Spine-accredited, providing access to the latest versions of GP2GP, EPS, and eRS. The system is fully compliant with SNOMED CT. SystmOne GP is leading on national interoperability programmes, compliant with national open FHIR standards for access to GP data and for transfer of care documentation.', 
GetUtcDate(), 
N'00000000-0000-0000-0000-000000000000')

UPDATE [dbo].[Solution] SET [SolutionDetailId] = N'c9945761-4209-49fd-abef-f6f5b14f0a78' WHERE [Id] = '99998-98'
GO

INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'60c2f5b0-b950-44c8-a246-099335a1c816', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'efd93d25-447b-4ca3-9d78-108d42afeae0', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'e3e4cf8a-22d3-4056-bb5d-10f8e26b9b5e', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'59696227-602a-421d-a883-29e88997ac17', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'20b09859-6fc2-404c-b7a4-3830790e63ab', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'0a372f63-add4-4529-a6cd-4437c6ef115b', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'dd649cc4-a710-4472-98b3-663d9d12a8b7', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'8c384983-774a-45bd-9d4e-6b3c7d3b7323', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'21ae013d-42a4-4748-b435-73d5887944c2', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'4f09e77b-e3a3-4a25-8ec1-815921f83628', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'5db79ff4-fa9c-4da2-bbfc-8ca40fec0b43', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'd1532ca0-ef0c-457c-9cfc-affa0fbdf134', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'9442dcc4-22df-494b-8672-b7b4dd077496', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'b3f89711-6bd7-42d7-be5b-bae2f239ebdd', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'6e77147d-d2af-46bd-a2f2-bb4f235daf3a', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
INSERT INTO [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) VALUES (N'99998-98', N'64e5986d-1ebf-4df0-8219-c150c082ca7b', 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT INTO [dbo].[FrameworkSolutions] ([FrameworkId] ,[SolutionId] ,[IsFoundation], [LastUpdated] ,[LastUpdatedBy]) VALUES ('NHSDGP001', '99998-98' , 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO
