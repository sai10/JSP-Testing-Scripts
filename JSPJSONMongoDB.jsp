
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ page import="com.mongodb.*" %>
        <%@ page import="com.mongodb.client.*" %>
        <%@ page import="org.json.*" %>
        <%@ page import="org.bson.Document" %>
        
        <%
            JSONObject jo = new JSONObject();

            jo.put("name","Deepa");
            jo.put("ph","12345");
            jo.put("password","qwerty");
            jo.put("email","deepa@ebullitent.com");
            jo.put("city","Chennai");

            String name = jo.getString("name");
            int ph = Integer.parseInt(jo.getString("ph"));
            String email = jo.getString("email");
            String password = jo.getString("password");
            String city = jo.getString("city");


            MongoClient mc = new MongoClient("localhost", 27017);
            MongoDatabase mdb = mc.getDatabase("AUTOMOTIC");
            MongoCollection<Document> mcol = mdb.getCollection("user");
            MongoCursor<Document> cur = mcol.find().iterator();

            Document doc = new Document("name", name)
                    .append("ph", ph)
                    .append("email",email)
                    .append("city",city)
                    .append("password",password);
            mcol.insertOne(doc);
            
            //   FOR READING THE INSERTED DOCUMENT
            
//            while(cur.hasNext()) {
//                if(cur.next().getInteger("ph") == ph) {
//                    jo.put("message","This phone number is already in use");
//                }
//                else if(cur.next().get("email").equals(email)) {
//                    jo.put("message","This email is already in use");
//                }
//            }
            
%>
