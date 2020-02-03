--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy]) 
	VALUES (N'100000-001', 
			N'100000', 
			N'Write on Time',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy]) 
	VALUES (N'b0b981ca-b4db-4bdc-ab05-89780cc750ec',
			N'100000-001',
			1,			
			N'["Flexible Pricing", "Lightweight interface designed for maximum usability", "DNA tracking and automatic improvement suggestions", "Web-based", "Remotely accessible"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.writeontime.com/about',
			N'Write on Time is a Citizen-facing Appointments Management system specifically designed to reduce the number of DNAs in your practice.',
			N'FULL DESCRIPTION - Write on Time is a Citizen-facing Appointments Management system specifically designed to reduce the number of DNAs in your practice.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,			
			0,
			GetUtcDate(),
			N'00000000-0000-0000-0000-000000000000')
			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'26b7f5d8-69d9-40b3-a450-73f714ebab5c', 
			N'100001-001',
			1,
			N'["Tested and approved by hundred''s of GPs", "99.9% service availability guaranteed", "Appointment forwarding & referral integration", "Fully interopable with all major GP IT solutions", "Compliant with all relevant ISO standards"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.appointmentgateway.com/about',
			N'Appointment Gateway is a complete appointment management suite that has been fully integrated with all major clinical systems throughout both the UK and Europe.',
			N'FULL DESCRIPTION - Appointment Gateway is a complete appointment management suite that has been fully integrated with all major clinical systems throughout both the UK and Europe.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'de9adcc1-4b16-4052-a2e4-7b36f82fa7d8',
			N'100002-001',
			4,
			N'["Advanced AI functionality", "MESH & FHIR compliant", "Remotely accessible ", "Cloud-hosted", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.zenguidance.com/about',
			N'Zen Guidance utilizes an advanced AI framework to provide clinicians with highly accurate data to support sound decision-making.',
			N'FULL DESCRIPTION - Zen Guidance utilizes an advanced AI framework to provide clinicians with highly accurate data to support sound decision-making.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'4b0e4a4f-2327-44ac-8988-7317a59c110d',
			N'100003-001',
			4,
			N'["Efficient instant & scheduled messaging", "Web-based interface", "Compliant with all relevant ISO standards", "Wide range of add-ons available", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.intellidoc.com/about',
			N'Intellidoc Comms empowers all practice staff to record & send communications in an extremely streamlined and time-efficient manner.',
			N'FULL DESCRIPTION - Intellidoc Comms empowers all practice staff to record & send communications in an extremely streamlined and time-efficient manner.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,			
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'fcd89564-bce6-45fb-8d18-3e97b6ad416b',
			N'100004-001',
			4,
			N'["Seamless integration with a wide range of diagnostic hardware", "Demo & free trial available", "FHIR compliant", "Plug and play - minimal deployment activity required", "Optimized for touchscreen & desktop use"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.diagnostics.xyz/about',
			N'Diagnostics XYZ introduces new diagnostic tools not currently provided by the leading clinical software suppliers.',
			N'FULL DESCRIPTION - Diagnostics XYZ introduces new diagnostic tools not currently provided by the leading clinical software suppliers.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,			
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'9fe7980f-0a0b-44b3-bd19-0786dd6e1f4e',
			N'100005-001',
			4, 
			N'["Industry-leading data extraction & scanning accuracy", "Fully interopable with all major GP IT solutions", "24/7 customer support", "Fully Compliant with all relevant ISO standards", "Modular architecture to enhance compatibility and customisation"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.documentwizard.com/about',
			N'Document Wizard is the UK industry-leader for clinical document management software due to our patented lightweight interface and interoperability.',
			N'FULL DESCRIPTION - Document Wizard is the UK industry-leader for clinical document management software due to our patented lightweight interface and interoperability.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100005-001', N'Michelle', N'Moore', N'07849662065', N'Sales@ClinicalRaptor.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100005-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C9')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100005-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C19')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100006-001', 
			N'100006', 
			N'Paperlite',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
			
INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'b6dcb30f-613d-43d7-9039-2ce4cf8508ce',
			N'100006-001',
			4,
			N'["Revolutionary optical character recognition technology", "Can be deployed quickly at low-cost", "Web-based interface", "Cloud-hosted", "Wide range of add-ons available"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.paperlite.com/about',
			N'Paperlite utilises new OCR technology to seamlessly transfer written notes to digital patient records.',			
			N'FULL DESCRIPTION - Paperlite utilises new OCR technology to seamlessly transfer written notes to digital patient records.',			
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
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
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'bf543a9e-50d4-4d44-af10-59ee753915b5',
			N'100007-001',
			4,
			N'["Fully adaptable to suit your practice''s needs", "Integrates with Spine", "FHIR compliant", "Flexible Pricing", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.medsort.com/about',
			N'Medsort enhances your medicine optimisation process and introduces new, more customisable tools that can be adapted to your local environment.',
			N'FULL DESCRIPTION - Medsort enhances your medicine optimisation process and introduces new, more customisable tools that can be adapted to your local environment.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100007-001', N'Cheryl', N'White', N'07295044295', N'Sales@DocabilitySoftware.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100007-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C30')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100008-001', 
			N'100008', 
			N'InfoSource',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'80a54afe-ca9e-4d16-b71c-b8fcc6934df8',
			N'100008-001',
			4,
			N'["Lightweight, intuitive user experience", "Minimal hardware requirements to ensure compatibility", "Wide range of add-ons available", "Extensive notification & alert options included", "MESH compatible"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.infosource.com/about',
			N'Infosource is an extremly lightweight and intuitive information maintenance system that puts data quality and user-friendly interfaces above all else. ',
			N'FULL DESCRIPTION - Infosource is an extremly lightweight and intuitive information maintenance system that puts data quality and user-friendly interfaces above all else. ',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100008-001', N'Peter', N'Mitchell', N'07123 456789', N'Sales@EmpireSoftworks.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100008-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100009-001', 
			N'100009', 
			N'Scripter V2',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'7eaf35ad-0a8d-435a-be1a-8e1c94ea6445',
			N'100009-001',
			4,
			N'["Compliant with all internationally recognised prescribing standards", "Developed by doctors, for doctors", "Fully interopable with all major GP IT solutions", "Web-based", "Optimized for touchscreen & desktop use"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.scripter.com/about',
			N'Scripter V2 is the next revolution in prescribing software. It is widely used by medical professionals in both the US and UK.',
			N'FULL DESCRIPTION - Scripter V2 is the next revolution in prescribing software. It is widely used by medical professionals in both the US and UK.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')			
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100009-001', N'Joyce', N'Cook', N'07362921146', N'Sales@CureForward.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100009-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100010-001', 
			N'100010', 
			N'Productivity Booster',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'3fa2d383-8033-45f9-a11e-7eee3a1330c4',
			N'100010-001',
			4,
			N'["Machine learning identifies and suggests productivity improvements", "Fully integrated with Spine", "Optimized for touchscreen & desktop use", "Modern modular architecture to enhance compatibility and customisation", "FHIR compliant"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.productivity-booster.com/about',
			N'Productivity Booster relies on patented technology to discover & recommend optimisations to a wide range of common tasks and processes.',
			N'FULL DESCRIPTION - Productivity Booster relies on patented technology to discover & recommend optimisations to a wide range of common tasks and processes.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100010-001', N'Lisa', N'Thompson', N'07553451033', N'Sales@HansaHealthcare.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100010-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C41')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100011-001', 
			N'100011', 
			N'Connect All',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'de356266-5c4b-4b56-9b6e-93921a962cf1',
			N'100011-001',
			4,
			N'["Interoperable with all systems commonly used across primary and secondary care", "Provides a detailed dashboard enabling full oversight of referrals", "Cloud-hosted", "Web-based interface", "Interoperable with MS Outlook and other popular mail applications"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.connect-all.com/about',
			N'Connect All is the next evolution in GP referral management that greatly improves upon current methods of monitoring referral pathways.',
			N'FULL DESCRIPTION - Connect All is the next evolution in GP referral management that greatly improves upon current methods of monitoring referral pathways.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100011-001', N'Bobby', N'Cooper', N'07170839611', N'Sales@MoonlightIntercare.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100011-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100012-001', 
			N'100012', 
			N'Healthbank BI',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'8e9fa72d-0801-4201-b766-9845d661fa0a', 
			N'100012-001',
			4,
			N'["Extensive customisation options let you adapt our system to your local environment", "Hundreds of ready-made templates built-in", "Remotely accessible ", "FHIR compliant", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.healthbank.bi/about',
			N'Healthbank BI is one of the world leaders in clinical reporting due to our unmatched data structuring and customisation options.',
			N'FULL DESCRIPTION - Healthbank BI is one of the world leaders in clinical reporting due to our unmatched data structuring and customisation options.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')			
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100012-001', N'Julie', N'Bryant', N'07496485801', N'Sales@eHealthDevelopment.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100012-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C16')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100013-001', 
			N'100013', 
			N'Poptomiser',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'92910a89-d59a-4fe7-9c89-1c0c9e2034c3',
			N'100013-001',
			4,
			N'["Plug and play - minimal deployment activity required", "Flexible pricing", "Optimized for touchscreen & desktop use", "MESH compatible", "Wide range of add-ons available"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.poptomiser.com/about',
			N'Dr Nick''s Poptomiser combines our popoular risk & resource management tools in one convenient package.',
			N'FULL DESCRIPTION - Dr Nick''s Poptomiser combines our popoular risk & resource management tools in one convenient package.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100013-001', N'Stephen', N'Long', N'07327700716', N'Sales@DrNick.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100013-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C35')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100013-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100014-001', 
			N'100014', 
			N'Quickflow',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'e2bb8775-62d9-4534-9b3f-57d135182ac0',
			N'100014-001',
			4,
			N'["Streamlined user interface to reduce inefficiency", "Fully adaptable to fit seamlessly into your local IT environment", "Web-based interface", "Fully interopable with all major GP IT solutions", "Compatible with all popular web browsers"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.quickflow.com/about',
			N'Quickflow is known worldwide as one of the most user-friendly and adaptable workflow management solutions.',			
			N'FULL DESCRIPTION - Quickflow is known worldwide as one of the most user-friendly and adaptable workflow management solutions.',			
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100014-001', N'Teresa', N'Robinson', N'07352943019', N'Sales@TestproofTechnology.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100014-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C20')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100015-001', 
			N'100015', 
			N'Rising Sun',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'b550e6fc-d02b-4750-91dc-2345b35cdd9e',
			N'100015-001',
			4,
			N'["Complete integration with all manner of Primary Care clinical software", "Remotely accessible", "Cloud-hosted", "Built-in anti-virus protection", "Compliant with all relevant ISO standards"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.risingsun.com/about',
			N'Rising Sun is a total practice management solution built with interoperability in mind. We take pride in our product''s ability to deliver the results that are specifically needed for your practice.',			
			N'FULL DESCRIPTION - Rising Sun is a total practice management solution built with interoperability in mind. We take pride in our product''s ability to deliver the results that are specifically needed for your practice.',			
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100015-001', N'Emily', N'Reed', N'07813453187', N'Sales@HojoHealth.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100015-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100016-001', 
			N'100016',
			N'Health Guardian',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'7348ec25-d297-4fdf-9d35-c6919cbf329d',
			N'100016-001',
			4,
			N'["Strictly GDPR and ISO compliant", "99.9% service availability guaranteed", "Wide range of add-ons available", "FHIR compliant", "Plug and play - minimal deployment activity required"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.healthguardian.com/about',
			N'Health Guardian is the backbone of your practice''s IT landscape due to its reliability and stability. Our system will help you ensure that IT never gets in the way of good patient care.',
			N'FULL DESCRIPTION - Health Guardian is the backbone of your practice''s IT landscape due to its reliability and stability. Our system will help you ensure that IT never gets in the way of good patient care.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100016-001', N'Norma', N'Richardson', N'07555339413', N'Sales@JerichoHealthcare.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100016-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100017-001', 
			N'100017', 
			N'Cure One',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'd9be5aad-bfcf-416f-be68-d60f3e8edd3d',
			N'100017-001',
			4,
			N'["Can be fully integrated into all modern browsers via custom-made extensions", "Web-based interface", "Plug and play - minimal deployment activity required", "Compliant with all relevant ISO standards", "Remotely accessible "]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.cure-one.com/about',
			N'Cure One gives you absolute control over all PC-based care processes in your practice, and our web-based interface allows every practice employee to work remotely from anywhere in the world.',
			N'FULL DESCRIPTION - Cure One gives you absolute control over all PC-based care processes in your practice, and our web-based interface allows every practice employee to work remotely from anywhere in the world.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100017-001', N'Harry', N'Parker', N'07704844626', N'Sales@ManaSystems.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100017-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100018-001', 
			N'100018', 
			N'Nano+',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'9433c7b0-0bec-427e-9315-852d7a521de1',
			N'100018-001',
			4,
			N'["Minimal system requirements - runs on almost any PC", "FHIR compliant", "MESH compatible", "24/7 customer support", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.nano-plus.com/about',
			N'Nano+ is the quickest, most streamlined foundation system available in the UK GP market. Our software does more with less and allows you to focus on delivering patient care rather than ticking boxes.',
			N'FULL DESCRIPTION - Nano+ is the quickest, most streamlined foundation system available in the UK GP market. Our software does more with less and allows you to focus on delivering patient care rather than ticking boxes.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100018-001', N'Shawn', N'Martin', N'07362921146', N'Sales@SunhealthNanosystems.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100018-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [SupplierId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [OnCatalogueVersion], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'100019-001', 
			N'100019', 
			N'Oakwood Health',
			N'1.0.0',
			4,
			1,
			1,
			0,
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')

INSERT [dbo].[SolutionDetail] ([Id], [SolutionId], [PublishedStatusId], [Features], [ClientApplication], [Hosting], [AboutUrl], [Summary], [FullDescription], [LastUpdated], [LastUpdatedBy])  
	VALUES (N'cc1b5875-24b3-4c0e-b603-c2e8e004dfe5',
			N'100019-001',
			4,
			N'["Advanced machine learning algorithms improve system performance", "Fully interopable with all major GP IT solutions", "Remotely accessible ", "Flexible Pricing", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}',
			N'http://www.oakwood-health.com/about',
			N'Oakwood Health is internationally recognised as one of the most efficient clinical software suites ever created. It utilises an advanced neural net to learn and improve processes based on usage.',
			N'FULL DESCRIPTION - Oakwood Health is internationally recognised as one of the most efficient clinical software suites ever created. It utilises an advanced neural net to learn and improve processes based on usage.',
			GetUtcDate(),
			'00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [FirstName], [LastName], [PhoneNumber], [Email], [Department], [LastUpdated], [LastUpdatedBy]) VALUES (N'100019-001', N'Craig', N'David', N'07123 456789', N'Sales@Oakwood.com', N'Sales', GetUtcDate(), '00000000-0000-0000-0000-000000000000')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId], [LastUpdated], [LastUpdatedBy]) (SELECT '100019-001', Id, 1, GetUtcDate(), '00000000-0000-0000-0000-000000000000' FROM  Capability WHERE CapabilityRef = 'C12')
GO
