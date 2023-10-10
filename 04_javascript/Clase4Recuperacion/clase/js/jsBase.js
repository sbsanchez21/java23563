let a
let b
a=3
b=4
b=5

let c=33
let d=44
let t=3
t="se cambió de nro a texto"
t='con comillas simples'

let nombre="Juan"
let apellido="Suarez"

// operadores aritméticos
let result=a+b
result=b-c
result=b/c
result=b*c

result=nombre + apellido
result="El nombre y apellido son " + nombre + ", " + apellido
result=`El nombre y apellido del cliente son ${nombre}, ${apellido} `


// Operadores de comparación
resultado = (a == b);
console.log( `a == b: ${resultado}`);

resultado = (a != b);
console.log( `a != b: ${resultado}`);

resultado = (a > b);
console.log( `a > b: ${resultado}`);

resultado = (a < b);
console.log( `a < b: ${resultado}`);

resultado = (a >= b);
console.log( `a >= b: ${resultado}`);

resultado = (a >= d);
console.log( `a >= d: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a <= c);
console.log( `a <= c: ${resultado}`);

let 
edad
edad=22
if (edad>=18) {
    document.getElementById("mensajes").innerHTML="Bienvenido a  la página"
    document.getElementById("mensajes").className="bg-info p-1"
    
} else {
    document.getElementById("mensajes").innerHTML="No puede ingresar a la página es menor de edad"
    document.getElementById("mensajes").className="bg-danger p-1"
}


// Operadores lógicos
a=10
b=8
c=6
resultado = (a > b) && (b > c);
console.log( `(a > b) && (b > c): ${resultado}`);

resultado = (a > b) && (c > b);
console.log( `(a > b) && (c > b): ${resultado}`);

resultado = (a > b) || (b > c);
console.log( `(a > b) ||  (b > c): ${resultado}`);

resultado = (b > a) || (b > c);
console.log( `(b > a) ||  (b > c): ${resultado}`);

resultado = !((b > a) || (b > c));
console.log( `!((b > a) || (b > c)): ${resultado}`);

let user
let pass
// user=prompt("Ingresar el usuario")
// pass=prompt("Ingresar pass")

if (user=="jperez@gmail.com" && pass=="1234") {
    document.getElementById("mensajes").innerHTML="Bienvenido a  la página"
    document.getElementById("mensajes").className="bg-info p-1"
    
} else {
    document.getElementById("mensajes").innerHTML="User o pass incorrectos"
    document.getElementById("mensajes").className="bg-danger p-1"
    
}


let hoyLlueve
let hayPronostico

// hoyLlueve=prompt("Está lloviendo?")
// hayPronostico=prompt("Hay pronóstico de lluvia?")

if (hoyLlueve || hayPronostico) {
    document.getElementById("mensajes").innerHTML="Llevar paragüas"
    document.getElementById("mensajes").className="bg-danger p-1"

} else {
    document.getElementById("mensajes").innerHTML="No llevar paragüas"
    document.getElementById("mensajes").className="bg-info p-1"

}

// condicional simple y doble
const edadMayor=18
edad=15

if (edad>=edadMayor) {
    document.getElementById("mensajes").innerHTML="Mayor de edad"
    document.getElementById("mensajes").className="bg-info p-1"
} else {
    document.getElementById("mensajes").innerHTML="No Mayor de edad"
    document.getElementById("mensajes").className="bg-danger p-1"

}

let nroMes=6;
switch (nroMes) {
    case 1:
        console.log("Enero");
        break;

    case 2:
        console.log("Febrero");
        break;

    case 3:
        console.log("Marzo");
        break;

    default:
        console.log("No se encontró el mes");
        break;
}

for (let i = 0; i < 4; i++) {
    console.log( `Valor de i: ${i}`);
}

// sumatoria: 0+0=0, 0+1=1, 1+2=3, 3+3=6
let sumatoria=0
for (let i = 0; i < 4; i++) {
    sumatoria=sumatoria+i
   
}