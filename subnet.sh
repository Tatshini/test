networks=( $(docker network ls) )
for (( i=6; i<${#networks[@]}; i=i+4 )); do
        ##if ["${networks[i]}"!= "host" || "${networks[i]}"!="none"];
        ##then
                command="$(docker network inspect ${networks[i]}|grep ""Subnet"")"
                subnets+=($(echo $command))
                ##echo "${command}"
        ##fi
done
for ((i=1;i<${#subnets[@]};i=i+2)); do
        sub=$(echo ${subnets[i]}| cut -d'"' -f 2 )
        sub=$(echo ${sub}|cut -d'.' -f 2)
        compare+=($sub)
done
max=${compare[0]}
for n in "${compare[@]}" ; do
        ((n>max)) && max=$n
done
((max++))
if [ $max -eq 22 ]
then
        ((max++))
fi
echo "172.$max.0.1"
