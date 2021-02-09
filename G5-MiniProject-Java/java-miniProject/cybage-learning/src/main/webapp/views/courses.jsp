
<%@page import="com.cybage.model.Course"%>
<%@page import="java.util.List"%>

<html>

<body>
<header>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</header>

	<!--Inline CSS -->
	<style>
.card {
	width: 18rem;
	padding: 3%;
	padding-top: 5%;
	margin-top: 7%;
	margin-bottom: 5%;
	margin-left: 5%;
	margin-right: 5%;
}



</style>


	<%if((request.getAttribute("courses"))!=null) {
		List<Course> course = (List) request.getAttribute("courses");
		for (Course c : course) {
			
			out.print("<div class='card' >");
			out.print("<img class='card-img-top' src='" + c.getImageUrl() + "'>");
			out.print("<div class='card-body'>");
			out.print("<h3 class='card-title'>" + c.getCourseName() + "</h3>'");
			out.print("<h3 class='card-title'>" + c.getCoursePrice() + "</h3>'");
			out.print("<h3 class='card-title'>" + c.getCourseDuration() + "</h3>'");
			out.print("<h3 class='card-title'>" + c.getCourseAuthor() + "</h3>'");
			out.print("<p class='card-text'>'"+c.getCourseDescription()+"</p>'");

			out.print("<a href='"+request.getContextPath()+"/UserController/course' class='btn btn-primary'>View Sub-Courses</a>");
			out.print("</div>");
			out.print("</div>");
 
		}
	}
	
%>




</body>
<br>
<table border="1">
	<tr>
		<td>Course ID</td>
		<td>Course Name</td>
		<td>Course Price</td>
		<td>Course Duration</td>
		<td>Course Author</td>
		<td>Course Description</td>
		<td>Course Image_url</td>
		<td>Course Total Sub Course</td>


	</tr>
	<%
	List<Course> courses = (List) request.getAttribute("courses");
	for (Course c : courses) {
			out.print("<td>" + c.getCourseId() + "</td>");
			out.print("<td>" + c.getCourseName() + "</td>");
			out.print("<td>" + c.getCoursePrice() + "</td>");
			out.print("<td>" + c.getCourseDuration() + "</td>");
			out.print("<td>" + c.getCourseAuthor() + "</td>");
			out.print("<td>" + c.getCourseDescription() + "</td>");
			out.print("<td>" + c.getImageUrl() + "</td>");
			out.print("<td>" + c.getTotalSubCourse() + "</td>");
		
			out.print("</tr>");
		}
	%>

</table>
<footer>
<!--To apply bootstrap on the html written above -->
	<link rel="stylesheet"
		href="webjars/bootstrap/4.5.3/css/bootstrap.min.css">
	<script src="webjars/bootstrap/4.5.3s/js/bootstrap.js"></script></footer>
</html>