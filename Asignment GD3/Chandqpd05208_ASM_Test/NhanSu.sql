CREATE DATABASE QLNhanSu
GO
USE QLNhanSu
GO

CREATE TABLE PhongBan(
MaPB varchar(7) NOT NULL,
TenPB nvarchar(30) NOT NULL
PRIMARY KEY(MaPB)
)
GO

CREATE TABLE NhanVien(
MaNV varchar(7) NOT NULL,
HoTen nvarchar(30) NOT NULL,
GioiTinh bit NOT NULL Default 0,
NgaySinh date NOT NULL ,
DiaChi nvarchar(50) NOT NULL,
NgayDangKi date NOT NULL,
SDT nvarchar(10) NOT NULL,
Email nvarchar(50) NOT NULL,
Hinh nvarchar(50) NOT NULL,
MaPB varchar(7) NOT NULL

PRIMARY KEY(MaNV),
FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB) 
)
GO

CREATE TABLE CongViec(
MaCV varchar(7) NOT NULL,
MaNV varchar(7) NOT NULL,
MaPB varchar(7) NOT NULL,
TenCV nvarchar(50) NULL

PRIMARY KEY(MaCV),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON UPDATE CASCADE ,
FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB) ON UPDATE CASCADE
)
GO


CREATE TABLE ChamCong(
STT int identity(1,1) not null,
MaNV varchar(7) not null,
HoTen nvarchar(30) not null,
NgayChamCong date not null,
TrangThai bit default(0) not null,
GhiChu nvarchar(50) NULL

PRIMARY KEY (STT),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON UPDATE CASCADE
);
GO

CREATE TABLE NguoiDung(
STT int identity (1,1),
MaNV varchar(7) NOT NULL,
MatKhau varchar(10) NOT NULL,
VaiTro bit NOT NULL DEFAULT 0,

PRIMARY KEY(STT),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON UPDATE CASCADE,
)
GO

CREATE TABLE Luong(
STT int identity(1,1) not null,
MaNV varchar(7) not null,
HoTen nvarchar(30) NOT NULL,
LuongCoBan int not null,
HeSo int not null,
TienThuong int  null,
TroCap int  null,
NgayTinhLuong date not null,
PRIMARY KEY (STT),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) ON UPDATE CASCADE
);
GO
