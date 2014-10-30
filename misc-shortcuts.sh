alias ll='ls -l'
alias share='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias curlh='curl -sD - -o /dev/null'

# Create a data URL from a file
function dataurl() {
	local mimeType=$(file -b --mime-type "$1")
	if [[ $mimeType == text/* ]]; then
		mimeType="${mimeType};charset=utf-8"
	fi
	echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}