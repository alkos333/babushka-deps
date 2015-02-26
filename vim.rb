dep 'vim dir exists' do
	met? {
		"~/.vim".p.exists?
	}
	meet {
		shell "mkdir ~/.vim"
	}
end

dep 'vim autoload dir exists' do
	requires 'vim dir exists'
	met? {
		"~/.vim/autoload".p.exists?
	}
	meet {
		shell "mkdir -p ~/.vim/autoload"
	}
end

dep 'vim bundle dir exists' do
	requires 'vim dir exists'
	met? {
		"~/.vim/bundle".p.exists?
	}
	meet {
		shell "mkdir -p ~/.vim/bundle"
	}
end

dep 'pathogen' do
	requires 'vim autoload dir exists'
	requires 'vim bundle dir exists'
	met? {
		"~/.vim/autoload/pathogen.vim".p.exists?
	}
	meet {
		shell "curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
	}
end
