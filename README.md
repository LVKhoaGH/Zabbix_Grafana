# Zabbix & Grafana Centralized Monitoring Stack

## 📌 Project Overview
Dự án triển khai giải pháp giám sát hạ tầng tập trung ứng dụng Docker mã nguồn mở trong môi trường SI/ISP/Ngân hàng. Hệ thống tích hợp khả năng thu thập log Nhật ký hệ thống (Syslog) qua Promtail/Loki kết hợp truy vấn thông số hiệu năng phần cứng thời gian thực bằng giao thức SNMPv3 bảo mật cao, giúp trực quan hóa toàn bộ trạng thái thiết bị mạng lên Dashboard tập trung.

## 🛠 Tech Stack
* **Monitoring & Logging:** Zabbix Server 6.4, Grafana Dashboard, Loki Storage, Promtail Collector.
* **Database:** PostgreSQL 15 (Alpine-based container).
* **Infrastructure & DevOps:** Docker Engine, Docker Compose, Linux (Rocky Linux 9), Firewalld.
* **Network Protocols:** SNMPv3 (Auth SHA / Priv AES 128-bit), Syslog (UDP Port 514), Cisco IOS Base CLI.

## 📂 Project Structure
* `Monitor_Zabbix_Grafana.docx`: Báo cáo kỹ thuật chi tiết (Final Report) chuẩn NOC/SI Enterprise.
* `docker-compose.yml`: File điều phối cấu trúc và khởi tạo cụm Microservices của Monitor Stack.
* `promtail-config.yml`: File định nghĩa cấu hình phân tích và đẩy log của Promtail về Loki.
* `README.md`: Hướng dẫn và tóm tắt dự án.

## 🚀 Key Implementations
1. **Secure Infrastructure:** Cô lập các thành phần Database và Monitor Core vào mạng nội bộ ảo (`monitor-net` bridge), thắt chặt tường lửa Firewalld lớp Host để thu hẹp bề mặt tấn công.
2. **Hardened Network Monitoring:** Cấu hình SNMPv3 trên thiết bị lõi Cisco IOS sử dụng các thuật toán mã hóa và xác thực mạnh kết hợp ACL để ngăn chặn các truy cập trái phép.
3. **Centralized Log Aggregation:** Thiết lập luồng thu thập dữ liệu nhật ký hệ thống thời gian thực tự động qua Promtail và Loki để giảm thiểu thời gian xử lý sự cố (MTTR).
4. **Unified Observability:** Tích hợp thành công API nguồn dữ liệu Zabbix vào Grafana GUI, tối ưu hóa giao diện đồ họa thông số CPU, Memory và Traffic thời gian thực thông qua JSON Model.
5. **Data Persistence:** Áp dụng cơ chế ánh xạ phân vùng lưu trữ tĩnh (`volumes mapping`) cho PostgreSQL và Grafana để chống rủi ro mất mát dữ liệu khi Container khởi động lại.

## 👤 Author
* **Lê Việt Khoa**
* **Target:** CCNP → AI Automation → CCIE.

---
*Last updated: June 2026*