function FindProxyForURL(url, host) {
    if(/(stg|inf|internal|syd)\.atlassian\.com$/.test(host)) {
        alert("Using SOCKS tunnel for " + host);
        return "SOCKS5 127.0.0.1:5000";
    }

    return "DIRECT";
}