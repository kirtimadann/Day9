isfulltime=2;
isparttime=1;
workingday=20;
totalsalary=0;
emprateperhrs=20;

for(( day=0; day<=$workingday; day++ ))
do

empcheck=$((RANDOM%3))

case $empcheck in
    $isfulltime)
    emphrs=8
     
     ;;


    $isparttime)
    emphrs=4
      ;;

     *)
    ;;

esac


salary=$(($emphrs*$emprateperhrs));
totalsalary=$(($workingday*$salary));

done

is_fulltime=2;
is_parttime=1;
max_hrs_month=100;
emp_rate_perhrs=20;
min_working_days=20;

total_working_days=0;
total_emp_hrs=0;

while(( total_emp_hrs < max_hrs_month && total_working_days < min_working_days ))
do

(( total_working_days++ ))

empcheck=$(( RANDOM%3 ))

case $empcheck in

      $is_fulltime)
          hrs=8
          ;;
      $is_parttime)
       hrs=4
          ;;
    *)
      hrs=0
;;

esac
       
totalemphrs=$[( $total_emp_hrs+$hrs )];

totalsalary=$[( $totalemphrs*$emp_rate_perhrs )];

done
