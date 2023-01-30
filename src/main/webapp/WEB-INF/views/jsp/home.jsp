<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
 <form:form action="search" method="get">
    <div class="input-group">
        <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
            aria-describedby="search-addon" />
        <button type="button" class="btn btn-outline-primary">search</button>
    </div>
 </form:form>
<c:if test="${not empty bookList}">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Name</th>
                <th scope="col">Author</th>
                <th scope="col">ISBN</th>
                <th scope="col">Price</th>
                <th scope="col">Number Of Pages </th>
                <th scope="col">Publish Date</th>
                <th scope="col">Category</th>

            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${bookList}" varStatus="index">
                <tr>
                    <th scope="row">1</th>
                    <td>${book.name}</td>
                    <td>${book.author}</td>
                    <td>${book.bookDetails.isbn}</td>
                    <td>${book.bookDetails.price}</td>
                    <td>${book.bookDetails.numberOrPage}</td>
                    <td>${book.bookDetails.publishDate}</td>
                    <td>${book.category.name}</td>
                    <td>
                        <button type="button" class="btn btn-secondary" on-click="location.href='edit/${book.id}'">Edit</button>
                        <button type="button" class="btn btn-success" on-click="location.href='delete/${book.id}'" href="#myModal${book.id}">Dalete</button>
                    </td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
        <c:if test="${bookList.size() ==0}">
            <br>
            <div class="alert alert-primary" role="alert">
               there is no data
              </div>
        </c:if>






    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>

</html>