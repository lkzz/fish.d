function proxy_on
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1235"
    export https_proxy=$http_proxy
    echo -e "proxy on"
end

