curl -s -X GET "https://thesimpsonsquoteapi.glitch.me/quotes" > simp-quote.json

data=`cat simp-quote.json`
trimmed="${data:1:-1}"

echo $trimmed > simp-quote.json

quote=$(jq '.quote' < simp-quote.json)
char=$(jq '.character' < simp-quote.json)

styledQuote="${quote:1:-1}"
styledChar="                   ~ ${char:1:-1}"


echo $styledQuote
echo $styledChar