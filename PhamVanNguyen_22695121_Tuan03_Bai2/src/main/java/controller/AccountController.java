package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import model.Account;
import repository.AccountRepository;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/accounts")
public class AccountController extends HttpServlet {

    private static final String REPO_ATTR = "ACCOUNT_REPO";

    private AccountRepository getRepo(HttpServletRequest request){
        AccountRepository repo = (AccountRepository) getServletContext().getAttribute(REPO_ATTR);
        if (repo == null) {
            repo = new AccountRepository();
            getServletContext().setAttribute(REPO_ATTR, repo);
        }
        return repo;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if ("new".equalsIgnoreCase(action)) {
            RequestDispatcher rd = request.getRequestDispatcher("account-form.jsp");
            rd.forward(request, response);
        } else {
            // list
            request.setAttribute("accounts", getRepo(request).findAll());
            RequestDispatcher rd = request.getRequestDispatcher("account-list.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String fullName = request.getParameter("fullName");
        String email    = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm  = request.getParameter("confirm");

        Map<String, String> errors = new HashMap<>();

        if (username == null || username.isBlank()) errors.put("username", "Username is required");
        if (fullName == null || fullName.isBlank()) errors.put("fullName", "Full name is required");
        if (email == null || email.isBlank() || !email.contains("@")) errors.put("email", "Valid email is required");
        if (password == null || password.length() < 6) errors.put("password", "Password ≥ 6 characters");
        if (confirm == null || !confirm.equals(password)) errors.put("confirm", "Passwords do not match");

        AccountRepository repo = getRepo(request);
        if (repo.findByUsername(username).isPresent()) errors.put("username", "Username already exists");

        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.setAttribute("form_username", username);
            request.setAttribute("form_fullName", fullName);
            request.setAttribute("form_email", email);
            RequestDispatcher rd = request.getRequestDispatcher("account-form.jsp");
            rd.forward(request, response);
            return;
        }

        Account acc = new Account(username, fullName, email, password);
        repo.add(acc);
        response.sendRedirect(request.getContextPath() + "/accounts");
    }
}
