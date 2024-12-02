<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">


 <h3 class="pb-3 pt-3">Report Application </h3>
 
 


<form:form action="search" modelAttribute="search" method="POST">

<table>
 <tr>
 <td> PlanName </td>
 <td>
 <form:select path="planName">
 <form:option value="" >--Select--</form:option>
 <form:options items="${names}"/>
 </form:select>
 </td>
 
 <td> PlanStatus </td>
 <td>
 <form:select path="planStatus">
 <form:option value="" >--Select--</form:option>
  <form:options items="${status}"/>
 </form:select>
 </td>
 
 <td> Gender </td>
 <td>
 <form:select path="gender">
 <form:option value="" >--Select--</form:option>
  <form:option value="Male" >Male</form:option>
  <form:option value="FeMale" >FeMale</form:option>
 
 </form:select>
 
 </td>
 </tr>
 <tr>
 <td> Start Date</td>
 <td><form:input type="date" path="startDate"/></td>
 
 <td> End Date</td>
 <td><form:input type="date" path="endDate"/></td>
 </tr>
 <tr>
 <td><a href="/" class="btn btn-secondary">Reset</a>
 <input type="submit" value="Search" class="btn btn-primary">
 
</table>

</form:form>
<hr/>
	<table class="table table-striped">
		<tr>
			<th>Id</th>
			<th>Holder Name</th>
			<th>Plan Name</th>
			<th>Plan Status</th>
			<th>Gender</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Benefit Amount</th>
		</tr>
	<c:forEach items="${plans}" var="plan" varStatus="index">
		<tr>
			<td>${index.count}</td>
			<td>${plan.citizenName}</td>
			<td>${plan.planName}</td>
			<td>${plan.planStatus}</td>
			<td>${plan.gender}</td>
			<td>${plan.startDate}</td>
			<td>${plan.endDate}</td>
			<td>${plan.benefitAmount }</td>
		</tr>
	</c:forEach>
	<c:if test="${empty plans}">
	<tr>
		<td colspan="9" style="text-align:center">No Records Found</td>
	</tr>
	</c:if>
	</table>
<hr/>
	Export :<a href="/excel">Excel</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/pdf">Pdf</a>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous"></script>

</body>
</html>




