package com.mlb.stats.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mlb.stats.dao.UserDao;

import com.mlb.stats.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 
	 * database access object
	 * 
	 */
	private UserDao userDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        this.userDao = new UserDao();
    }
    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();

       
            switch (action) {
                case "/pitchers2019":
                	try {
    					listPitcher2019(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;
                    
                case "/pitchers2018":
                	try {
    					listPitcher2018(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;
                
                case "/batters2019":
                	try {
                		listBatter2019(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;
                    
                case "/batters2018":
                	try {
                		listBatter2018(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;
                    
                case "/season2019":
                	try {
                		listBatter2019(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;
                    
                case "/season2018":
                	try {
                		listBatter2018(request, response);
    				} catch (SQLException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				} 
                    break;  
                
                default:
				try {
					listPitcher2019(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                    break;
            }
       
	}
	
	
	private void listBatter2019(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
	String query = request.getParameter("q");
		
		if (query != null) {
			List<User> Batter = userDao.selectSearchedBatters(query);
			request.setAttribute("listBatter2019", Batter);
			RequestDispatcher dispatcher = request.getRequestDispatcher("batter2019.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<User> Batter = userDao.selectTop10Batters();
			request.setAttribute("listBatter2019", Batter);
			RequestDispatcher dispatcher = request.getRequestDispatcher("batter2019.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void listBatter2018(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
	String query = request.getParameter("q");
		
		if (query != null) {
			List<User> Batter = userDao.selectSearchedBatters(query);
			request.setAttribute("listBatter2018", Batter);
			RequestDispatcher dispatcher = request.getRequestDispatcher("batter2018.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<User> Batter = userDao.selectTop10Batters();
			request.setAttribute("listBatter2018", Batter);
			RequestDispatcher dispatcher = request.getRequestDispatcher("batter2018.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void listPitcher2019(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String query = request.getParameter("q");
		
		if (query != null) {
			List<User> Pitcher = userDao.selectSearchedPitchers(query);
			request.setAttribute("listPitcher2019", Pitcher);
			RequestDispatcher dispatcher = request.getRequestDispatcher("pitcher2019.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<User> Pitcher = userDao.selectTop10Pitchers();
			request.setAttribute("listPitcher2019", Pitcher);
			RequestDispatcher dispatcher = request.getRequestDispatcher("pitcher2019.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void listPitcher2018(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String query = request.getParameter("q");
		
		if (query != null) {
			List<User> Pitcher = userDao.selectSearchedPitchers(query);
			request.setAttribute("listPitcher2018", Pitcher);
			RequestDispatcher dispatcher = request.getRequestDispatcher("pitcher2018.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<User> Pitcher = userDao.selectTop10Pitchers();
			request.setAttribute("listPitcher2018", Pitcher);
			RequestDispatcher dispatcher = request.getRequestDispatcher("pitcher2018.jsp");
			dispatcher.forward(request, response);
		}
	}

}
