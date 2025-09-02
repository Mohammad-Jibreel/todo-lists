<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<style>
    body {
      background: linear-gradient(120deg, #e3f2fd, #f8f9fa);
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }
	
    
    .todo-card {
      border-radius: 15px;
      box-shadow: 0 6px 18px rgba(0,0,0,0.15);
      animation: fadeIn 0.6s ease-in-out;
	  display:inline-block;
	  text-align:center;
	  width:50%;
	  margin: 5% 25%;
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
  <div class="card todo-card">
    <div class="card-header">
      Edit Todo
    </div>
    <div class="card-body p-4">
		<!-- form action points to update URL -->
		<form:form method="post" modelAttribute="todo" action="/update-todo">

		  <!-- Hidden ID -->
		  <form:hidden path="id"/>

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
		    </div>
		    <form:errors path="description" cssClass="text-danger"/>
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
		    <button type="submit" class="btn btn-primary btn-custom">
		      <i class="bi bi-pencil-square"></i> Update
		    </button>
		    <a href="/todos" class="btn btn-secondary btn-custom">
		      <i class="bi bi-arrow-left"></i> Cancel
		    </a>
		  </div>
		</form:form>

    </div>
  </div>

  <!-- Bootstrap JS from WebJars -->
  <script src="webjars/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
  <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js" type="text/javascript"></script>
</body>
</html>
