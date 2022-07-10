CREATE PROC sp_ThongKeNhanVien
AS BEGIN
SELECT
YEAR(NgayDangKi) Nam,
COUNT(*) SoLuong,
MIN(NgayDangKi) DauTien,
MAX(NgayDangKi) CuoiCung
FROM NhanVien
GROUP BY YEAR(NgayDangKi)
END
