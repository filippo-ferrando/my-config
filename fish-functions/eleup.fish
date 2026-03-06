function eleup --wraps='wg-quick up wg0' --description 'alias eleup=wg-quick up wg0'
    wg-quick up wg0 $argv
end
