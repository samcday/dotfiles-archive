function FindProxyForURL(url, host) {
    // Host matches that use the HTTP proxy.
    var httpProxyMatches = [
        "internal.atlassian.com",
        "inf.atlassian.com",
        "prod.inf.atlassian.com"
    ];

    if(/(stg|inf|internal)\.atlassian\.com$/.test(host)) {
        alert("Using SOCKS tunnel for " + host);
        return "SOCKS5 127.0.0.1:5000";
    }

    return "DIRECT";
}
