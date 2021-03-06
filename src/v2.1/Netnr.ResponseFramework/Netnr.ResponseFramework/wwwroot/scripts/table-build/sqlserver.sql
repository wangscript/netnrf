/****** Object:  Table [dbo].[SysButton]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysButton](
	[Id] [varchar](50) NOT NULL,
	[Pid] [varchar](50) NULL,
	[BtnText] [nvarchar](20) NULL,
	[BtnId] [varchar](50) NULL,
	[BtnClass] [varchar](50) NULL,
	[BtnIcon] [varchar](50) NULL,
	[BtnOrder] [int] NULL,
	[Status] [int] NULL,
	[Describe] [nvarchar](200) NULL,
	[BtnGroup] [int] NULL,
 CONSTRAINT [PK_SYSBUTTON] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysLog]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysLog](
	[Id] [varchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Nickname] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[LogContent] [nvarchar](200) NULL,
	[Url] [varchar](500) NULL,
	[Ip] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[BrowserName] [nvarchar](50) NULL,
	[SystemName] [nvarchar](50) NULL,
	[LogGroup] [int] NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_SYSLOG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[Id] [varchar](50) NOT NULL,
	[Pid] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Url] [varchar](200) NULL,
	[MenuOrder] [int] NULL,
	[Icon] [varchar](50) NULL,
	[Status] [int] NULL,
	[MenuGroup] [int] NULL,
 CONSTRAINT [PK_SYSMENU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[Describe] [nvarchar](200) NULL,
	[RoleGroup] [int] NULL,
	[Menus] [nvarchar](max) NULL,
	[Buttons] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_SYSROLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysTableConfig]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysTableConfig](
	[Id] [varchar](50) NOT NULL,
	[TableName] [varchar](200) NULL,
	[ColField] [varchar](200) NULL,
	[DvTitle] [nvarchar](200) NULL,
	[ColTitle] [nvarchar](200) NULL,
	[ColWidth] [int] NULL,
	[ColAlign] [int] NULL,
	[ColHide] [int] NULL,
	[ColOrder] [int] NULL,
	[ColFrozen] [int] NULL,
	[ColFormat] [nvarchar](200) NULL,
	[ColSort] [int] NULL,
	[ColExport] [int] NULL,
	[ColQuery] [int] NULL,
	[FormUrl] [nvarchar](max) NULL,
	[FormType] [varchar](200) NULL,
	[FormArea] [int] NULL,
	[FormSpan] [int] NULL,
	[FormHide] [int] NULL,
	[FormOrder] [int] NULL,
	[FormRequired] [int] NULL,
	[FormPlaceholder] [nvarchar](200) NULL,
	[FormValue] [nvarchar](max) NULL,
	[FormText] [nvarchar](max) NULL,
 CONSTRAINT [PK_SYSTABLECONFIG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPwd] [nvarchar](50) NULL,
	[Nickname] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Status] [int] NULL,
	[Sign] [varchar](50) NULL,
	[UserGroup] [int] NULL,
 CONSTRAINT [PK_SYSUSER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempExample]    Script Date: 2018/10/2 7:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempExample](
	[Id] [varchar](50) NOT NULL,
	[TableName] [varchar](200) NULL,
	[ColField] [varchar](200) NULL,
	[DvTitle] [nvarchar](200) NULL,
	[ColTitle] [nvarchar](200) NULL,
	[ColWidth] [int] NULL,
	[ColAlign] [int] NULL,
	[ColHide] [int] NULL,
	[ColOrder] [int] NULL,
	[ColFrozen] [int] NULL,
	[ColFormat] [nvarchar](200) NULL,
	[ColSort] [int] NULL,
	[ColExport] [int] NULL,
	[ColQuery] [int] NULL,
	[FormUrl] [nvarchar](max) NULL,
	[FormType] [varchar](200) NULL,
	[FormArea] [int] NULL,
	[FormSpan] [int] NULL,
	[FormHide] [int] NULL,
	[FormOrder] [int] NULL,
	[FormRequired] [int] NULL,
	[FormPlaceholder] [nvarchar](200) NULL,
	[FormValue] [nvarchar](max) NULL,
	[FormText] [nvarchar](max) NULL,
 CONSTRAINT [PK_TEMPEXAMPLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'00000000-0000-0000-0000-000000000000', N'批处理', N'list_Batch', N'btn btn-sm btn-danger', N'fa fa-paint-brush', 40, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'3636B071-CE52-4551-BA67-4F982D14CD7C', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'导入', N'm_Import', N'', N'fa fa-level-down blue', 82, 1, N'', 5)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131', N'00000000-0000-0000-0000-000000000000', N'删除', N'm_Del', N'btn btn-sm  btn-danger', N'fa fa-remove', 4, 1, NULL, 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'3C6F626F-8D8E-46EE-B02A-0C90CFA90E02', N'00000000-0000-0000-0000-000000000000', N'启用', N'm_Start', N'btn btn-sm  btn-success', N'fa fa-play', 9, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'4674735D-B762-4876-8DE1-31AD7CD023F4', N'00000000-0000-0000-0000-000000000000', N'作废', N'm_Void', N'btn btn-sm  btn-default', N'fa fa-trash', 12, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'4FC96135-26B5-46D7-B809-747AD71F2A21', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'表单配置', N'list_Config_Form', N'', N'fa fa-table orange', 92, 1, N'', 4)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'58F7DA5E-37F8-4648-80F3-998E702A4D91', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量启用', N'list_Batch_Start', N'', N'fa fa-play green', 41, 1, N'', 2)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E', N'00000000-0000-0000-0000-000000000000', N'查看', N'm_See', N'btn btn-sm  btn-primary', N'fa fa-credit-card', 5, 1, NULL, 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'609287B6-4B59-4E59-A822-B8C1087BB603', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'导出', N'm_Export', N'', N'fa fa-file-excel-o green', 85, 1, N'', 3)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'73CF6246-4429-4EF2-A0DA-F86F96B9BEBB', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量停用', N'list_Batch_Stop', N'', N'fa fa-stop red', 42, 1, N'', 2)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'807FF920-37AA-40F7-92BC-3FC894D4D7A3', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量删除', N'list_Batch_Del', N'', N'fa fa-remove red', 45, 1, N'', 3)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'85C51241-19D1-4BD0-A35B-DB570ACD0E85', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'打印', N'm_Print', N'', N'fa fa-print green', 86, 1, N'', 3)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'90ED8666-0961-426D-B582-E08C43EEE9E1', N'00000000-0000-0000-0000-000000000000', N'增加', N'm_Add', N'btn btn-sm btn-primary', N'fa fa-plus', 2, 1, NULL, 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'936D642A-CD7B-4A0E-837F-B4630A1BE894', N'00000000-0000-0000-0000-000000000000', N'参数设置', N'm_ParaSet', N'btn btn-sm  btn-success', N'fa fa-gear', 15, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'99A7F6EB-69BD-4167-B647-B10D3E12A3F3', N'00000000-0000-0000-0000-000000000000', N'修改', N'm_Edit', N'btn btn-sm btn-warning', N'fa fa-edit', 3, 1, NULL, 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'9B2265A4-A01F-48E8-9373-A6A294FCC1B7', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'关闭批处理', N'list_Batch_Close', N'', N'fa fa-mail-reply orange', 47, 1, N'', 4)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'9BD9FE69-430B-4754-BF00-1DE1D117C384', N'00000000-0000-0000-0000-000000000000', N'停用', N'm_Stop', N'btn btn-sm  btn-warning', N'fa fa-stop', 10, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'9F128382-9A3E-42FB-89E7-D12E5D581584', N'00000000-0000-0000-0000-000000000000', N'弃废', N'm_UnVoid', N'btn btn-sm  btn-danger', N'fa fa-reply', 13, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'A04A57A2-014C-4D47-A6A2-B5018ED286CB', N'00000000-0000-0000-0000-000000000000', N'刷新', N'm_Reload', N'btn btn-sm  btn-info', N'fa fa-refresh', 39, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'ACD7FC7F-DE75-4502-B619-CF6BDA16CB9A', N'00000000-0000-0000-0000-000000000000', N'权限设置', N'm_Auth', N'btn btn-sm  btn-success', N'fa fa-gear', 14, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'AE0D0298-FE28-405F-82AB-00E310FFE9C2', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'表格配置', N'list_Config_Table', N'', N'fa fa-table orange', 91, 1, N'', 4)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'B97248C7-F53A-4289-BF06-A05E8009199B', N'00000000-0000-0000-0000-000000000000', N'切换', N'm_Switch', N'btn btn-sm  btn-primary', N'fa fa-exchange', 20, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'C42B2ECC-3A18-495B-9BC6-B315FEA5A951', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量修改', N'list_Batch_Edit', N'', N'fa fa-edit orange', 44, 1, N'', 3)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'00000000-0000-0000-0000-000000000000', N'更多', N'list_More', N'btn btn-sm  btn-primary', N'fa fa-ellipsis-h', 80, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'D3A31A0C-C842-4709-82DD-A33B0253A462', N'00000000-0000-0000-0000-000000000000', N'保存', N'm_Save', N'btn btn-sm  btn-success', N'fa fa-save', 6, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'EAED8E4A-E6DA-4075-883F-8B5559B7A9AD', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'上传附件', N'list_Upload', NULL, N'fa fa-cloud-upload blue', 83, 1, NULL, 5)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'ED6830FD-DFD5-4B48-A155-76C8D7D6FEA4', N'00000000-0000-0000-0000-000000000000', N'取消', N'm_Cancel', N'btn btn-sm  btn-danger', N'fa fa-reply', 7, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'EFE021E2-30FE-4500-9BF6-52611F1AAA4A', N'00000000-0000-0000-0000-000000000000', N'查询', N'm_Query', N'btn btn-sm  btn-success', N'fa fa-search', 1, 1, N'', 1)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'复制并新增', N'm_Copy', N'', N'fa fa-copy blue', 81, 1, N'', 2)
INSERT [dbo].[SysButton] ([Id], [Pid], [BtnText], [BtnId], [BtnClass], [BtnIcon], [BtnOrder], [Status], [Describe], [BtnGroup]) VALUES (N'FA51A36A-69DD-4838-AD03-EFA8F038F23F', N'00000000-0000-0000-0000-000000000000', N'审核', N'm_Check', N'btn btn-sm  btn-info', N'fa fa-check-square-o', 11, 1, N'', 1)

INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'1CDBF142-7F5C-42E8-A426-370BF4542224', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'静态模态框', N'/rf/modal', 4, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'00000000-0000-0000-0000-000000000000', N'系统设置', NULL, 9, N'fa-cog', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'00000000-0000-0000-0000-000000000000', N'RF框架', N'', 8, N'fa-reddit-alien', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'601C6500-808A-426B-9658-6BA830396AE3', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'角色管理', N'/setting/sysrole', 1, N'fa-mortar-board (alias)', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'60C478C8-B4B7-471F-AE7F-62DF7A6C44D4', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'操作日志', N'/setting/syslog', 3, N'fa-file-text-o', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'688BE98C-3D78-4B4D-A160-91476407599F', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'表格', N'', 2, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'6C9E2090-B115-4D3E-948B-E5829A1886CF', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'表配置', N'/setting/systableconfig', 4, N'fa-cog', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'8120ACDF-0642-4EA0-8BEC-83306D744319', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'用户管理', N'/setting/sysuser', 2, N'fa-user', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'813984B9-06CA-4D85-AD82-3C4AD2CB834E', N'CAAFB396-C5F2-406A-9808-6B089E20F265', N'表管理', N'/tool/tablemanage', 1, N'fa-database', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'89EB0D3E-5BAA-494E-AD49-7FE247405CDA', N'688BE98C-3D78-4B4D-A160-91476407599F', N'TreeGrid', N'/rf/treegrid', 2, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'A40C1D01-C682-483F-AF87-CD843AA457C7', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'表配置示例', N'/rf/tce', 1, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'B27D2434-DC15-4EFA-A586-E11DF23D5344', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'静态表单', N'/rf/form', 3, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'CAAFB396-C5F2-406A-9808-6B089E20F265', N'00000000-0000-0000-0000-000000000000', N'工具箱', N'', 8, N'fa-wrench', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'DF9CFA05-847A-43B6-8119-E8FC7AE04734', N'688BE98C-3D78-4B4D-A160-91476407599F', N'DataGrid', N'/rf/datagrid', 1, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'F5415EAE-694F-4332-B259-E86BDC54AA09', N'688BE98C-3D78-4B4D-A160-91476407599F', N'PropertyGrid', N'/rf/propertygrid', 3, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([Id], [Pid], [Name], [Url], [MenuOrder], [Icon], [Status], [MenuGroup]) VALUES (N'F8C1C161-F1FC-4729-A00C-4A9893BF8209', N'00000000-0000-0000-0000-000000000000', N'系统桌面', N'/home/desk', 1, N'fa-home', 1, 1)
INSERT [dbo].[SysRole] ([Id], [Name], [Status], [Describe], [RoleGroup], [Menus], [Buttons], [CreateTime]) VALUES (N'58307c67-76b8-4156-bde3-f307f4da25e9', N'测试', 1, NULL, NULL, NULL, NULL, CAST(N'2018-05-20T10:23:18.973' AS DateTime))
INSERT [dbo].[SysRole] ([Id], [Name], [Status], [Describe], [RoleGroup], [Menus], [Buttons], [CreateTime]) VALUES (N'E663CE67-E9CA-4441-AB77-DC267C22C683', N'管理员', 1, NULL, 1, N'F8C1C161-F1FC-4729-A00C-4A9893BF8209,2AE7FAF0-B627-4012-8A94-C5337579C8F5,A40C1D01-C682-483F-AF87-CD843AA457C7,688BE98C-3D78-4B4D-A160-91476407599F,DF9CFA05-847A-43B6-8119-E8FC7AE04734,89EB0D3E-5BAA-494E-AD49-7FE247405CDA,F5415EAE-694F-4332-B259-E86BDC54AA09,B27D2434-DC15-4EFA-A586-E11DF23D5344,1CDBF142-7F5C-42E8-A426-370BF4542224,CAAFB396-C5F2-406A-9808-6B089E20F265,813984B9-06CA-4D85-AD82-3C4AD2CB834E,1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC,601C6500-808A-426B-9658-6BA830396AE3,8120ACDF-0642-4EA0-8BEC-83306D744319,60C478C8-B4B7-471F-AE7F-62DF7A6C44D4,6C9E2090-B115-4D3E-948B-E5829A1886CF', N'{"601C6500-808A-426B-9658-6BA830396AE3":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,ACD7FC7F-DE75-4502-B619-CF6BDA16CB9A,A04A57A2-014C-4D47-A6A2-B5018ED286CB,D2B8534F-D435-4E39-AC9D-4294AFC492DB,F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD,3636B071-CE52-4551-BA67-4F982D14CD7C,EAED8E4A-E6DA-4075-883F-8B5559B7A9AD,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21","60C478C8-B4B7-471F-AE7F-62DF7A6C44D4":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","6C9E2090-B115-4D3E-948B-E5829A1886CF":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,D2B8534F-D435-4E39-AC9D-4294AFC492DB,F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD,3636B071-CE52-4551-BA67-4F982D14CD7C,EAED8E4A-E6DA-4075-883F-8B5559B7A9AD,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21","8120ACDF-0642-4EA0-8BEC-83306D744319":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,D2B8534F-D435-4E39-AC9D-4294AFC492DB,F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD,3636B071-CE52-4551-BA67-4F982D14CD7C,EAED8E4A-E6DA-4075-883F-8B5559B7A9AD,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21","F8C1C161-F1FC-4729-A00C-4A9893BF8209":"","9C145834-8336-4E63-A34C-6DF8E5854C96":"","B27D2434-DC15-4EFA-A586-E11DF23D5344":"90ED8666-0961-426D-B582-E08C43EEE9E1,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,D3A31A0C-C842-4709-82DD-A33B0253A462,A04A57A2-014C-4D47-A6A2-B5018ED286CB","1CDBF142-7F5C-42E8-A426-370BF4542224":"90ED8666-0961-426D-B582-E08C43EEE9E1,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB","A40C1D01-C682-483F-AF87-CD843AA457C7":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,D3A31A0C-C842-4709-82DD-A33B0253A462,ED6830FD-DFD5-4B48-A155-76C8D7D6FEA4,3C6F626F-8D8E-46EE-B02A-0C90CFA90E02,9BD9FE69-430B-4754-BF00-1DE1D117C384,FA51A36A-69DD-4838-AD03-EFA8F038F23F,4674735D-B762-4876-8DE1-31AD7CD023F4,9F128382-9A3E-42FB-89E7-D12E5D581584,ACD7FC7F-DE75-4502-B619-CF6BDA16CB9A,936D642A-CD7B-4A0E-837F-B4630A1BE894,B97248C7-F53A-4289-BF06-A05E8009199B,A04A57A2-014C-4D47-A6A2-B5018ED286CB,26008EAA-4ED7-46E0-8BBF-DCF1472397E0,58F7DA5E-37F8-4648-80F3-998E702A4D91,73CF6246-4429-4EF2-A0DA-F86F96B9BEBB,C42B2ECC-3A18-495B-9BC6-B315FEA5A951,807FF920-37AA-40F7-92BC-3FC894D4D7A3,9B2265A4-A01F-48E8-9373-A6A294FCC1B7,D2B8534F-D435-4E39-AC9D-4294AFC492DB,F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD,3636B071-CE52-4551-BA67-4F982D14CD7C,EAED8E4A-E6DA-4075-883F-8B5559B7A9AD,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21","DF9CFA05-847A-43B6-8119-E8FC7AE04734":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","89EB0D3E-5BAA-494E-AD49-7FE247405CDA":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","F5415EAE-694F-4332-B259-E86BDC54AA09":"A04A57A2-014C-4D47-A6A2-B5018ED286CB"}', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'00158294-CDF7-4C45-8DAE-C72B9E8AB5B9', N'syslog', N'Ip', N'IP地址', N'IP地址', 110, 1, 0, 4, NULL, N'0', 1, 1, 1, NULL, N'text', 1, 1, 0, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'02A215E4-D1E7-428B-B159-72439B7C3BDB', N'sysuser', N'UserGroup', N'分组', N'分组', 100, 1, 1, 9, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 9, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0647B6E7-8DED-4B54-B47F-1C0DE55122A0', N'syslog', N'Url', N'链接', N'链接', 300, 1, 0, 8, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 6, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'079E1037-EC30-4DEB-8E4E-877FDF23562B', N'sysuser', N'UserPwd', N'密码', N'密码', 100, 1, 1, 4, NULL, N'0', NULL, 1, NULL, NULL, N'password', 1, 1, 0, 4, 1, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'087F47E1-1F61-4E49-9508-27C7D21B6401', N'syslog', N'LogContent', N'内容', N'内容', 200, 1, 0, 3, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 5, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'08FD7938-231D-4495-B683-4871504FEDBD', N'sysrole', N'Name', N'名称', N'名称', 100, 1, 0, 0, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 2, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0ACF9D2C-92B8-44DB-801B-B2E11B2B5A95', N'tempexample', N'ColAlign', N'对齐方式', N'默认值', 100, 1, 0, 2, 0, N'0', 0, 1, 1, N'dataurl_colalign', N'combobox', 1, 1, 0, 6, 0, N'', N'2', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0DDD0335-6A80-4927-B7EC-4BC9334606B2', N'tempexample', N'ColHide', N'1隐藏', N'勾选1或0', 100, 1, 0, 6, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 2, 0, N'', N'', N'勾选得到1不勾选为空')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0EF2A87F-A849-4E0D-B7F6-87087447DCC9', N'sysbutton', N'BtnIcon', N'按钮图标', N'按钮图标', 100, 1, 0, 6, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 6, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'10460273-7EDE-4897-B16E-3A3038D59CD6', N'systableconfig', N'ColHide', N'隐藏', N'隐藏', 100, 2, 0, 5, NULL, N'17', NULL, 1, NULL, N'dataurl_colhide', N'combobox', 1, 1, 0, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'10817844-1899-44E7-B41B-CD9EF4BC5465', N'tempexample', N'FormRequired', N'1必填', N'1必填', 100, 1, 0, 18, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 15, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'145E5139-3248-44CD-BD1C-21305E1394BE', N'syslog', N'Remark', N'备注', N'备注', 100, 1, 1, 10, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 12, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'15B65F50-E47B-4A3A-9042-0F3B08487EAA', N'tempexample', N'FormValue', N'初始值', N'选择角色', 100, 1, 0, 21, 0, N'0', 0, 1, 1, N'/setting/sysrole', N'modal', 1, 1, 0, 12, 1, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1638625D-601A-4FFD-8D7E-9904503C7543', N'tempexample', N'DvTitle', N'默认列标题', N'时分秒', 100, 1, 0, 7, 0, N'0', 0, 1, 1, N'', N'time', 1, 1, 0, 9, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'17EF7B21-8332-48DE-A13D-81875A2CA85B', N'systableconfig', N'FormOrder', N'排序', N'排序', 100, 2, 0, 17, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 18, 0, N'', N'100', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1A9A7B9A-B6E6-4869-BF64-C0F90019B1F0', N'tempexample', N'ColQuery', N'1查询', N'1查询', 100, 1, 0, 11, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 19, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1B239E70-4E80-4A51-95B4-3F1A347924B2', N'systableconfig', N'FormArea', N'区域', N'区域', 100, 1, 0, 14, NULL, N'col_custom_', NULL, 1, 1, N'dataurl_formarea', N'combobox', 2, 1, 0, 15, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1CA16D3D-250F-4EA9-ADB4-A3D1F202EA3B', N'systableconfig', N'ColAlign', N'对齐方式', N'对齐方式', 100, 2, 0, 3, NULL, N'col_custom_', NULL, 1, NULL, N'dataurl_colalign', N'combobox', 1, 1, 0, 5, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1DBCFF81-4399-4FE3-8B34-68ABC051747A', N'tempexample', N'FormOrder', N'排序', N'排序', 100, 1, 0, 17, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 21, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1F295B8D-2F3B-42E0-AD55-AAFB569EF8E2', N'sysrole', N'Status', N'状态', N'状态', 100, 2, 0, 1, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 2, 0, 1, NULL, NULL, NULL, N'启用角色')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'20EBB964-B9D3-47A0-913D-029A2EF40ACA', N'sysrole', N'CreateTime', N'创建时间', N'创建时间', 100, 1, 1, 8, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 8, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2501521D-BD4C-40C1-A1F4-5715BAC9E6CB', N'sysuser', N'Nickname', N'昵称', N'昵称', 100, 1, 0, 2, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 5, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'26DCC3C7-F5D8-4F4F-A525-61C7D97CB6F3', N'sysmenu', N'Pid', N'Pid', N'Pid', 100, 1, 1, 2, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 1, 2, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2810CB41-3366-475F-B7D2-D3588F7ACE23', N'tempexample', N'FormHide', N'1隐藏', N'1隐藏', 100, 1, 0, 16, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 18, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2B8BD8CC-2376-4E58-A6B5-B64FA07F1F20', N'sysmenu', N'Status', N'状态，1启用', N'状态，1启用', 100, 1, 0, 7, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 7, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2FA5047A-81B0-442A-BB64-E3653A1F2978', N'systableconfig', N'FormRequired', N'必填', N'必填', 100, 2, 0, 18, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 2, 1, 0, 19, NULL, NULL, N'0', N'是必填项')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2FC4CEAE-529F-45AC-87C8-3FC25DD62EFF', N'syslog', N'Nickname', N'昵称', N'昵称', 150, 1, 0, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 3, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'343A484B-5169-4E13-A82B-A91818D1DA03', N'syslog', N'Id', N'Id', N'Id', 100, 1, 1, 1, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'363b3f83-0caf-408b-8307-ae4cc6f298f5', N'sysuser', N'OldUserPwd', N'OldUserPwd', N'OldUserPwd', 100, 1, 1, 100, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 100, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'36CEF3AB-06C6-4B5D-950A-B99F44825B7F', N'sysbutton', N'BtnGroup', N'分组', N'分组', 100, 1, 0, 10, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 10, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'37DCF032-D8AB-41E7-B391-11937AA51332', N'systableconfig', N'ColSort', N'启用排序', N'启用排序', 100, 2, 0, 9, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 9, NULL, NULL, N'0', N'点击标题排序')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'3B8F9087-86A5-4777-A56E-5D9C98F972A4', N'sysmenu', N'Url', N'链接', N'链接', 100, 1, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 4, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'3C9BCFBC-7681-4A9F-BFB5-D8A3C4A638CD', N'sysbutton', N'Status', N'状态，1启用', N'状态，1启用', 100, 1, 0, 8, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 8, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'3F70197D-A228-4E08-98F8-79FE22E718E3', N'tempexample', N'FormType', N'输入类型', N'下拉树', 100, 1, 0, 13, 0, N'0', 0, 1, 1, N'/common/querymenu', N'combotree', 1, 1, 0, 0, 0, N'', N'F8C1C161-F1FC-4729-A00C-4A9893BF8209', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'459F9EC8-BD11-43E7-BEBB-A640714B5565', N'tempexample', N'FormArea', N'区域', N'默认多选', 100, 1, 0, 14, 0, N'0', 0, 1, 1, N'dataurl_formarea', N'combobox', 1, 1, 0, 5, 0, N'', N'1,2', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'465E5DCB-A3A9-4FFD-A257-EAB941F50DCE', N'sysbutton', N'BtnClass', N'按钮类', N'按钮类', 100, 1, 0, 5, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 5, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'469A90B4-413C-43D9-BD76-6DE270071CD4', N'systableconfig', N'ColOrder', N'排序', N'排序', 100, 2, 0, 6, 0, N'0', 1, 1, NULL, NULL, N'text', 1, 1, 0, 7, NULL, NULL, N'100', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4A6531D0-AEDA-4A43-B189-2504825252FE', N'systableconfig', N'FormText', N'显示文本', N'显示文本', 100, 1, 0, 21, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 22, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4AF908D4-6186-43B0-A616-CA364411138E', N'sysbutton', N'Pid', N'Pid', N'Pid', 100, 1, 1, 2, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 1, 2, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4B25A348-7380-485D-8682-BF2116D37BAF', N'systableconfig', N'ColFormat', N'格式化', N'格式化', 100, 1, 0, 8, NULL, N'col_custom_', NULL, 1, 1, N'dataurl_colformat', N'combobox', 1, 2, 0, 12, NULL, NULL, N'0', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4D0376A3-0149-49B7-A330-A492F1DE5169', N'systableconfig', N'FormSpan', N'跨列', N'跨列', 100, 1, 0, 15, NULL, N'col_custom_', NULL, 1, NULL, N'dataurl_formspan', N'combobox', 2, 1, 0, 16, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4EE9BF29-09AD-47E7-8CF0-31757A33195F', N'sysbutton', N'Id', N'Id', N'Id', 100, 1, 1, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 1, 1, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'52D3C3CE-0C21-483F-9A61-04D133F3BF6A', N'systableconfig', N'ColQuery', N'查询', N'查询', 100, 2, 0, 11, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 10, NULL, NULL, N'0', N'启用查询')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'536A235B-21A3-4821-B0B0-0F9A6A94F598', N'systableconfig', N'ColWidth', N'列宽', N'列宽', 100, 2, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 4, 0, N'', N'100', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'54D3A37A-EE45-4837-992C-7B97BE8412D1', N'syslog', N'UserName', N'账号', N'账号', 150, 1, 0, 0, NULL, N'0', 1, 1, 1, NULL, N'text', 1, 1, 0, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'54D67851-3992-4FDF-BF65-67449CD033E7', N'sysrole', N'RoleGroup', N'分组', N'分组', 100, 1, 1, 5, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 5, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'580FCD75-13D0-4C1A-8366-2DB38308B58C', N'sysrole', N'Buttons', N'按钮', N'按钮', 100, 1, 1, 7, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 7, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'59615B73-A6E4-431A-B881-609D0F40AAE2', N'sysbutton', N'BtnOrder', N'排序', N'排序', 100, 1, 0, 7, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'5A933E73-6FBE-486A-93D3-C53DD02F7161', N'sysmenu', N'Name', N'名称', N'名称', 100, 1, 0, 3, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 3, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'65C069D4-C2D2-48A7-BB5D-925EC8A76B96', N'syslog', N'CreateTime', N'时间', N'时间', 150, 1, 0, 5, NULL, N'0', 1, 1, 1, NULL, N'datetime', 1, 1, 0, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'6B2D1765-993D-4B31-B089-58675F98C09D', N'tempexample', N'ColTitle', N'列标题', N'年月日', 100, 1, 0, 8, 0, N'0', 0, 1, 1, N'', N'date', 1, 1, 0, 8, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'6B73EBAD-5326-4E6F-95BA-A9684642668C', N'systableconfig', N'ColExport', N'导出', N'导出', 100, 2, 0, 10, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 11, NULL, NULL, N'0', N'是导出列')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'706D6A3F-7D2E-4327-82CD-6C49ACA44199', N'tempexample', N'ColSort', N'1启用点击排序', N'默认勾选', 100, 1, 0, 9, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 3, 0, N'', N'1', N'默认选中')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'718634A7-BA9E-46D5-A91A-15B4A1815833', N'syslog', N'Action', N'动作', N'动作', 200, 1, 0, 2, NULL, N'0', 1, 1, 1, NULL, N'text', 1, 1, 0, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'72D7D6CB-AF76-414B-9384-3807FA910685', N'sysrole', N'Menus', N'菜单', N'菜单', 100, 1, 1, 6, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 6, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'7A40E5DE-4A25-40BD-BD8B-524630A87B01', N'sysuser', N'Id', N'Id', N'Id', 100, 1, 1, 1, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'7B6FC496-8F89-4F7D-BD0E-9AC07346EF7C', N'syslog', N'BrowserName', N'浏览器名称', N'浏览器名称', 100, 1, 0, 6, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'7D63D1F1-884C-439D-A973-F68D8D3C8FC4', N'tempexample', N'FormUrl', N'来源', N'年月日时分秒', 100, 1, 0, 5, 0, N'0', 0, 1, 1, N'', N'datetime', 1, 1, 0, 7, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'8E339D70-995D-4933-8056-C490CC5775A3', N'sysuser', N'Sign', N'登录标识', N'登录标识', 100, 1, 1, 8, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 8, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'8F812FCE-E03D-4C68-BDD7-A3DE64AE38B9', N'sysmenu', N'MenuOrder', N'排序', N'排序', 100, 1, 0, 5, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 5, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'9FA037EA-7125-4D19-A98E-FAA97B22477B', N'systableconfig', N'ColFrozen', N'冻结', N'冻结', 100, 2, 0, 7, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 8, NULL, NULL, N'0', N'是冻结列')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'A39B0BAA-1AAA-4A89-9BA5-E1C0E2AB65D1', N'sysbutton', N'BtnId', N'按钮ID', N'按钮ID', 100, 1, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 4, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'A961D9F3-67D3-44C6-9FDE-1E0CC31051CF', N'systableconfig', N'ColTitle', N'列标题', N'列标题', 100, 1, 0, 1, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'AA01AE44-5945-40FA-8C19-0F85D0347605', N'systableconfig', N'FormHide', N'隐藏', N'隐藏', 100, 2, 0, 16, NULL, N'17', NULL, 1, 1, N'dataurl_formhide', N'combobox', 2, 1, 0, 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'AD5218B9-50AA-42AF-BC26-F1F15D3A3985', N'sysbutton', N'Describe', N'描述', N'描述', 100, 1, 0, 9, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 9, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'AF4EC19D-14D6-4046-BAED-7116BA4A0FA2', N'sysuser', N'Status', N'状态', N'状态', 100, 2, 0, 4, NULL, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 7, NULL, NULL, NULL, N'启用账号')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B4AE0D0D-5F5D-4DAB-8591-672C3EB2A526', N'tempexample', N'ColOrder', N'排序', N'密码框', 100, 1, 0, 20, 0, N'0', 0, 1, 1, N'', N'password', 1, 1, 0, 14, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B7CB1D39-401F-4C38-9771-A649819A79F5', N'systableconfig', N'Id', N'Id', N'Id', 100, 1, 1, 1, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B8161370-A3B1-46BF-A3A1-986E8F7B70FD', N'systableconfig', N'FormPlaceholder', N'输入框提示', N'输入框提示', 100, 1, 0, 19, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 20, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'BA169D09-3A4E-4480-A50E-A6B65F31D5E8', N'sysmenu', N'MenuGroup', N'分组', N'分组', 100, 1, 0, 8, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 8, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'BCA1BBE4-44CA-4793-B214-99A6BF137F3E', N'tempexample', N'TableName', N'（虚）表名', N'文本域', 100, 1, 0, 0, 0, N'0', NULL, 1, 1, NULL, N'textarea', 1, 2, 0, 16, 1, N'请输入表名', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'C06F0970-9EEA-462F-9B1C-37782E450F05', N'tempexample', N'FormPlaceholder', N'输入框提示', N'选择人员', 100, 1, 0, 19, 0, N'0', NULL, 1, 1, N'/setting/sysuser', N'modal', 1, 1, 0, 10, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'C2A8EE35-E805-46BF-BBF7-B09EA7101679', N'sysmenu', N'Id', N'Id', N'Id', 100, 1, 1, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 1, 1, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'C6C22B95-846C-43E3-B032-CC828091F842', N'sysrole', N'Describe', N'备注', N'备注', 100, 1, 0, 2, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 2, 0, 2, NULL, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'CAE94CDD-1D87-461B-A833-22396E73568C', N'systableconfig', N'FormType', N'输入类型', N'输入类型', 100, 1, 0, 13, NULL, N'0', NULL, 1, 1, N'dataurl_formtype', N'combobox', 2, 1, 0, 14, NULL, NULL, N'text', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D0527E79-6482-4D6D-90E3-03CD9764F3CC', N'sysuser', N'UserName', N'账号', N'账号', 100, 1, 0, 1, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D1F078C7-C076-4B56-A399-D86CB02D04FA', N'systableconfig', N'FormValue', N'初始值', N'初始值', 100, 1, 0, 20, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 21, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D25C93CD-53F0-4BAE-B01C-26CA55512BAB', N'systableconfig', N'ColField', N'列键', N'列键', 100, 1, 0, 2, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D3FB79B9-22C8-4DC1-BC0F-85C681BF7656', N'tempexample', N'FormSpan', N'跨列', N'combotree', 100, 1, 0, 15, 0, N'0', 0, 1, 1, N'/common/querymenu?custom=m', N'combotree', 1, 1, 0, 1, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D52AE07E-7E03-4DCD-A7C3-9AE2BD614D64', N'tempexample', N'ColField', N'列键', N'必填项', 100, 1, 0, 1, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 13, 1, N'请输入内容，必填', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'DAE7AE2A-D6F1-487B-9863-F3A29920E023', N'tempexample', N'ColFrozen', N'1冻结', N'1冻结', 100, 1, 0, 12, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 20, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'DAF45196-E710-4100-B517-01D0AA7454FB', N'sysuser', N'CreateTime', N'创建时间', N'创建时间', 150, 1, 0, 3, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 1, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E07E0463-D6A8-4760-9611-E656D870464C', N'sysuser', N'RoleId', N'角色', N'角色', 100, 1, 0, 0, NULL, N'col_custom_', NULL, 1, 1, N'/common/queryrole', N'combobox', 1, 1, 0, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E158FE3F-9C66-48D3-BD76-DFA8C51EFE68', N'tempexample', N'FormText', N'显示文本', N'显示文本', 100, 1, 0, 22, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 22, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E8082943-A931-40D0-BAC0-8403BED3B06D', N'systableconfig', N'DvTitle', N'默认列标题', N'默认列标题', 100, 1, 0, 4, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E8D0114E-63B3-41C4-99D0-5F9AF9EF79CC', N'tempexample', N'Id', N'Id', N'Id', 100, 1, 1, 11, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E9C6BCA5-42B4-4B12-9EBD-BF965CA61522', N'sysrole', N'Id', N'Id', N'Id', 100, 1, 1, 1, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E9E6345A-EE33-4B25-834D-8748D252B2F1', N'systableconfig', N'FormUrl', N'来源（URL）', N'来源（URL）', 100, 1, 0, 12, NULL, N'0', NULL, 1, 1, N'/common/querymenu', N'text', 2, 1, 0, 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'ECBA2838-2BF4-4BCD-A945-B3178A162805', N'syslog', N'SystemName', N'操作系统', N'操作系统', 100, 1, 0, 7, NULL, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'ED3223EE-EC2F-4ACC-9A8A-85109AC9A1BE', N'sysbutton', N'BtnText', N'按钮文本', N'按钮文本', 100, 1, 0, 3, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 3, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F08489C7-6A0F-4C5D-A81E-9EE6621994AC', N'systableconfig', N'TableName', N'（虚）表名', N'（虚）表名', 150, 1, 0, 0, 1, N'0', 1, 1, 1, NULL, N'text', 1, 1, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F7A57E11-3B98-43F8-993A-47E6733C9F3C', N'tempexample', N'ColExport', N'1导出', N'1导出', 100, 1, 0, 10, 0, N'0', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 17, NULL, NULL, NULL, N'导出')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F821E861-BB7B-4D20-915F-1B35EFA68ECC', N'tempexample', N'ColWidth', N'列宽', N'列宽', 100, 1, 0, 4, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 11, 0, N'', N'100', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F94BB656-CED1-4C48-A01E-8A38CDD6AFB5', N'syslog', N'LogGroup', N'分组', N'分组', 100, 1, 1, 9, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 11, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'FBEA8B72-B88A-4A24-B3DC-A9A5813BD9B2', N'tempexample', N'ColFormat', N'格式化', N'combobox', 100, 1, 0, 3, 0, N'0', 0, 1, 1, N'dataurl_colformat', N'combobox', 1, 1, 0, 4, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'FEAE4BB7-4A5F-4F53-AE6B-996F08BE4471', N'sysmenu', N'Icon', N'图标', N'图标', 100, 1, 0, 6, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 6, 0, N'', N'', N'')
INSERT [dbo].[SysUser] ([Id], [RoleId], [UserName], [UserPwd], [Nickname], [CreateTime], [Status], [Sign], [UserGroup]) VALUES (N'0ad60901-33d9-4bda-99c3-e720dd0685d7', N'58307c67-76b8-4156-bde3-f307f4da25e9', N'test', N'098f6bcd4621d373cade4e832627b4f6', N'test', CAST(N'2018-04-21T19:49:51.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[SysUser] ([Id], [RoleId], [UserName], [UserPwd], [Nickname], [CreateTime], [Status], [Sign], [UserGroup]) VALUES (N'F9A19BAB-49C3-4131-AEFC-FB80FAAE579A', N'E663CE67-E9CA-4441-AB77-DC267C22C683', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'管理员', CAST(N'2018-02-14T09:33:00.000' AS DateTime), 1, NULL, 1)
ALTER TABLE [dbo].[SysRole] ADD  CONSTRAINT [DF_SysRole_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColOrder]  DEFAULT ((0)) FOR [ColOrder]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColFrozen]  DEFAULT ((0)) FOR [ColFrozen]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColSort]  DEFAULT ((0)) FOR [ColSort]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColExport]  DEFAULT ((0)) FOR [ColExport]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColQuery]  DEFAULT ((0)) FOR [ColQuery]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_FormRequired]  DEFAULT ((0)) FOR [FormRequired]
GO
ALTER TABLE [dbo].[SysUser] ADD  CONSTRAINT [DF_SysUser_Status]  DEFAULT ((0)) FOR [Status]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'BtnGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统按钮表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Nickname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Action'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'LogContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览器名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'BrowserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'SystemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'LogGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'MenuOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'MenuGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统菜单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'RoleGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Menus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Buttons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'（虚）表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'DvTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对齐方式 1左，2中，3右' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColAlign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColFrozen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式化' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColFormat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1启用点击排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1导出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColExport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColQuery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跨列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormSpan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入框提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormPlaceholder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'UserPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Nickname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'UserGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'（虚）表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'DvTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对齐方式 1左，2中，3右' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColAlign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColFrozen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式化' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColFormat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1启用点击排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1导出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColExport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColQuery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跨列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormSpan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入框提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormPlaceholder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormText'
GO