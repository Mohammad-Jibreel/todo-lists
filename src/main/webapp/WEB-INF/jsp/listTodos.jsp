
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

  <!-- Table -->
  <div class="container">
    <h2 class="text-dark p-2 m-2 text-center">Your Todos</h2>
    
    <a href="add-todo" class="btn btn-primary mb-2">Add New Todo</a>
    
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
              <td>${todo.id}</td>
              <td>${todo.description}</td>
              <td>${todo.targetDate}</td>
              <td>${todo.done}</td>
              <td>
                <a href="update-todo?id=${todo.id}" class="btn btn-success btn-sm">Update</a>
                <a href="delete-todo?id=${todo.id}" class="btn btn-warning btn-sm">Delete</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <%@ include file="common/footer.jspf" %>
