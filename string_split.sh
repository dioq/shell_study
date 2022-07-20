
string="9876578873=a5920ff98558e095726478282f215a08dfe973fb"

array=(`echo $string | tr '=' ' '` )  

# for var in ${array[@]}
# do
# echo $var
# done

echo ${array[1]}