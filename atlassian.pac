function FindProxyForURL(url, host) {
    if(/(hal9000|stg|inf|internal|syd|atlaseye|go|paste)\.atlassian\.com$/.test(host)) {
      alert("Using SOCKS tunnel for " + host);
      return "SOCKS5 127.0.0.1:5000";
    }

    if (/atlassian\.io$/.test(host)) {
      return "SOCKS5 127.0.0.1:5000";
    }

    if (/manifesto\.uc-inf\.net$/.test(host)) {
      alert("Using SOCKS tunnel for " + host);
      return "SOCKS5 127.0.0.1:5000";
    }

    return "DIRECT";
}
