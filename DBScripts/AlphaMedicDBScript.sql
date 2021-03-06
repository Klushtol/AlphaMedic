USE [ALPHA_AlphaMedic]
GO
/****** Object:  Table [dbo].[Administrators]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrators](
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[State] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Duration] [time](7) NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NULL,
 CONSTRAINT [PK_dbo.Appointments] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BloodGroups]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroups](
	[BloodGroupId] [int] NOT NULL,
	[Group] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.BloodGroups] PRIMARY KEY CLUSTERED 
(
	[BloodGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[URLImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis](
	[DiagnosisId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Diagnosis] PRIMARY KEY CLUSTERED 
(
	[DiagnosisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[UserId] [int] NOT NULL,
	[Degree] [nvarchar](max) NULL,
	[Education] [nvarchar](max) NULL,
	[ScheduleId] [int] NULL,
	[DepartmentId] [int] NOT NULL,
	[DoctorType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Doctors] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[UserId] [int] NOT NULL,
	[EmploymentDate] [datetime] NOT NULL,
	[EmploymentRecordBookNumber] [nvarchar](max) NULL,
	[DismissalDate] [datetime] NULL,
	[EmployeeType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ProcedureId] [int] NOT NULL,
	[DiagnosisId] [int] NULL,
 CONSTRAINT [PK_dbo.Examinations] PRIMARY KEY CLUSTERED 
(
	[ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[DoctorId] [int] NULL,
	[DepartmentId] [int] NULL,
	[PatientId] [int] NULL,
 CONSTRAINT [PK_dbo.Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MedicalHistories]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalHistories](
	[MedicalHistoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MedicalHistories] PRIMARY KEY CLUSTERED 
(
	[MedicalHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medications]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medications](
	[MedicationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Medications] PRIMARY KEY CLUSTERED 
(
	[MedicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MedicationTreatments]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicationTreatments](
	[Medication_MedicationId] [int] NOT NULL,
	[Treatment_ProcedureId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MedicationTreatments] PRIMARY KEY CLUSTERED 
(
	[Medication_MedicationId] ASC,
	[Treatment_ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MobileAuthentificator]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileAuthentificator](
	[UserId] [int] NOT NULL,
	[IsUseAuth] [bit] NULL,
	[MacAdress] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patients]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[UserId] [int] NOT NULL,
	[MedicalHistoryId] [int] NULL,
	[BloodGroupId] [int] NULL,
 CONSTRAINT [PK_dbo.Patients] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Procedures]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedures](
	[ProcedureId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[MedicalHistoryId] [int] NULL,
	[Date] [datetime] NOT NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Procedures] PRIMARY KEY CLUSTERED 
(
	[ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receptionists]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionists](
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Receptionists] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[StartWorkingTime] [time](7) NOT NULL,
	[FinishWorkingTime] [time](7) NOT NULL,
 CONSTRAINT [PK_dbo.Schedules] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Treatments]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatments](
	[ProcedureId] [int] NOT NULL,
	[Result] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Treatments] PRIMARY KEY CLUSTERED 
(
	[ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NOT NULL,
	[ClaimValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserClaimId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Active] [bit] NULL,
	[URLImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vaccionations]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccionations](
	[ProcedureId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Vaccionations] PRIMARY KEY CLUSTERED 
(
	[ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WarningLabels]    Script Date: 9/19/2016 6:36:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarningLabels](
	[WarningLabelId] [int] IDENTITY(1,1) NOT NULL,
	[MedicalHistoryId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WarningLabels] PRIMARY KEY CLUSTERED 
(
	[WarningLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administrators]  WITH CHECK ADD  CONSTRAINT [FK_Administrators_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([UserId])
GO
ALTER TABLE [dbo].[Administrators] CHECK CONSTRAINT [FK_Administrators_Employees]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Schedules] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Schedules]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Examinations_dbo.Diagnosis_DiagnosisId] FOREIGN KEY([DiagnosisId])
REFERENCES [dbo].[Diagnosis] ([DiagnosisId])
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [FK_dbo.Examinations_dbo.Diagnosis_DiagnosisId]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Examinations_dbo.Procedures_ProcedureId] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[Procedures] ([ProcedureId])
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [FK_dbo.Examinations_dbo.Procedures_ProcedureId]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedbacks_dbo.Departments_Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_dbo.Feedbacks_dbo.Departments_Department_DepartmentId]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedbacks_dbo.Doctors_Doctor_UserId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([UserId])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_dbo.Feedbacks_dbo.Doctors_Doctor_UserId]
GO
ALTER TABLE [dbo].[MedicationTreatments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicationTreatments_dbo.Medications_Medication_MedicationId] FOREIGN KEY([Medication_MedicationId])
REFERENCES [dbo].[Medications] ([MedicationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicationTreatments] CHECK CONSTRAINT [FK_dbo.MedicationTreatments_dbo.Medications_Medication_MedicationId]
GO
ALTER TABLE [dbo].[MedicationTreatments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicationTreatments_dbo.Treatments_Treatment_ProcedureId] FOREIGN KEY([Treatment_ProcedureId])
REFERENCES [dbo].[Treatments] ([ProcedureId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicationTreatments] CHECK CONSTRAINT [FK_dbo.MedicationTreatments_dbo.Treatments_Treatment_ProcedureId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.BloodGroups_BloodGroupId] FOREIGN KEY([BloodGroupId])
REFERENCES [dbo].[BloodGroups] ([BloodGroupId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.BloodGroups_BloodGroupId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.MedicalHistories_MedicalHistoryId] FOREIGN KEY([MedicalHistoryId])
REFERENCES [dbo].[MedicalHistories] ([MedicalHistoryId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.MedicalHistories_MedicalHistoryId]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Patients_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_dbo.Patients_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Procedures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Procedures_dbo.Appointments_ProcedureId] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[Appointments] ([AppointmentId])
GO
ALTER TABLE [dbo].[Procedures] CHECK CONSTRAINT [FK_dbo.Procedures_dbo.Appointments_ProcedureId]
GO
ALTER TABLE [dbo].[Procedures]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Procedures_dbo.MedicalHistories_MedicalHistoryId] FOREIGN KEY([MedicalHistoryId])
REFERENCES [dbo].[MedicalHistories] ([MedicalHistoryId])
GO
ALTER TABLE [dbo].[Procedures] CHECK CONSTRAINT [FK_dbo.Procedures_dbo.MedicalHistories_MedicalHistoryId]
GO
ALTER TABLE [dbo].[Receptionists]  WITH CHECK ADD  CONSTRAINT [FK_Receptionists_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([UserId])
GO
ALTER TABLE [dbo].[Receptionists] CHECK CONSTRAINT [FK_Receptionists_Employees]
GO
ALTER TABLE [dbo].[Treatments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Treatments_dbo.Procedures_ProcedureId] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[Procedures] ([ProcedureId])
GO
ALTER TABLE [dbo].[Treatments] CHECK CONSTRAINT [FK_dbo.Treatments_dbo.Procedures_ProcedureId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserClaims] FOREIGN KEY([UserClaimId])
REFERENCES [dbo].[UserClaims] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserClaims]
GO
ALTER TABLE [dbo].[Vaccionations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vaccionations_dbo.Procedures_ProcedureId] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[Procedures] ([ProcedureId])
GO
ALTER TABLE [dbo].[Vaccionations] CHECK CONSTRAINT [FK_dbo.Vaccionations_dbo.Procedures_ProcedureId]
GO
ALTER TABLE [dbo].[WarningLabels]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WarningLabels_dbo.MedicalHistories_MedicalHistoryId] FOREIGN KEY([MedicalHistoryId])
REFERENCES [dbo].[MedicalHistories] ([MedicalHistoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WarningLabels] CHECK CONSTRAINT [FK_dbo.WarningLabels_dbo.MedicalHistories_MedicalHistoryId]
GO
