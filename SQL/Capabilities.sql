INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'21AE013D-42A4-4748-B435-73D5887944C2', N'C1', N'1.0.1', 1, N'Appointments Management - Citizen', N'Enables Citizens to manage their Appointments online. Supports the use of Appointment slots that have been configured in Appointments Management - GP.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134205/Appointments+Management+-+Citizen', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'21AE013D-42A4-4748-B435-73D5887944C2', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'9D805AAD-D43A-480E-9BC0-41A755BAFE2F', N'C10', N'1.0.1', 1, N'GP Extracts Verification', N'Supports Practice staff in ensuring accuracy of the data that is used with the Calculating Quality Reporting Service (CQRS).', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133797/GP+Extracts+Verification', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'9D805AAD-D43A-480E-9BC0-41A755BAFE2F', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'20B09859-6FC2-404C-B7A4-3830790E63AB', N'C11', N'1.0.1', 1, N'Referral Management', N'Supports recording, reviewing, sending, and reporting of Patient Referrals. Enables Referral information to be included in the Patient Record.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133614/Referral+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'20B09859-6FC2-404C-B7A4-3830790E63AB', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'E3E4CF8A-22D3-4056-BB5D-10F8E26B9B5E', N'C12', N'1.0.1', 1, N'Resource Management', N'Supports the management and reporting of Practice information, resources, Staff Members and related organisations. Also enables management of Staff Member availability and inactivity.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133939/Resource+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'E3E4CF8A-22D3-4056-BB5D-10F8E26B9B5E', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'8C384983-774A-45BD-9D4E-6B3C7D3B7323', N'C13', N'1.0.1', 1, N'Patient Information Maintenance', N'Supports the registration of Patients and the maintenance of all Patient personal information. Supports the organisation and presentation of a comprehensive Patient Record. Also supports the management of related persons and configuring access to Citizen Services.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134180/Patient+Information+Maintenance', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'8C384983-774A-45BD-9D4E-6B3C7D3B7323', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'B3F89711-6BD7-42D7-BE5B-BAE2F239EBDD', N'C14', N'1.0.1', 1, N'Prescribing', N'Supports the effective and safe prescribing of medical products and appliances to Patients. Information to support prescribing will be available.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134158/Prescribing', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'B3F89711-6BD7-42D7-BE5B-BAE2F239EBDD', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'9442DCC4-22DF-494B-8672-B7B4DD077496', N'C15', N'1.0.1', 1, N'Recording Consultations', N'Supports the standardised recording of Consultations and other General Practice activities. Also supports the extraction of Female Genital Mutilation (FGM) data for the FGM data set.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134389/Recording+Consultations', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'9442DCC4-22DF-494B-8672-B7B4DD077496', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'DD649CC4-A710-4472-98B3-663D9D12A8B7', N'C16', N'1.0.1', 1, N'Reporting', N'Enables reporting and analysis of data from other Capabilities in the Practice Solution to support clinical care and Practice management.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133718/Reporting', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'DD649CC4-A710-4472-98B3-663D9D12A8B7', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'E5521A71-A28E-4BC9-BDDF-599F0A90719D', N'C17', N'1.0.1', 1, N'Scanning', N'Support the conversion of paper documentation into digital format preserving the document quality and structure.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134270/Scanning', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'E5521A71-A28E-4BC9-BDDF-599F0A90719D', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'385E00F9-3DE6-4A72-B662-E0405BCECFC8', N'C18', N'1.0.1', 1, N'Telehealth', N'Enables Citizens and Patients that use health monitoring solutions to share monitoring data with health and care professionals to support remote delivery of care and increase self-care outside of clinical settings.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134248/Telehealth', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'385E00F9-3DE6-4A72-B662-E0405BCECFC8', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'1E82CC7C-87C7-4379-B86F-CF36C59D1A46', N'C19', N'1.0.1', 1, N'Unstructured Data Extraction', N'Enables automated and manual interpretation and extraction of structured data from paper documents and unstructured electronic documents to support their classification and matching with Patient Records.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133668/Unstructured+Data+Extraction', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'1E82CC7C-87C7-4379-B86F-CF36C59D1A46', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'4F09E77B-E3A3-4A25-8EC1-815921F83628', N'C2', N'1.0.1', 1, N'Communicate With Practice - Citizen', N'Supports secure and trusted electronic communications between Citizens and the Practice. Integrates with Patient Information Maintenance.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134188/Communicate+With+Practice+-+Citizen', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'4F09E77B-E3A3-4A25-8EC1-815921F83628', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'9D325DEC-6E5B-44E4-876B-EACF6CD41B3E', N'C20', N'1.0.1', 1, N'Workflow', N'Supports manual and automated management of work in the Practice. Also supports effective planning, tracking, monitoring and reporting.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134020/Workflow', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'9D325DEC-6E5B-44E4-876B-EACF6CD41B3E', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'1C552148-6EA8-4D82-84EB-E660622A1741', N'C21', N'1.0.1', 1, N'Care Homes', N'Enables a record of the Resident''s health and care needs to be maintained and shared with parties who are involved in providing care, to support decision making and the effective planning and delivery of care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133439/Care+Homes', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'1C552148-6EA8-4D82-84EB-E660622A1741', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'12B3AD26-487E-43B1-9D58-264C3C359BC6', N'C22', N'1.0.1', 1, N'Caseload Management', N'Supports the allocation of appropriate Health and Care Professionals to Patients/Service Users in need of support, ensuring balanced workloads and the efficient use of staff and other resources.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133457/Caseload+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'12B3AD26-487E-43B1-9D58-264C3C359BC6', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'7547E181-C897-4A01-86D9-09B76AB1C906', N'C23', N'1.0.1', 1, N'Cross-organisation Appointment Booking', N'Enables appointments to be made available and booked across Organisational boundaries, creating flexibility for Health and Care Professionals and Patients/Service Users.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135407/Cross-organisation+Appointment+Booking', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'7547E181-C897-4A01-86D9-09B76AB1C906', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'890AF628-5B84-4176-B3D1-A4ADC65710FE', N'C24', N'1.0.1', 1, N'Cross-organisation Workflow Tools', N'Supports and automates clinical and business processes across Organisational boundaries to make processes and communication more efficient.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133492/Cross-organisation+Workflow+Tools', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'890AF628-5B84-4176-B3D1-A4ADC65710FE', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'7E8A8D7A-F8CE-4AA5-A3EF-31BBBD39DF40', N'C25', N'1.0.1', 1, N'Cross-organisation Workforce Management', N'Supports the efficient planning and scheduling of the health and care workforce to ensure that services can be delivered effectively by the right staff.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135659/Cross-organisation+Workforce+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'7E8A8D7A-F8CE-4AA5-A3EF-31BBBD39DF40', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'5DB79FF4-FA9C-4DA2-BBFC-8CA40FEC0B43', N'C26', N'1.0.1', 1, N'Data Analytics for Integrated and Federated Care', N'Supports the analysis of multiple and complex datasets and presentation of the output to enable decision-making, service design and performance management.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135590/Data+Analytics+for+Integrated+and+Federated+Care', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'5DB79FF4-FA9C-4DA2-BBFC-8CA40FEC0B43', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'A66765F0-7EB6-400B-8319-FE7FBD86AB47', N'C27', N'1.0.1', 1, N'Domiciliary Care', N'Enables Service Providers to effectively plan and manage Domiciliary Care services to ensure care needs are met and that Care Workers can manage their schedule.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133451/Domiciliary+Care', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'A66765F0-7EB6-400B-8319-FE7FBD86AB47', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'C332947A-D29E-4169-A7B1-FF277CF513C2', N'C28', N'1.0.1', 1, N'e-Consultations (Patient/Service User to Professional)', N'Enables Patients/Service Users to access support from Health and Care Professionals, across a range of settings, without the need for a face to face encounter.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133433', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C332947A-D29E-4169-A7B1-FF277CF513C2', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'7BE309D9-696F-4B90-A65E-EB16DD5AC4ED', N'C29', N'1.0.1', 1, N'e-Consultations (Professional to Professional)', N'Enables the communication and sharing of specialist knowledge and advice between Health and Care Professionals to support better care decisions and professional development.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135495', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'7BE309D9-696F-4B90-A65E-EB16DD5AC4ED', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'60C2F5B0-B950-44C8-A246-099335A1C816', N'C3', N'1.0.1', 1, N'Prescription Ordering - Citizen', N'Enables Citizens to request medication online and manage nominated and preferred Pharmacies for Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134214', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'60C2F5B0-B950-44C8-A246-099335A1C816', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'8BEE1FF3-84D4-430B-A678-336F57C57387', N'C30', N'1.0.1', 1, N'Medicines Optimisation', N'Supports clinicians and pharmacists in reviewing a Patient''s medication and requesting changes to medication to ensure the Patient is taking the best combination of medicines.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133405/Medicines+Optimisation', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'8BEE1FF3-84D4-430B-A678-336F57C57387', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'0766FCF3-79B1-4B2F-A79E-9B09C0249034', N'C32', N'1.0.1', 1, N'Personal Health Budget', N'Enables a Patient/Service User to set up and manage a Personal Health Budget giving them more choice and control over the management of their identified healthcare and well-being needs.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133426/Personal+Health+Budget', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'0766FCF3-79B1-4B2F-A79E-9B09C0249034', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'E5E3BE58-E5EC-4423-85DD-61D88640C22A', N'C33', N'1.0.1', 1, N'Personal Health Record', N'Enables a Patient/Service User to manage and maintain their own Electronic Health Record and to share that information with relevant Health and Care Professionals.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135480/Personal+Health+Record', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'E5E3BE58-E5EC-4423-85DD-61D88640C22A', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'2271B113-5D5D-4899-B259-3046CAEA76ED', N'C34', N'1.0.1', 1, N'Population Health Management', N'Enables Organisations to accumulate, analyse and report on Patient healthcare data to identify improvement in care and identify and track Patient outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135469/Population+Health+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'2271B113-5D5D-4899-B259-3046CAEA76ED', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'12C6A61C-013C-475F-BB0C-2DA5D414C03B', N'C35', N'1.0.1', 1, N'Risk Stratification', N'Supports Health and Care Professionals by providing trusted models to predict future Patient events, informing interventions to achieve better Patient outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133445/Risk+Stratification', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'12C6A61C-013C-475F-BB0C-2DA5D414C03B', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'D1532CA0-EF0C-457C-9CFC-AFFA0FBDF134', N'C36', N'1.0.1', 1, N'Shared Care Plans', N'Enables the maintenance of a single, shared care plan across multiple Organisations to ensure more co-ordinated working and more efficient management of activities relating to the Patient/Service User''s health and care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134486/Shared+Care+Plans', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'D1532CA0-EF0C-457C-9CFC-AFFA0FBDF134', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'1D1B92A4-BD48-4C55-8301-9D1830BCD729', N'C37', N'1.0.1', 1, N'Social Prescribing', N'Supports the referral of Patients/Service Users to non-clinical services to help address their health and well-being needs.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135572/Social+Prescribing', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'1D1B92A4-BD48-4C55-8301-9D1830BCD729', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'188F67DB-49D9-4808-810F-27D9E7703DF6', N'C38', N'1.0.1', 1, N'Telecare', N'Supports the monitoring of Patients/Service Users or their environment to ensure quick identification and response to any adverse event.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135549/Telecare', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'188F67DB-49D9-4808-810F-27D9E7703DF6', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'59696227-602A-421D-A883-29E88997AC17', N'C39', N'1.0.1', 1, N'Unified Care Record', N'Provides a consolidated view to Health and Care Professionals of a Patient/Service User''s complete and up-to-date records, sourced from various health and care settings.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134504/Unified+Care+Record', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'59696227-602A-421D-A883-29E88997AC17', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'64E5986D-1EBF-4DF0-8219-C150C082CA7B', N'C4', N'1.0.1', 1, N'View Record - Citizen', N'Enables Citizens to view their Patient Record online.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134197/View+Record+-+Citizen', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'64E5986D-1EBF-4DF0-8219-C150C082CA7B', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'4CFB2E12-9B05-4F48-AD25-5E8A4A06C6E7', N'C40', N'1.0.1', 1, N'Medicines Verification', N'Supports compliance with the Falsified Medicines Directive and minimise the risk that falsified medicinal products are supplied to the public.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135093/Medicines+Verification', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'4CFB2E12-9B05-4F48-AD25-5E8A4A06C6E7', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'6E77147D-D2AF-46BD-A2F2-BB4F235DAF3A', N'C41', N'1.0.1', 1, N'Productivity', N'Supports Patients/Service Users and Health and Care Professionals by delivering improved efficiency or experience related outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135618/Productivity', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'6E77147D-D2AF-46BD-A2F2-BB4F235DAF3A', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'D314DC27-BC65-4ABD-97C5-F9BE478D8A10', N'C42', N'1.0.1', 1, N'Dispensing', N'Supports the timely and effective dispensing of medical products and appliances to Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133465/Dispensing', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'D314DC27-BC65-4ABD-97C5-F9BE478D8A10', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'EFD93D25-447B-4CA3-9D78-108D42AFEAE0', N'C5', N'1.0.1', 1, N'Appointments Management - GP', N'Supports the administration, scheduling, resourcing and reporting of appointments.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134029/Appointments+Management+-+GP', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'EFD93D25-447B-4CA3-9D78-108D42AFEAE0', 1)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'A71F2BE1-6395-4DB7-828C-D4733B42B5B5', N'C6', N'1.0.1', 1, N'Clinical Decision Support', N'Supports clinical decision-making to improve Patient safety at the point of care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134150/Clinical+Decision+Support', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'A71F2BE1-6395-4DB7-828C-D4733B42B5B5', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'0A372F63-ADD4-4529-A6CD-4437C6EF115B', N'C7', N'1.0.1', 1, N'Communication Management', N'Supports the delivery and management of communications to Citizens and Practice staff.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134087/Communication+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'0A372F63-ADD4-4529-A6CD-4437C6EF115B', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'4518D3F7-F56D-48F0-9FBE-7FA943F4673B', N'C8', N'1.0.1', 1, N'Digital Diagnostics', N'Supports electronic requesting with other healthcare organisations. Test results can be received, reviewed and stored against the Patient record.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133770/Digital+Diagnostics', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'4518D3F7-F56D-48F0-9FBE-7FA943F4673B', 0)
GO

INSERT [dbo].[Capability] ([Id], [CapabilityRef], [Version], [StatusId], [Name], [Description], [SourceUrl], [EffectiveDate], [CategoryId]) VALUES (N'19002612-8D53-4472-82FC-2753B253434C', N'C9', N'1.0.1', 1, N'Document Management', N'Supports the secure management and classification of all forms unstructured electronic documents including those created by scanning paper documents. Also enables processing of documents and matching documents with Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134166/Document+Management', CAST(N'2020-02-05' AS Date), 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'19002612-8D53-4472-82FC-2753B253434C', 0)
GO