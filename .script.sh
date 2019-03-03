#menu1 
source functions.sh
menu(){
choix=0
if [[ $# -eq 0 ]] ; then
while (( $choix !='6' ))
do
	clear
	echo " 1 -	pour lancer la commande top"
	echo " 2 -	pour lancer la commande ps -aux"
	echo " 3 -	pour uniquement les processus lancé par l'utilisateur"
	echo " 4 -    pour afficher uniquement les 5 tops processus"
	echo " 5 -    pour afficher le help"
	echo " 6 -	pour Quitter "
	echo "votre choix:"
	read choix
	case $choix in

		1) -ltop
			read
			clear
			;;
		2) -lps
			read
			clear
			;;	
		3) -user
			read
			clear
			;;
		4) -mtop
			read
			clear
			;;
		5) clear
			;;
		6)
			break
			;;
	esac
done
fi
if [[ $1 = "-ltop" ]]; then
	-ltop
fi
if [[ $1 = "-lps" ]]; then
	-lps
fi
if [[ $1 = "-user" ]]; then
	-user
fi
if [[ $1 = "-mtop" ]]; then
	-mtop
fi
}
menu $1

