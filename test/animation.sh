# test apakah hasil obfuscate nya akan mempengaruhi salah satu fungsi
# dalam pembuatan animasi | kompleks loop & process

figlet TesAnimation

frame="####################"
length=${#frame}
let iteration=0

while ((iteration < 100)); do {
	((n = (iteration * length) / 100))
	printf "\r[%-$((length-1))s] Loading " "${frame:0:n}"
	((iteration += RANDOM % 5 + 2))
	sleep 0.2
}; done
