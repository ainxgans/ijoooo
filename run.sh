start_date="2023-01-01"
end_date="2023-06-24"

formatted_start_date=$(date -d "$start_date" +"%a %b %d 14:00 %Y +0100")
formatted_end_date=$(date -d "$end_date" +"%a %b %d 14:00 %Y +0100")

current_date="$formatted_start_date"
    for i in {1..130}; do
        echo "Commit ke-$i pada tanggal $current_date" > README.md
        git add README.md
        git commit -m "Commit ke-$i pada tanggal $current_date" --date "$current_date"
    done