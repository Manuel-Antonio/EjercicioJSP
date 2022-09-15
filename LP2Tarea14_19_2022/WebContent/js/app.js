/**
 * 
 */
// Importamos de otros archivos JS
import {formulario} from "./variables.js";
import {validarFormulario} from "./funciones.js";
  // Ejecutar cuando el DOM este cargado al 100%

formulario.addEventListener("submit",validarFormulario);


