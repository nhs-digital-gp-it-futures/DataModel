USE [buyingcatalogue]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*-----------------------------------------------------------------------
--
-- CapabilityStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[CapabilityStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,
 CONSTRAINT [PK_CapabilityStatus_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- Capability
-- Note: Clustering turned off on Id as uniqueidentifer, but enabled on 
-- CapabilityRef as Azure SQL requires one and only one per table
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Capability](
	[Id] [uniqueidentifier] NOT NULL,
	[CapabilityRef] [varchar](10) NOT NULL,
	[Version] [varchar](10) NOT NULL,
	[PreviousVersion] [varchar](10) NULL,
	[StatusId] [int] NOT NULL,
	[CapabilityName] [varchar](255) NOT NULL,
	[CapabilityDescription] [varchar](500) NOT NULL,
	[SourceUrl] [varchar](1000) NULL,
	[EffectiveDate] [date] NOT NULL,
 CONSTRAINT [PK_Capability] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_CapabilityCapabilityRef] ON [dbo].[Capability]
(
	[CapabilityRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Capability]  WITH CHECK ADD  CONSTRAINT [FK_Capability_CapabilityStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[CapabilityStatus] ([Id])
GO

ALTER TABLE [dbo].[Capability] CHECK CONSTRAINT [FK_Capability_CapabilityStatus]
GO

/*-----------------------------------------------------------------------
--
-- Epic
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Epic](
	[Id] [uniqueidentifier] NOT NULL,
	[EpicRef] [varchar](16) NOT NULL,
	[EpicName] [varchar](100) NOT NULL,
	[CapabilityId] [uniqueidentifier] NOT NULL,
	[SourceUrl] [varchar](max) NULL,
 CONSTRAINT [PK_Epic] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_EpicEpicRef] ON [dbo].[Epic]
(
	[EpicRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Epic]  WITH CHECK ADD  CONSTRAINT [FK_Epic_Capability] FOREIGN KEY([CapabilityId])
REFERENCES [dbo].[Capability] ([Id])
GO

ALTER TABLE [dbo].[Epic] CHECK CONSTRAINT [FK_Epic_Capability]
GO


/*-----------------------------------------------------------------------
--
-- EpicAcceptanceCriteria
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[EpicAcceptanceCriteria](
	[Id] [uniqueidentifier] NOT NULL,
	[EpicId] [uniqueidentifier] NOT NULL,
	[EpicRef] [varchar](16) NOT NULL,
	[AcName] [varchar](100) NOT NULL,
	[AcDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_EpicAcceptanceCriteria] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_EpicAcceptanceCriteriaEpicRef] ON [dbo].[EpicAcceptanceCriteria]
(
	[EpicRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EpicAcceptanceCriteria]  WITH CHECK ADD  CONSTRAINT [FK_EpicAcceptanceCriteria_Epic] FOREIGN KEY([EpicId])
REFERENCES [dbo].[Epic] ([Id])
GO

ALTER TABLE [dbo].[EpicAcceptanceCriteria] CHECK CONSTRAINT [FK_EpicAcceptanceCriteria_Epic]
GO


/*-----------------------------------------------------------------------
--
-- StatandardStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[StandardStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,	
 CONSTRAINT [PK_StandardStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_StandardStatusName] UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*-----------------------------------------------------------------------
--
-- StandardCategory
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[StandardCategory](
	[Id] [int] NOT NULL,
	[CategoryName] [varchar](16) NOT NULL,
 CONSTRAINT [PK_StandardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- Standard
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Standard](
	[Id] [uniqueidentifier] NOT NULL,
	[StandardRef] [varchar](10) NOT NULL,
	[Version] [varchar](10) NOT NULL,
	[PreviousId] [int] NULL,
	[StandardName] [varchar](100) NOT NULL,
	[StandardDescription] [varchar](500) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SourceUrl] [varchar](1000) NULL,
	[StatusId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
 CONSTRAINT [PK_Standard] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_StandardStandardRef] ON [dbo].[Standard]
(
	[StandardRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Standard]  WITH CHECK ADD  CONSTRAINT [FK_Standard_StandardCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[StandardCategory] ([Id])
GO

ALTER TABLE [dbo].[Standard] CHECK CONSTRAINT [FK_Standard_StandardCategory]
GO

ALTER TABLE [dbo].[Standard]  WITH CHECK ADD  CONSTRAINT [FK_Standard_StandardStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StandardStatus] ([Id])
GO

ALTER TABLE [dbo].[Standard] CHECK CONSTRAINT [FK_Standard_StandardStatus]
GO

/*-----------------------------------------------------------------------
--
-- CapabilityStandards
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[CapabilityStandards](
	[CapabilityId] [uniqueidentifier] NOT NULL,
	[StandardId] [uniqueidentifier] NOT NULL,	
	[IsOptional] [bit] NOT NULL CONSTRAINT [DF_CapabilityStandards_IsOptional] DEFAULT 0,
 CONSTRAINT [PK_CapabilityStandards] PRIMARY KEY CLUSTERED 
(
	[CapabilityId] ASC,	
	[StandardId] ASC	
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CapabilityStandards]  WITH CHECK ADD  CONSTRAINT [FK_CapabilityStandards_Capability] FOREIGN KEY([CapabilityId])
REFERENCES [dbo].[Capability] ([Id])
GO

ALTER TABLE [dbo].[CapabilityStandards] CHECK CONSTRAINT [FK_CapabilityStandards_Capability]
GO

ALTER TABLE [dbo].[CapabilityStandards]  WITH CHECK ADD  CONSTRAINT [FK_CapabilityStandards_Standard] FOREIGN KEY([StandardId])
REFERENCES [dbo].[Standard] ([Id])
GO

ALTER TABLE [dbo].[CapabilityStandards] CHECK CONSTRAINT [FK_CapabilityStandards_Standard]
GO

/*-----------------------------------------------------------------------
--
-- Framework
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Framework](
	[Id] [varchar](10) NOT NULL,
	[FrameworkName] [varchar](100) NOT NULL,
	[FrameworkDescription] [varchar](max) NULL,
	[Owner] [varchar](100) NULL,
	[ActiveDate] [date] NULL,
	[ExpiryDate] [date] NULL,
 CONSTRAINT [PK_Framework] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- FramworkCapabilities
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[FrameworkCapabilities](
	[FrameworkId] [varchar](10) NOT NULL,
	[CapabilityId] [uniqueidentifier] NOT NULL,	
	[IsFoundation] [bit] NOT NULL CONSTRAINT [DF_FrameworkCapabilities_IsFoundation] DEFAULT 0,
 CONSTRAINT [PK_FrameworkCapabilities] PRIMARY KEY CLUSTERED 
(
	[FrameworkId] ASC,
	[CapabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FrameworkCapabilities]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkCapabilities_Capability] FOREIGN KEY([CapabilityId])
REFERENCES [dbo].[Capability] ([Id])
GO

ALTER TABLE [dbo].[FrameworkCapabilities] CHECK CONSTRAINT [FK_FrameworkCapabilities_Capability]
GO

ALTER TABLE [dbo].[FrameworkCapabilities]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkCapabilities_Framework] FOREIGN KEY([FrameworkId])
REFERENCES [dbo].[Framework] ([Id])
GO

ALTER TABLE [dbo].[FrameworkCapabilities] CHECK CONSTRAINT [FK_FrameworkCapabilities_Framework]
GO


/*-----------------------------------------------------------------------
--
-- FramworkStandards
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[FrameworkStandards](
	[FrameworkId] [varchar](10) NOT NULL,
	[StandardId] [uniqueidentifier] NOT NULL,	
 CONSTRAINT [PK_FrameworkStandards] PRIMARY KEY CLUSTERED 
(
	[FrameworkId] ASC,
	[StandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FrameworkStandards]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkStandards_Framework] FOREIGN KEY([FrameworkId])
REFERENCES [dbo].[Framework] ([Id])
GO

ALTER TABLE [dbo].[FrameworkStandards] CHECK CONSTRAINT [FK_FrameworkStandards_Framework]
GO

ALTER TABLE [dbo].[FrameworkStandards]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkStandards_Standard] FOREIGN KEY([StandardId])
REFERENCES [dbo].[Standard] ([Id])
GO

ALTER TABLE [dbo].[FrameworkStandards] CHECK CONSTRAINT [FK_FrameworkStandards_Standard]
GO


/*-----------------------------------------------------------------------
--
-- Organisation
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Organisation](
	[Id] [varchar](8) NOT NULL,
	[OrganisationName] [varchar](255) NOT NULL,
	[Summary] [varchar](500) NULL,
	[OrganisationUrl] [varchar](1000) NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*-----------------------------------------------------------------------
--
-- OrganisationContact
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[OrganisationContact](
	[Id] [uniqueidentifier] NOT NULL,	
	[OrganisationId] [varchar](8) NOT NULL,
	[FirstName] [varchar](35) NOT NULL,
	[LastName] [varchar](35) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](35) NULL,
 CONSTRAINT [PK_OrganisationContact] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_OrganisationContactOrganisationId] ON [dbo].[OrganisationContact]
(
	[OrganisationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrganisationContact]  WITH CHECK ADD  CONSTRAINT [FK_OrganisationContact_Organisation] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisation] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[OrganisationContact] CHECK CONSTRAINT [FK_OrganisationContact_Organisation]
GO

/*-----------------------------------------------------------------------
--
-- SolutionStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,	
 CONSTRAINT [PK_SolutionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_SolutionStatusName] UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*-----------------------------------------------------------------------
--
-- Solution
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[Solution](
	[Id] [varchar](14) NOT NULL,
	[OrganisationId] [varchar](8) NOT NULL,
	[SolutionName] [varchar](255) NOT NULL,
	[Version] [varchar](10) NOT NULL,
	[StatusId] [int] NOT NULL,
	[ParentId] [varchar](14) NULL,
	[Summary] [varchar](300) NULL,
	[AboutUrl] [varchar](1000) NULL,
 CONSTRAINT [PK_SupplierSolution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Organisation] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisation] ([Id])
GO

ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Organisation]
GO

ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Parent] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Solution] ([Id])
GO

ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Parent]
GO

ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_SolutionStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionStatus] ([Id])
GO

ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_SolutionStatus]
GO

/*-----------------------------------------------------------------------
--
-- SolutionDetail
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionDetail](
	[SolutionId] [varchar](14) NOT NULL,
	[FullDescription] [varchar](3000) NOT NULL,
	[Features] [nvarchar](max) NULL,
	[ClientApplication] [nvarchar](max) NULL,
	[Hosting] [nvarchar](max) NULL,
	[RoadMap] [varchar](1000) NULL,
	[RoadMapImageUrl] [varchar](1000) NULL,
	[TransitionTimescale] [nvarchar](max) NULL,
 CONSTRAINT [PK_SolutionDetail] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionDetail]  WITH CHECK ADD  CONSTRAINT [FK_SolutionDetail_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionDetail] CHECK CONSTRAINT [FK_SolutionDetail_Solution]
GO

/*-----------------------------------------------------------------------
--
-- SolutionCapabilityStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionCapabilityStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,
 CONSTRAINT [PK_CapabilityStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_CapabilityStatusName] UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- SolutionCapability
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionCapability](
	[SolutionId] [varchar](14) NOT NULL,
	[CapabilityId] [uniqueidentifier] NOT NULL,	
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_SolutionCapability] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC,
	[CapabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionCapability]  WITH CHECK ADD  CONSTRAINT [FK_SolutionCapability_Capability] FOREIGN KEY([CapabilityId])
REFERENCES [dbo].[Capability] ([Id])
GO

ALTER TABLE [dbo].[SolutionCapability] CHECK CONSTRAINT [FK_SolutionCapability_Capability]
GO

ALTER TABLE [dbo].[SolutionCapability]  WITH CHECK ADD  CONSTRAINT [FK_SolutionCapability_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionCapability] CHECK CONSTRAINT [FK_SolutionCapability_Solution]
GO

ALTER TABLE [dbo].[SolutionCapability]  WITH CHECK ADD  CONSTRAINT [FK_SolutionCapability_SolutionCapabilityStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionCapabilityStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionCapability] CHECK CONSTRAINT [FK_SolutionCapability_SolutionCapabilityStatus]
GO


/*-----------------------------------------------------------------------
--
-- SolutionEpicStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionEpicStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,	
 CONSTRAINT [PK_EpicStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_EpicStatusName] UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- SolutionEpic
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionEpic](
	[SolutionId] [varchar](14) NOT NULL,
	[CapabilityId] [uniqueidentifier] NOT NULL,
	[EpicId] [uniqueidentifier] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_SolutionEpic] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC,
	[CapabilityId],
	[EpicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionEpic_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionEpic] CHECK CONSTRAINT [FK_SolutionEpic_Solution]
GO

ALTER TABLE [dbo].[SolutionEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionEpic_SolutionEpicStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionEpicStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionEpic] CHECK CONSTRAINT [FK_SolutionEpic_SolutionEpicStatus]
GO

ALTER TABLE [dbo].[SolutionEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionEpicStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionEpicStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionEpic] CHECK CONSTRAINT [FK_SolutionEpic_SolutionEpicStatus]
GO

ALTER TABLE [dbo].[SolutionEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionEpic_Epic] FOREIGN KEY([EpicId])
REFERENCES [dbo].[Epic] ([Id])
GO

ALTER TABLE [dbo].[SolutionEpic] CHECK CONSTRAINT [FK_SolutionEpic_Epic]
GO

ALTER TABLE [dbo].[SolutionEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionEpic_Capability] FOREIGN KEY([CapabilityId])
REFERENCES [dbo].[Capability] ([Id])
GO

ALTER TABLE [dbo].[SolutionEpic] CHECK CONSTRAINT [FK_SolutionEpic_Capability]
GO

/*-----------------------------------------------------------------------
--
-- SolutionStandardStatus
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionStandardStatus](
	[Id] [int] NOT NULL,
	[StatusName] [varchar](16) NOT NULL,	
 CONSTRAINT [PK_SolutionStandardStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_SolutionStandardStatusName] UNIQUE NONCLUSTERED 
(
	[StatusName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- SolutionStandard
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionStandard](
	[SolutionId] [varchar](14) NOT NULL,
	[StandardId] [uniqueidentifier] NOT NULL,		
	[StatusId] [int] NOT NULL,
	[WorkOfPlanDate] [date] NULL,
	[WorkOfPlanSummary] [varchar](3000) NULL,
 CONSTRAINT [PK_SolutionStandard_1] PRIMARY KEY CLUSTERED 
(	
	[SolutionId] ASC,
	[StandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionStandard]  WITH CHECK ADD  CONSTRAINT [FK_SolutionStandard_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionStandard] CHECK CONSTRAINT [FK_SolutionStandard_Solution]
GO

ALTER TABLE [dbo].[SolutionStandard]  WITH CHECK ADD  CONSTRAINT [FK_SolutionStandard_SolutionStandardStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionStandardStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionStandard] CHECK CONSTRAINT [FK_SolutionStandard_SolutionStandardStatus]
GO

ALTER TABLE [dbo].[SolutionStandard]  WITH CHECK ADD  CONSTRAINT [FK_SolutionStandard_Standard] FOREIGN KEY([StandardId])
REFERENCES [dbo].[Standard] ([Id])
GO

ALTER TABLE [dbo].[SolutionStandard] CHECK CONSTRAINT [FK_SolutionStandard_Standard]
GO


/*-----------------------------------------------------------------------
--
-- SolutionProductivityCapability
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionProductivityCapability](	
	[Id] [varchar](18) NOT NULL,	
	[SolutionId] [varchar](14) NOT NULL,
	[CapabilityName] [varchar](100) NOT NULL,
	[StatusId] [int] NOT NULL,
	[CapabilityDescription] [varchar](255) NOT NULL,
	[Tag] [varchar](100) NULL,
 CONSTRAINT [PK_SolutionProductivityCapability] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionProductivityCapability]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProductivityCapability_CapabilityStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionCapabilityStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionProductivityCapability] CHECK CONSTRAINT [FK_SolutionProductivityCapability_CapabilityStatus]
GO

ALTER TABLE [dbo].[SolutionProductivityCapability]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProductivityCapability_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionProductivityCapability] CHECK CONSTRAINT [FK_SolutionProductivityCapability_Solution]
GO


/*-----------------------------------------------------------------------
--
-- SolutionProductivityEpic
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionProductivityEpic](
	[ProductivityCapabilityId] [varchar](18) NOT NULL,
	[EpicId] [uniqueidentifier] NOT NULL,
	[SolutionId] [varchar](14) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_SolutionProductivityEpic] PRIMARY KEY CLUSTERED 
(	
	[ProductivityCapabilityId] ASC,
	[EpicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionProductivityEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProductivityEpic_Epic] FOREIGN KEY([EpicId])
REFERENCES [dbo].[Epic] ([Id])
GO

ALTER TABLE [dbo].[SolutionProductivityEpic] CHECK CONSTRAINT [FK_SolutionProductivityEpic_Epic]
GO

ALTER TABLE [dbo].[SolutionProductivityEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProductivityEpic_SolutionEpicStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SolutionEpicStatus] ([Id])
GO

ALTER TABLE [dbo].[SolutionProductivityEpic] CHECK CONSTRAINT [FK_SolutionProductivityEpic_SolutionEpicStatus]
GO

ALTER TABLE [dbo].[SolutionProductivityEpic]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProductivityEpic_SolutionProductivityCapability] FOREIGN KEY([ProductivityCapabilityId])
REFERENCES [dbo].[SolutionProductivityCapability] ([Id])
GO

ALTER TABLE [dbo].[SolutionProductivityEpic] CHECK CONSTRAINT [FK_SolutionProductivityEpic_SolutionProductivityCapability]
GO


/*-----------------------------------------------------------------------
--
-- PricingUnitType
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[PricingUnitType](
	[Id] [int] NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PricingUnitType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- SolutionPrice
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[SolutionPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SolutionId] [varchar](14) NOT NULL,
	[PricingUnitId] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[BandStart] [int] NOT NULL,
	[BandEnd] [int] NULL,
 CONSTRAINT [PK_SolutionPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SolutionPrice]  WITH CHECK ADD  CONSTRAINT [FK_SolutionPrice_PricingUnitType] FOREIGN KEY([PricingUnitId])
REFERENCES [dbo].[PricingUnitType] ([Id])
GO

ALTER TABLE [dbo].[SolutionPrice] CHECK CONSTRAINT [FK_SolutionPrice_PricingUnitType]
GO

ALTER TABLE [dbo].[SolutionPrice]  WITH CHECK ADD  CONSTRAINT [FK_SolutionPrice_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SolutionPrice] CHECK CONSTRAINT [FK_SolutionPrice_Solution]
GO



/*-----------------------------------------------------------------------
--
-- AssociatedService
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[AssociatedService](
	[Id] [varchar](18) NOT NULL,
	[SolutionId] [varchar](14) NOT NULL,
	[ServiceName] [varchar](100) NOT NULL,
	[ServiceDescription] [varchar](300) NOT NULL,
	[OrderGuidance] [varchar](300) NOT NULL,
 CONSTRAINT [PK_AssociatedService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/*-----------------------------------------------------------------------
--
-- AssociatedServicePrice
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[AssociatedServicePrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssociatedServiceId] [varchar](18) NOT NULL,
	[PricingUnitId] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[BandStart] [int] NOT NULL,
	[BandEnd] [int] NULL,
 CONSTRAINT [PK_AssociatedServicePrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssociatedServicePrice]  WITH CHECK ADD  CONSTRAINT [FK_AssociatePrice_PricingUnitType] FOREIGN KEY([PricingUnitId])
REFERENCES [dbo].[PricingUnitType] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AssociatedServicePrice] CHECK CONSTRAINT [FK_AssociatePrice_PricingUnitType]
GO


/*-----------------------------------------------------------------------
--
-- MarketingContact
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[MarketingContact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SolutionId] [varchar](14) NOT NULL,
	[FirstName] [varchar](35) NULL,
	[LastName] [varchar](35) NULL,
	[Email] [varchar](255) NULL,
	[PhoneNumber] [varchar](35) NULL,
	[Department] [varchar](50) NULL,
 CONSTRAINT [PK_MarketingContact] PRIMARY KEY CLUSTERED 
(
	[SolutionId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MarketingContact]  WITH CHECK ADD  CONSTRAINT [FK_MarketingContact_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[MarketingContact] CHECK CONSTRAINT [FK_MarketingContact_Solution]
GO

/*-----------------------------------------------------------------------
--
-- FrameworkSolutions
--
------------------------------------------------------------------------*/
CREATE TABLE [dbo].[FrameworkSolutions](
	[FrameworkId] [varchar](10) NOT NULL,
	[SolutionId] [varchar](14) NOT NULL,
	[IsFoundation] [bit] NOT NULL CONSTRAINT [DF_FrameworkSolutions_IsFoundation] DEFAULT 0,
 CONSTRAINT [PK_FrameworkSolutions] PRIMARY KEY CLUSTERED
( 
	[FrameworkId] ASC,
	[SolutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FrameworkSolutions]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkSolutions_Framework] FOREIGN KEY([FrameworkId])
REFERENCES [dbo].[Framework] ([Id])
GO

ALTER TABLE [dbo].[FrameworkSolutions] CHECK CONSTRAINT [FK_FrameworkSolutions_Framework]
GO

ALTER TABLE [dbo].[FrameworkSolutions]  WITH CHECK ADD  CONSTRAINT [FK_FrameworkSolutions_Solution] FOREIGN KEY([SolutionId])
REFERENCES [dbo].[Solution] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[FrameworkSolutions] CHECK CONSTRAINT [FK_FrameworkSolutions_Solution]
GO