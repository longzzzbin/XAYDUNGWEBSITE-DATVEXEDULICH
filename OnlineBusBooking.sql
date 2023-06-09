create DATABASE [OnlineBusBooking]
GO
USE [OnlineBusBooking]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleMaster](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[BusId] [int] NULL,
	[Date] [varchar](50) NULL,
	[Fare] [decimal](18, 3) NULL,
	[EstimatedTime] [varchar](50) NULL,
	[ArivalTime] [varchar](50) NULL,
	[DepartureTime] [varchar](50) NULL,
	[RouteID] [int] NULL,
	[BookedSeats] [int] NULL,
	[AvailableSeats] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduleMaster] ON
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (1, 1, N'01/04/2023', CAST(300.000 AS Decimal(18, 3)), N'03hr05mints', N'01:05 PM', N'03:00 PM', 1, 0, 29)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (2, 2, N'01/04/2023', CAST(150.000 AS Decimal(18, 3)), N'1hr50mins', N'10:00 AM', N'11:50 AM', 2, 0, 35)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (3, 3, N'01/04/2023', CAST(150.000 AS Decimal(18, 3)), N'1hr50mins', N'10:10 AM', N'12:00 PM', 3, 0, 16)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (4, 4, N'02/04/2023', CAST(300.000 AS Decimal(18, 3)), N'2hr', N'08:00 AM', N'10:00 AM', 4, 0, 29)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (5, 5, N'02/04/2023', CAST(400.000 AS Decimal(18, 3)), N'04hr05mints', N'06:00 AM', N'09:00 AM', 5, 2, 43)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (6, 1, N'03/04/2023', CAST(300.000 AS Decimal(18, 3)), N'03hr05mints', N'01:05 PM', N'03:00 PM', 1, 0, 29)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (7, 2, N'04/04/2023', CAST(150.000 AS Decimal(18, 3)), N'01hr50mints', N'10:00 AM', N'11:50 AM', 2, 0, 35)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (8, 3, N'04/04/2023', CAST(150.000 AS Decimal(18, 3)), N'01hr50mints', N'10:10 AM', N'12:00 PM', 3, 4, 12)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (9, 4, N'05/04/2023', CAST(300.000 AS Decimal(18, 3)), N'2hr', N'08:00 AM', N'10:00 AM', 4, 2, 27)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (10, 5, N'09/04/2023', CAST(400.000 AS Decimal(18, 3)), N'04hr05mints', N'06:00 AM', N'09:00 AM', 5, 0, 45)
INSERT [dbo].[ScheduleMaster] ([ScheduleId], [BusId], [Date], [Fare], [EstimatedTime], [ArivalTime], [DepartureTime], [RouteID], [BookedSeats], [AvailableSeats]) VALUES (11, 1, N'10/04/2023', CAST(300.000 AS Decimal(18, 3)), N'03hr05mints', N'01:05 PM', N'03:00 PM', 1, 0, 29)
SET IDENTITY_INSERT [dbo].[ScheduleMaster] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RouteDetails](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[BusID] [int] NULL,
 CONSTRAINT [PK_RouteDetails] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RouteDetails] ON
INSERT [dbo].[RouteDetails] ([RouteID], [Origin], [Destination], [CreatedDate], [BusID]) VALUES (1, N'Ha Noi', N'Ninh Binh', CAST(0x0000AFE0010B1F4F AS DateTime), 1)
INSERT [dbo].[RouteDetails] ([RouteID], [Origin], [Destination], [CreatedDate], [BusID]) VALUES (2, N'Ha Noi', N'Bac Ninh', CAST(0x0000AFE0010B1F4F AS DateTime), 2)
INSERT [dbo].[RouteDetails] ([RouteID], [Origin], [Destination], [CreatedDate], [BusID]) VALUES (3, N'Ha Noi', N'Hai Phong', CAST(0x0000AFE0010B1F4F AS DateTime), 3)
INSERT [dbo].[RouteDetails] ([RouteID], [Origin], [Destination], [CreatedDate], [BusID]) VALUES (4, N'Ha Noi', N'Vinh', CAST(0x0000AFE0010B1F4F AS DateTime), 4)
INSERT [dbo].[RouteDetails] ([RouteID], [Origin], [Destination], [CreatedDate], [BusID]) VALUES (5, N'Ha Noi', N'Huế', CAST(0x0000AFE0010B1F4F AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[RouteDetails] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[regId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](50) NULL,
	[Picode] [varchar](15) NULL,
	[Contact] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[regId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON
INSERT [dbo].[Registration] ([regId], [Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (1, N'Hue', N'Nguyen', N'hue@gmail.com', N'Ha Dong', N'Ha Noi', N'400065', N'0123456789', N'12345', CAST(0x0000AFE0010B1F4F AS DateTime))
INSERT [dbo].[Registration] ([regId], [Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (2, N'Nghia', N'Phung', N'nghia@gmail.com', N'Thanh Xuan', N'Ha Noi', N'400064', N'0147852369', N'12345', CAST(0x0000AFE0010B1F4F AS DateTime))
INSERT [dbo].[Registration] ([regId], [Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (3, N'Thanh', N'Nguyen', N'thanh@gmail.com', N'Cau Giay', N'Ha Noi', N'401209', N'0741852963', N'12345', CAST(0x0000AFE0010B1F4F AS DateTime))
INSERT [dbo].[Registration] ([regId], [Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (4, N'Long', N'Nguyen', N'long@gmail.com', N'Ba Dinh', N'Ha Noi', N'400065', N'0321456987', N'12345', CAST(0x0000AFE0010B1F4F AS DateTime))
INSERT [dbo].[Registration] ([regId], [Fname], [Lname], [EmailId], [Address], [City], [Picode], [Contact], [Password], [CreatedDate]) VALUES (5, N'Trong', N'Pham', N'trong@gmail.com', N'Hai Ba Trung', N'Ha Noi', N'400065', N'0987654321', N'12345', CAST(0x0000AFE0010B1F4F AS DateTime))
SET IDENTITY_INSERT [dbo].[Registration] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PNRDetails](
	[PNRDetailsID] [bigint] IDENTITY(1,1) NOT NULL,
	[PNRNo] [varchar](50) NULL,
	[TotalAmount] [decimal](18, 3) NULL,
	[TotalTickets] [int] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_PNRDetails] PRIMARY KEY CLUSTERED 
(
	[PNRDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PNRDetails] ON
INSERT [dbo].[PNRDetails] ([PNRDetailsID], [PNRNo], [TotalAmount], [TotalTickets], [CreatedBy]) VALUES (1, N'OR9IJW', CAST(300.000 AS Decimal(18, 3)), 2, 1)
INSERT [dbo].[PNRDetails] ([PNRDetailsID], [PNRNo], [TotalAmount], [TotalTickets], [CreatedBy]) VALUES (2, N'6422EK', CAST(800.000 AS Decimal(18, 3)), 2, 2)
INSERT [dbo].[PNRDetails] ([PNRDetailsID], [PNRNo], [TotalAmount], [TotalTickets], [CreatedBy]) VALUES (3, N'W3TBAF', CAST(150.000 AS Decimal(18, 3)), 1, 3)
INSERT [dbo].[PNRDetails] ([PNRDetailsID], [PNRNo], [TotalAmount], [TotalTickets], [CreatedBy]) VALUES (4, N'8DB5W0', CAST(600.000 AS Decimal(18, 3)), 2, 4)
INSERT [dbo].[PNRDetails] ([PNRDetailsID], [PNRNo], [TotalAmount], [TotalTickets], [CreatedBy]) VALUES (5, N'4ZEV3G', CAST(750.000 AS Decimal(18, 3)), 3, 5)
SET IDENTITY_INSERT [dbo].[PNRDetails] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PickUpStand](
	[StandId] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NULL,
	[PlaceName] [varchar](50) NULL,
	[PlaceTime] [varchar](50) NULL,
	[BusID] [int] NULL,
 CONSTRAINT [PK_PickUpStand] PRIMARY KEY CLUSTERED 
(
	[StandId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PickUpStand] ON
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (1, 1, N'Khach san ABC', N'04:00 PM', 1)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (2, 2, N'Dai hoc XYZ', N'04:50 PM', 2)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (3, 3, N'Sieu thi CCC', N'10:25 AM', 3)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (4, 4, N'TTrung tam ZZZ', N'11:00 AM', 4)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (5, 5, N'Dai hoc GGG', N'02:00 PM', 5)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (6, 6, N'Nha khach MMM', N'06:45 PM', 5)
INSERT [dbo].[PickUpStand] ([StandId], [RouteId], [PlaceName], [PlaceTime], [BusID]) VALUES (7, 7, N'Hồ FFF', N'02:30 PM', 1)
SET IDENTITY_INSERT [dbo].[PickUpStand] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityDetails](
	[CityID] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
 CONSTRAINT [PK_CityDetails] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityDetails] ON
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (1, N'Ha Noi')
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (2, N'Ninh Binh')
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (3, N'Bac Ninh')
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (4, N'Hai Phong')
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (5, N'Vinh')
INSERT [dbo].[CityDetails] ([CityID], [CityName]) VALUES (6, N'Huế')
SET IDENTITY_INSERT [dbo].[CityDetails] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusMaster](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusNo] [varchar](50) NULL,
	[BustType] [varchar](50) NULL,
	[TotalSeat] [int] NULL,
	[SeatColumn] [int] NULL,
	[SeatRow] [int] NULL,
	[BookedSeat] [int] NULL,
	[AvailableSeats] [int] NULL,
	[BusName] [varchar](50) NULL,
 CONSTRAINT [PK_BusMaster] PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO 
SET IDENTITY_INSERT [dbo].[BusMaster] ON
INSERT [dbo].[BusMaster] ([BusId], [BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (1, N'30B12345', N'29', 29, 4, 7, 0, 29, N'HN-NB')
INSERT [dbo].[BusMaster] ([BusId], [BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (2, N'30B14785', N'35', 35, 4, 9, 0, 35, N'HN-BN')
INSERT [dbo].[BusMaster] ([BusId], [BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (3, N'30A21458', N'16', 16, 4, 4, 0, 16, N'HN-HP')
INSERT [dbo].[BusMaster] ([BusId], [BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (4, N'30B03214', N'29', 29, 4, 7, 0, 29, N'HN-Vinh')
INSERT [dbo].[BusMaster] ([BusId], [BusNo], [BustType], [TotalSeat], [SeatColumn], [SeatRow], [BookedSeat], [AvailableSeats], [BusName]) VALUES (5, N'30B32017', N'45', 45, 5, 9, 0, 45, N'HN-Hue')
SET IDENTITY_INSERT [dbo].[BusMaster] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingMaster](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[BusId] [int] NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[SeatNo] [nvarchar](50) NULL,
	[TravelDate] [varchar](50) NULL,
	[Origin] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
	[BoardingID] [int] NULL,
	[Fare] [decimal](18, 3) NULL,
	[PNRNo] [varchar](50) NULL,
	[ScheduleID] [int] NULL,
 CONSTRAINT [PK_BookingMaster] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingMaster] ON
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (1, 1, 2, N'Hue', N'Nguyen', N'hue@gmail.com', N'0123456789', N'Ha Noi', N'34', N'01/04/2023', N'Ha Noi', N'Bac Ninh', 1, CAST(150.000 AS Decimal(18, 3)), N'OR9IJW', 2)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (2, 1, 2, N'Hue', N'Nguyen', N'hue@gmail.com', N'0123456789', N'Ha Noi', N'35', N'01/04/2023', N'Ha Noi', N'Bac Ninh', 1, CAST(150.000 AS Decimal(18, 3)), N'OR9IJW', 2)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (3, 2, 5, N'Nghia', N'Phung', N'nghia@gmail.com', N'0147852369', N'Ha Noi', N'32', N'02/04/2023', N'Ha Noi', N'Huế', 2, CAST(400.000 AS Decimal(18, 3)), N'6422EK', 5)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (4, 2, 5, N'Nghia', N'Phung', N'nghia@gmail.com', N'0147852369', N'Ha Noi', N'31', N'02/04/2023', N'Ha Noi', N'Huế', 2, CAST(400.000 AS Decimal(18, 3)), N'6422EK', 5)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (5, 3, 3, N'Thanh', N'Nguyen', N'thanh@gmail.com', N'0741852963', N'Ha Noi', N'5', N'04/04/2023', N'Ha Noi', N'Hai Phong', 3, CAST(150.000 AS Decimal(18, 3)), N'W3TBAF', 3)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (6, 4, 4, N'Long', N'Nguyen', N'long@gmail.com', N'0321456987', N'Ha Noi', N'33', N'05/04/2023', N'Ha Noi', N'Vinh', 4, CAST(300.00 AS Decimal(18, 3)), N'8DB5W0', 4)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (7, 4, 4, N'Long', N'Nguyen', N'long@gmail.com', N'0321456987', N'Ha Noi', N'26', N'05/04/2023', N'Ha Noi', N'Vinh', 4, CAST(300.00 AS Decimal(18, 3)), N'8DB5W0', 4)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (8, 5, 3, N'Trong', N'Pham', N'trong@gmail.com', N'0987654321', N'Ha Noi', N'11', N'04/04/2023', N'Ha Noi', N'Hai Phong', 5, CAST(150.00 AS Decimal(18, 3)), N'4ZEV3G', 3)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (9, 5, 3, N'Trong', N'Pham', N'trong@tiwari.com', N'0987654321', N'Ha Noi', N'12', N'04/04/2023', N'Ha Noi', N'Hai Phong', 5, CAST(150.00 AS Decimal(18, 3)), N'4ZEV3G', 3)
INSERT [dbo].[BookingMaster] ([BookingId], [RegId], [BusId], [Fname], [Lname], [Email], [Contact], [City], [SeatNo], [TravelDate], [Origin], [Destination], [BoardingID], [Fare], [PNRNo], [ScheduleID]) VALUES (10, 5, 3, N'Trong', N'Pham', N'trong@tiwari.com', N'0987654321', N'Ha Noi', N'13', N'04/04/2023', N'Ha Noi', N'Hai Phong', 5, CAST(150.00 AS Decimal(18, 3)), N'4ZEV3G', 3)
SET IDENTITY_INSERT [dbo].[BookingMaster] OFF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addBordingDetails](
@RouteID int,
@PlaceName varchar(50),
@PlaceTime varchar(50),
@BusID int
)
as
set nocount on
begin
insert into dbo.PickUpStand
(RouteId,PlaceName,PlaceTime,BusID)
values(@RouteID,@PlaceName,@PlaceTime,@BusID)
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispUserRegistration](  
@FName varchar(50)='',  
@LName varchar(50),  
@EmailId varchar(50),  
@Address varchar(50),  
@City varchar(50),  
@PinCode varchar(15),  
@ContactNo varchar(50),  
@Password varchar(50),  
@Ret_Val bigint output  
)  
as  
set nocount on  
begin  
if exists(select Contact from dbo.Registration where Contact=@ContactNo)  
begin  
set @Ret_Val=-1;  
end  
else  
begin  
insert into dbo.Registration  
(Fname,Lname,EmailId,Address,City,Picode,Contact,Password,CreatedDate)  
values (@FName,@LName,@EmailId,@Address,@City,@PinCode,@ContactNo,@Password,GETDATE())  
set @Ret_Val=@@IDENTITY;  
end  
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispUserLogin](
@MobileNo varchar(50),
@Password varchar(50)
)
as
set nocount on
begin
select * from dbo.Registration where Contact=@MobileNo and Password=@Password
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispUpdateBusData]( --ispGetBusDataByBusID 1
@BusID int,
@BusNo varchar(50),
@BusType varchar(50),
@seatColumn int,
@SeatRow int,
@BusName varchar(50),
@Origin varchar(50),
@Destination varchar(50)
)	
as
set nocount on
begin
update dbo.BusMaster set 
BusNo=@BusNo,BustType=@BusType,SeatColumn=@seatColumn,SeatRow=@SeatRow,BusName=@BusName
where BusId=@BusID
update dbo.RouteDetails set 
Origin=@Origin,Destination=@Destination where BusID=@BusID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispGetRouteDetails]
as
set nocount on
begin
select * from dbo.RouteDetails
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispGetPNRDetails](
@UserID int
)
as
set nocount on
begin
select * from dbo.PNRDetails where CreatedBy=@UserID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispGetCity]
as
set nocount on
begin
select * from dbo.CityDetails
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispGetBusDetailsForUpdation]
as
set nocount on
begin
select BM.BusId,BM.BusNo,BM.BusName,BM.BustType,BM.SeatColumn,BM.SeatRow,RD.Origin,RD.Destination,RD.RouteID
from dbo.BusMaster BM 
left join dbo.RouteDetails RD
on BM.BusId=RD.BusID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispGetBusDataByBusID]( --ispGetBusDataByBusID 1
@BusID int
)	
as
set nocount on
begin
select BM.BusId,BM.BusNo,BM.BustType,BM.SeatColumn,BM.BusName,BM.SeatRow,RD.Origin,RD.Destination,RD.RouteID
from dbo.BusMaster BM 
left join dbo.RouteDetails RD
on BM.BusId=RD.BusID
where BM.BusId=@BusID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispGetBookingReportByAdmin]
as
set nocount on
begin
select BM.Fname+''+BM.Lname as PaxName,BM.Email,BM.Contact,BM.SeatNo,Convert(varchar(11),CONVERT(SMALLDATETIME, BM.TravelDate, 103),13) as TravelDate,BM.Origin,BM.Destination,
Fare,UM.Fname+''+UM.Lname as BookedBy,BB.BusName From dbo.BookingMaster BM
left join dbo.BusMaster BB on  BM.BusId=BB.BusId 
left join dbo.Registration UM on  UM.regId=BM.RegId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispGetBookedSeatNo]( -- ispGetBookedSeatNo 1
@BusID int,
@TravelDate varchar(50)
)
as
set nocount on
begin
declare @scheduleId int;
select @scheduleId=ScheduleId from dbo.ScheduleMaster where BusId=@BusID and Date=@TravelDate
select isnull(SeatNo,0) as SeatNo from dbo.BookingMaster
where ScheduleId=@scheduleId
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ispGetBoardingPoints](
@BusID int
)
as
set nocount on
begin
select * from dbo.PickUpStand where BusID=@BusID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispGetAvailableBusDetails]( --ispGetAvailableBusDetails 'Mumbai','Pune','03/25/2017'
@Origin varchar(50),
@Destination varchar(50),
@TravelDate varchar(50)
)
as
set nocount on
begin
declare @scheduleid int;
select @scheduleid=ScheduleId from dbo.ScheduleMaster where Date=@TravelDate
select BM.BusId,BM.BusName,BM.BusNo,BM.SeatColumn,BM.SeatRow,BM.BustType,BM.TotalSeat,SM.AvailableSeats,SM.Fare,SM.EstimatedTime,SM.DepartureTime,SM.ArivalTime
from dbo.BusMaster BM
left join dbo.ScheduleMaster SM
on SM.BusId=BM.BusId
left join dbo.RouteDetails RD
on RD.RouteID=SM.RouteID
where SM.Date=@TravelDate and RD.Origin=@Origin and RD.Destination=@Destination and SM.ScheduleId=@scheduleid
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispAddPNRDetails](
@PNRNo varchar(50),
@TotalAmount decimal(18,2),
@TotalTicket int,
@CreatedBy int
)
as
set nocount on
begin
insert into dbo.PNRDetails 
(PNRNo,TotalAmount,TotalTickets,CreatedBy)
values(@PNRNo,@TotalAmount,@TotalTicket,@CreatedBy)
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispAddPassengerDetails](
@RegId int,
@BusId int,
@Fname varchar(50),
@Lname varchar(50),
@Email varchar(50),
@Contact varchar(50),
@City varchar(50),
@SeatNo nvarchar(50),
@TravelDate varchar(50),
@Origin varchar(50),
@Destination varchar(50),
@BoardingId int,
@Fare decimal(18,2),
@TotalSeats int,
@PNRNo varchar(50)
)
as
set nocount on
begin
declare @BookedSeat int;
declare @AvailableSeats int;
declare @scheduleID int;
select @scheduleID=ScheduleId from dbo.ScheduleMaster where Date=@TravelDate
insert into dbo.BookingMaster
(RegId,BusId,Fname,Lname,Email,Contact,City,SeatNo,TravelDate,Origin,Destination,BoardingID,Fare,PNRNo,ScheduleID)
values(@RegId,@BusId,@Fname,@Lname,@Email,@Contact,@City,@SeatNo,@TravelDate,@Origin,@Destination,@BoardingId,@Fare,@PNRNo,@scheduleID)
select @BookedSeat=BookedSeats from dbo.ScheduleMaster where ScheduleId=@scheduleID
select @AvailableSeats=AvailableSeats from dbo.ScheduleMaster where ScheduleId=@scheduleID
update dbo.ScheduleMaster set BookedSeats=(@BookedSeat+1) where ScheduleId=@scheduleID
update dbo.ScheduleMaster set AvailableSeats=(@AvailableSeats-1) where ScheduleId=@scheduleID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispAddCardDetails](
@UserID int,
@CardType varchar(20),
@BankName varchar(50),
@CVVNo varchar(10),
@CardNo nvarchar(100),
@TotalAmount decimal(18,2)
)
as
set nocount on
begin
insert into dbo.CardDetails
(UserID,CardType,BankName,CVVNo,CardNo,TotalAmount)
values(@UserID,@CardType,@BankName,@CVVNo,@CardNo,@TotalAmount)
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispAddBusSchedule]( --ispGetBusDataByBusID 1
@Date varchar(50) ,
@BusID int,
@Fare decimal(18,2),
@EstimatdTime varchar(50),
@ArrivalTime varchar(50),
@DepartureTime varchar(50),
@RouteID int
)	
as
set nocount on
begin
declare @AvailableSeats int;
select @AvailableSeats=AvailableSeats from dbo.BusMaster where BusId=@BusID 
insert into dbo.ScheduleMaster
(Date,Fare,EstimatedTime,ArivalTime,DepartureTime,RouteID,BusId,AvailableSeats,BookedSeats)
values(@Date,@Fare,@EstimatdTime,@ArrivalTime,@DepartureTime,@RouteID,@BusID,@AvailableSeats,0)
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ispAddBusDetails](
@BusNo varchar(50),
@BustType varchar(50),
@SeatColumn int,
@SeatRow int,
@Origin varchar(50),
@Destination varchar(50),
@BusName varchar(50)	
)
as
set nocount on
begin
declare @Ret_Val int;
insert into dbo.BusMaster(BusNo,BustType,TotalSeat,SeatColumn,SeatRow,BookedSeat,AvailableSeats,BusName)
values(@BusNo,@BustType,(@SeatRow*@SeatColumn),@SeatColumn,@SeatRow,0,(@SeatRow*@SeatColumn),@BusName)
set @Ret_Val=@@IDENTITY;
if(@@ROWCOUNT>0)
  begin
   insert into dbo.RouteDetails(Origin,Destination,CreatedDate,BusID) values(@Origin,@Destination,GETDATE(),@Ret_Val)
  end
if not exists (select CityName from dbo.CityDetails where CityName=@Origin)
 begin
 insert into dbo.CityDetails (CityName) values(@Origin)
 end 
 if not exists (select CityName from dbo.CityDetails where CityName=@Destination)
 begin
 insert into dbo.CityDetails (CityName) values(@Destination)
 end 
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetPassengerDetails]( --GetPassengerDetails '48TF1G'
@PNRNo varchar(50)
)
as
set nocount on
begin
select  BM.Fname,BM.Lname,BM.Contact,BM.SeatNo,BM.TravelDate,BM.Origin,BM.Destination,PS.PlaceName
from dbo.BookingMaster BM
 inner join dbo.PickUpStand PS on
 PS.StandId=BM.BoardingID and  BM.PNRNo=@PNRNo
 declare @BusID int
 select @BusID=(BusId) from dbo.BookingMaster where PNRNo=@PNRNo
 declare @BusName varchar(50)
 declare @DeptTime varchar(50)
 declare @PlaceName varchar(50)
 declare @TotalAmount decimal(18,2)
 declare @TotalTickets int;
 select @PlaceName=PlaceName from dbo.PickUpStand where BusID=@BusID
 select @BusName=BusName from dbo.BusMaster where BusId=@BusID
 select @PNRNO=PNRNo from dbo.BookingMaster where PNRNo=@PNRNo
 select @DeptTime=PlaceTime from dbo.PickUpStand where PlaceName=@PlaceName
 select @TotalAmount=TotalAmount,@TotalTickets=TotalTickets from dbo.PNRDetails where PNRNo=@PNRNo
 select @BusName as BusName,@PNRNO as PNRNo,@DeptTime as DeptTime,@TotalAmount as Amount,@TotalTickets as TotalTickets
end
GO