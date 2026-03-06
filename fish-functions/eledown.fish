function eledown --wraps='wg-quick down wg0' --description 'alias eledown=wg-quick down wg0'
    wg-quick down wg0 $argv
end
