USE [COD]
GO
/****** Object:  Table [dbo].[cartitems]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cartitems](
	[cartitemid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[productname] [nvarchar](100) NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log](
	[id] [int] IDENTITY(1,1001) NOT NULL,
 CONSTRAINT [PK_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[active] [bit] NULL,
	[createddate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productid] [int] NOT NULL,
	[productname] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[imageurl] [nvarchar](150) NOT NULL,
	[price] [decimal](18, 3) NOT NULL,
	[category] [varchar](75) NULL,
	[quantity] [decimal](10, 5) NULL,
	[mrp] [decimal](16, 5) NULL,
	[supplier] [varchar](100) NULL,
	[productcode] [varchar](50) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reg]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg](
	[registerId] [int] NULL,
	[fullname] [nvarchar](50) NULL,
	[mobileno] [varchar](15) NULL,
	[emailid] [nvarchar](50) NULL,
	[createdDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
	[regId] [int] IDENTITY(1001,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 15-10-2021 21:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[registerId] [int] IDENTITY(1001,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[mobileno] [varchar](15) NOT NULL,
	[emailid] [nvarchar](50) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[modifiedDate] [datetime] NULL,
	[password] [nvarchar](20) NULL,
	[location] [nvarchar](50) NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[registerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
