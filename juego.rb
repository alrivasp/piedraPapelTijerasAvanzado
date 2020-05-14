#metodo Valida Opcion
def valida_op op
    if op >= 1 && op <= 4
        true
    else
        false
    end 
end

#metodo evaluacion de juego
def evaluacion jugador1,jugador2
    if jugador1 == jugador2
        "Resultado del Juego: EMPATE"
    elsif jugador1 == 1 
        if jugador2 == 2
            "Resultado del Juego: Ganador Jugador 2"
        else
            "Resultado del Juego: Ganador Jugador 1"
        end 
    elsif jugador1 == 2 
        if jugador2 == 1
            "Resultado del Juego: Ganador Jugador 1"
        else
            "Resultado del Juego: Ganador Jugador 2"
        end 
    else
        if jugador2 == 1
            "Resultado del Juego: Ganador Jugador 2"
        else
            "Resultado del Juego: Ganador Jugador 1"
        end 
    end
end

def juego
    puts "*** Juego Piedra Papel y Tijeras ***"
    #Variables
    op = 0
    jugador = 1
    vista = 0
    jugador_uno = 0
    jugador_dos = 0  

    while op != 4      
        #Vistas
        if vista == 0
            puts "Turno Jugador N°#{jugador}"
            puts "1. Piedra"
            puts "2. Papel"
            puts "3. Tijeras"
            puts "4. Salir"
            print "Ingrese Opcion: "      
            op = gets.to_i  
        elsif vista == 1
            print "Vuelva a ingresar Opcion: "      
            op = gets.to_i 
        else
            puts evaluacion(jugador_uno,jugador_dos)
            op = 4                
        end
        
        #Validaciones y operaciones
        if valida_op(op) != true && vista < 2
            puts "OPCION ingresada Invalida"
            vista = 1
        elsif op == 4
            puts "."        
            puts ".."        
            puts "..."        
            puts "Gracias por Jugar!"         
        else        
            if jugador_uno == 0
                jugador = 2
                vista = 0
                jugador_uno = op
            elsif jugador_dos == 0
                vista = 2
                jugador_dos = op
            end
        end
    end
end
#llamada metodo Juego
juego()