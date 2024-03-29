/****** Object:  Table [dbo].[de_learn2_orders]    Script Date: 04/03/2024 20:16:04 ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[de_learn2_orders](
	[C_id] [int] NOT NULL,
	[C_name] [varchar](50) NULL,
	[C_product] [varchar](50) NULL,
	[E_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1001, N'Customer1', N'ProductA', 1)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1002, N'Customer2', N'ProductB', 2)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1003, N'Customer3', N'ProductC', 2)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1004, N'Customer4', N'ProductD', 3)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1005, N'Customer5', N'ProductA', 1)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1006, N'Customer6', N'ProductB', 4)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1007, N'Customer7', N'ProductB', 5)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1008, N'Customer8', N'ProductD', 3)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (1009, N'Customer9', N'ProductA', 6)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10010, N'Customer10', N'ProductB', 7)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10011, N'Customer11', N'ProductC', 8)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10013, N'Customer12', N'ProductA', 9)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10015, N'Customer13', N'ProductB', 10)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10016, N'Customer14', N'ProductD', 11)
INSERT [dbo].[de_learn2_orders] ([C_id], [C_name], [C_product], [E_id]) VALUES (10017, N'Customer15', N'ProductD', 11)
GO
ALTER TABLE [dbo].[de_learn2_orders]  WITH CHECK ADD FOREIGN KEY([E_id])
REFERENCES [dbo].[de_learn2_Employees] ([E_id])
GO*/
WITH CTE AS (
    SELECT C_name,
           ROW_NUMBER() OVER (PARTITION BY C_name ORDER BY (SELECT NULL)) AS RowNum
    FROM dbo.de_learn2_orders
)
DELETE FROM CTE WHERE RowNum > 1;
select * from dbo.de_learn2_orders;
