function gitup --description 'Fetch and fast-forward pull a repo'
    set repo $argv[1]
    
    # Default to current directory if none provided
    if test -z "$repo"
        set repo .
    end
    
    # Verify directory exists
    if not test -d "$repo"
        echo "Error: '$repo' is not a directory"
        return 1
    end
    
    # Verify it's a git repository
        if not git -C "$repo" rev-parse --is-inside-work-tree >/dev/null 2>&1
                echo "Error: '$repo' is not a git repository"
                return 1
        end
    
        echo "Updating $repo..."
        git -C "$repo" fetch; and git -C "$repo" pull --ff-only
	echo "Updating submodules..."
 	git -C "$repo" submodule update --init --recursive
end
