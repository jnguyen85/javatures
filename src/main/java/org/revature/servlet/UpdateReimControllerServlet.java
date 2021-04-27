package org.revature.servlet;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.revature.service.ReimbursementService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


@WebServlet("/UpdateReimControllerServlet")
public class UpdateReimControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger log = LogManager.getLogger(UpdateReimControllerServlet.class);

	private Connection connection;
    private ReimbursementService reimbursementService;
    
	@Override
	public void init() throws ServletException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/revature", "hbstudent", "hbstudent");
			this.reimbursementService = new ReimbursementService(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException cnf) {
			cnf.printStackTrace();
		}
	}
	
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		try {
			this.reimbursementService.updateReimbursement(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
