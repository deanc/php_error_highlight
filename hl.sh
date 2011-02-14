# sample output = [14-Feb-2011 08:55:23] PHP   2. require() /var/www/sandbox/wordpress/index.php:17

regex='^\[(.*?)\](.*)'
highlight=$(tput setaf 1) # red, use setab to do inverse instead of foreground
off=$(tput sgr0)
while read line
do
[[ $line =~ $regex ]] && echo -n "[$highlight${BASH_REMATCH[1]}$off] ${BASH_REMATCH[2]}"
echo "$line$off"
done
