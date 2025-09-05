package fit.se.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import fit.se.model.Student;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String maSV = request.getParameter("maSV");
        String hoTen = request.getParameter("hoTen");
        String email = request.getParameter("email");
        String khoaHoc = request.getParameter("khoaHoc");

        Student student = new Student(maSV, hoTen, email, khoaHoc);

        // Gửi dữ liệu sang JSP để hiển thị
        request.setAttribute("student", student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result-form.jsp");
        dispatcher.forward(request, response);
    }
}
