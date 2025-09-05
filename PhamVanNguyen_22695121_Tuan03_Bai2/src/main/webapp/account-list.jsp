<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Accounts</title>
  <style>
    body{font-family:Arial,Helvetica,sans-serif;background:#f5fbff;margin:0;padding:24px;}
    .head{max-width:820px;margin:0 auto 12px;display:flex;justify-content:space-between;align-items:center}
    .box{max-width:820px;margin:0 auto;background:#ffffff;border:1px solid #cde7f3;border-radius:10px;padding:12px;box-shadow:0 6px 18px rgba(0,0,0,.06);}
    table{width:100%;border-collapse:collapse}
    th,td{padding:10px;border-bottom:1px solid #e6f4fa;text-align:left}
    th{background:#e8f6fb}
    .btn{padding:9px 14px;border:0;border-radius:8px;background:#0e5564;color:#fff;cursor:pointer;text-decoration:none}
    .muted{color:#4a6b75}
  </style>
</head>
<body>
<div class="head">
  <h2>Account List</h2>
  <a class="btn" href="accounts?action=new">+ New account</a>
</div>
<div class="box">
  <table>
    <thead>
      <tr>
        <th>#</th>
        <th>Username</th>
        <th>Full name</th>
        <th>Email</th>
        <th>Created At</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="acc" items="${accounts}" varStatus="st">
        <tr>
          <td>${st.index + 1}</td>
          <td>${acc.username}</td>
          <td>${acc.fullName}</td>
          <td>${acc.email}</td>
          <td><fmt:formatDate value="${acc.createdAt}" pattern="yyyy-MM-dd HH:mm" /></td>
        </tr>
      </c:forEach>
      <c:if test="${empty accounts}">
        <tr><td colspan="5" class="muted">No accounts. Click "New account" to add one.</td></tr>
      </c:if>
    </tbody>
  </table>
</div>
</body>
</html>
