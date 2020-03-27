function proxy_off
    set -e http_proxy
    set -e https_proxy
    echo -e "proxy closed"
end

