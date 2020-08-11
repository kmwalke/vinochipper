echo '' > responses.txt

for i in {1..10000}
do
 echo $i
 curl -X GET "https://vinoshipper.com/json-api/v2/wine-list?id=$i" -H "accept: */*" >> responses.txt
 echo -e "\n\n" >> responses.txt
done

