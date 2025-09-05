<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register Account</title>
  <style>
    body{font-family:Arial,Helvetica,sans-serif;background:#f5fbff;margin:0;padding:24px;}
    .box{max-width:600px;margin:0 auto;background:#ffffff;border:1px solid #cde7f3;border-radius:10px;padding:22px;box-shadow:0 6px 18px rgba(0,0,0,.06);}
    h2{margin-top:0;color:#0c5460}
    .row{display:grid;grid-template-columns:140px 1fr;gap:12px;align-items:center;margin:10px 0;}
    input[type="text"],input[type="email"],input[type="password"]{width:100%;padding:9px;border:1px solid #a8d3e5;border-radius:8px;}
    .err{color:#a62828;font-size:12px;margin:2px 0 0 4px;}
    .actions{margin-top:12px}
    .btn{padding:9px 16px;border:0;border-radius:8px;background:#0e5564;color:#fff;cursor:pointer}
    a.link{margin-left:10px;color:#0e5564;text-decoration:none}
  </style>
</head>
<body>
<div class="box">
  <h2>Register new account</h2>
  <form method="post" action="accounts">
    <div class="row">
      <label>Username</label>
      <div>
        <input type="text" name="username" value="${form_username}" required>
        <c:if test="${errors.username != null}"><div class="err">${errors.username}</div></c:if>
      </div>
    </div>

    <div class="row">
      <label>Full name</label>
      <div>
        <input type="text" name="fullName" value="${form_fullName}" required>
        <c:if test="${errors.fullName != null}"><div class="err">${errors.fullName}</div></c:if>
      </div>
    </div>

    <div class="row">
      <label>Email</label>
      <div>
        <input type="email" name="email" value="${form_email}" required>
        <c:if test="${errors.email != null}"><div class="err">${errors.email}</div></c:if>
      </div>
    </div>

    <div class="row">
      <label>Password</label>
      <div>
        <input type="password" name="password" required>
        <c:if test="${errors.password != null}"><div class="err">${errors.password}</div></c:if>
      </div>
    </div>

    <div class="row">
      <label>Confirm</label>
      <div>
        <input type="password" name="confirm" required>
        <c:if test="${errors.confirm != null}"><div class="err">${errors.confirm}</div></c:if>
      </div>
    </div>

    <div class="actions">
      <button class="btn" type="submit">Register</button>
      <a class="link" href="accounts">Back to list</a>
    </div>
  </form>
</div>
</body>
</html>
