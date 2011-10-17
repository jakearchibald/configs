alias ll='ls -l'
alias share='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
function lanyrdssh {
	ssh ubuntu@$1 -L *:8000:$1:8000
}

# Django shortcuts
alias pym='python manage.py'
alias pyms='pym runserver 0.0.0.0:8000'