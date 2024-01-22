#Спрашиваем коэффициенты квадратного уравнения
read -p "Enter the coefficient A before x^2: " a
read -p "Enter the coefficient B before x: " b
read -p "Enter the free coefficient C: " c

#Вычисляем дискриминант
D=$(($b*$b-4*$a*$c))

#В зависимости от знака дискриминанта и равенства нулю, выводим количество действительных корней введенного уравнения
echo
echo -n "Equation $a*x^2 + ($b)*x + ($c) has "
if [ $D \> 0 ]
then
echo -n "2 different"
elif [ $D \= 0 ]
then
echo -n "2 equal"
else
echo -n "no"
fi
echo " real solutions"
echo

#Приостанавливаем скрипт (чтобы терминал не закрывался сразу)
echo "Press any key to exit..."
read -n 1
