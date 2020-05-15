#metodo Valida Opcion
def valida_op op
    if op >= 1 && op <= 4
        true
    else
        false
    end 
end

#metodo dibujar cuadrado
def method_cuadrado numero
    result = ""
    for i in (1..numero)
        for b in (1..numero) 
            result += "*"
        end
        result += "\n"
    end
    result
end

#metodo dibujar triangulo
def method_Triangulo numero
    result = ""
    for i in (1..numero)
        for b in (1..numero) 
            if b <= i
                result += "*"
            else
                result += " "
            end
        end
        result += "\n"
    end
    result
end

#metodo dibujar piramide
def method_piramide numero
    result = ""
    numero.times do |i|
        i.times do 
            result += "*"
        end 
        result += "\n"
    end 
    numero.times do |i|
        (numero-i).times do |j|
            result += "*"
        end
        result += "\n"
    end    
    result
end

def figuras
    puts "*** Figuras Strings ***"
    #Variables
    op = 0
    num = 0
    vista = 0

    while op != 4      
        #Vistas
        if vista == 0
            puts "    MENU"
            puts "1. Cuadrado"
            puts "2. Triangulo"
            puts "3. piramide"
            puts "4. Salir"
            print "Ingrese Opcion: "      
            op = gets.to_i  
        elsif vista == 1
            print "Vuelva a ingresar Opcion: "      
            op = gets.to_i 
        elsif vista == 2
            print "Ingrese un Numero: "
            num = gets.to_i  
        else
            if op == 1
                puts method_cuadrado(num)
            elsif op == 2
                puts method_Triangulo(num)
            else 
                puts method_piramide(num)
            end  
            op = 4        
        end
        
        #Validaciones y operaciones
        if valida_op(op) != true && vista < 2
            puts "OPCION ingresada Invalida"
            vista = 1
        elsif op == 4     
            puts "Gracias por VER Figuras!"         
        elsif num == 0  
            if vista == 0 || vista == 1                    
                vista = 2
            else
                puts "Numero ingresado debe ser mayor a 0 "       
                vista = 2
            end
        elsif num > 0        
            vista = 3
        end
    end
end
#llamada metodo figuras
figuras()