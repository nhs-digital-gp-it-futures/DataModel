--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100000-001', 
			N'1000000', 
			N'Write on Time',
			N'1.0.0',
			4,
			1,
			1,
			N'Write on Time is a Citizen-facing Appointments Management system specifically designed to reduce the number of DNAs in your practice.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S100000-001',			
			N'["Flexible Pricing", "Lightweight interface designed for maximum usability", "DNA tracking and automatic improvement suggestions", "Web-based", "Remotely accessible"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S100000-001', N'Sales@remedical.co.uk', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100000-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C1')
GO

INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance]) VALUES (N'S100000-001-001', N'S100000-001', N'Training', N'The Training Package', N'Guidance text for purchasing')
GO
INSERT [dbo].[AssociatedService] ([Id], [SolutionId], [Name], [Description], [OrderGuidance]) VALUES (N'S100000-001-002', N'S100000-001', N'Support', N'24/7 Support', N'Optional')
GO

INSERT [dbo].[PurchasingModel] ([Id], [FrameworkId], [SolutionId], [StatusId], [AuthorityStatusId], [TransitionMinDays], [TransitionMaxDays], [TransitionAverageDays], [TransitionDescription]) VALUES (N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'NHSDGP001', N'S100000-001', 4, 2, 10, 100, 25, N'Some very long and boring financial stuff')
GO
INSERT [dbo].[SolutionPrice] ([Id], [PurchasingModelId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'd89a6e83-4e1c-4c0b-a5cc-e56b0830aff6', N'60123d1b-7995-470a-baeb-baa94f95bf0a', 1, CAST(1.230 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-19T00:00:00.0000000' AS DateTime2))
GO

INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'123af44e-6b05-4be7-b8b4-8ffd6439d5ec', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'S10000000-001-001', 1, CAST(0.660 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-20T14:45:59.6033333' AS DateTime2))
GO
INSERT [dbo].[AssociatedServicePrice] ([Id], [PurchasingModelId], [AssociatedServiceId], [PricingUnitId], [Price], [BandStart], [BandEnd], [CreatedDate]) VALUES (N'7fe3b549-2f1b-43d5-b1d2-97c855e10fbb', N'60123d1b-7995-470a-baeb-baa94f95bf0a', N'S10000000-001-002', 1, CAST(1.500 AS Decimal(18, 3)), 1, NULL, CAST(N'2019-08-20T14:47:21.3600000' AS DateTime2))
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100001-001', 
			N'1000001', 
			N'Appointment Gateway',
			N'1.0.0',
			4,
			1,
			1,
			N'Appointment Gateway is a complete appointment management suite that has been fully integrated with all major clinical systems throughout both the UK and Europe.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S100001-001',			
			N'["Tested and approved by hundred''s of GPs", "99.9% service availability guaranteed", "Appointment forwarding & referral integration", "Fully interopable with all major GP IT solutions", "Compliant with all relevant ISO standards"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S100001-001', N'Sales@CareShare.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100001-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C1')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100001-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100002-001', 
			N'1000002', 
			N'Zen Guidance',
			N'1.0.0',
			4,
			1,
			1,
			N'Zen Guidance utilizes an advanced AI framework to provide clinicians with highly accurate data to support sound decision-making.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S100002-001',			
			N'["Advanced AI functionality", "MESH & FHIR compliant", "Remotely accessible ", "Cloud-hosted", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S100002-001', N'Sales@Zen.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100002-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C6')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100003-001', 
			N'1000003', 
			N'Intellidoc Comms',
			N'1.0.0',
			4,
			1,
			1,
			N'Intellidoc Comms empowers all practice staff to record & send communications in an extremely streamlined and time-efficient manner.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S100003-001',			
			N'["Efficient instant & scheduled messaging", "Web-based interface", "Compliant with all relevant ISO standards", "Wide range of add-ons available", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S100003-001', N'Sales@CatterpillarMedworks.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100003-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C7')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100003-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100004-001', 
			N'1000004', 
			N'Diagnostics XYZ',
			N'1.0.0',
			4,
			1,
			1,
			N'Diagnostics XYZ introduces new diagnostic tools not currently provided by the leading clinical software suppliers.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S100004-001',			
			N'["Seamless integration with a wide range of diagnostic hardware", "Demo & free trial available", "FHIR compliant", "Plug and play - minimal deployment activity required", "Optimized for touchscreen & desktop use"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S100004-001', N'Sales@CurtisSystems.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100004-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C8')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000005-001', 
			N'1000005', 
			N'Document Wizard',
			N'1.0.0',
			4,
			1,
			1,
			N'Document Wizard is the UK industry-leader for clinical document management software due to our patented lightweight interface and interoperability.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000005-001',			
			N'["Industry-leading data extraction & scanning accuracy", "Fully interopable with all major GP IT solutions", "24/7 customer support", "Fully Compliant with all relevant ISO standards", "Modular architecture to enhance compatibility and customisation"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000005-001', N'Sales@ClinicalRaptor.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000005-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C9')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000005-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C19')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000006-001', 
			N'1000006', 
			N'Paperlite',
			N'1.0.0',
			4,
			1,
			1,
			N'Paperlite utilises new OCR technology to seamlessly transfer written notes to digital patient records.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000006-001',			
			N'["Revolutionary optical character recognition technology", "Can be deployed quickly at low-cost", "Web-based interface", "Cloud-hosted", "Wide range of add-ons available"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000006-001', N'Sales@DocLightning.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000006-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C9')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000006-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C17')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000007-001', 
			N'1000007', 
			N'Medsort',
			N'1.0.0',
			4,
			1,
			1,
			N'Medsort enhances your medicine optimisation process and introduces new, more customisable tools that can be adapted to your local environment.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000007-001',			
			N'["Fully adaptable to suit your practice''s needs", "Integrates with Spine", "FHIR compliant", "Flexible Pricing", "24/7 customer support"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000007-001', N'Sales@DocabilitySoftware.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000007-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C30')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000008-001', 
			N'1000008', 
			N'InfoSource',
			N'1.0.0',
			4,
			1,
			1,
			N'Infosource is an extremly lightweight and intuitive information maintenance system that puts data quality and user-friendly interfaces above all else. ',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000008-001',			
			N'["Lightweight, intuitive user experience", "Minimal hardware requirements to ensure compatibility", "Wide range of add-ons available", "Extensive notification & alert options included", "MESH compatible"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000008-001', N'Sales@EmpireSoftworks.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000008-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000009-001', 
			N'1000008', 
			N'Scripter V2',
			N'1.0.0',
			4,
			1,
			1,
			N'Scripter V2 is the next revolution in prescribing software. It is widely used by medical professionals in both the US and UK.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000009-001',			
			N'["Compliant with all internationally recognised prescribing standards", "Developed by doctors, for doctors", "Fully interopable with all major GP IT solutions", "Web-based", "Optimized for touchscreen & desktop use"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000009-001', N'Sales@CureForward.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000009-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
GO


--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000010-001', 
			N'1000010', 
			N'Productivity Booster',
			N'1.0.0',
			4,
			1,
			1,
			N'Productivity Booster relies on patented technology to discover & recommend optimisations to a wide range of common tasks and processes.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000010-001',			
			N'["Machine learning identifies and suggests productivity improvements", "Fully integrated with Spine", "Optimized for touchscreen & desktop use", "Modern modular architecture to enhance compatibility and customisation", "FHIR compliant"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000010-001', N'Sales@HansaHealthcare.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000010-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C41')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000011-001', 
			N'1000011', 
			N'Connect All',
			N'1.0.0',
			4,
			1,
			1,
			N'Connect All is the next evolution in GP referral management that greatly improves upon current methods of monitoring referral pathways.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000011-001',			
			N'["Interoperable with all systems commonly used across primary and secondary care", "Provides a detailed dashboard enabling full oversight of referrals", "Cloud-hosted", "Web-based interface", "Interoperable with MS Outlook and other popular mail applications"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000011-001', N'Sales@MoonlightIntercare.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000011-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
GO


--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000012-001', 
			N'1000012', 
			N'Healthbank BI',
			N'1.0.0',
			4,
			1,
			1,
			N'Healthbank BI is one of the world leaders in clinical reporting due to our unmatched data structuring and customisation options.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000012-001',			
			N'["Extensive customisation options let you adapt our system to your local environment", "Hundreds of ready-made templates built-in", "Remotely accessible ", "FHIR compliant", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000012-001', N'Sales@eHealthDevelopment.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000012-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C16')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000013-001', 
			N'1000013', 
			N'Poptomiser',
			N'1.0.0',
			4,
			1,
			1,
			N'Dr Nick''s Poptomiser combines our popoular risk & resource management tools in one convenient package.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000013-001',			
			N'["Plug and play - minimal deployment activity required", "Flexible pricing", "Optimized for touchscreen & desktop use", "MESH compatible", "Wide range of add-ons available"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000013-001', N'Sales@DrNick.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000013-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C35')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000013-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000014-001', 
			N'1000014', 
			N'Quickflow',
			N'1.0.0',
			4,
			1,
			1,
			N'Quickflow is known worldwide as one of the most user-friendly and adaptable workflow management solutions.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000014-001',			
			N'["Streamlined user interface to reduce inefficiency", "Fully adaptable to fit seamlessly into your local IT environment", "Web-based interface", "Fully interopable with all major GP IT solutions", "Compatible with all popular web browsers"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000014-001', N'Sales@TestproofTechnology.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000014-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C20')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000015-001', 
			N'1000015', 
			N'Rising Sun',
			N'1.0.0',
			4,
			1,
			1,
			N'Rising Sun is a total practice management solution built with interoperability in mind. We take pride in our product''s ability to deliver the results that are specifically needed for your practice.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000015-001',			
			N'["Complete integration with all manner of Primary Care clinical software", "Remotely accessible", "Cloud-hosted", "Built-in anti-virus protection", "Compliant with all relevant ISO standards"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000015-001', N'Sales@HojoHealth.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000015-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000016-001', 
			N'1000016', 
			N'Health Guardian',
			N'1.0.0',
			4,
			1,
			1,
			N'Health Guardian is the backbone of your practice''s IT landscape due to its reliability and stability. Our system will help you ensure that IT never gets in the way of good patient care.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000016-001',			
			N'["Strictly GDPR and ISO compliant", "99.9% service availability guaranteed", "Wide range of add-ons available", "FHIR compliant", "Plug and play - minimal deployment activity required"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000016-001', N'Sales@JerichoHealthcare.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000016-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000017-001', 
			N'1000017', 
			N'Cure One',
			N'1.0.0',
			4,
			1,
			1,
			N'Cure One gives you absolute control over all PC-based care processes in your practice, and our web-based interface allows every practice employee to work remotely from anywhere in the world.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000017-001',			
			N'["Can be fully integrated into all modern browsers via custom-made extensions", "Web-based interface", "Plug and play - minimal deployment activity required", "Compliant with all relevant ISO standards", "Remotely accessible "]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000017-001', N'Sales@ManaSystems.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000017-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************


INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000018-001', 
			N'1000018', 
			N'Nano+',
			N'1.0.0',
			4,
			1,
			1,
			N'Nano+ is the quickest, most streamlined foundation system available in the UK GP market. Our software does more with less and allows you to focus on delivering patient care rather than ticking boxes.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000018-001',			
			N'["Minimal system requirements - runs on almost any PC", "FHIR compliant", "MESH compatible", "24/7 customer support", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000018-001', N'Sales@SunhealthNanosystems.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000018-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************
INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S1000019-001', 
			N'1000019', 
			N'Oakwood Health',
			N'1.0.0',
			4,
			1,
			1,
			N'Oakwood Health is internationally recognised as one of the most efficient clinical software suites ever created. It utilises an advanced neural net to learn and improve processes based on usage.',
			0)

			
INSERT [dbo].[MarketingDetail] ([SolutionId], [Features], [ClientApplication], [Hosting]) 
	VALUES (N'S1000019-001',			
			N'["Advanced machine learning algorithms improve system performance", "Fully interopable with all major GP IT solutions", "Remotely accessible ", "Flexible Pricing", "Cloud-hosted"]',
			NULL,
			N'{"hosting":{"publicCloud":{"summary":"Summary description","urlLink":"External URL link","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"privateCloud":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"hybrid":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"},"onPremise":{"summary":"Summary description","urlLink":"External URL link","hostingOverview":"Hosting environment description","hscnN3AccessRequired":"Link to HSCN or N3 network required to access service"}}}'
			)
GO

INSERT [dbo].[MarketingContact] ([SolutionId], [Email], [Department]) VALUES (N'S1000019-001', N'Sales@Oakwood.com', N'Sales')
GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C13')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C14')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C15')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C11')
INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S1000019-001', Id, 1 FROM Capability WHERE CapabilityRef = 'C12')
GO

--********************************************************************************************************************************************************************

INSERT [dbo].[Solution] ([Id], [OrganisationId], [Name], [Version], [PublishedStatusId], [AuthorityStatusId], [SupplierStatusId], [Summary],[OnCatalogueVersion]) 
	VALUES (N'S100000-999', 
			N'1000099', 
			N'Blank Solution',
			N'1.0.0',
			4,
			1,
			1,
			NULL,
			0)

GO

INSERT [dbo].[SolutionCapability] ([SolutionId], [CapabilityId], [StatusId]) (SELECT 'S100000-999', Id, 1 FROM Capability WHERE CapabilityRef = 'C5')
GO
			
--********************************************************************************************************************************************************************