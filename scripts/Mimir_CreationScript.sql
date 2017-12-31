USE [Mimir]
GO

DROP TABLE [addAddress]
DROP TABLE [orgOrganisation]
DROP TABLE [hrsHours]
DROP TABLE [peoPeople]			DROP TABLE [memMembers]
DROP TABLE [offOffering]		DROP TABLE [ofsOfferings]		DROP TABLE [odtOfferingDetail]	DROP TABLE [ofdOfferingDetails]
DROP TABLE [catCategory]		DROP TABLE [ctsCategories]
DROP TABLE [webWebsite]			DROP TABLE [wbsWebsiteSections]	DROP TABLE [wsiWebsiteSectionsIncluded]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[addAddress](
	[addID] INT IDENTITY(1,1) NOT NULL,
	[addAddress] NVARCHAR(255) NOT NULL,
	[addUnit] INT NULL,
	[addNumber] INT NOT NULL,
	[addStreet] NVARCHAR(255) NOT NULL,
	[addSuburb] NVARCHAR(255) NOT NULL,
	[addPostcode] NVARCHAR(255) NOT NULL,
	[addCity] NVARCHAR(255) NOT NULL,
	[addGovtStatsAreaUnit] NVARCHAR(255) NOT NULL,
	[addGovtStatsMeshBlock] NVARCHAR(255) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[orgOrganisation](
	[orgID] INT IDENTITY(1,1) NOT NULL,
	[orgName] NVARCHAR(255) NOT NULL,
	[orgPhone] [nvarchar](50) NOT NULL,
	[orgFax] [nvarchar](50) NULL,
	[orgEmail] NVARCHAR(255) NULL,
	[orgAddressadd] INT NULL,
	[orgAboutUs] NVARCHAR(MAX) NULL,
	[orgHistory] NVARCHAR(MAX) NULL,
	[orgGiveALittle] NVARCHAR(255) NULL,
	[orgImage] IMAGE NULL,
	[orgLogo] IMAGE NULL
) ON [PRIMARY]
GO

CREATE TABLE [hrsHours] (	
	[hrsID] INT IDENTITY(1,1) NOT NULL,
	[hrsIDorg] INT NOT NULL,
	[hrsDate] DATE NULL,
	[hrsDay] NVARCHAR(10) NULL,
	[hrsOpen] TIME NOT NULL,
	[hrsClose] TIME NOT NULL
	) ON [PRIMARY]
GO
	
CREATE TABLE [dbo].[peoPeople](
	[peoID] INT IDENTITY(1,1) NOT NULL,
	[peoFirstName] NVARCHAR(255) NOT NULL,
	[peoLasttName] NVARCHAR(255) NOT NULL,
	[peoDateOfBirth] DATE NULL,
	[peoEmail] NVARCHAR(255) NULL,
	[peoPhone] NVARCHAR(50) NULL,
	[peoAddressadd] INT NULL,
	[peoPreferredName] NVARCHAR(255) NULL,
	[peoImage] IMAGE NULL
	) ON [PRIMARY]
GO

CREATE TABLE [dbo].[memMembers](
	[memID] INT IDENTITY(1,1) NOT NULL,
	[memIDorg] INT NOT NULL,
	[memIDpeo] INT NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[offOffering](
	[offID] INT IDENTITY(1,1) NOT NULL,
	[offHeading] NVARCHAR(255) NOT NULL,
	[offDescription] NVARCHAR(MAX) NOT NULL,
	[offMake] NVARCHAR(255) NULL,
	[offModel] NVARCHAR(255) NULL,
	[offBardcode] NVARCHAR(255) NULL,
	[offImage] IMAGE
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ofsOfferings](
	[ofsID] INT IDENTITY(1,1) NOT NULL,
	[ofsIDoff] INT NOT NULL,
	[ofsIDorg] INT NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[odtOfferingDetail](
	[odtID] INT IDENTITY(1,1) NOT NULL,
	[odtOfferingDetail] NVARCHAR(255) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ofdOfferingDetails](
	[ofdID] INT IDENTITY(1,1) NOT NULL,
	[ofdOfferingIDoff] INT NOT NULL,
	[ofdOfferingDetailIDodt] INT NOT NULL,
	[ofdOfferingDetailValue] NVARCHAR(255) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[catCategory](
	[catID] INT IDENTITY(1,1) NOT NULL,
	[catCategory] NVARCHAR(255) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ctsCategories](
	[ctsID] INT IDENTITY(1,1) NOT NULL,
	[ctsIDorg] INT NULL,
	[ctsIDcat] INT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[webWebsite](
	[webID] INT IDENTITY(1,1) NOT NULL,
	[webWebsiteURL] NVARCHAR(255) NOT NULL,
	[webOrganisationIDorg] NVARCHAR(255) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[wbsWebsiteSections](
	[wbsID] INT IDENTITY(1,1) NOT NULL,
	[wbsSectionName] NVARCHAR(255) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[wsiWebsiteSectionsIncluded](
	[wsiID] INT IDENTITY(1,1) NOT NULL,
	[wsiWebsiteIDweb] INT NOT NULL,
	[wsiSectionIDwbs] INT NOT NULL
) ON [PRIMARY]
GO

--##load addAddress
INSERT INTO [addAddress] ([addAddress], [addUnit], [addNumber], [addStreet], [addSuburb], [addCity], [addPostcode], [addGovtStatsAreaUnit],[addGovtStatsMeshBlock])
		VALUES ('458 Old Te Atatu Road, Te Atatu Peninsula, 0610, Auckland',NULL, '458', 'Old Te Atatu Road', 'Te Atatu Peninsula', 'Auckland','0610', 'Te Atatu Central','0251500')
INSERT INTO [addAddress] ([addAddress], [addUnit], [addNumber], [addStreet], [addSuburb], [addCity], [addPostcode], [addGovtStatsAreaUnit],[addGovtStatsMeshBlock])
		VALUES ('1 Gloria Avenue, Te Atatu Peninsula, 0610, Auckland',NULL, '1', 'Gloria Avenue', 'Te Atatu Peninsula', 'Auckland','0610', 'Te Atatu Central','0251000')
INSERT INTO [addAddress] ([addAddress], [addUnit], [addNumber], [addStreet], [addSuburb], [addCity], [addPostcode], [addGovtStatsAreaUnit],[addGovtStatsMeshBlock])
		VALUES ('572 Te Atatu Road, Te Atatu Peninsula, 0610, Auckland',NULL, '572', 'Te Atatu Road', 'Te Atatu Peninsula', 'Auckland','0610', 'Matipo','0248000')
INSERT INTO [addAddress] ([addAddress], [addUnit], [addNumber], [addStreet], [addSuburb], [addCity], [addPostcode], [addGovtStatsAreaUnit],[addGovtStatsMeshBlock])
		VALUES ('75 Beach Road, Te Atatu Peninsula, 0610, Auckland',NULL, '75', 'Beach Road', 'Te Atatu Peninsula', 'Auckland','0610', 'Durham Green','0246000')
INSERT INTO [addAddress] ([addAddress], [addUnit], [addNumber], [addStreet], [addSuburb], [addCity], [addPostcode], [addGovtStatsAreaUnit],[addGovtStatsMeshBlock])
		VALUES ('548 Te Atatu Road, Te Atatu Peninsula, 0610, Auckland',NULL, '548', 'Te Atatu Road', 'Te Atatu Peninsula', 'Auckland','0610', 'Te Atatu Central','0250200')

--##load orgOrganisation
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Servo Cafe', '(09) 834 0222', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Flossy Florist', '(09) 834 0005 ', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Hammer Hardware', '(09) 834 6210', '(09) 834 9546', 'teatatu@hammerhardware.co.nz', 3, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Te Atatu Toy Library', '(021) 0245 7451', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Community Patrol', '', NULL, NULL, NULL, NULL, NULL, 'https://givealittle.co.nz/org/teatatuglendenecpnz', NULL, NULL)
INSERT INTO [orgOrganisation] ([orgName], [orgPhone], [orgFax], [orgEmail], [orgAddressadd], [orgAboutUs], [orgHistory], [orgGiveALittle], [orgImage], [orgLogo])
		VALUES ('Te Atatu Menswear', '(09) 834 6470', NULL, 'buscomb@ihug.co.nz', 5, 'Te Atatu Menswear is a family owned and operated business that has been part of the West Auckland retail landscape since 1962, when it was first opened by Reg Buscomb and later joined by his son Malcolm, and Malcolm’s wife, Wilma. It is located on Te Atatu Peninsula, an easy location to get to get to from anywhere.
Malcolm and Wilma are able to offer an unparalleled level of expertise, focusing on sourcing all clothing from local suppliers, and wherever possible, New Zealand made. Their attention to detail, extensive knowledge and range of clothing ensures that every customer walks away satisfied. Seeing our clients dressed in contemporary, appropriate and well fitting clothing is a source of great pride to us.
Te Atatu Menswear is for any man interested in looking good for any occasion, be it for work, a family wedding or just for that special night out. Maybe your man likes to look good at all times, even going to the gym. We cater for all needs.
Te Atatu Menswear, 50 years of quality and service you can trust.', 'Te Atatu Menswear was first opened by Reg Buscomb and later joined by his son Malcolm, and Malcolm’s wife, Wilma. It is located on Te Atatu Peninsula, an easy location to get to get to from anywhere.', NULL, NULL, NULL)

--##Load hrsHours
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Monday', '09:00:00', '17:30:00')
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Tuesday', '09:00:00', '17:30:00')
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Wednesday', '09:00:00', '17:30:00')
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Thursday', '09:00:00', '17:30:00')
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Friday', '09:00:00', '17:30:00')
INSERT INTO [hrsHours]([hrsIDorg], [hrsDate], [hrsDay], [hrsOpen], [hrsClose])
		VALUES ('5', NULL, 'Saturday', '09:00:00', '14:00:00')

--##Load peoPeople
INSERT INTO peoPeople ([peoFirstName], [peoLasttName], [peoDateOfBirth], [peoEmail], [peoPhone], [peoAddressadd], [peoPreferredName], [peoImage])
		VALUES ('Malcolm', 'Buscomb', NULL, NULL, NULL, NULL, 'Malcolm', NULL)
INSERT INTO peoPeople ([peoFirstName], [peoLasttName], [peoDateOfBirth], [peoEmail], [peoPhone], [peoAddressadd], [peoPreferredName], [peoImage])
		VALUES ('Wilma', 'Buscomb', NULL, NULL, NULL, NULL, 'Wilma', NULL)

--##load memMembers
INSERT INTO memMembers ([memIDorg],[memIDpeo])
		VALUES ('6','1')
		INSERT INTO memMembers ([memIDorg],[memIDpeo])
		VALUES ('6','2')

--##Load offOffering
INSERT INTO offOffering ([offHeading], [offDescription], [offMake], [offModel], [offBardcode], [offImage])
		VALUES	('Red T Shirt', 'T Shirt in red colour', 'SmithsT', '2017Red', '1234567890R', NULL)
INSERT INTO offOffering ([offHeading], [offDescription], [offMake], [offModel], [offBardcode], [offImage])
		VALUES	('Blue T Shirt', 'T Shirt in blue colour', 'SmithsT', '2017Blue', '1234567890B', NULL)

--##Load ofsOfferings
INSERT INTO ofsOfferings ([ofsIDoff], [ofsIDorg])
		VALUES (1, 6) 
INSERT INTO ofsOfferings ([ofsIDoff], [ofsIDorg])
		VALUES (2, 6) 

--##Load odtOfferingDetail
INSERT INTO odtOfferingDetail (odtOfferingDetail)
		VALUES ('Colour')

--##Load ofdOfferingDetails
INSERT INTO ofdOfferingDetails ([ofdOfferingIDoff], [ofdOfferingDetailIDodt], [ofdOfferingDetailValue])
		VALUES (1, 1, 'Red')
INSERT INTO ofdOfferingDetails ([ofdOfferingIDoff], [ofdOfferingDetailIDodt], [ofdOfferingDetailValue])
		VALUES (2, 1, 'Blue')
		

--##Load catCategory
INSERT INTO catCategory ([catCategory]) VALUES ('Cafe')
INSERT INTO catCategory ([catCategory])	VALUES ('Flowers')
INSERT INTO catCategory ([catCategory])	VALUES ('Hardware')
INSERT INTO catCategory ([catCategory])	VALUES ('Toys')
INSERT INTO catCategory ([catCategory])	VALUES ('Community')
INSERT INTO catCategory ([catCategory])	VALUES ('Voluntary')
INSERT INTO catCategory ([catCategory])	VALUES ('Clothing')

--##Load ctsCategories
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (1,1)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (2,2)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (3,3)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (4,4)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (4,5)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (5,5)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (5,6)
INSERT INTO ctsCategories ([ctsIDorg], [ctsIDcat])	VALUES (6,7)

--##Load webWebsite
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('ServoCafe.TeAtatu.NZ', 1)
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('FlossyFlorist.TeAtatu.NZ', 2)
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('HammerHardware.TeAtatu.NZ',3)
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('ToyLibrary.TeAtatu.NZ', 4)
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('CommunityPatrol.TeAtatu.NZ', 5)
INSERT INTO [webWebsite] ([webWebsiteURL], [webOrganisationIDorg])
		VALUES ('TeAtatuMenswear.TeAtatu.NZ', 6)

--##Load wbsWebsiteSections
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('AboutUs')
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('History')
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('GiveALittle')
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('Location')
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('OurPeople')
INSERT INTO [wbsWebsiteSections] ([wbsSectionName]) VALUES ('Offerings')


--##Load wsiWebsiteSectionsIncluded
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (4,1)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (4,2)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (4,3)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (4,4)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (4,5)

INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (5,1)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (5,2)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (5,3)

INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (6,1)
INSERT INTO [wsiWebsiteSectionsIncluded] ([wsiWebsiteIDweb], [wsiSectionIDwbs]) VALUES (6,6)

--SELECT * FROM [addAddress]
SELECT * FROM [orgOrganisation]
--SELECT * FROM [hrsHours]
--SELECT * FROM [peoPeople]			SELECT * FROM [memMembers]
--SELECT * FROM [offOffering]		SELECT * FROM [ofsOfferings]		SELECT * FROM [odtOfferingDetail]	SELECT * FROM [ofdOfferingDetails]
--SELECT * FROM [catCategory]		SELECT * FROM [ctsCategories]
SELECT * FROM [webWebsite]		SELECT * FROM [wbsWebsiteSections]	SELECT * FROM [wsiWebsiteSectionsIncluded]

