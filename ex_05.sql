-- Scalar Subquery trong SELECT trả về đúng 1 giá trị (ví dụ: AVG toàn bộ bảng).
-- Nhờ đó, mỗi dòng vẫn hiển thị chi tiết (title, price) nhưng đồng thời có thể so sánh với tổng quan (giá trung bình).
-- Đây là cách vừa xem chi tiết từng khóa học, vừa kết hợp được thông tin tổng thể.

SELECT 
    c.title,
    c.price,
    c.price - (SELECT AVG(price) FROM Courses) AS Price_Difference
FROM Courses c;
