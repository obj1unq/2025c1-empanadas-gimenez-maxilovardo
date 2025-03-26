object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method sueldo(){
        return sueldo
    }

    method cobra(valor){
        if(deuda>0){
            self.pagarDeudas(valor)
        }else{
            dinero = dinero + valor
        }
    }

    method pagarDeudas(valor){
        if(deuda>valor){
            deuda = deuda - valor
        }else{
            dinero = dinero + (valor - deuda)
            deuda = 0
        }
    }

    method gastar(cuanto){
        if(cuanto>dinero){
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }else{
            dinero = dinero - cuanto
        }
    }

    method deuda(){
        return deuda
    }

    method dinero(){
        return dinero
    }
}

object baigorria{
    var sueldo = 15 
    var empanadasVendidas = 0
    var totalCobrado = 0
    
    method empanadasVendidas(_empanadadasVendidas){
        empanadasVendidas = empanadasVendidas + _empanadadasVendidas
    }

    method sueldo(){
        return sueldo * empanadasVendidas
    }

    method cobra(valor){
        totalCobrado = totalCobrado + valor
        empanadasVendidas = 0
        sueldo = 15
    }

    method totalCobrado(){
        return totalCobrado
    }
}

object gimenez{
    var fondo = 300000

    method pagar(empleado){
        fondo = fondo - empleado.sueldo()
        empleado.cobra(empleado.sueldo())
    }



    method fondo(){
        return fondo
    }
}