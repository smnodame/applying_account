USE [Test]
GO
/****** Object:  StoredProcedure [dbo].[DeleteNoSuccessSP]    Script Date: 2/12/2017 1:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteNoSuccessSP]
	@pCustAcc nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

   
	delete from [dbo].[TypeCareer]  where ID in (SELECT b.ID
  FROM [Test].[dbo].[CareerInformation] a  join [dbo].[TypeCareer] b on a.ID= b.ID where CustNo like	N'%'+	@pCustAcc and b.Code='990')
delete	[dbo].[Account]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[AddrAnother]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[AddrCurrent]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[AddrWork]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[Attorney]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[CareerInformation]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[CustInformation]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[InforCorporate]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[InforPayment]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[LimitAccount]			where	CustNo	like	N'%'+	@pCustAcc
delete	[dbo].[RefPerSonInformation]			where	CustNo	like	N'%'+	@pCustAcc
delete [dbo].[GenerateLink] where	CustNo	like	N'%'+	@pCustAcc
END

GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/12/2017 1:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[CustNo] [nvarchar](50) NOT NULL,
	[draft_date] [nvarchar](50) NULL,
	[type_Account] [nvarchar](50) NULL,
	[total_limit] [decimal](18, 2) NULL,
	[a_1] [bit] NULL,
	[a_2] [bit] NULL,
	[a_3] [bit] NULL,
	[CustNo_Mate] [nvarchar](50) NULL,
	[SendAddr] [nvarchar](50) NULL,
	[suggester_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddrCurrent]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddrCurrent](
	[CustNo] [nvarchar](50) NOT NULL,
	[NameLocal] [nvarchar](50) NULL,
	[No] [nvarchar](50) NULL,
	[TypeIDAdrr] [int] NOT NULL,
	[Street] [nvarchar](50) NULL,
	[Building] [nvarchar](50) NULL,
	[Alley] [nvarchar](50) NULL,
	[Locality] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[TelPhone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_AddrCurrent] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC,
	[TypeIDAdrr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attorney]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attorney](
	[CustNo] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IDCard] [nvarchar](50) NULL,
	[IDGovernment] [nvarchar](50) NULL,
	[Another] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Expired] [nvarchar](50) NULL,
	[CreateDate] [nvarchar](50) NULL,
	[relationship] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attorney] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CareerInformation]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareerInformation](
	[CustNo] [nvarchar](50) NOT NULL,
	[ID] [int] NULL,
	[Business] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[Salary] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[OtherIncome] [nvarchar](50) NULL,
	[OtherSourcesIncome] [nvarchar](50) NULL,
	[AnnualSales] [nvarchar](50) NULL,
	[Political] [bit] NULL,
	[PoliticalPosition] [nvarchar](50) NULL,
 CONSTRAINT [PK_CareerInformation] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustInformation]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustInformation](
	[CustNo] [nvarchar](50) NOT NULL,
	[Prefix1] [nvarchar](50) NULL,
	[FName1] [nvarchar](50) NULL,
	[LName1] [nvarchar](50) NULL,
	[Prefix2] [nvarchar](50) NULL,
	[FName2] [nvarchar](50) NULL,
	[LName2] [nvarchar](50) NULL,
	[BirthDate] [nvarchar](50) NULL,
	[IDCard] [nvarchar](50) NULL,
	[IDGovernment] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[PassportNo] [nvarchar](50) NULL,
	[Expired] [nvarchar](50) NULL,
	[CreateDate] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[Guilty] [bit] NULL,
	[GuiltyDes] [nvarchar](50) NULL,
	[GuiltyYear] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustInformation] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenerateLink]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenerateLink](
	[CustNo] [nvarchar](50) NOT NULL,
	[Link] [nvarchar](2000) NULL,
	[htmlGen] [nvarchar](200) NULL,
 CONSTRAINT [PK_GenerateLink] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InforCorporate]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InforCorporate](
	[CustNo] [nvarchar](50) NOT NULL,
	[typecompany] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[RegisterDate] [nvarchar](50) NULL,
	[RegisterNo] [nvarchar](50) NULL,
	[RegisteCountry] [nvarchar](50) NULL,
	[TaxID] [nvarchar](50) NULL,
	[typebisiness] [nvarchar](50) NULL,
	[RegisteredCapital] [nvarchar](50) NULL,
	[Paid_up_capital] [nvarchar](50) NULL,
	[Another1] [nvarchar](500) NULL,
	[Another2] [nvarchar](500) NULL,
 CONSTRAINT [PK_InforCorporate] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InforPayment]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InforPayment](
	[CustNo] [nvarchar](50) NOT NULL,
	[ATS] [bit] NULL,
	[Bank_1] [nvarchar](50) NULL,
	[Branch1] [nvarchar](50) NULL,
	[AccountN01] [nvarchar](50) NULL,
	[TypeAccount1] [nvarchar](50) NULL,
	[e_Dividend] [bit] NULL,
	[Bank2] [nvarchar](50) NULL,
	[Branch2] [nvarchar](50) NULL,
	[AccountN02] [nvarchar](50) NULL,
	[TypeAccount2] [nvarchar](50) NULL,
 CONSTRAINT [PK_InforPayment] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LimitAccount]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LimitAccount](
	[CustNo] [nvarchar](50) NOT NULL,
	[TypeID] [int] NOT NULL,
	[Limt] [decimal](18, 2) NULL,
 CONSTRAINT [PK_LimitAccount] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC,
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RefPerSonInformation]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefPerSonInformation](
	[CustNo] [nvarchar](50) NOT NULL,
	[Prefix1] [nvarchar](50) NULL,
	[FName1] [nvarchar](50) NULL,
	[LName1] [nvarchar](50) NULL,
	[relationship] [nvarchar](50) NULL,
	[career] [nvarchar](50) NULL,
	[TypeIDAdrr] [int] NOT NULL,
 CONSTRAINT [PK_RefPerSonInformation] PRIMARY KEY CLUSTERED 
(
	[CustNo] ASC,
	[TypeIDAdrr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeAccount]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAccount](
	[TypeID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeAccount] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeAddr]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAddr](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeNameAddr] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeAddr] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeCareer]    Script Date: 2/12/2017 1:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeCareer](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeCareer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00005', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=ACC00005', N'0f4d3d55-746b-4711-b810-6596765703eb')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00006', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=ACC00005?ActivationCode=ACC00006', N'57b5d5cf-b0b5-426a-bcf7-868f16e1838b')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00007', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=08db0839-0342-4b03-b69f-abf853f02a4a', N'08db0839-0342-4b03-b69f-abf853f02a4a')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00008', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=9277c86c-efda-43fd-8863-baa38729a1fd', N'9277c86c-efda-43fd-8863-baa38729a1fd')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00009', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=5b760a2f-d6e8-425b-96a6-425067db2601', N'5b760a2f-d6e8-425b-96a6-425067db2601')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00010', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=ACC00005?ActivationCode=8bab92e5-dc74-49d9-9dba-773736dc4921', N'8bab92e5-dc74-49d9-9dba-773736dc4921')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00011', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=ac6b8f35-e810-413f-9db7-fb6718acf501', N'ac6b8f35-e810-413f-9db7-fb6718acf501')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00012', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=3291fce5-defe-4107-a4df-21e621b07381', N'3291fce5-defe-4107-a4df-21e621b07381')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00013', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=3bdfc68e-7a73-458b-a89a-73054da6bbfc', N'3bdfc68e-7a73-458b-a89a-73054da6bbfc')
INSERT [dbo].[GenerateLink] ([CustNo], [Link], [htmlGen]) VALUES (N'ACC00015', N'http://localhost:52365/RegisteredData.aspx?ActivationCode=e3603b98-dd80-4f37-80b2-8a78d276349f', N'e3603b98-dd80-4f37-80b2-8a78d276349f')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (1, N'บัญชีเงินสด (Cash)')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (2, N'บัญชีฝาก (Cash Balance)')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (3, N'บัญชีมาร์จิน (Credit Balance)')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (4, N'บัญชีซื้อขายสัญญาซื้อขายล่วงหน้า (Derivatives) ')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (5, N'บัญชียืมและให้ยืมหลักทรัพย์ (SBL)')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (6, N'ตราสารหนี้')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (7, N'บัญชีซื้อขายกองทุน')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (8, N'อื่นๆ')
INSERT [dbo].[TypeAccount] ([TypeID], [TypeName]) VALUES (9, N'ยินยอมให้บริษัททำธุรกรรมการยืม')
SET IDENTITY_INSERT [dbo].[TypeAddr] ON 

INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (1, N'ที่อยู่ปัจจุบัน')
INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (2, N'ที่อยู่ที่ทำงาน')
INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (3, N'ที่อยู่ตามทะเบียนบ้าน')
INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (4, N'ที่อยู่อื่นๆ')
INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (5, N'ที่อยู่บุคคลอื่น')
INSERT [dbo].[TypeAddr] ([TypeID], [TypeNameAddr]) VALUES (6, N'ที่อยู่ปัจจุบัน2')
SET IDENTITY_INSERT [dbo].[TypeAddr] OFF
INSERT [dbo].[TypeCareer] ([ID], [Code], [Description]) VALUES (1, N'910', N'เจ้าของกิจการ/ค้าขาย ')
INSERT [dbo].[TypeCareer] ([ID], [Code], [Description]) VALUES (2, N'920', N'ลูกจ้าง/พนักงานเอกชน')
INSERT [dbo].[TypeCareer] ([ID], [Code], [Description]) VALUES (3, N'930', N'ข้าราชการ/พนักงานรัฐวิสาหกิจ')
INSERT [dbo].[TypeCareer] ([ID], [Code], [Description]) VALUES (5, N'990', N'รับจ๊อบพิเศษ')
