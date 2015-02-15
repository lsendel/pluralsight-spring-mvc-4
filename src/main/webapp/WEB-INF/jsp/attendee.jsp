<%--
  Created by IntelliJ IDEA.
  User: daniel.arlitt
  Date: 2/12/15
  Time: 9:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Attendee Page</title>
        <style>
            .error {
                color: #FF0000;
            }
            .errorblock {
                color: #000;
                background-color: #FFEEEE;
                border: 3px solid #FF0000;
                padding: 8px;
                margin: 16px;
            }
        </style>
    </head>
    <body>
        <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
        <form:form commandName="attendee">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <label for="name"><spring:message code="attendee.name" /></label>
            <form:input path="name" cssErrorClass="error" />
            <form:errors path="name" cssClass="error" />
            <br />
            <label for="emailAddress"><spring:message code="attendee.email.address" /></label>
            <form:input path="emailAddress" cssErrorClass="error" />
            <form:errors path="emailAddress" cssClass="error" />
            <br />
            <label for="phone"><spring:message code="attendee.phone" /></label>
            <form:input path="phone" cssErrorClass="error" />
            <form:errors path="phone" cssClass="error" />
            <br />
            <input type="submit" class="btn" value="Enter Attendee" />
        </form:form>
    </body>
</html>

