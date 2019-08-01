USE [buyingcatalogue]
GO
INSERT [dbo].[Framework] ([Id], [FrameworkName], [FrameworkDescription], [Owner], [ActiveDate], [ExpiryDate]) VALUES (N'NHSDGP001', N'NHS Digital GP Futures Framework 1', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S1', N'Appointments Management - Citizen - Standard', N'Enables Citizens to manage their Appointments online. Supports the use of Appointment slots that have been configured in Appointments Management - GP.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134369/Appointments+Management+-+Citizen+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S10', N'GP Extracts Verification - Standard', N'Supports Practice staff in ensuring accuracy of the data that is used with the Calculating Quality Reporting Service (CQRS).', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133808/GP+Extracts+Verification+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S11', N'Referral Management - Standard', N'Supports recording, reviewing, sending, and reporting of Patient Referrals. Enables Referral information to be included in the Patient Record.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133630/Referral+Management+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S12', N'Resource Management - Standard', N'Supports the management and reporting of Practice information, resources, Staff Members and related organisations. Also enables management of Staff Member availability and inactivity.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133828/Resource+Management+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S13', N'Patient Information Maintenance - Standard', N'Supports the registration of Patients and the maintenance of all Patient personal information. Supports the organisation and presentation of a comprehensive Patient Record. Also supports the management of related persons and configuring access to Citizen ', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134401/Patient+Information+Maintenance+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S14', N'Prescribing - Standard', N'Supports the effective and safe prescribing of medical products and appliances to Patients. Information to support prescribing will be available.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134363/Prescribing+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S15', N'Recording Consultations - Standard', N'Supports the standardised recording of Consultations and other General Practice activities. Also supports the extraction of Female Genital Mutilation (FGM) data for the FGM data set.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134136/Recording+Consultations+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S16', N'Reporting - Standard', N'Enables reporting and analysis of data from other Capabilities in the Practice Solution to support clinical care and Practice management.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134256/Reporting+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S19', N'Unstructured Data Extraction - Standard', N'Enables automated and manual interpretation and extraction of structured data from paper documents and unstructured electronic documents to support their classification and matching with Patient Records.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134330/Unstructured+Data+Extraction+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S2', N'Communicate with Practice - Citizen - Standard', N'Supports secure and trusted electronic communications between Citizens and the Practice. Integrates with Patient Information Maintenance.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134173/Communicate+with+Practice+-+Citizen+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S20', N'Workflow - Standard', N'Supports manual and automated management of work in the Practice. Also supports effective planning, tracking, monitoring and reporting.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134376/Workflow+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S21', N'Citizen Access', N'Supports Citizens to access their services safely and securely. Also supports Citizens in viewing and updating Patient information online.', 3, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133929/Citizen+Access', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S22', N'Common Reporting', N'Supports the reporting needs that are common to General Practices and includes searchable report templates.', 3, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133675/Common+Reporting', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S24', N'Business Continuity & Disaster Recovery', N'Ensures that suppliers solutions are supported by robust business continuity plans and disaster recovery measures.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134058/Business+Continuity+and+Disaster+Recovery', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S25', N'Clinical Safety', N'Supports the management of clinical risk and Patient safety.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134225/Clinical+Safety', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S26', N'Data Migration', N'Supports the secure migration of Practice data between solutions provided by different suppliers.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134456/Data+Migration', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S27', N'Data Standards', N'Defines detailed technical standards for the storage, management and organisation of data and specifies standardised reference data, terminology and codes.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134407/Data+Standards', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S28', N'Training', N'Defines the training activities and collateral expected from suppliers to support the buyers and users of their solutions.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133846/Training', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S29', N'Hosting & Infrastructure', N'Supports best practices for infrastructure and hosting of systems. For example, ensuring that systems are cost effective, secure and energy efficient.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134324', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S3', N'Prescription Ordering – Citizen - Standard', N'Enables Citizens to request medication online and manage nominated and preferred Pharmacies for Patients.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134356', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S30', N'Information Governance', N'Supports the controls needed to ensure that sensitive personal data is kept confidential, is accurate and is available to authorised users when required.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134230/Information+Governance', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S31', N'Commercial Standard', N'This Standard underpins all commercial activity relating to the Catalogue. It does this by defining a number of rules governing the commercial relationship of relevant parties and by setting out standards of behaviour and principles of access to data and ', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134121/Commercial', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S32', N'Interoperability Standard', N'Defines a comprehensive set of standards, interfaces and protocols that Solutions and systems will use when interoperating.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133681/Interoperability+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S33', N'111', N'Supports receipt and consumption of data sent by 111 provider systems for transfer of care to the GP Practice.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133945/111', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S34', N'Digital Diagnostics & Pathology Messaging', N'Supports the transmission and validation of results data to GP systems where a test request has been placed with a laboratory.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133752', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S35', N'e-Referrals Service (eRS)', N'Supports electronic booking with a choice of place, date and time for hospital or clinic appointments.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133966', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S36', N'Electronic Prescription Service (EPS)', N'Supports sending prescriptions electronically to a dispenser (such as a pharmacy) of the Patient''s choice.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133858', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S37', N'Electronic Yellow Card Reporting', N'Supports electronic reporting of suspected adverse drug reactions (ADRs).', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134080/Electronic+Yellow+Card+Reporting', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S38', N'Email', N'Ensures that email services within solutions are securely configured.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133922/Email', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S39', N'eMED3 (Fit Notes)', N'Supports the creation of eMED3 data, its integration into the Patient Record, printing MED3 fit note certificates and extraction of data to NHS Digital.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135075', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S4', N'View Record - Citizen - Standard', N'Enables Citizens to view their Patient Record online.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134394/View+Record+-+Citizen+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S40', N'External Interface Specification (EIS)', N'This standard provides detail on how to connect to NHS Digital Spine Services.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133762', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S43', N'GP2GP', N'Supports the electronic transfer of a Patient Record when a Patient moves from one Practice to another.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134336/GP2GP', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S44', N'GP Connect', N'Supports sharing of data held within GP IT solutions across health and social care organisations.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133650/GP+Connect', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S46', N'GPES Data Extraction', N'Supports secure collection of information from General Practices and its delivery to approved organisations.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134238/GPES+Data+Extraction', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S47', N'IM1 - Interface Mechanism', N'Supports the implementation of interfaces between solutions.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133895/IM1+-+Interface+Mechanism', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S48', N'Interoperability Toolkit (ITK)', N'Supports interoperability within and between solutions with common specifications, frameworks and implementation guides.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133906', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S49', N'Management Information (MI) Reporting', N'Supports the submission of aggregated counts of information regarding Citizen Services, appointments, prescriptions and documents to NHS Digital.', 3, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134317/Management+Information+%28MI%29+Reporting', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S5', N'Appointments Management - GP - Standard', N'Supports the administration, scheduling, resourcing and reporting of appointments.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134382/Appointments+Management+-+GP+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S50', N'Messaging Exchange for Social Care and Health (MESH)', N'Supports the secure transfer of clinical and non clinical data across health and social care.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133887', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S53', N'NHAIS HA/GP Links', N'Supports the management of Patient registration and demographic information with National Health Application and Infrastructure Services.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133619', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S54', N'Authentication and Access', N'Supports user authentication and access controls to NHS systems and national services.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133913/Authentication+and+Access', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S55', N'NHS Messaging Implementation Manual (MIM)', N'Supports the messaging standard intended for use on the Spine.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133738', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S56', N'Personal Demographics Service (PDS)', N'Supports Solution integration with the Personal Demographics Service which stores Patient details.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133999', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S58', N'Screening Messaging', N'Supports validation and transfer of screening result data to solutions.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133789/Screening+messaging', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S59', N'Secure Electronic File Transfer (SEFT)', N'Supports secure data transfer to and from external organisations.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134107', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S6', N'Clinical Decision Support - Standard', N'Supports clinical decision-making to improve Patient safety at the point of care.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134143/Clinical+Decision+Support+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S60', N'Summary Care Record (SCR)', N'Supports the management of Summary Care Record data and staff access to those data.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133699', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S62', N'General Practice Appointments Data Reporting', N'Supports the collection and submission to NHS digital of appointment data to support capacity planning and management.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133692/General+Practice+Appointments+Data+Reporting', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S63', N'Non-Functional Questions', N'Defines standards for the operation of solutions, service levels and the quality of the user experience.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133660/Non-Functional+Questions', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S64', N'Clinical Document Architecture (CDA)', N'Defines the standard for exchange of clinical information between systems.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133745', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S65', N'Service Management', N'Supports suppliers in the delivery and management of services that support and provide their Solutions.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133802/Service+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S66', N'Spine Mini Services', N'Supports read-only access to national services made available through the Spine.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133525/Spine+Mini+Services', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S68', N'NHS Login Service', N'Supports the verification of Citizens and services requesting access to digital health records.', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133874/NHS+login+service', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S69', N'Testing', N'Ensures that Suppliers'' software delivery test processes are of sufficient quality and rigour.', 1, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133583/Testing', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S7', N'Communication Management - Standard', N'Supports the delivery and management of communications to Citizens and Practice staff.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134296/Communication+Management+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S70', N'Primary Care Clinical Terminology Usage Report', N'Supports the collection and submission to NHS digital of information about usage of clinical coded terms.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134283/Primary+Care+Clinical+Terminology+Usage+Report', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S71', N'National Medicines Verification System', N'Enables clients to verify the status of medicines and decommission medicines from the supply chain via single or bulk operations and supports synchronous and asynchonous connection modes.  ', 2, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134857/National+Medicines+Verification+System', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S8', N'Digital Diagnostics - Standard', N'Supports electronic requesting with other healthcare organisations. Test results can be received, reviewed and stored against the Patient record.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133783/Digital+Diagnostics+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Standard] ([Id], [StandardName], [StandardDescription], [Category], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'S9', N'Document Management - Standard', N'Supports the secure management and classification of all forms unstructured electronic documents including those created by scanning paper documents. Also enables processing of documents and matching documents with Patients.', 4, N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134289/Document+Management+-+Standard', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S1')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S10')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S11')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S12')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S13')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S14')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S15')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S16')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S19')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S2')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S20')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S21')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S22')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S24')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S25')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S26')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S27')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S28')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S29')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S3')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S30')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S31')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S32')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S33')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S34')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S35')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S36')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S37')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S38')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S39')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S4')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S40')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S43')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S44')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S46')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S47')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S48')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S49')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S5')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S50')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S53')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S54')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S55')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S56')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S58')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S59')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S6')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S60')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S62')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S63')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S64')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S65')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S66')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S68')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S69')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S7')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S70')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S71')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S8')
GO
INSERT [dbo].[FrameworkStandards] ([FrameworkId], [StandardId]) VALUES (N'NHSDGP001', N'S9')
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C1', N'Appointments Management - Citizen', N'Enables Citizens to manage their Appointments online. Supports the use of Appointment slots that have been configured in Appointments Management - GP.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134205/Appointments+Management+-+Citizen', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C10', N'GP Extracts Verification', N'Supports Practice staff in ensuring accuracy of the data that is used with the Calculating Quality Reporting Service (CQRS).', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133797/GP+Extracts+Verification', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C11', N'Referral Management', N'Supports recording, reviewing, sending, and reporting of Patient Referrals. Enables Referral information to be included in the Patient Record.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133614/Referral+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C12', N'Resource Management', N'Supports the management and reporting of Practice information, resources, Staff Members and related organisations. Also enables management of Staff Member availability and inactivity.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133939/Resource+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C13', N'Patient Information Maintenance', N'Supports the registration of Patients and the maintenance of all Patient personal information. Supports the organisation and presentation of a comprehensive Patient Record. Also supports the management of related persons and configuring access to Citizen Services.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134180/Patient+Information+Maintenance', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C14', N'Prescribing', N'Supports the effective and safe prescribing of medical products and appliances to Patients. Information to support prescribing will be available.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134158/Prescribing', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C15', N'Recording Consultations', N'Supports the standardised recording of Consultations and other General Practice activities. Also supports the extraction of Female Genital Mutilation (FGM) data for the FGM data set.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134389/Recording+Consultations', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C16', N'Reporting', N'Enables reporting and analysis of data from other Capabilities in the Practice Solution to support clinical care and Practice management.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133718/Reporting', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C17', N'Scanning', N'Support the conversion of paper documentation into digital format preserving the document quality and structure.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134270/Scanning', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C18', N'Telehealth', N'Enables Citizens and Patients that use health monitoring solutions to share monitoring data with health and care professionals to support remote delivery of care and increase self-care outside of clinical settings.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134248/Telehealth', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C19', N'Unstructured Data Extraction', N'Enables automated and manual interpretation and extraction of structured data from paper documents and unstructured electronic documents to support their classification and matching with Patient Records.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133668/Unstructured+Data+Extraction', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C2', N'Communicate With Practice - Citizen', N'Supports secure and trusted electronic communications between Citizens and the Practice. Integrates with Patient Information Maintenance.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134188/Communicate+With+Practice+-+Citizen', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C20', N'Workflow', N'Supports manual and automated management of work in the Practice. Also supports effective planning, tracking, monitoring and reporting.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134020/Workflow', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C21', N'Care Homes', N'Enables a record of the Resident’s health and care needs to be maintained and shared with parties who are involved in providing care, to support decision making and the effective planning and delivery of care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133439/Care+Homes', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C22', N'Caseload Management', N'Supports the allocation of appropriate Health and Care Professionals to Patients/Service Users in need of support, ensuring balanced workloads and the efficient use of staff and other resources.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133457/Caseload+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C23', N'Cross-organisation Appointment Booking', N'Enables appointments to be made available and booked across Organisational boundaries, creating flexibility for Health and Care Professionals and Patients/Service Users.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135407/Cross-organisation+Appointment+Booking', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C24', N'Cross-organisation Workflow Tools', N'Supports and automates clinical and business processes across Organisational boundaries to make processes and communication more efficient.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133492/Cross-organisation+Workflow+Tools', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C25', N'Cross-organisation Workforce Management', N'Supports the efficient planning and scheduling of the health and care workforce to ensure that services can be delivered effectively by the right staff.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135659/Cross-organisation+Workforce+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C26', N'Data Analytics for Integrated and Federated Care', N'Supports the analysis of multiple and complex datasets and presentation of the output to enable decision-making, service design and performance management.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135590/Data+Analytics+for+Integrated+and+Federated+Care', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C27', N'Domiciliary Care', N'Enables Service Providers to effectively plan and manage Domiciliary Care services to ensure care needs are met and that Care Workers can manage their schedule.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133451/Domiciliary+Care', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C28', N'e-Consultations (Patient/Service User to Professional)', N'Enables Patients/Service Users to access support from Health and Care Professionals, across a range of settings, without the need for a face to face encounter.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133433', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C29', N'e-Consultations (Professional to Professional)', N'Enables the communication and sharing of specialist knowledge and advice between Health and Care Professionals to support better care decisions and professional development.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135495', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C3', N'Prescription Ordering - Citizen', N'Enables Citizens to request medication online and manage nominated and preferred Pharmacies for Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134214', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C30', N'Medicines Optimisation', N'Supports clinicians and pharmacists in reviewing a Patient''s medication and requesting changes to medication to ensure the Patient is taking the best combination of medicines.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133405/Medicines+Optimisation', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C32', N'Personal Health Budget', N'Enables a Patient/Service User to set up and manage a Personal Health Budget giving them more choice and control over the management of their identified healthcare and well-being needs.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133426/Personal+Health+Budget', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C33', N'Personal Health Record', N'Enables a Patient/Service User to manage and maintain their own Electronic Health Record and to share that information with relevant Health and Care Professionals.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135480/Personal+Health+Record', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C34', N'Population Health Management', N'Enables Organisations to accumulate, analyse and report on Patient healthcare data to identify improvement in care and identify and track Patient outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135469/Population+Health+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C35', N'Risk Stratification', N'Supports Health and Care Professionals by providing trusted models to predict future Patient events, informing interventions to achieve better Patient outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133445/Risk+Stratification', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C36', N'Shared Care Plans', N'Enables the maintenance of a single, shared care plan across multiple Organisations to ensure more co-ordinated working and more efficient management of activities relating to the Patient/Service User''s health and care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134486/Shared+Care+Plans', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C37', N'Social Prescribing', N'Supports the referral of Patients/Service Users to non-clinical services to help address their health and well-being needs.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135572/Social+Prescribing', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C38', N'Telecare', N'Supports the monitoring of Patients/Service Users or their environment to ensure quick identification and response to any adverse event.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135549/Telecare', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C39', N'Unified Care Record', N'Provides a consolidated view to Health and Care Professionals of a Patient/Service User''s complete and up-to-date records, sourced from various health and care settings.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134504/Unified+Care+Record', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C4', N'View Record - Citizen', N'Enables Citizens to view their Patient Record online.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134197/View+Record+-+Citizen', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C40', N'Medicines Verification', N'Supports compliance with the Falsified Medicines Directive and minimise the risk that falsified medicinal products are supplied to the public.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135093/Medicines+Verification', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C41', N'Productivity', N'Supports Patients/Service Users and Health and Care Professionals by delivering improved efficiency or experience related outcomes.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391135618/Productivity', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C42', N'Dispensing', N'Supports the timely and effective dispensing of medical products and appliances to Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133465/Dispensing', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C5', N'Appointments Management - GP', N'Supports the administration, scheduling, resourcing and reporting of appointments.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134029/Appointments+Management+-+GP', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C6', N'Clinical Decision Support', N'Supports clinical decision-making to improve Patient safety at the point of care.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134150/Clinical+Decision+Support', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C7', N'Communication Management', N'Supports the delivery and management of communications to Citizens and Practice staff.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134087/Communication+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C8', N'Digital Diagnostics', N'Supports electronic requesting with other healthcare organisations. Test results can be received, reviewed and stored against the Patient record.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391133770/Digital+Diagnostics', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[Capability] ([Id], [CapabilityName], [CapabilityDescription], [SourceUrl], [StatusId], [EffectiveDate]) VALUES (N'C9', N'Document Management', N'Supports the secure management and classification of all forms unstructured electronic documents including those created by scanning paper documents. Also enables processing of documents and matching documents with Patients.', N'https://gpitbjss.atlassian.net/wiki/spaces/GPITF/pages/1391134166/Document+Management', 1, CAST(N'2019-04-01' AS Date))
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C1', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C10', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C11', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C12', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C13', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C14', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C15', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C16', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C17', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C18', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C19', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C2', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C20', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C21', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C22', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C23', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C24', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C25', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C26', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C27', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C28', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C29', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C3', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C30', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C32', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C33', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C34', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C35', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C36', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C37', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C38', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C39', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C4', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C40', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C41', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C42', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C5', 1)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C6', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C7', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C8', 0)
GO
INSERT [dbo].[FrameworkCapabilities] ([FrameworkId], [CapabilityId], [IsFoundation]) VALUES (N'NHSDGP001', N'C9', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S1', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S21', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S68', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C1', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S10', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C10', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S11', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S35', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S40', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S55', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S56', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C11', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S12', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C12', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S13', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S33', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S40', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S43', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S44', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S46', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S48', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S50', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S53', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S54', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S55', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S56', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S59', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S60', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S64', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S66', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C13', N'S70', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S14', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S36', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S40', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S55', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S56', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C14', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S15', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S37', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S39', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S50', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C15', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S16', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C16', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C17', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C18', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S19', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C19', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S2', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S21', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S68', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C2', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S20', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C20', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C21', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C22', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S44', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S56', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S66', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C23', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C24', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C25', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C26', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C27', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C28', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C29', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S21', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S3', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S68', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C3', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S44', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C30', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C32', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C33', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C34', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C35', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C36', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C37', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C38', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S44', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S56', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S66', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C39', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S21', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S4', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S68', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C4', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C40', N'S71', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C41', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C42', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S44', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S47', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S5', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S50', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S56', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S59', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S62', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S66', 1)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C5', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S6', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C6', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S38', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C7', N'S7', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S34', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S50', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S58', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C8', N'S8', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S22', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S24', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S25', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S26', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S27', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S28', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S29', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S30', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S31', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S32', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S49', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S63', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S65', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S69', 0)
GO
INSERT [dbo].[CapabilityStandards] ([CapabilityId], [StandardId], [IsOptional]) VALUES (N'C9', N'S9', 0)
GO
