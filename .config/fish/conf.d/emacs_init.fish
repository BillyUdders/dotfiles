function init_emacs
	if not emacsclient -a false -e 't'
		emacs --daemon
	end
end
	

