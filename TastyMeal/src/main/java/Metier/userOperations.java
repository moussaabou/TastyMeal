package Metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.User;

public class userOperations {

	private static ConnexionBase con;
	private static Connection Connect;

	public userOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}

	public boolean authentify(User x) {
		String query = "select * from utilisateurs where name = ? and pass = ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getName());
			st.setString(2, x.getPass());

			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}

	public boolean addUser(User x) {
		String query = "insert into utilisateurs(name, pass) values (?, ?)";
		PreparedStatement st = null;
		int r = 0;
		boolean b= false;
		try {
			if(!authentify(x)) {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getName());
			st.setString(2, x.getPass());
			r = st.executeUpdate();
			st.close();
			b=true;
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return b;
	}
	}