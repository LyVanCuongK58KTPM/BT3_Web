Bài tập 3   : môn Phát triển ứng dụng trên nền web<br>
Giảng viên  : Đỗ Duy Cốp<br>
Lớp học phần: 58KTPM<br>
Ngày giao   : 2025-10-24 13:50<br>
Hạn nộp     : 2025-11-05 00:00<br>
--------------------------------------------------
Yêu cầu     : LẬP TRÌNH ỨNG DỤNG WEB trên nền linux<br>
<br>
1. Enabale WSL và cài đặt Ubuntu:<br>
- Mở powershell và cài đặt wsl:<br>
  <img width="662" height="492" alt="image" src="https://github.com/user-attachments/assets/c3d10dbb-5e4b-4044-8fe5-1d56c7856347" /><br>

- Cài đặt Ubuntu và đặt tên user, mật khẩu:<br>
  <img width="763" height="372" alt="image" src="https://github.com/user-attachments/assets/7f9724c2-c4dc-4836-b36c-7a278621b197" /><br>

2. Cài đặt docker desktop:<br>
   - Tải docker for windows ( AMD64) qua đường link: https://www.docker.com/products/docker-desktop/:<br>
  <img width="1912" height="885" alt="image" src="https://github.com/user-attachments/assets/9c38980e-49d7-48ce-b379-7df0b9e5c6c7" /><br>

  - Cài đặt docker:<br>
<img width="969" height="683" alt="image" src="https://github.com/user-attachments/assets/fa9f8989-8882-4669-ae3f-94fb0189c3cf" /><br>
- Khởi động lại máy để kết nối tới docker(đã kết nối thành công)<br>
  <img width="1595" height="906" alt="image" src="https://github.com/user-attachments/assets/9e00909d-a763-48f5-ba7a-61fdd0b817b4" /><br>

3. Tải các Docker Container bằng file docker-compose.yml:<br>
- Em sử dụng visual code để tạo file docker-compose.yml:<br>
  <img width="1399" height="1008" alt="image" src="https://github.com/user-attachments/assets/6f1c00df-b143-4df4-a7f8-9e824ebb4040" /><br>
- Chạy lệnh docker-compose up để tải xuống các Docker Container:<br>
  <img width="1103" height="661" alt="image" src="https://github.com/user-attachments/assets/a800bfe4-d7cd-4d62-b5fd-decda146b6e6" /><br>
<img width="1104" height="647" alt="image" src="https://github.com/user-attachments/assets/a4acd76a-75c5-496f-8cff-b1c1d2b1a68b" /><br>
- Kiểm tra các Container trên Docker Desktop(đã xuất hiện):<br>
  <img width="1632" height="886" alt="image" src="https://github.com/user-attachments/assets/d7a5a5e4-8de1-47d9-9ed2-6a5f076bfbe8" /><br>
- Truy cập thử các ports(thành công):<br>
  <img width="1909" height="1035" alt="image" src="https://github.com/user-attachments/assets/9fa9c22d-e9ed-4061-9f65-fc3934611325" /><br>
<img width="1920" height="1032" alt="image" src="https://github.com/user-attachments/assets/cd8b4223-f098-4399-80b8-c9f5059ef2a6" /><br>
<img width="1915" height="1028" alt="image" src="https://github.com/user-attachments/assets/09b0b0bb-a144-44a8-bd5d-04f3d4e5091a" /><br>
<img width="1911" height="1024" alt="image" src="https://github.com/user-attachments/assets/0abffbec-19ab-4591-8588-3c54ec4fd6e2" /><br>
- Đối với nginx, em chạy localhost và link đến 1 file index html:<br>
  <img width="858" height="533" alt="image" src="https://github.com/user-attachments/assets/b33ca5d0-1fbc-419f-aef5-f0dab3b59fa2" /><br>
<br>
4. Cấu hình nginx làm web-server:<br>
   - Cấu hình lại 3 dịch vụ: nodered_service, grafana_service, nginx.conf<br>
   - Thêm 127.0.0.1   lyvancuong.com vào file C:\Windows\System32\drivers\etc\hosts và lưu lại để truy cập được website qua url fullname<br>
<br>
   <img width="1242" height="672" alt="image" src="https://github.com/user-attachments/assets/a17fa3b4-45df-44a2-b18e-6296064fdd29" /><br>
<img width="928" height="601" alt="image" src="https://github.com/user-attachments/assets/ed57d878-4ab5-410c-aafb-b18468f29019" /><br>
<img width="1024" height="776" alt="image" src="https://github.com/user-attachments/assets/6cfa6a0e-5f92-4030-828d-7057c19ffdd6" /><br>
5. Thiết kế web (Frontend + Backend):<br>
   
