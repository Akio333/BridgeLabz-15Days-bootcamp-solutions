# 1. Help user find degF or degC based on their Conversion Selection. Use
# Case Statement and ensure that the inputs are within the Freezing Point (
# 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
# a. degF = (degC * 9/5) + 32
# b. degC = (degF – 32) * 5/9

echo "Choose unit system 1] Celcius 2] Farenhite: "
read choice
echo "Enter temperature:"
read temp
case $choice in
  1)
    conv=`echo "($temp*9/5)+32"|bc`
    if [ $conv -ge 212 ]
    then
      echo "Temperature is above boiling point."
    elif [ $conv -le 32 ]
    then
      echo "Temperature is below freezing point."
    else
      echo "$temp Celcius = $conv Farenhite."
    fi
    ;;
  2)
    conv=`echo "($temp-32)*5/9"|bc`
    if [ $conv -ge 100 ]
    then
      echo "Temperature is above boiling point."
    elif [ $conv -le 0 ]
    then
      echo "Temperature is below freezing point."
    else
      echo "$temp Farenhite = $conv Celcius."
    fi
    ;;
esac




