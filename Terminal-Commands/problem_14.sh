# prob 14) Data analysis / manipulation (Awk)

#! /bin/bash
# i) print EmployeeName and TotalPay who has BasePAy grater than 10000
cat data.csv | awk '{if($4>10000) print $2" : "$4}'
echo "------------------------------"
# ii) What is the aggregate otalPay of employees whoose jobtitle is CAPTAIN
cat data.csv | awk '{if($3=="CAPTAIN")sum += $7}END{print "Aggregat Pay : "sum}'
echo "------------------------------"
# iii) Print JobTitle and OverTimepay who has Ovevrtime is between 7000 and 10000
cat data.csv | awk '{if($5>7000 && $5<10000) print $3" "$5}'
echo "------------------------------"
# iv) Print average BasePay
cat data.csv | awk '{sum += $4; cnt +=1}END {print sum/cnt}'