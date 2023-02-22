#! /bin/bash

clear
choice=""
numeros=^[1-7,9]+$
echo -e "\n============================"
echo "        CALCULADORA"
echo -e "============================\n"
while [[ $choice != "9" ]]; do
    echo -e "\n¿Qué quieres hacer?"
    echo "1. Sumar."
    echo "2. Restar."
    echo "3. Multiplicar."
    echo "4. Dividir."
    echo "5. Exponenciación."
    echo "6. Raiz cuadrada."
    echo "7. Logaritmo."
    echo -e "9. Salir.\n"
    read -r -p "Elige una opción: " choice
    if [[ $choice =~ $numeros ]]; then
    	if [[ $choice == "7" ]]; then
            echo ""
            read -r -p "Introduce el numero en el que se va a hacer la operacion: " number1
            read -r -p "Introduce la base: " number2
    	fi
   	    # If 'choice' equals '6', ask only one number.
    	if [[ $choice == "6" ]]; then
            echo ""
            read -r -p "Introduce un numero: " number1
    	# If 'choice' equals '9' or no option was chosen, go out of the while loop.
    	# Otherwise, ask for two numbers.
    	elif [[ $choice != "9"  && $choice != "" && $choice != "7"  ]]; then
            echo ""
            read -r -p "Introduce un numero: " number1
            read -r -p "Introduce otro numero: " number2
    	fi
    	echo ""
    	case $choice in
        	1)result=$(bc <<< "($number1) + ($number2)")
        	echo "$number1 + $number2 = $result"
        	echo "El resultado es: $result"
        	;;
        	2)result=$(bc <<< "($number1) - ($number2)")
        	echo "$number1 - $number2 = $result"
        	echo "El resultado es: $result"
        	;;
       		3)result=$(bc <<< "($number1) * ($number2)")
        	echo "$number1 * $number2 = $result"
        	echo "El resultado es: $result"
        	;;
        	4)result=$(bc <<< "($number1) / ($number2)")
        	echo "$number1 / $number2 = $result"
        	echo "El resultado es: $result"
       		echo "El resto es: $(bc <<< "($number1) % ($number2)")"
        	;;
        	5)result=$(($number1 ** $number2))
        	echo "$number1 ** $number2 = $result"
        	echo "$number1 elevado a $number2 es: $result"
        	;;
        	6)result=$(bc <<< "scale=2; sqrt($number1)")
        	echo "La raíz cuadrada de $number1 es: $result"
        	;;
			7)result=$(echo "l($number1)/l($number2)" | bc -l)
			echo "El logaritmo de $number1 en base $number2 es: $result"
			;;
			9)break
			;;
			esac
	else 
	    echo "Introduce un numero válido, por favor."
	    continue
	fi
done

