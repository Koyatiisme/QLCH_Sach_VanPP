# QLCH_Sach_VanPP
Bài tập lớn hệ quản trị cơ sở dữ liệu. Với ứng dụng: Quản lý danh sách nhân viên, việc nhập xuất các hàng hoá, các hoá đơn, các khách hàng và đối tác cung cấp hàng hoá

## Bài toàn: QUẢN LÝ CỬA HÀNG SÁCH VÀ VĂN PHÒNG PHẨM
### Thông tin cá nhân
- Họ và tên: Nguyễn Hữu Thắng
- MSSV: K215480106070
### Chi tiết:
-    Quản lý các cửa hàng trong hệ thống cửa hàng, cùng các chủ của cửa hàng.
-    Quản lý nhân viên với các thuộc tính nơi làm việc, công việc xuất nhập hàng.
-    Quản lý khách hàng mua hàng.
-    Quản lý các sản phẩm như sách, các đồ dùng văn phòng phẩm khác.

## MÔ TẢ BÀI TOÁN
### Các chức năng
- Quản lý cửa hàng và chủ của các cửa hàng đó: Gồm các thuộc tính tên chủ cửa hàng, tên cửa hàng, địa chỉ của cửa hàng, hotline để có thể gọi cho cửa hàng. Thêm, sửa, xoá các các cửa hàng dừng hoạt động, mở mới, và thay đổi địa chỉ.
- Quản lý khách hàng: Có thể thêm các khách hàng, sửa khách hàng lưu trữ liên lạc bằng số điện thoại.
- Quản lý xuẩt/ nhập khẩu hàng hoá.
- Chức năng quản lý hàng hoá: Liệt kê các hàng hoá, thêm hàng hoá, sửa thông tin hàng hoá
- Chức năng quản lý bán hàng: Thêm hoá đơn, sửa chữa hoá đơn, xoá hoá đơn, xuất hoá đơn.
- Báo cáo lượng hàng còn lại
- Báo cáo hàng bán chạy

## CÁC BẢNG CỦA HỆ THỐNG ĐƯỢC LẬP
1. ChuCH(#TenChu, DiaChi)
   - TenChu là khoá chính đề xác định được bảng của chủ cửa hàng. Kiểu dữ liệu nvarchar(50).
   - Dia chi là tên trường có kiểu dữ liệu nvarchar(50).
2. Chu_SDT(#SDT, @TenCHu)
   - SDT là khoá chính trong bảng xác định được bảo này, kiểu dữ liệu int, sử dụng CK kiểm tra xem có là 10 trong khoảng từ 0 đến 10.
   - TenChu là khoá ngoại nhưng not null dùng để liên kết với bảng ChuCH. Kiểu dữ liệu nvarchar(50).
3. CuaHang(#TenCH, DiaChi)
   - TenCH là khoá chính xác định được cửa hàng là gì. Kiểu dữ liệu nvarchar(50).
   - Thuộc tính DiaChi phụ thuộc hàm đầy đủ vào khoá, có kiểu dữ liệu nvarchar(50).
4. CuaHang_Hotline (@TenCH, #SDT)
-	SDT là khoá chính, thuộc tính TenCH phụ thuộc hàm dầy đủ vào SDT.
-	TenCH kiểu dữ liệu nvarchar(50), SDT kiểu int cả hai đều not null
5. ChoLam (#MaNV, @TenCH, @TenChu)
- MaNV là khoá chính, thuộc tính TenCH, TenChu phụ thuộc hàm đầy đủ vào MaNV.
- Các thuộc tính đều là kiểu dữ liệu nvarchar(50).
6. NhanVien(#MaNV, TenNV, DiaChi, Tuoi, GioiTinh)
7. NhanVien_SDT(#MaNV, SDT)
8. BanHang(#MaNV, @MaKH, @MaHH, @MaHDB, SoLuong)
9. HoaDonBan(#MaHDB, NgayBan)
10. KhachHang(#MaKH, TenKH, DiaChi, GioiTinh, Tuoi)
11. KhachHang_Phone (#MaKH, @SDT)
12. HangHoa (#MaHH, TenHH, SoLuong, GiaThanh, Loai)
13. Sach (#MaSach, TacGia, TheLoai)
14. Sach_TB(#MaSach, TaiBan)
14. Sach_TB(#MaSach, TaiBan)
15. NhaCungCap(#MaCC, TenCC, DiaChi)
16. NhaCC_Hotline(#SDT, @MaCC)
17. ChiNhanh(#TenChiNhanh, @MaCC, DiaChi)
18. NhapHang(#MaNH, MaHH, MaNV, MaCC, TenChiNhanh, MaHDN, SoLuong)
19. HoaDonNhap(#MaHDN, NgayNhap)

## CÁC CHỨC NĂNG
1. Liệt kê tên chi nhánh tại Thái Nguyen, tên nhà cung cấp được nhập hang từ nhân viên giới tính nam nhập nhiều lần và số lần nhâp.
2. Liệt kê mã, tên, số lượng hàng của khách hàng có địa chỉ Thái Nguyên, mua hàng với số lượng nhiều nhất năm 2024
3. Liệt kê mã nhân viên và số lần bán hàng của nhưng nhân viên sử dụng số điện thoại đầu 09 bán hàng cho khách hàng đầu 09
4. Tạo Fn
5. SP

