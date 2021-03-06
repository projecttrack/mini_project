USE [db_Alumni]
GO
/****** Object:  Table [dbo].[tbl_yop]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_yop](
	[yop_id] [int] IDENTITY(1,1) NOT NULL,
	[year] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_yop] PRIMARY KEY CLUSTERED 
(
	[yop_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_survey]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_survey](
	[que_id] [int] IDENTITY(1,1) NOT NULL,
	[que] [varchar](1000) NULL,
	[ans1] [varchar](100) NULL,
	[ans2] [varchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tbl_survey] PRIMARY KEY CLUSTERED 
(
	[que_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_stream]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_stream](
	[steram_id] [int] IDENTITY(1,1) NOT NULL,
	[stream_name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_stream] PRIMARY KEY CLUSTERED 
(
	[steram_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_req_evnt]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_req_evnt](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[re_name] [varchar](50) NULL,
	[re_log_id] [int] NULL,
	[re_date] [varchar](50) NULL,
	[re_time] [varchar](50) NULL,
	[re_location] [varchar](50) NULL,
	[ac_status] [bit] NULL,
 CONSTRAINT [PK_tbl_req_evnt] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_reg]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_reg](
	[Reg_id] [int] IDENTITY(1,1) NOT NULL,
	[log_id] [int] NULL,
	[Email] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[stream] [int] NULL,
	[yop] [int] NULL,
	[P_no] [varchar](50) NULL,
	[location] [varchar](100) NULL,
	[qual] [varchar](50) NULL,
	[about] [varchar](200) NULL,
	[w_status] [varchar](30) NULL,
	[profile_pic] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_reg] PRIMARY KEY CLUSTERED 
(
	[Reg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_msg_fr_admin]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_msg_fr_admin](
	[msg_id] [int] IDENTITY(1,1) NOT NULL,
	[stream_id] [int] NULL,
	[year_id] [int] NULL,
	[msg] [varchar](1000) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tbl_msg_fr_admin] PRIMARY KEY CLUSTERED 
(
	[msg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_login](
	[Log_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[status] [bit] NULL,
	[is_deleted] [bit] NULL,
	[created_on] [datetime] NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[Log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_gallery]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_gallery](
	[img_id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](50) NULL,
	[log_id] [int] NULL,
 CONSTRAINT [PK_tbl_gallery] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_feedback]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback] [varchar](1000) NULL,
	[log_id] [int] NULL,
 CONSTRAINT [PK_tbl_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_events]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_events](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[e_name] [varchar](50) NULL,
	[stream_id] [int] NULL,
	[yop] [int] NULL,
	[e_date] [varchar](50) NULL,
	[e_time] [varchar](50) NULL,
	[e_location] [varchar](50) NULL,
	[status] [bit] NULL,
	[created_on] [date] NULL,
 CONSTRAINT [PK_tbl_events] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_decesion]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_decesion](
	[dec_id] [int] IDENTITY(1,1) NOT NULL,
	[event_id] [int] NULL,
	[no_interested] [int] NULL,
	[no_not_int] [int] NULL,
	[no_veg] [int] NULL,
	[no_nonveg] [int] NULL,
 CONSTRAINT [PK_tbl_decesion] PRIMARY KEY CLUSTERED 
(
	[dec_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chat]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_chat](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[f_id] [int] NULL,
	[t_id] [int] NULL,
	[text] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_chat] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ans]    Script Date: 01/04/2016 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ans](
	[ans_id] [int] IDENTITY(1,1) NOT NULL,
	[que_id] [int] NULL,
	[log_id] [int] NULL,
	[answer] [varchar](30) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tbl_ans] PRIMARY KEY CLUSTERED 
(
	[ans_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_tbl_ans_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_ans] ADD  CONSTRAINT [DF_tbl_ans_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_tbl_decesion_no_interested]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_decesion] ADD  CONSTRAINT [DF_tbl_decesion_no_interested]  DEFAULT ((0)) FOR [no_interested]
GO
/****** Object:  Default [DF_tbl_decesion_no_not_int]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_decesion] ADD  CONSTRAINT [DF_tbl_decesion_no_not_int]  DEFAULT ((0)) FOR [no_not_int]
GO
/****** Object:  Default [DF_tbl_decesion_no_veg]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_decesion] ADD  CONSTRAINT [DF_tbl_decesion_no_veg]  DEFAULT ((0)) FOR [no_veg]
GO
/****** Object:  Default [DF_tbl_decesion_no_nonveg]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_decesion] ADD  CONSTRAINT [DF_tbl_decesion_no_nonveg]  DEFAULT ((0)) FOR [no_nonveg]
GO
/****** Object:  Default [DF_tbl_events_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_events] ADD  CONSTRAINT [DF_tbl_events_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_tbl_events_created_on]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_events] ADD  CONSTRAINT [DF_tbl_events_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
/****** Object:  Default [DF_tbl_login_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_login] ADD  CONSTRAINT [DF_tbl_login_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_tbl_login_is_deleted]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_login] ADD  CONSTRAINT [DF_tbl_login_is_deleted]  DEFAULT ((0)) FOR [is_deleted]
GO
/****** Object:  Default [DF_tbl_login_created_on]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_login] ADD  CONSTRAINT [DF_tbl_login_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
/****** Object:  Default [DF_tbl_msg_fr_admin_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_msg_fr_admin] ADD  CONSTRAINT [DF_tbl_msg_fr_admin_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_tbl_req_evnt_ac_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_req_evnt] ADD  CONSTRAINT [DF_tbl_req_evnt_ac_status]  DEFAULT ((0)) FOR [ac_status]
GO
/****** Object:  Default [DF_tbl_survey_status]    Script Date: 01/04/2016 10:05:45 ******/
ALTER TABLE [dbo].[tbl_survey] ADD  CONSTRAINT [DF_tbl_survey_status]  DEFAULT ((1)) FOR [status]
GO
