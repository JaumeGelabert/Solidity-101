pragma solidity ^0.8.0;

contract enums {
    //Interruptor. Puede estar en ON o en OFF
    enum Interruptor {
        ON,
        OFF
    }

    //Variable de tipo de dato
    Interruptor Interruptor_Variable;

    //Modificar valor de una variable de tipo enum
    function enceder() public {
        Interruptor_Variable = Interruptor.ON;
        // Ahora, la variable Interruptor_Variable vale ON.
    }

    function fijarEstado(uint256 _k) public {
        //Establecemos el valor de la variable en base al indice _k que pasemos.
        //Por ejemplo, si pasamos 0, la variable valdra ON. Si pasamos 1, la variable valdrá OFF.
        Interruptor_Variable = Interruptor(_k);
    }

    function Estado() public view returns (Interruptor) {
        return Interruptor;
    }

    //Enumeracio de direcciones
    enum Direcciones {
        ARRIBA,
        ABAJO,
        DERECHA,
        IZQUIERDA
    }

    //Variable de tipo de dato
    //Hemos declarado la variable y la hemos inicializado a la vez.
    Direcciones Direcciones_Variable = Direcciones.ARRIBA;

    //Modificar valor de una variable de tipo enum
    function arriba() public {
        Direcciones_Variable = Direcciones.ARRIBA;
        // Ahora, la variable Direcciones_Variable vale ARRIBA.
    }

    function abajo() public {
        Direcciones_Variable = Direcciones.ABAJO;
        // Ahora, la variable Direcciones_Variable vale ABAJO.
    }
}
