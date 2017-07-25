
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.Set" %>
<%@ page import="com.mongodb.*" %>
<%@ page import="com.mongodb.client.MongoDatabase" %>
<%@ page import="org.bson.Document" %>
<%@ page import="com.mongodb.client.MongoCollection" %>


<%

// VLAUES TO BE INSERTED INTO DOCUMENT

    String name = "Ram";
    int ph = 7000;
    String email = "DB@gmail.com";
    String password = "qwerty";
    String city = "BBSR";

    MongoClient mongoClient = new MongoClient("localhost", 27017);
    MongoDatabase database = mongoClient.getDatabase("test");

    MongoCollection<Document> collection = database.getCollection("user");
    collection.drop();
    Document doc = new Document("name", name)
            .append("ph", ph)
            .append("email", email)
            .append("password",password)
            .append("city", city);

    collection.insertOne(doc);

    while(collection.hasNext()) {
    	out.println(out.next());
	}
%>
