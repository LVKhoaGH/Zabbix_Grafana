# Zabbix & Grafana Centralized Monitoring Stack

## 📌 Project Overview
Dự án triển khai giải pháp giám sát hạ tầng tập trung ứng dụng Docker mã nguồn mở trong môi trường SI/ISP/Ngân hàng. Hệ thống tích hợp khả năng thu thập log Nhật ký hệ thống (Syslog) qua Promtail/Loki kết hợp truy vấn thông số hiệu năng phần cứng thời gian thực bằng giao thức SNMPv3 bảo mật cao, giúp trực quan hóa toàn bộ trạng thái thiết bị mạng lên Dashboard tập trung.

## 🛠 Tech Stack
* [cite_start]**Monitoring & Logging:** Zabbix Server 6.4, Grafana Dashboard, Loki Storage, Promtail Collector[cite: 1872, 1904].
* [cite_start]**Database:** PostgreSQL 15 (Alpine-based container)[cite: 1860].
* [cite_start]**Infrastructure & DevOps:** Docker Engine, Docker Compose, Linux (Rocky Linux 9), Firewalld[cite: 1804, 1810, 1822, 1856].
* [cite_start]**Network Protocols:** SNMPv3 (Auth SHA / Priv AES 128-bit), Syslog (UDP Port 514), Cisco IOS Base CLI[cite: 1777, 1789, 1798, 1823].

## 📂 Project Structure
* [cite_start]`Monitor_Zabbix_Grafana.docx`: Báo cáo kỹ thuật chi tiết (Final Report) chuẩn NOC/SI Enterprise[cite: 1776].
* [cite_start]`docker-compose.yml`: File điều phối cấu trúc và khởi tạo cụm Microservices của Monitor Stack[cite: 1856].
* [cite_start]`promtail-config.yml`: File định nghĩa cấu hình phân tích và đẩy log của Promtail về Loki[cite: 1833, 1834].
* `README.md`: Hướng dẫn và tóm tắt dự án.

## 🚀 Key Implementations
1. [cite_start]**Secure Infrastructure:** Cô lập các thành phần Database và Monitor Core vào mạng nội bộ ảo (`monitor-net` bridge), thắt chặt tường lửa Firewalld lớp Host để thu hẹp bề mặt tấn công[cite: 1822, 1868].
2. [cite_start]**Hardened Network Monitoring:** Cấu hình SNMPv3 trên thiết bị lõi Cisco IOS sử dụng các thuật toán mã hóa và xác thực mạnh kết hợp ACL để ngăn chặn các truy cập trái phép[cite: 1792, 1796, 1798].
3. [cite_start]**Centralized Log Aggregation:** Thiết lập luồng thu thập dữ liệu nhật ký hệ thống thời gian thực tự động qua Promtail và Loki để giảm thiểu thời gian xử lý sự cố (MTTR)[cite: 1788, 1833, 1841].
4. [cite_start]**Unified Observability:** Tích hợp thành công API nguồn dữ liệu Zabbix vào Grafana GUI, tối ưu hóa giao diện đồ họa thông số CPU, Memory và Traffic thời gian thực thông qua JSON Model[cite: 1910, 1934, 1938, 1944].
5. [cite_start]**Data Persistence:** Áp dụng cơ chế ánh xạ phân vùng lưu trữ tĩnh (`volumes mapping`) cho PostgreSQL và Grafana để chống rủi ro mất mát dữ liệu khi Container khởi động lại[cite: 1866, 1914].

## 👤 Author
* **Lê Việt Khoa**
* **Target:** CCNP → AI Automation → CCIE.

---
*Last updated: June 2026*