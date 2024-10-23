class Farolito {
    method peso() = 0.5
    method esLuminoso() = true
    method carga() = 0
}

class Canasto {
    const volumen 
    method peso() = volumen / 10
    method esLuminoso() = false
    method carga() = volumen * 2
}

class Morral {
    const largo
    const tieneOjoDeGato
    method peso() = 1.2
    method esLuminoso() = tieneOjoDeGato
    method carga() = largo / 3
}
/*Para agregar un accesorio nuevo, deberiamos crear un objeto completamente nuevo, con todas sus propiedades y metodos propios.*/