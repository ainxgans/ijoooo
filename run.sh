    start_date="2023-03-01"
end_date="2023-06-24"

current_date="$start_date"
while [ "$current_date" != "$end_date" ]; do
    formatted_date=$(date -d "$current_date" +"%a %b %d 14:00 %Y +0100")

    for i in {1..150}; do
        echo "Commit ke-$i pada tanggal $formatted_date" > README.md
        git add README.md
        git commit -m "Commit ke-$i pada tanggal $formatted_date" --date "$formatted_date"
    done

    git push origin euy

    # Menambahkan 1 hari ke tanggal saat ini
    current_date=$(date -d "$current_date + 1 day" +"%Y-%m-%d")
done
