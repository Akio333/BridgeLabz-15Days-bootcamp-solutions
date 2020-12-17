declare -A sounds
sounds[dog]="bark"
sounds[cou]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound " ${sounds[dog]}
echo "Animal Sounds " ${sounds[@]}
echo "All Animals " ${!sounds[@]}
