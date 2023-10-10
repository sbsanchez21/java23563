function mouseOn() {
    document.getElementById("mensajes").innerHTML="Mouse arriba"
    document.getElementById("mensajes").className="bg-info p-1 m-2 rounded"

}


let usuOk="jperez@gmail.com"
let passOK="1234"

function validarUsuYPass() {
    let usu=document.getElementById("user").value
    let pass=document.getElementById("pass").value

    if (usu==usuOk && pass==passOK) {
        document.getElementById("mensajes").innerHTML="Login correcto"
        document.getElementById("mensajes").className="bg-info p-1 m-2 rounded"
    } else {
        document.getElementById("mensajes").innerHTML="Login incorrecto"
        document.getElementById("mensajes").className="bg-danger p-1 m-2 rounded"
        
    }
}

let edad=15



function mouseOff() {
    document.getElementById("mensajes").innerHTML="Mouse fuera"
    document.getElementById("mensajes").className="bg-danger p-1 m-2 rounded"

}

function fortaleza() {
    let pass=document.getElementById("pass").value
    document.getElementById("mensajes").innerHTML=pass.length
    document.getElementById("mensajes").className="bg-danger p-1 m-2 rounded"
}