dep 'git-prompt' do
  met? {
    "~/.git-prompt.sh".p.exists?
  }
  meet {
    shell "curl -LSso ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
  }
end
