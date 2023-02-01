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

    if [[ $choice != "9" ]]; then
        echo ""
        read -r -p "Introduce un numero: " number1
        read -r -p "Introduce otro numero: " number2
    fi

    case $choice in
        1)echo -e "\nEl resultado es: $number1 + $number2 = $(($number1 + $number2))"
        ;;
        2)echo -e "\nEl resultado es: $number1 - $number2 = $(($number1 - $number2))"
        ;;
        3)echo -e "\nEl resultado es: $number1 * $number2 = $(($number1 * $number2))"
        ;;
        4)echo -e "\nEl resultado es: $number1 / $number2 = $(($number1 / $number2))"
        echo "El resto es: $(($number1 % $number2))"
        ;;
        9)break
        ;;
    esac
done
