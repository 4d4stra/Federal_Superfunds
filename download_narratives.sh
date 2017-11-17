mkdir ./data/epa_narratives
while read p; do
    nar_id=${p##*/}
    curl -L -o ./data/epa_narratives/$nar_id $p
done < ./data/narrative_locs.txt
