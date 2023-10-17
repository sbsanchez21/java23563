let user
let pass 
let cantIntento

user=prompt("usuario")
pass=prompt("password")
cantIntento=1
//todo: colocar cant intentos en el while
while (user!="jperez@gmail.com" || pass!="1234") {
    console.error("User o pass incorrectos")
    user=prompt("usuario")
    pass=prompt("password")
    cantIntento++
    if (cantIntento>2) {
        console.error("Superó la cantidad de intento, su cuenta fue bloqueada")
        break
    }
}

// for (let i = 0; i < 3; i++) {
//     while (user!="jperez@gmail.com" || pass!="1234") {
//         console.error("User o pass incorrectos")
//         user=prompt("usuario")
//         pass=prompt("password")
//     }
// }

