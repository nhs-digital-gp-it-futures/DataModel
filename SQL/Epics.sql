INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C10E1', N'View GPES payment extract reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C10'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C10E2', N'View national GPES non-payment extract reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C10'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C11E1', N'Manage Referrals', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C11'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C11E2', N'View Referral reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C11'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E1', N'Manage General Practice and Branch site information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E2', N'Manage General Practice Staff Members', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E3', N'Manage Staff Member inactivity periods', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E4', N'Manage Staff Member Groups', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E5', N'Manage Related Organisations information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E6', N'Manage Related Organisation Staff Members', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C12E7', N'Manage Non-human Resources', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C12'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E1', N'Manage Patients ', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E10', N'Configure Citizen service access for the Practice', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E11', N'Identify Patients outside of Catchment Area', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E12', N'Manage Patient Cohorts from Search Results', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E13', N'View Subject Access Request reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E14', N'Manage Acute Prescription Request Service', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E15', N'Notify the Patient of changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E16', N'Manage Subject Access Request (SAR) requests', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E17', N'Notify the Proxy of changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E18', N'Manage Practice notifications - Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E19', N'Configure Proxy notifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E2', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E20', N'Manage Proxy Communications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E21', N'Manage Proxys for Citizen Services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E3', N'Manage Patient Related Persons', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E4', N'Manage Patients for Citizen Services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E5', N'Manage Patient Communications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E6', N'Configure Patient notifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E7', N'Manage Practice notifications - Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E8', N'Search for Patient Records', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C13E9', N'View Patient Reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C13'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E1', N'Access prescribable items', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E10', N'Manage Repeat Medication requests', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E11', N'Manage Acute Medication requests', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E12', N'Manage Authorising Prescribers', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E13', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E14', N'View EPS Nominated Pharmacy changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E15', N'Configure warnings for prescribable items', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E16', N'Medications are linked to diagnoses', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E2', N'Manage Formularies', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E3', N'Manage shared Formularies', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E4', N'Set default Formulary for Practice Users', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E5', N'Manage prescribed medication', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E6', N'Manage prescriptions', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E7', N'Manage Patient''s Preferred Pharmacy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E8', N'Manage Patient medication reviews', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C14E9', N'View prescribed medication reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C14'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E1', N'Record Consultation information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E2', N'View report on calls and recalls', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E3', N'View report of Consultations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E4', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E5', N'Manage Consultation form templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E6', N'Share Consultation form templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E7', N'Use supplier implemented national Consultation form templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C15E8', N'Extract Female Genital Mutilation data', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C15'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C16E1', N'Report data from other Capabilities', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C16'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C17E1', N'Scan documents', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C17'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C17E2', N'Image enhancement', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C17'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C18E1', N'Share monitoring data with my General Practice', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C18'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C18E2', N'Configure Telehealth for the Practice', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C18'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C18E3', N'Configure Telehealth for the Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C18'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C18E4', N'Manage incoming Telehealth data', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C18'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C19E1', N'Document classification', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C19'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C19E2', N'Manage Document Classification rules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C19'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C19E3', N'Document and Patient matching', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C19'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C1E1', N'Manage Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C1'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C1E2', N'Manage Appointments by Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C1'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E1', N'Manage Task templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E10', N'View Workflow reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E11', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E12', N'Share Task List configuration', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E13', N'Share Workflow List configuration', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E2', N'Manage Workflow templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E3', N'Configure Task rules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E4', N'Configure Workflow rules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E5', N'Manage Tasks', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E6', N'Manage Workflows', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E7', N'Manage Task List configurations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E8', N'Manage Workflows List configurations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C20E9', N'View Task reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C20'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E1', N'Maintain Resident''s Care Home Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E2', N'Maintain Resident Proxy preferences', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E3', N'View and maintain End of Life Care Plans', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E4', N'Record incident and adverse events', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E5', N'Maintain Staff Records', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E6', N'Maintain Staff Task schedules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E7', N'Manage Tasks', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C21E8', N'Reporting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C21'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E1', N'Manage Cases', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E2', N'Maintain Caseloads', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E3', N'Generate and manage contact schedules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E4', N'Update Case details', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E5', N'Review and comment on Caseload', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E6', N'Review and comment on contact schedule', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E7', N'View and update Patient/Service User''s Health or Care Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E8', N'Reporting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C22E9', N'Care Pathway templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C22'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E1', N'Make Appointments available to external organisations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E2', N'Search externally bookable Appointment slots', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E3', N'Book externally bookable Appointment slots', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E4', N'Maintain Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E5', N'Notifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E6', N'Manage Appointment Requests', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E7', N'Booking approval', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E8', N'Report on usage of Cross-Organisation Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C23E9', N'Manage Cross-Organisation Appointment Booking templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C23'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E1', N'Use Workflow to run a Cross-organisational Process', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E2', N'Maintain cross-organisational workflows', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E3', N'Maintain cross-organisational workflow templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E4', N'Share workflow templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E5', N'Manage automated notifications and reminders', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E6', N'Manage ad-hoc notifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C24E7', N'Report on Cross-organisational Workflows', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C24'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C25E1', N'Maintain service schedule', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C25'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C25E2', N'Share service schedule', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C25'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C25E3', N'Workforce management reporting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C25'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E1', N'Analyse data across multiple organisations within the Integrated/Federated Care Setting (Federation)', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E10', N'Enable reporting at different levels', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E2', N'Analyse data across different datasets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E3', N'Create new or update existing reports ', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E4', N'Run existing reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E5', N'Present output', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E6', N'Define selection rules on reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E7', N'Create and run performance-based reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E8', N'Drill down to detailed information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C26E9', N'Forecasting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C26'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E1', N'Maintain Domiciliary Care schedules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E2', N'Share Domiciliary Care schedules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E3', N'Manage Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E4', N'Service User manages their schedule for Domiciliary Care', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E5', N'Manage Care Plans for Service Users', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E6', N'Remote access to Domiciliary Care schedule', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E7', N'Receive notifications relating to Service User', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E8', N'Reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C27E9', N'Nominated individuals to view Domiciliary Care schedule ', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C27'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E1', N'Patient/Service User requests support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E2', N'Respond to request for support from Patient/Service User', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E3', N'Patient/Service User makes administrative request', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E4', N'Link requests and responses to Patient/Service User Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E5', N'Self-help and signposting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E6', N'Live Consultation: Patient/Service User and Health and Care Professionals', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E7', N'Group e-Consultations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C28E8', N'Reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C28'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E1', N'Health or Care Professional requests support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E2', N'Respond to request for support from another Health or Care Professional', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E3', N'Link additional information to a request for support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E4', N'Live Consultation: Health and Care Professionals', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E5', N'Link Consultation to Patient/Service User''s Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C29E6', N'Reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C29'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C2E1', N'Manage communications - Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C2'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C2E2', N'Manage communications - Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C2'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E1', N'Single unified medication view', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E10', N'Access national or local Medicines Optimisation guidance', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E11', N'Prescribing decision support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E12', N'Medicines Optimisation reporting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E13', N'Configure notifications for required Medicines Reviews', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E14', N'Receive notification for required medicines reviews', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E2', N'Request medication changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E3', N'Identify Patients requiring medicines review', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E4', N'Maintain medicines review', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E5', N'Notify Patient and Proxies of medication changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E6', N'Notify other interested parties of medication changes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E7', N'Configure medication substitutions', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E8', N'Use pre-configured medication substitutions', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C30E9', N'Maintain prescribed medication', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C30'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E1', N'Manage Personal Health Budget', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E10', N'Manage multiple budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E11', N'Link to Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E12', N'Link to Workflow', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E13', N'Provider view', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E14', N'Management Information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E15', N'Identify candidates for Personal Health Budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E2', N'Record Personal Health Budget purchases', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E3', N'Assess Personal Health Budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E4', N'Link Personal Health Budget with care plan', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E5', N'Support different models for management of Personal Health Budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E6', N'Apply criteria for the use of Personal Health Budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E7', N'Payments under Personal Health Budgets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E8', N'Maintain directory of equipment, treatments and services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C32E9', N'Search a directory of equipment, treatments and services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C32'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C33E1', N'Maintain Personal Health Record content', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C33'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C33E2', N'Organise Personal Health Record ', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C33'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C33E3', N'Manage access to Personal Health Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C33'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C33E4', N'Manage data coming into Personal Health Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C33'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E1', N'Access healthcare data', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E2', N'Maintain cohorts', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E3', N'Stratify population by risk', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E4', N'Data analysis and reporting', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E5', N'Outcomes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C34E6', N'Dashboard', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C34'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C35E1', N'Run Risk Stratification algorithms', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C35'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E1', N'Create Shared Care Plan', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E10', N'Reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E11', N'Manage Shared Care Plan templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E12', N'Manage care schedules', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E2', N'View Shared Care Plan', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E3', N'Amend Shared Care Plan', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E4', N'Close Shared Care Plan ', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E5', N'Assign Shared Care Plan actions', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E6', N'Access Shared Care Plans remotely', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E7', N'Search and view Shared Care Plans', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E8', N'Real-time access to Shared Care Plans', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C36E9', N'Notifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C36'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E1', N'Assess wellness or well-being of the Patient or Service User', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E10', N'Patient self-referral', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E11', N'Integrate Social Prescribing Referral Record with Clinical Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E12', N'Receive notification of an Appointment', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E13', N'Remind Patients/Service Users of Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E14', N'Provide service feedback', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E15', N'View service feedback', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E16', N'Obtain Management Information (MI) on Social Prescribing', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E2', N'Search the directory', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E3', N'Refer Patient/Service User to service(s)', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E4', N'Maintain referral record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E5', N'Link to national or local directory of services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E6', N'Maintain directory of services', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E7', N'Maintain service criteria', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E8', N'Refer Patient/Service User to Link Worker', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C37E9', N'Capture Patient/Service User consent', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C37'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E1', N'Define response to event', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E10', N'Manual testing of Telecare device', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E11', N'Sustainability of Telecare device', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E2', N'Monitor and alert', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E3', N'Receive alerts', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E4', N'Meet availability targets', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E5', N'Ease of use', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E6', N'Patient/Service Users with sensory impairment(s)', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E7', N'Obtain Management Information (MI) on Telecare', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E8', N'Enable 2-way communication with Patient/Service User', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C38E9', N'Remote testing of Telecare device', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C38'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C39E1', N'View Unified Care Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C39'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C39E2', N'Patient/Service User views the Unified Care Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C39'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C39E3', N'Default Views', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C39'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E1', N'Manage Repeat Medications - Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E10', N'View medication information as a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E2', N'Manage my nominated EPS pharmacy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E3', N'Manage my Preferred PharmacyAs a Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E4', N'Manage Acute Medications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E5', N'View medication information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E6', N'Manage Repeat Medications as a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E7', N'Manage nominated EPS pharmacy as a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E8', N'Manage Preferred Pharmacy as a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C3E9', N'Manage Acute Medications as a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C3'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C40E1', N'Verify Medicinal Product Unique Identifiers', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C40'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C40E2', N'Decommission Medicinal Products', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C40'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C40E3', N'Record the integrity of Anti-tampering Devices', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C40'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E1', N'Manage Stock in a Dispensary', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E2', N'Manage Stock Orders', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E3', N'Manage Dispensing tasks for a Dispensary', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E4', N'Dispense Medication', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E5', N'Manage Dispensaries', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E6', N'Manage Endorsements', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E7', N'Manage Supplier Accounts', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C42E8', N'View Stock reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C42'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C4E1', N'View Patient Record - Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C4'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C4E2', N'View Patient Record - Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C4'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E1', N'Manage Session templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E2', N'Manage Sessions', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E3', N'Configure Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E4', N'Practice configuration', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E5', N'Manage Appointments', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E6', N'View Appointment reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C5E7', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C5'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C6E1', N'Access to Clinical Decision Support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C6'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C6E2', N'Local configuration for Clinical Decision Support triggering', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C6'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C6E3', N'View Clinical Decision Support reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C6'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C6E4', N'Configuration for custom Clinical Decision Support', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C6'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E1', N'Manage communication consents for a Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E10', N'Manage incoming communications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E2', N'Manage communication preferences for a Patient', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E3', N'Manage communication templates', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E4', N'Create communications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E5', N'Manage automated communications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E6', N'View communication reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E7', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E8', N'Manage communication consents for a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C7E9', N'Manage communication preferences for a Proxy', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C7'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C8E1', N'Manage Requests for Investigations', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C8'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C8E2', N'View Requests for Investigations reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C8'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C8E3', N'Create a Request for Investigation for multiple Patients', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C8'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C8E4', N'Receive external Request for Investigation information', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C8'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E1', N'Manage document classifications', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E10', N'Visually compare multiple documents', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E11', N'View any version of a document', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E12', N'Print documents', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E13', N'Export documents to new formats', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E14', N'Document reports', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E15', N'Receipt of electronic documents', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E16', N'Access Patient Record', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E17', N'Search for documents using document content', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 3, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E2', N'Manage document properties', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E3', N'Manage document attributes', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E4', N'Manage document coded entries', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E5', N'Document workflows', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E6', N'Manage document annotation', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E7', N'Search for documents', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E8', N'Search document content', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO

INSERT [dbo].[Epic] ([Id], [Name], [CapabilityId], [CompliancyLevelId], [Active]) VALUES (N'C9E9', N'Document and Patient matching', (SELECT Capability.Id FROM Capability WHERE Capability.CapabilityRef = N'C9'), 1, 1)
GO