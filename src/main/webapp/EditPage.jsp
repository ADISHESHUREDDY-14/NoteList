<%@page import="com.tut.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-1 m-1">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit page</h1>
		<%
		int id = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = (Note) s.get(Note.class, id);
		%>
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="id" type="hidden" />
			<div class="form-group">
				<label for="title">Title</label> <input required name="title"
					type="text" class="form-control" id="title"
					placeholder="Enter Title" value=<%=note.getTitle()%> />
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea name="content" type="text" class="form-control"
					style="height: 300" id="content" placeholder="Enter content"><%=note.getContent()%></textarea>
			</div>

			<div class="container text-center">
				<button type="Sumbit" class="btn btn-success">Save</button>
			</div>
		</form>
		<%
		tx.commit();
		s.close();
		%>
	</div>

</body>
</html>