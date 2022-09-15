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
<title>Registro de Cuenta</title>
</head>
<body>
	<div class="container mt-5 px-5">
		<div class="row">
			<div class="col-12 p-4 " id="frmContainer">
				<h1 class="text-center">Registro de cuenta</h1>
				<form id="frmRegistro" method="post" action="principal.jsp" name="frmPrincipal">
					<!-- Campo Nombre -->
					<label for="nombre" class="label-control mt-3">Nombre: </label>
					<input type="text" class="form-control" name="txt_nombre" id="nombre" placeholder="Escribe tu nombre">
					<!-- Campo Apellido -->
					<label for="apellido" class="label-control mt-3">Apellido: </label>
					<input type="text" class="form-control" name="txt_apellido" id="apellido" placeholder="Escribe tu apellido">
					<!-- Combo Genero -->
					<label for="genero" class="label-control mt-3">Genero: </label>
					<select name="txt_genero" class="form-select" id="genero">
						<option value="Masculino" >Masculino</option>
						<option value="Femenino" default="true">Femenino</option>
						<option value="Personalizado">Personalizado</option>
					</select>
					<!-- Campo Usuario -->
					<label for="usuario" class="label-control mt-3">Usuario: </label>
					<input type="text" class="form-control" name="txt_usuario" id="usuario" placeholder="Escribe tu usuario">
					<!-- Campo Contraseña -->
					<label for="clave" class="label-control mt-3">Contraseña: </label>
					<input type="password" class="form-control" name="txt_clave" id="clave" placeholder="Escribe tu contraseña">
					<!-- Campo Fecha de Nacimiento -->
					<label for="fechaNacimiento" class="label-control mt-3">Fecha de Nacimiento: </label>
					<input type="date" class="form-control" name="txt_fechaNacimiento" id="fechaNacimiento">
					<!-- Boton registrar -->
					<input type="submit" class="btn btn-primary mt-4" value="Registrar">
				</form>
				
				<p class="mt-4">Si ya tiene una cuenta, ingrese <a href="#" data-bs-toggle="modal" data-bs-target="#myModal">aquí</a> </p>
			</div>
		</div>
	</div>
	
	<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Inicio de Sesion</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="card-body">
			<form action="bienvenido.jsp" class="was-validated" method="post">
			    <div class="mb-3 mt-3">
			      <label for="uname" class="form-label">Username:</label>
			      <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
			      <div class="valid-feedback">Valid.</div>
			      <div class="invalid-feedback">Please fill out this field.</div>
			    </div>
			    <div class="mb-3">
			      <label for="pwd" class="form-label">Password:</label>
			      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
			      <div class="valid-feedback">Valid.</div>
			      <div class="invalid-feedback">Please fill out this field.</div>
			    </div>
			    <div class="form-check mb-3">
			      <input class="form-check-input" type="checkbox" id="myCheck"  name="remember" required>
			      <label class="form-check-label" for="myCheck">I agree on blabla.</label>
			      <div class="valid-feedback">Valid.</div>
			      <div class="invalid-feedback">Check this checkbox to continue.</div>
			    </div>
			  <button type="submit" class="btn btn-primary">Submit</button>
		  </form>

	    </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<script src="./js/app.js" type="module"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>