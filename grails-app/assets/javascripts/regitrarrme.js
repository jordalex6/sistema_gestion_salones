function confirmarcontraseña(){
	var field3 = "password";
	
	var field4 = "password_confirmation";
	var valor1 =document.getElementById(field3).value;
	var valor3 =document.getElementById(field4).value;
	
	
	if (valor1==valor3){
		
		return true;
		
	} else{
		
		document.getElementById(field3).focus();
		alert('[ERROR las contraseñas no coincide intente escribindolas nuevamente');
		return false;
	
	}

}
function blancoscontraseña(){
	var field3 = "password";
	
	var field4 = "password_confirmation";
	var valor1 =document.getElementById(field3).value;
	
	var espacios = false;
	var cont = 0;
 
	while (!espacios && (cont < valor1.length)) {
	if (valor1.charAt(cont) == " ")
    espacios = true;
  cont++;
	}
 
if (espacios) {
  alert ("La contraseña no puede contener espacios en blanco");
  return false;
	}else{return true;}
}

function validarcontraseña(){
	blancoscontraseña();
	confirmarcontraseña();
	
	if (confirmarcontraseña() & blancoscontraseña()){
		return true;}
	else {return false;}
	
}