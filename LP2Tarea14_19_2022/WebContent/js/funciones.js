/**
 * 
 */
  import {nombre,apellido,usuario,clave,fechaNacimiento,formulario} from "./variables.js";

 export function validarFormulario() {
	
	// Validar los campos del Formulario
	if(nombre.value.length == 0) {
		mensaje("El nombre es obligatorio","error");
	}else if(apellido.value.length == 0) {
		mensaje("El apellido es obligatorio","error");
	}else if(usuario.value.length == 0) {
		mensaje("El usuario es obligatorio","error");
	}else if(clave.value.length == 0) {
		mensaje("El clave es obligatorio","error");
	}else if(fechaNacimiento.value.length == 0) {
		mensaje("La fecha de nacimiento es obligatorio","error");
	}else {
		mensaje("Registro exitoso");
	
	}
}

export function mensaje(txt,tipo="success") {
	// Creamos elemento
	const txtMensaje = document.createElement("p");
	// Agregamos texto
	txtMensaje.innerHTML = txt;
	// Agregamos clases de acuerdo a tipo
	if(tipo == "error") {
		txtMensaje.classList.add("alert","alert-danger","text-center");
	}else {
		txtMensaje.classList.add("alert","alert-success","text-center");
	}
	// Agregamos al DOM
	formulario.insertBefore(txtMensaje,document.querySelector(".label-control"));
	
	setTimeout(()=>{
		txtMensaje.remove();
	},2000);
	
	
}

// Funcion - Idea para trabajar con LocalStorage (Toma tiempo que no dispongo ( ´･･)ﾉ(._.`)`))
export function crearCard(nombre, apellido, usuario, clave, fechaNacimiento) {
	const divContainer = document.createElement("div");
	divContainer.className = "card";
	divContainer.style.width = "400px";
	divContainer.innerHTML = `
		<img class="card-img-top" src="./imagenes/avatar.png" alt="Card image" style="width:100%">
	    <div class="card-body">
	      <h4 class="card-title">${nombre} ${apellido}</h4>
	      <p class="card-text">
	      <b>Usuario:</b>  ${usuario} <br>
	      <b>Contraseña:</b>  ${clave} <br>
	      <b>Fecha Nacimiento:</b>  ${fechaNacimiento}
	      </p>
	      <a href="#" class="btn btn-primary">Mi Perfil</a>
	    </div>
	
	`;
	return divContainer;
}

