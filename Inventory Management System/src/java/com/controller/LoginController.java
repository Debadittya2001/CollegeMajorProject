package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import com.model.LoginData;
import dao.Login;

public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String button = request.getParameter("btn");
            System.out.println(button);
            String email = request.getParameter("email");
            String pword = request.getParameter("upword");
            LoginData ld = new LoginData(email,pword);
            Login login = new Login();
            int retval = login.pwordCheck(ld);
            //request.setAttribute("loginid", login.getUserId(ld));
            if(button.equals("login")){              
                System.out.println(button);
                if(retval == 1)
                {                
                    RequestDispatcher rd = request.getRequestDispatcher("");
                    rd.forward(request, response);                
                }
                else
                {
                    RequestDispatcher error1 = request.getRequestDispatcher("./Login.html");
                    out.print("<script type=\"text/javascript\">");
                    out.print("alert('Username or Password incorrect. Please Try Again.');");
                    out.print("</script>"); 
                    error1.include(request, response);
                }
            }
            else if(button.equals("register")){
                System.out.println(button);
                RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
                rd.forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
