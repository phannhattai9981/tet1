<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href='<c:url value="/webapp/resources/css/home.css" />' rel='stylesheet'>

</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="newBook">add book <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
    </nav>
    <div class="container" style="margin-top: 20px;  display: flex; justify-content: center;">
        <div class="col-md-4">
            <form:form action="${action}" method="POST" modelAttribute="book">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">
                        <c:out value="${msg}" />
                    </legend>
                    <c:if test="${type.equals('update')}">
                        <div class="form-group">
                            <label class="control-label">ID</label>
                            <form:input path="id" type="text" class="form-control" id="id" placeholder="ID"
                                disabled="true"/>
                            <form:hidden path="id"/>
                            <form:hidden path="bookDetails.id"/>
                        </div>
                    </c:if>
                    <div class="form-group">
                        <label class="control-label">Name (*)</label>
                        <form:input path="name" type="text" class="form-control" placeholder="Name" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Author (*)</label>
                        <form:input path="author" type="text" class="form-control" placeholder="Author"
                            required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">ISBN (*)</label>
                        <form:input path="bookDetails.isbn" type="text" class="form-control" placeholder="ISBN"
                            required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Price (*)</label>
                        <form:input path="bookDetails.price" type="number" step="any" min="1" class="form-control"
                            placeholder="Price" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Number Of Pages (*)</label>
                        <form:input path="bookDetails.numberOrPage" type="number" min="1" class="form-control"
                            placeholder="Number Of Page" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Public Date (*)</label>
                        <form:input path="bookDetails.publishDate" type="date" class="form-control"
                            placeholder="Public Date" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Category (*)</label>
                        <form:select path="category.id" class="form-control">
                            <form:option value="0" label="--- Select ---" />
                            <form:options items="${categoryList}" />
                        </form:select>
                    </div>
                    <br>
                    <button class="btn btn-primary btn-sm" type="submit" style="width: 432px; height: 38px; font-size: 110%;">Save</button>
                </fieldset>
            </form:form>
        </div>
    </div>
</body>

</html>