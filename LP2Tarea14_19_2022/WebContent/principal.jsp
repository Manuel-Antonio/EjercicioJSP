<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link href="./css/styles.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%
	String nombre = (String) request.getParameter("txt_nombre");
	String apellido = (String) request.getParameter("txt_apellido");
	String usuario = (String) request.getParameter("txt_usuario");
	String fechaNacimiento = (String) request.getParameter("txt_fechaNacimiento");
%>
<div class="container mt-4" id="container_principal">
<div class="row">
	<div class="col">
		<lottie-player src="https://assets9.lottiefiles.com/packages/lf20_ddr3jxu2.json"  background="transparent"  speed="1"  style="width: 600px; height: 600px;"  loop autoplay></lottie-player>
	</div>
	<div class="col">
		<div class="card" style="width:400px">
		    <img class="card-img-top" src="./imagenes/avatar.png" alt="Card image" style="width:100%">
		    <div class="card-body">
		      <h4 class="card-title"><%=nombre%> <%=apellido %></h4>
		      <p class="card-text">
		      <b>Usuario:</b>  <%=usuario %> <br>
		      <b>Fecha Nacimiento:</b>  <%=fechaNacimiento %>
		      </p>
		      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
	    		Mi perfil
	  		  </button>
		    </div>
	  	</div>
	</div>
</div>

	
</div>
<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><%=nombre%> <%=apellido %></h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="card-body">
	      <p class="card-text">
	      <b>Usuario:</b>  <%=usuario %> <br>
	      <b>Fecha Nacimiento:</b>  <%=fechaNacimiento %>
	      </p>

	    </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>