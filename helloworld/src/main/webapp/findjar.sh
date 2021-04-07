LIST=`find ./* -name "*.jar" -print | awk '{ print $0 }'`
for JAR in ${LIST}
do
echo "############################################################"
echo " "${PWD}/$JAR
echo "------------------------------------------------------------"
jar tvf $JAR | awk '{ print $8 }' | grep $1
done
