<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="fit.se.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả đăng ký</title>
</head>
<body>
<h2>Kết quả đăng ký khóa học</h2>

<!-- Nhận attribute từ Servlet -->
<jsp:useBean id="student" scope="request" class="fit.se.model.Student" />

<p><strong>Mã SV:</strong> <jsp:getProperty name="student" property="maSV" /></p>
<p><strong>Họ tên:</strong> <jsp:getProperty name="student" property="hoTen" /></p>
<p><strong>Email:</strong> <jsp:getProperty name="student" property="email" /></p>
<p><strong>Khóa học:</strong> <jsp:getProperty name="student" property="khoaHoc" /></p>

<p><a href="registration-form.jsp">← Quay lại form</a></p>
</body>
</html>
