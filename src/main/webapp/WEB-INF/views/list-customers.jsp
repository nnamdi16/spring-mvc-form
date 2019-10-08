<%--
  Created by IntelliJ IDEA.
  User: nnamdi
  Date: 10/7/19
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Spring MVC5 - form handling | Java Guides </title>
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"
          integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
          crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
  <div class="col-md-offset-1 col-md-10">
    <h2>CRM - Customer Relationship Manager</h2>
    <hr/>
    <input type="button" value="Add Customer" onclick="window.location.href=
showForm'; return false;" class="btn btn-primary"/>
    <br/><br/>
    <div class="panel panel-info">
      <div class="panel-heading">
        <div class="panel-title">Customer List</div>
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered">
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
          </tr>
          <%--                    Loop over and print the customers--%>
          <c:forEach var="tempCustomer" items="${customers}">

            <%--                    Construct an update link with customer id--%>
            <c:url var="updateLink" value="/customer/updateForm">
              <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>

            <%--                    Construct a delete link with customer id--%>
            <c:url var="deleteLink" value="/customer/delete">
              <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>

            <tr>
              <td>${tempCustomer.firstName}</td>
              <td>${tempCustomer.lastName}</td>
              <td>${tempCustomer.email}</td>


              <td>
                  <%--                        display the update link --%>
                <a href="${updateLink}">Update</a>
                <a href="${deleteLink}"
                   onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
    </div>
  </div>
</div>
</body>
</html>
