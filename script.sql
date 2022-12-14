USE [master]
GO
/****** Object:  Database [Employee]    Script Date: 27-08-2022 10.35.16 PM ******/
CREATE DATABASE [Employee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Employee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Employee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Employee] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employee] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employee] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employee] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employee] SET RECOVERY FULL 
GO
ALTER DATABASE [Employee] SET  MULTI_USER 
GO
ALTER DATABASE [Employee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employee] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Employee] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Employee] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Employee', N'ON'
GO
ALTER DATABASE [Employee] SET QUERY_STORE = OFF
GO
USE [Employee]
GO
/****** Object:  Table [dbo].[DEPT_MASTER]    Script Date: 27-08-2022 10.35.16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPT_MASTER](
	[DEPTID] [int] NOT NULL,
	[DEPTNAME] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_details]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_details](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[empname] [varchar](50) NULL,
	[SALARY] [int] NULL,
	[Gender] [varchar](50) NULL,
	[DEPT_ID] [int] NULL,
	[DOJ] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reg_Form]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reg_Form](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Confirmpassword] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Reg_Form] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Employee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[DOB] [int] NOT NULL,
	[Department] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[UniqueId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NULL,
	[Username] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[LoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[UniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_MASTER]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_MASTER](
	[USER_ID] [int] NOT NULL,
	[UNAME] [varchar](30) NOT NULL,
	[PASSWD] [varchar](30) NOT NULL,
	[ROLEID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Get_empdetails]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_empdetails]

     @QueryType varchar(30) = null,
	 @userid varchar(30) = null,
	 @Password varchar(30) = null ,
	 @roleid int = null  output
	
AS
BEGIN
	
	Declare @role int;
	set @role = 0;
	SET NOCOUNT ON;

	begin try
	
	If @QueryType='check_login'
	Begin

	select ROLEID from USER_MASTER where UNAME = @userid and PASSWD = @Password

		 
	END
	else If @QueryType='get_details'
	Begin
		 select * from USER_MASTER 
	END
	else If @QueryType='get_deptdetails'
	Begin
		 select * from DEPT_MASTER 
	END
	else If @QueryType='get_emptdetails'
	Begin
		 select emp.empname,emp.SALARY,emp.Gender,Dept.DEPTNAME as DEPT_Name,emp.DOJ from emp_details as emp left join DEPT_MASTER as Dept on emp.DEPT_ID = Dept.DEPTID
		 
	END

	end try

	BEGIN CATCH

	
	END CATCH

	set @roleid = @role
    
END

GO
/****** Object:  StoredProcedure [dbo].[Insertempdetails]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insertempdetails] 
     @QueryType varchar(30) ,
	 @name varchar(30) =  null ,
	 @salary int = null ,
	 @deptid int = null ,
	 @Gen  varchar(30) = null,
	 @doj datetime = NULL,
	 @SQLReturn varchar(30) = NULL  OUTPUT
	
AS
BEGIN
	
	SET NOCOUNT ON;
	Declare @rcount int ;
	set @rcount = 0;

	begin try
	
	If @QueryType='insert'
	Begin
		 insert into emp_details (empname,SALARY,DEPT_ID,DOJ,Gender) values (@name,@salary,@deptid,@doj,@Gen)
		 set @rcount = 1
	END

	end try

	BEGIN CATCH

	END CATCH
    
	set @SQLReturn =@rcount
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_AddEmployee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_AddEmployee](
        
		@Name nvarchar(150),
		@Age int,
		@Department nvarchar(150),
		@State nvarchar(100),
		@Country nvarchar(150)



)

as
begin
    insert into Tbl_Employee (Name,Age,Department,State,Country) values(@Name,@Age,@Department,@State,@Country)
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_AllEmployee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_AllEmployee]
as
begin
select * from Tbl_Employee
end

GO
/****** Object:  StoredProcedure [dbo].[Sp_checkemail]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_checkemail](

       @Email nvarchar(max)


)

as 
begin
select * from Reg_form where Email=@Email;
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_CheckUser]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_CheckUser](

       @UserName nvarchar(150),
	   @PassWord nvarchar(250)

)
as
begin
      select * from Reg_Form where Username =@UserName and Password = @PassWord;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_employee_data]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_employee_data]

	@QueryType nvarchar(150),
	@Name nvarchar(150)=null,
	@Department nvarchar(150)=null,
	@DOB nvarchar(50)= null,
	@Email nvarchar(50) = null,
	@SQLReturn nvarchar(50) = null output	

AS
BEGIN
	SET NOCOUNT ON;
	Declare @rcount int
	Set @rcount=0

If @QueryType='Insert_Update'
Begin

	If not exists(Select * From Tbl_Employee where Email=@Email)
	Begin
	
		Insert Into Tbl_Employee(Name,Department,DOB,Email)
		Values(@Name,@Department,@DOB,@Email)
			set @rcount=1	
	End
	Else
	BEGIN

		Update Tbl_Employee SET Name=@Name,Department=@Department,DOB=@DOB,Email=@Email	
		WHERE Email=@Email
		set @rcount=2	
			
	END

end
Else If @QueryType='Edit_details'
Begin
		select * from Tbl_Employee where Email=@Email

end
Else If @QueryType='Get_details'
Begin
		select * from Tbl_Employee

end
Else If @QueryType='Delete_details'
Begin
		Delete from Tbl_Employee where Email=@Email

end


set @SQLReturn = @rcount
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_GetEmployee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_GetEmployee](
      
	  @ID int


)
as
begin  
select * from Tbl_Employee where ID = @ID;
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Insert_LoginData]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_Insert_LoginData](

      @UserName nvarchar(100),
	  @PassWord nvarchar(250) 

)
as
begin
     insert into Tbl_Login (Username,Password) values(@UserName,@PassWord);
end

GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_RegData]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Insert_RegData]( 

         @UserName nvarchar(150),
		 @PhoneNumber int,
		 @Email nvarchar(150),
		 @Password nvarchar(max),
		 @ConfirmPassword nvarchar(max)

)
as
begin

insert into Reg_Form (Username,PhoneNumber,Email,Password,Confirmpassword) values (@UserName,@PhoneNumber,@Email,@Password,@ConfirmPassword);

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_RemoveEmployee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_RemoveEmployee](

      @ID int

)
as
begin 
Delete from Tbl_Employee where ID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpadteEmpolyee]    Script Date: 27-08-2022 10.35.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_UpadteEmpolyee](
     
	 @ID int,
	 @Name nvarchar(100),
	 @Age int,
     @Department nvarchar(150),
	 @State nvarchar(100),
	 @Country nvarchar(150)



)
as
begin
update Tbl_Employee set Name = @Name,Age=@Age,Department =@Department,State=@State,Country =@Country where ID =@ID;

end

GO
USE [master]
GO
ALTER DATABASE [Employee] SET  READ_WRITE 
GO
