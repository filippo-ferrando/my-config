function dockerlogin --wraps='gh auth token | docker login ghcr.io -u filippo-ferrando --password-stdin' --description 'alias dockerlogin=gh auth token | docker login ghcr.io -u filippo-ferrando --password-stdin'
    gh auth token | docker login ghcr.io -u filippo-ferrando --password-stdin $argv
end
