<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import=" org.json.JSONObject,org.json.JSONArray,org.json.JSONException, java.util.*    "%>


<%
	
	try{
			JSONObject sample_obj  =  new JSONObject();

			object.put("username","Deepa");
			object.put("password","qwerty");

			String username = sample_obj.getString("username");
			String password = sample_obj.getString("password");
			
			out.println("username-"+username);
			out.println("password-"+password);
		}
		catch(JSONException e){
			e.printStackTrace();
		}
    
%>
