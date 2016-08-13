package com.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class jdbcDao {
	private Connection conn = null;
	private String database_name = null;

	public jdbcDao(String database_name) {
		this.conn = conn;
		this.database_name = database_name;
	}

	public Connection get_Connection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/" + database_name
					+ "?useUnicode=true&characterEncoding=UTF-8&useFastDateParsing=false";
			conn = DriverManager.getConnection(url, "root", "");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

	public void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("数据库关闭失败!\n");
				e.printStackTrace();
			}
			conn = null;
		}

	}

	public ResultSet Admin_insert(String AdminID, String AdminName,
			String AdminPsw, String AdminQQ, String AdminTel, String AdminMail) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("insert into admin(AdminID, AdminName,AdminPsw, AdminQQ, AdminTel, AdminMail)values(?,?,?,?,?,?)");
			pre.setString(1, AdminID);
			pre.setString(2, AdminName);
			pre.setString(3, AdminPsw);
			pre.setString(4, AdminQQ);
			pre.setString(5, AdminTel);
			pre.setString(6, AdminMail);

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select *from admin where AdminID=?");
			pre.setString(1, AdminID);
			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet User_insert(String UserID, String UserPsw) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into user(UserID, UserPsw)values(?,?)");
			pre.setString(1, UserID);
			pre.setString(2, UserPsw);

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select * from user where UserID=?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet User_insert(String UserID, String UserName,
			String UserPsw, String UserQQ, String UserTel, String UserMail) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into user(UserID, UserName, UserPsw, UserQQ, UserTel, UserMail)values(?,?,?,?,?,?)");
			pre.setString(1, UserID);
			pre.setString(2, UserName);
			pre.setString(3, UserPsw);
			pre.setString(4, UserQQ);
			pre.setString(5, UserTel);
			pre.setString(6, UserMail);

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select *from user where UserID=?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean Logging(String table_name, String ID,String password) {
		Connection conn = null;
		conn = get_Connection();
		PreparedStatement pre = null;
		try {
			if (table_name.equalsIgnoreCase("user")) {
				pre = conn
						.prepareStatement("select UserID from user where UserID=? and UserPsw=?");
			} else if (table_name.equalsIgnoreCase("admin")) {
				pre = conn
						.prepareStatement("select AdminID from admin where AdminID=? and AdminPsw=?");
			}
			pre.setString(1, ID);
			pre.setString(2, password);
			String str = null;
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				str = res.getString(1);
			}
			if (str == null)
				return false;
			conn.close();
			pre.close();
			res.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}
	
	public ResultSet Technology_insert(String TechID, String TechName,
			String TechMess, String TechNum, String TechPho) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("insert into technology(TechID, TechName,TechMess, TechNum,TechPho)values(?,?,?,?,?)");
			pre.setString(1, TechID);
			pre.setString(2, TechName);
			pre.setString(3, TechMess);
			pre.setString(4, TechNum);
			pre.setString(5, TechPho);
			pre.executeUpdate();
			pre.close();
			pre = conn
					.prepareStatement("select *from technology where TechID=?");
			pre.setString(1, TechID);
			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet Ad_insert(String AdID, String AdUrl, String AdPho,
			String AdType) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into ad(AdID, AdUrl, AdPho, AdType)values(?,?,?,?)");
			pre.setString(1, AdID);
			pre.setString(2, AdUrl);
			pre.setString(3, AdPho);
			pre.setString(4, AdType);

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select *from ad where AdID=?");
			pre.setString(1, AdID);

			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet u_t_insert(String UserID, String TechID, String UserStation) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into u_t(UserID, TechID, UserStation)values(?,?,?)");
			pre.setString(1, UserID);
			pre.setString(2, TechID);
			pre.setString(3, UserStation);

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select *from u_t where UserID=?");
			pre.setString(1, UserID);

			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean insert_message(String UserID, String UserID2,
			String Message) {
		conn = get_Connection();

		try {
			PreparedStatement pre = conn
					.prepareStatement("insert into message(UserID, UserID2 , Message) values(?,?,?)");
			pre.setString(1, UserID);
			pre.setString(2, UserID2);
			pre.setString(3, Message);

			pre.executeUpdate();

			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean delete_from_table(String table_name,
			String Admin_or_User_ID, String AdID, String TechID) {
		conn = get_Connection();
		PreparedStatement pre = null;

		try {
			if (table_name.equalsIgnoreCase("admin")) {
				pre = conn
						.prepareStatement("delete from admin where AdminID=?");
				pre.setString(1, Admin_or_User_ID);
			} else if (table_name.equalsIgnoreCase("user")) {
				pre = conn.prepareStatement("delete from User where UserID=?");
				pre.setString(1, Admin_or_User_ID);
			} else if (table_name.equalsIgnoreCase("ad")) {
				pre = conn.prepareStatement("delete from ad where AdID=?");
				pre.setString(1, AdID);
			} else if (table_name.equalsIgnoreCase("u_t")) {
				pre = conn
						.prepareStatement("delete from u_t where UserID=? and TechID=?");
				pre.setString(1, Admin_or_User_ID);
				pre.setString(2, TechID);
			}else if (table_name.equalsIgnoreCase("message")) {
				pre = conn
						.prepareStatement("delete from message where UserID");
				pre.setString(1, Admin_or_User_ID);
			}

			pre.executeUpdate();
			conn.close();
			pre.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public ResultSet update_User_information(String UserID, String UserName, String UserSex,
			String UserQQ,  String UserTel, String UserIc, String UserMail) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update user set UserName=?, UserSex=?,UserQQ=?,UserTel=?,UserIc=?,UserMail=? where UserID=?");

			pre.setString(1, UserName);
			pre.setString(2, UserSex);
			pre.setString(3, UserQQ);
			pre.setString(4, UserTel);
			pre.setString(5, UserIc);
			pre.setString(6, UserMail);
			pre.setString(7, UserID);
			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select * from user where UserID=?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet updateMyMess(String UserID, String MyMess) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update user set UserMess=? where UserID=?");

			pre.setString(1, MyMess);
			pre.setString(2, UserID);
			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select * from user where UserID=?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet updateMess(String UserID, String UserID2,String Message) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update message set Message=? where UserID=? and UserID2=?");

			pre.setString(1, Message);
			pre.setString(2, UserID);
			pre.setString(3, UserID2);
		
			pre.executeUpdate();
			pre.close();

			pre = conn
					.prepareStatement("select *from message where UserID=? and UserID2=?");
			pre.setString(1, UserID);
			pre.setString(2, UserID2);

			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet update_List_information(String User_id, int House_id,
			int Rent_rented_station, Date End_time) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update List set Rent_rented_station=?,End_time=? where User_id=? and House_id=?");

			pre.setInt(1, Rent_rented_station);
			pre.setDate(2, new java.sql.Date(End_time.getTime()));
			pre.setString(3, User_id);
			pre.setInt(4, House_id);

			pre.executeUpdate();
			pre.close();

			pre = conn
					.prepareStatement("select *from List where User_id=? and House_id=?");
			pre.setString(1, User_id);
			pre.setInt(2, House_id);
			ResultSet res = pre.executeQuery();

			return res;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet select_from_Table(String table_name) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("select * from "
					+ table_name);
			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public ResultSet select_User(String UserID) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("select * from user where UserID = ?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet update_user_dianzan(String UserID, int state){
		conn = get_Connection();
		try {
			if(state == 0){//state=0   可点赞
			PreparedStatement pre = conn.prepareStatement("update user set UserFans = UserFans + 1, State = State+1 where UserID = ?");
			pre.setString(1, UserID);
			pre.executeUpdate();
			state =1;
			}
			else{
				PreparedStatement pre = conn.prepareStatement("update user set UserFans = UserFans - 1, State = State -1 where UserID = ?");
				pre.setString(1, UserID);
				pre.executeUpdate();			
			}
			PreparedStatement pre = conn.prepareStatement("select UserFans from User where UserID=?");
			pre.setString(1, UserID);
			ResultSet res = pre.executeQuery();
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public boolean select_fans(String u1,String u2){    //查询是否点过赞
		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("select U1, U2 from fans where U1=? and U2=?");
			pre.setString(1, u1);
			pre.setString(2, u2);
			String str = null;
			ResultSet res = pre.executeQuery();
			while(res.next()){
				for(int i =0; i<2;i++)
				str = res.getString(i);
			}
			if(str == null)
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block =
			e.printStackTrace();
		}
		return true;
	}
	
	public ResultSet update_zan(String u1, String u2){
		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("insert into fans(U1, U2)values(?,?)");
			pre.setString(1, u1);
			pre.setString(2, u2);
			pre.executeUpdate();
			
			pre = conn.prepareStatement("select U1 from fans where U1=?");
			pre.setString(1, u1);
			ResultSet res = pre.executeQuery();
			return res;			
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		
	}
	public ResultSet update_quxiaozan(String u1, String u2){
		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("delete from fans where U1=? and U2＝?");
			pre.setString(1, u1);
			pre.setString(2, u2);
			pre.executeUpdate();
			
			pre = conn.prepareStatement("select U1 from fans where U1=?");
			pre.setString(1, u1);
			ResultSet res = pre.executeQuery();
			return res;			
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;	
	}
	
	public boolean Logging_User_or_Admin(String table_name, String ID,
			String password) {
		Connection conn = null;
		conn = get_Connection();
		PreparedStatement pre = null;
		try {
			if (table_name.equalsIgnoreCase("User")) {
				pre = conn
						.prepareStatement("select User_id from User where User_id=? and User_password=?");
			} else if (table_name.equalsIgnoreCase("Admin")) {
				pre = conn
						.prepareStatement("select Admin_id from Admin where Admin_id=? and Admin_password=?");
			}

			pre.setString(1, ID);
			pre.setString(2, password);
			String str = null;
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				str = res.getString(1);

			}
			if (str == null)
				return false;

			conn.close();
			pre.close();
			res.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}

	public boolean update_Admin_information(String Admin_id,
			String Admin_password) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update Admin set Admin_password=? where Admin_id=?");

			pre.setString(1, Admin_password);
			pre.setString(2, Admin_id);

			pre.executeUpdate();
			pre.close();
			close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_Admin_information(String Admin_id, String Admin_name,
			String Admin_telephone, String Admin_idcard, String Admin_mail) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update Admin set Admin_name=?, Admin_telephone=?,Admin_idcard=?,Admin_mail=? where Admin_id=?");

			pre.setString(1, Admin_name);
			pre.setString(2, Admin_telephone);
			pre.setString(3, Admin_idcard);
			pre.setString(4, Admin_mail);
			pre.setString(5, Admin_id);

			pre.executeUpdate();
			pre.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_User_information(String User_id, String User_password) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update User set User_password=? where User_id=?");

			pre.setString(1, User_password);
			pre.setString(2, User_id);

			pre.executeUpdate();
			pre.close();
			close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_User_information(String User_id, String User_name,
			String User_telephone, String User_idcard, String User_sex,
			Date User_birthday) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update User set User_name=?, User_telephone=?,User_idcard=?,User_sex=?,User_birthday=? where User_id=?");

			pre.setString(1, User_name);
			pre.setString(2, User_telephone);
			pre.setString(3, User_idcard);
			pre.setString(4, User_sex);
			pre.setDate(5, new java.sql.Date(User_birthday.getTime()));
			pre.setString(6, User_id);

			pre.executeUpdate();
			pre.close();
			close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_User_information(String User_id, String User_name,
			String User_telephone, String User_sex, Date User_birthday) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update User set User_name=?, User_telephone=?,User_sex=?,User_birthday=? where User_id=?");

			pre.setString(1, User_name);
			pre.setString(2, User_telephone);
			pre.setString(3, User_sex);
			pre.setDate(4, new java.sql.Date(User_birthday.getTime()));
			pre.setString(5, User_id);

			pre.executeUpdate();
			pre.close();
			close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean User_information_null(String User_id) {

		conn = get_Connection();
		PreparedStatement pre = null;
		try {
			pre = conn
					.prepareStatement("select UserName, UserSex,UserQQ,UserTel,UserIc,UserMail from user where UserID=?");
			pre.setString(1, User_id);
			ResultSet res = pre.executeQuery();
			String str = null;
			while (res.next()) {
				for (int i = 1; i <= 6; i++) {
					str = res.getString(i);
					if (str == null)
						return true;
				}
			}
			pre.close();
			close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean select_UserID(String username){
		conn=get_Connection();
		try{
			PreparedStatement pre = conn.prepareStatement("select UserID from user where UserName=?");
			pre.setString(1, username);
     		ResultSet res =  pre.executeQuery();
			while(res.next())
			{	
				pre.close();
			    System.out.println("该用户已存在");
				return true;
			}
     	

		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}
	
	public ResultSet select_UserMess(String userID){
		conn = get_Connection();
		try{
			PreparedStatement pre = conn.prepareStatement("select UserMess from user where UserID=?");
			pre.setString(1, userID);
			ResultSet res = pre.executeQuery();
			return res;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	
	public ResultSet rent_list_insert(String User_id, int House_id, int state,
			Date End_time) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into rent_list(User_id, House_id, state, End_time) values(?,?,?,?)");
			pre.setString(1, User_id);
			pre.setInt(2, House_id);
			pre.setInt(3, state);
			pre.setDate(4, new java.sql.Date(End_time.getTime()));

			pre.executeUpdate();
			pre.close();

			pre = conn.prepareStatement("select *from User where User_id=?");
			pre.setString(1, User_id);
			ResultSet res = pre.executeQuery();
			return res;
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ResultSet select_from_house(String id, String state) {

		conn = get_Connection();
		try {
			if (state.equals("rent")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from house where Master = ?");
				pre.setString(1, id);
				ResultSet res = pre.executeQuery();

				return res;
			}
			if (state.equals("comment")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from comment where house_id = ?");
				pre.setString(1, id);
				ResultSet res = pre.executeQuery();

				return res;

			}
			if (state.equals("rent_list")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from rent_list where user_id = ?");
				pre.setString(1, id);
				ResultSet res = pre.executeQuery();
				return res;
			}
			if (state.equals("show")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from house where Rent_station=1 and House_id not in ( select House_id from rent_list)");

				ResultSet res = pre.executeQuery();
				return res;
			}
			if (state.equals("rented")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from house where house_id = ?");
				pre.setString(1, id);
				ResultSet res = pre.executeQuery();
				return res;
			}
			if (state.equals("manage")) {
				PreparedStatement pre = conn
						.prepareStatement("select * from house where Rent_station=?");
				pre.setInt(1, 0);
				ResultSet res = pre.executeQuery();
				return res;
			}
			if (state.equals("my_rent")) {
				System.out.println("进入了my_rent");
				PreparedStatement pre = conn
						.prepareStatement("select * from Rent_list, house where User_id=? and house.House_id=rent_list.House_id");
				pre.setString(1, id);
				ResultSet res = pre.executeQuery();
				return res;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public boolean operate_state(String House_id, String User_id, String state) {
		conn = get_Connection();
		try {
			if (state.equals("xiajia")) {
				PreparedStatement pre = conn
						.prepareStatement("update house set Rent_station=0 where House_id=?");
				pre.setString(1, House_id);
				pre.executeUpdate();
				return true;
			}
			if (state.equals("shanchu")) {
				PreparedStatement pre = conn
						.prepareStatement("delete from house where House_id=?");
				pre.setString(1, House_id);
				pre.executeUpdate();
				return true;
			}
			if (state.equals("quxiao")) {
				PreparedStatement pre = conn
						.prepareStatement("delete from rent_list where House_id=? and User_id=?");
				pre.setString(1, House_id);
				pre.setString(2, User_id);
				pre.executeUpdate();

				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete_from_house(String house_id) {
		conn = get_Connection();
		PreparedStatement pre = null;

		try {
			pre = conn.prepareStatement("delete from house where House_id=?");
			pre.setString(1, house_id);

			pre.executeUpdate();
			conn.close();
			pre.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_from_house(int house_id) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update house set Rent_station=1  where House_id=?");

			pre.setInt(1, house_id);

			pre.executeUpdate();
			pre.close();

			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public String current_house_state(int House_id) {
		conn = get_Connection();
		try {

			PreparedStatement pre1 = conn
					.prepareStatement("select * from  rent_list where House_id=? ");
			PreparedStatement pre2 = conn
					.prepareStatement("select * from house where House_id=?");
			pre1.setInt(1, House_id);
			pre2.setInt(1, House_id);
			ResultSet res1 = pre1.executeQuery();
			ResultSet res2 = pre2.executeQuery();
			int state;

			if (res1.next()) {
				if (res1.getString("State").toString().equals("0")) {
					return "待确定";
				} else {
					return "已交易";
				}
			} else {
				if (res2.next()) {
					state = res2.getInt("Rent_station");
				} else {
					return "未知";
				}
				if (state == 0) {
					return "待审核";
				} else if (state == 1) {
					return "已上架";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "fail";
	}

	public boolean rent_list_insert(String User_id, String House_id,
			Date End_time) {
		conn = get_Connection();
		try {

			PreparedStatement pre = conn
					.prepareStatement("insert into rent_list(User_id, House_id, State, End_time)values(?,?,?,?)");
			pre.setString(1, User_id);
			pre.setString(2, House_id);
			pre.setInt(3, 0);
			pre.setDate(4, new java.sql.Date(End_time.getTime()));

			pre.executeUpdate();
			pre.close();
			return true;

		}

		catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return false;
	}

	public boolean rent_list_state_update_1(String Comment_id) {
		conn = get_Connection();

		try {
			PreparedStatement pre = conn
					.prepareStatement("update rent_list set State=1 where Comment_id=?");
			pre.setString(1, Comment_id);

			pre.executeUpdate();

			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean rent_list_state_update_0(String Comment_id) {
		conn = get_Connection();

		try {
			PreparedStatement pre = conn
					.prepareStatement("update rent_list set State=0 where Comment_id=?");
			pre.setString(1, Comment_id);

			pre.executeUpdate();

			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean insert_message(String UserID,  String UserID2, String TechID,
			String Message) {
		conn = get_Connection();

		try {
			PreparedStatement pre = conn
					.prepareStatement("insert into message(UserID, UserID2, TechID, Message) values(?,?,?,?)");
			pre.setString(1, UserID);
			pre.setString(2, UserID2);
			pre.setString(3, TechID);
			pre.setString(4, Message);
			pre.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean rent_list_delete(String User_id, String House_id) {
		conn = get_Connection();

		try {
			PreparedStatement pre = conn
					.prepareStatement("delete from rent_list where  House_id=?");

			pre.setString(1, House_id);

			pre.executeUpdate();

			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean select_id(String UserID, String AdminID, String tableName){
		conn = get_Connection();
		try{
			if(tableName.equals("user")){
				PreparedStatement pre = conn.prepareStatement("select UserID from user where UserID = ?");
				pre.setString(1, UserID);
				ResultSet res = pre.executeQuery();
				while(res.next())
				{	
					pre.close();
				    System.out.println("该用户已存在噢噢噢噢噢噢噢噢");
					return true;
				}
			}
			if(tableName.equals("admin")){
				PreparedStatement pre = conn.prepareStatement("select AdminID from admin where AdminID = ?");
				pre.setString(1, AdminID);
				ResultSet res = pre.executeQuery();
				return true;	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public ResultSet order_User(){
		conn = get_Connection();
		try{
			PreparedStatement pre=conn.prepareStatement("select * from user order by UserFans desc");
			pre.executeQuery();
			ResultSet res = pre.executeQuery();
			//while(res.next()){
			//	System.out.print(res.getString("UserID"));
			//	System.out.print(res.getString("UserName"));
			//	System.out.print(res.getString("UserFans"));
			//}
			return res;		
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}

	public int select_UserFans(String UserID, int UserFans) {

		conn = get_Connection();
		try {
			PreparedStatement pre = conn.prepareStatement("select UserFans from user where UserID = ?");
			pre.setInt(1, UserFans);
			ResultSet res = pre.executeQuery();
			return UserFans;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
    
	public boolean update_House_information(String Address, String Price,
			String Area, String Surrounding, String Others, String Src,
			String House_id) {
		conn = get_Connection();
		try {
			PreparedStatement pre = conn
					.prepareStatement("update House set Address=?, Price=?,Area=?,Surrounding=?,Others=?, Src=? where House_id=?");

			pre.setString(1, Address);
			pre.setString(2, Price);
			pre.setString(3, Area);
			pre.setString(4, Surrounding);
			pre.setString(5, Others);
			pre.setString(6, Src);
			pre.setString(7, House_id);
			pre.executeUpdate();
			pre.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
