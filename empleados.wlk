object galvan {
    var sueldo = 15000

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method sueldo(){
        return sueldo
    }
}

object baigorria{
    const sueldo = 15 * empanadadasVendidas
    var empanadadasVendidas = 0

    method empanadadasVendidas(_empanadadasVendidas){
        empanadadasVendidas = _empanadadasVendidas
    }

    method sueldo(){
        return sueldo
    }
}

object gimenez{
    var fondo = 300000

    method pagar(empleado){
        fondo = fondo - empleado.sueldo()
    }
}