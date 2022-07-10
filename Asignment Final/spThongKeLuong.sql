create proc [dbo].[sp_ThongKeLuong1]
(@year int)
as
begin
	select 
		NhanVien.MaNV,
		NhanVien.HoTen,
		LuongCoBan,
		HeSo,
		TienThuong,
		TroCap,
		((LuongCoBan * HeSo) + TienThuong + TroCap) TongTien
	from Luong inner join NhanVien on Luong.MaNV = NhanVien.MaNV
	where YEAR(NgayDangKi) = @year
	group by NhanVien.MaNV, NhanVien.HoTen, LuongCoBan, HeSo, TienThuong, TroCap
end