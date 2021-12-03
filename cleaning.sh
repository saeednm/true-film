wc -l movies_metadata.csv   
grep -c -ve '^False\|True' movies_metadata.csv

grep -o '\s' special.csv| cat -v 

perl  -Mutf8 -CSDL -i.bak -00pe 's/\R(?!True|False)//g' movies_metadata.csv
while IFS= read -r line                 
do
  perl -CA -le 'print ord shift' "$line"
done < special.txt