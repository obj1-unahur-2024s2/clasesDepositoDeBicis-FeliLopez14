class Deposito{
    const property bicicletas = []

    method bicisRapidas() = bicicletas.filter({b => b.velocidadCrucero() > 25})
    method marcasQueHay() = bicicletas.map({b => b.marca()}).asSet()
    method esNocturno() = bicicletas.count({b => b.tieneLuz()}) >= 2
    method algunaPuedeCargar(unaCarga) = bicicletas.any({b => b.carga() >= unaCarga})
    method marcaMasRapida() = bicicletas.max({b => b.velocidadCrucero()}).marca()
    method cargaTotalDeBicisRapidas() = bicicletas.filter({b => b.velocidadCrucero() > 170}).sum({b => b.carga()})
    method bicisSinAccesorios() = bicicletas.count({b => b.accesorios().isEmpty()})
    method sonCompanieras(bici1,bici2) = bici1.marca() == bici2.marca() and bici1.largo() - bici2.largo() < 10
    method bicisCompanierasDe(unaBici) = bicicletas.filter({bici => self.sonCompanieras(unaBici, bici)})
    
}