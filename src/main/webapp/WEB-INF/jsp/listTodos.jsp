<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Example</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
    <div class="container-fluid">
      <a class="navbar-brand text-white" href="#">in28minutes</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto">
          <li class="nav-item "><a class="nav-link text-white"  href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link text-white" href="#">About</a></li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link text-white" href="#">Logout</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Table -->
  
  <h2 class="text-dark p-2 m-2 text-center">  Your Todos </h2>
  <div class="container mt-4">
    <table class="table table-bordered table-striped">
      <thead class="table-dark">
        <tr>
			<th>ID</th>
          <th>Description</th>
          <th>Target Date</th>
          <th>Is it Done?</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
       
		
		<c:forEach items="${todosList}" var="todo">
		    <tr>
				<td>${todo.ID}</td>

		        <td>${todo.description}</td>
		        <td>${todo.targetDate}</td>
		        <td>${todo.done}</td>
		        <td>
		            <button class="btn btn-success btn-sm">Update</button>
		            <button class="btn btn-warning btn-sm">Delete</button>
		        </td>
		    </tr>
		</c:forEach>

          <td>
            <button class="btn btn-success btn-sm">Update</button>
            <button class="btn btn-warning btn-sm">Delete</button>
          </td>
      </tbody>
    </table>
  </div>

  
  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
