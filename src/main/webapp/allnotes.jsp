<%@page import="com.tut.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>

<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>List of notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt -3">
					<img class="card-img-top m4 mx-auto" style="width: 100px"
						alt="Card image cap" src="img/note.png">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p>
							<b>Date:<%=note.getAddedDate()%></b>
						</p>
						<div class="container text-center">
							<a href="EditPage.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update Notes </a> <a
								href="DeleteServlets?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>