class Bicicleta{
    const rodado
    const largo
    const marca
    const property accesorios = []

    method altura() = rodado * 2.5 + 15
    method velocidadCrucero() = if(largo > 120) rodado + 6 else rodado + 2
    method carga() = accesorios.sum({a => a.carga()})
    method peso() = rodado / 2 + accesorios.sum({a => a.peso()})
    method tieneLuz() = accesorios.any({a => a.esLuminoso()})
    method cantidadAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
}


class Farolito {
    method peso() = 0.5
    method esLuminoso() = true
    method carga() = 0
}

class Canasto {
    var volumen 
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