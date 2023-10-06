i=$(cat Shell_Userlist.csv | wc -l)
let i=i+1
for h in $(eval echo "{2..$i..1}");
	do	
	test[$h]=$(sed -n "$h p" Shell_Userlist.csv)
		for k in {1..5..1}
do
                	infos[$k]=$(echo ${test[$h]} | cut -d ',' -f$k)
			infos[$k]=$(echo ${infos[$k]} | cut -d ' ' -f$k)
done
use[$h]=${infos[2]}"-"${infos[3]}
echo ${use[$h]}
a=${infos[5]}
case $a in 
Admin*)
sudo useradd -m -u ${infos[1]} -p ${infos[4]} --gid root ${use[$h]}
echo "root"
;;
*)
sudo useradd -m -u ${infos[1]} -p ${infos[4]} ${use[$h]}
echo "user"
;;
esac
done
