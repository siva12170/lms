<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 

 
<br> 
 
<h3 align="center"><u>View All Quizes</u></h3> 
 

 
<c:forEach items="${quiz}"  var="quizs"> 
<tr> 
<td><c:out value="${quizs.title}" /></td> 

<td>
<a href='<c:url value="viewquiz?id=${quizs.id}"></c:url>'>View</a>
<a href='<c:url value="question?id=${quizs.id}"></c:url>'>Attempt Quiz</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>