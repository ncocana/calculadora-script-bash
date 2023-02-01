#! /bin/bash

clear
num1="x"
while [[ -n $num1 ]]; do
    echo "Introduce dos números (si no introduces ninguno, saldrás del bucle):"
    echo "Número 1:"
    read num1
    if [[ -n $num1 ]]; then
        echo "Número 2:"
        read num2
        echo "¿Qué quieres hacer?"
        echo "1. Sumar."
        echo "2. Restar."
        echo "3. Multiplicar."
        echo "4. Dividir."
        echo "Elige una opción:"
        read choice

        case $choice in
            1)res=`expr $num1 + $num2`
            echo "$num1 + $num2 = $res"
            ;;
            2)res=`expr $num1 - $num2`
            echo "$num1 - $num2 = $res"
            ;;
            3)res=`expr $num1 \* $num2`
            echo "$num1 * $num2 = $res"
            ;;
            4)res=`expr $num1 / $num2`
            resto=`expr $num1 % $num2`
            echo "$num1 / $num2 = $res; resto = $resto"
            ;;
        esac
        echo "El resultado es: $res."
    fi
done
