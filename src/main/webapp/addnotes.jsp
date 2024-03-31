<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD NOTES</title>

<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container-fluid p-1 m-1">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Enter in detail about your Goals</h1>

		<form action="SaveNotesServlet" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input required name="title"
					type="text" class="form-control" id="title"
					placeholder="Enter Title" />
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea name="content" type="text" class="form-control"
					style="height: 300" id="content" placeholder="Enter content"></textarea>
			</div>

			<div class="container text-center">
				<button type="add" class="btn btn-primary">ADD</button>
			</div>
		</form>
	</div>

</body>
</html>