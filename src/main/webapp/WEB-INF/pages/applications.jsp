<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<html>
<head>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"> -->
<link rel="stylesheet" href="./css/theme.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./css/global.css">

<style>
td {
	height: 75px!important;
	vertical-align: middle!important;
}
tr {
	text-align: center;
}
</style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top bar-logo" role="navigation">
   <div class="navbar-header">
      <a class="navbar-brand" href="./news.html"><span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span> PhinkeyHR</a>
   </div>
</nav>
<nav class="navbar navbar-default navbar-fixed-top bar-nav" role="navigation">
   <div>
     <ul class="nav navbar-nav">
         <li><a href="./news">News Feed</a></li>
         <li><a href="./details">My Info</a></li>
         <li><a href="./list">Employees</a></li>
         <li class="active"><a href="./applications">Applications</a></li>
         <li><a href="./reports.html">Reports</a></li>
      </ul>
   </div>
</nav>

<div class="container">
<div class="row">
	<div class="col-sm-12">
		<h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Applications <span class="label label-default">${aplicatorsCount}</span></h3>
	</div>
</div>
<div class="row">
	<div class="col-sm-12">
		<table class="table table-striped table-hover" style="margin-top: 10px;">
			<col width="20%">
  			<col width="40%">
  			<col width="40%">
			<tr>
				<th>Photo</th>
				<th>Name</th>
				<th>Date</th>
			</tr>
			<c:forEach var="applicant" items="${aplicators}" varStatus="status">
				<tr class="clickable" em_id="${applicant.user_id}">
					<td><span>
							<img width="100" height="100" src="<c:url value="/images/${applicant.picture}"/>" />
						</span>
					</td>
					<td>${applicant.name} ${applicant.surname}</td>
					<td>${applicant.application_date}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</div>

<script type="text/javascript">
$('.clickable').click(function() {
	window.location.href = "./application?id="+$(this).attr("em_id");
});
</script>
</body>
</html>