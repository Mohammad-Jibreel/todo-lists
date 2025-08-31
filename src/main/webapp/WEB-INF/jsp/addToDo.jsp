<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create / Edit Todo</title>

  <!-- Bootstrap CSS from WebJars -->
  <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" />
  <!-- Bootstrap Icons from WebJars -->
  <link rel="stylesheet" href="webjars/bootstrap-icons/1.13.1/font/bootstrap-icons.min.css"/>

  <style>
    body {
      background: linear-gradient(120deg, #e3f2fd, #f8f9fa);
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }
    .todo-card {
      width: 100%;
      max-width: 600px;
      border-radius: 15px;
      box-shadow: 0 6px 18px rgba(0,0,0,0.15);
      animation: fadeIn 0.6s ease-in-out;
    }
    .card-header {
      background: linear-gradient(90deg, #0d6efd, #0dcaf0);
      color: white;
      font-size: 1.5rem;
      font-weight: 600;
      text-align: center;
      border-radius: 15px 15px 0 0 !important;
      padding: 15px;
    }
    .form-label {
      font-weight: 600;
    }
    .btn-custom {
      border-radius: 8px;
      padding: 10px 20px;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }
    .btn-custom:hover {
      transform: translateY(-2px);
      box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }
    .input-group-text {
      background: #f1f3f4;
      border-radius: 8px 0 0 8px;
    }
    @keyframes fadeIn {
      from {opacity: 0; transform: translateY(20px);}
      to {opacity: 1; transform: translateY(0);}
    }
  </style>
</head>
<body>

  <div class="card todo-card">
    <div class="card-header">
      Manage Todo
    </div>
    <div class="card-body p-4">
		<form:form modelAttribute="todo" method="post" action="saveToDo">
		  <!-- ID -->
		  <div class="mb-3">
		    <label for="id" class="form-label">ID</label>
		    <div class="input-group">
		      <span class="input-group-text"><i class="bi bi-hash"></i></span>
		      <form:input path="id" type="number" class="form-control" id="id" placeholder="Enter Todo ID"/>
		    </div>
		  </div>

		  <!-- Username -->
		  <div class="mb-3">
		    <label for="username" class="form-label">Username</label>
		    <div class="input-group">
		      <span class="input-group-text"><i class="bi bi-person-circle"></i></span>
		      <form:input path="username" class="form-control" id="username" placeholder="Enter username"/>
		    </div>
		  </div>

		  <!-- Description -->
		  <div class="mb-3">
		    <label for="description" class="form-label">Description</label>
		    <div class="input-group">
		      <span class="input-group-text"><i class="bi bi-pencil-square"></i></span>
		      <form:textarea path="description" class="form-control" id="description" rows="3" placeholder="Enter todo description"/>
		  <form:errros path="description"/> 
		  
		   </div>
		  </div>

		  <!-- Target Date -->
		  <div class="mb-3">
		    <label for="targetDate" class="form-label">Target Date</label>
		    <div class="input-group">
		      <span class="input-group-text"><i class="bi bi-calendar-event"></i></span>
		      <form:input path="targetDate" type="date" class="form-control" id="targetDate"/>
		    </div>
		  </div>

		  <!-- Done -->
		  <div class="form-check mb-4">
		    <form:checkbox path="done" class="form-check-input" id="done"/>
		    <label class="form-check-label" for="done">Mark as Done</label>
		  </div>

		  <!-- Buttons -->
		  <div class="d-flex justify-content-between">
		    <button type="submit" class="btn btn-success btn-custom">
		      <i class="bi bi-save"></i> Save
		    </button>
		    <button type="reset" class="btn btn-secondary btn-custom">
		      <i class="bi bi-arrow-counterclockwise"></i> Reset
		    </button>
		  </div>
		</form:form>

    </div>
  </div>

  <!-- Bootstrap JS from WebJars -->
  <script src="webjars/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
  <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js" type="text/javascript"></script>
</body>
</html>
