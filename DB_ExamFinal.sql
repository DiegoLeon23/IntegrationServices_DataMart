USE master

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'ExamFinal')
BEGIN
	CREATE DATABASE [ExamFinal]
END

USE [ExamFinal]
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='CLIENTE' and xtype='U')
BEGIN
	CREATE TABLE [dbo].[CLIENTE](
	[ID] [int] NOT NULL,
	[NOMBRE] [nvarchar](45) NULL,
	[AP_PATERNO] [nvarchar](50) NULL,
	[DOCUMENTO] [nvarchar](50) NULL,
	[FECHA_INGRESO] [nvarchar](20) NULL,
	[TIPO_CLIENTE] [nvarchar](50) NULL,
	[FECNAC] [DATE] NULL
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='PRODUCTO' and xtype='U')
BEGIN
	CREATE TABLE [dbo].[PRODUCTO](
	[CODIGO_NACIONAL] [nvarchar](7) NOT NULL,
	[NOMBRE_PRODUCTO] [nvarchar](230) NULL,
	[PRECIO_IVA] DECIMAL(10,2) NULL,
	[PRECIO] DECIMAL(10,2) NULL,
	[STOCK] int NULL,
	[ESTADO] BIT NULL
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='TIENDA' and xtype='U')
BEGIN
	CREATE TABLE [dbo].[TIENDA](
	[ID_TIENDA] [int] NOT NULL,
	[CIUDAD] [nvarchar](30) NULL,
	[direccion] [nvarchar](50) NULL,
	[estado_local] BIT NULL
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='VENDEDOR' and xtype='U')
BEGIN
	CREATE TABLE [dbo].[VENDEDOR](
	[ID_VENDEDOR] [int] NOT NULL,
	[NOMBRE] [nvarchar](45) NULL,
	[APELLIDO] [nvarchar](45) NULL,
	[TIPO_DOC] [nvarchar](45) NULL,
	[ESTADO_VEND] BIT NULL,
	[TIENDA] INT NULL
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='VENTA' and xtype='U')
BEGIN
	CREATE TABLE [dbo].[VENTA](
	[ID_VENTA] [int] NOT NULL,
	[PRODUCTO] [nvarchar](45) NULL,
	[FECHA] [DATE] NULL,
	[CANTIDAD] [INT] NULL,
	[PAGO] [nvarchar](50) NULL,
	[CLIENTE] [INT] NULL,
	[VENDEDOR] [INT] NULL
	) ON [PRIMARY]
END
GO
