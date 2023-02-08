#! /bin/bash

clear
choice=""
echo -e "\n============================"
echo "        CALCULADORA"
echo -e "============================\n"
while [[ $choice != "9" ]]; do
    echo -e "\n¿Qué quieres hacer?"
    echo "1. Sumar."
    echo "2. Restar."
    echo "3. Multiplicar."
    echo "4. Dividir."
    echo -e "9. Salir.\n"
    read -r -p "Elige una opción: " choice

    # If 'choice' equals '9', go out of while.
    if [[ $choice != "9" && $choice != "" ]]; then
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
        9)break
        ;;
    esac
done
