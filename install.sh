echo "Installing dot files"
for FILE in *
do
	if [ -e ~/.${FILE} ]; then
		echo "[*] ~/.${FILE} already exists, creating a backup"
		mv ~/.${FILE} ~/.${FILE}.`date +%s`.backup
	fi
	echo "[*] installing ~/.${FILE}"
	cp -r ${FILE} ~/.${FILE}
done
