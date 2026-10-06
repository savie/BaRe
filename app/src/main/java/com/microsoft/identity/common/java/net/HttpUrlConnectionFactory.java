package com.microsoft.identity.common.java.net;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class HttpUrlConnectionFactory {
    private static final LinkedList sMockedConnectionQueue = new LinkedList();

    public static HttpURLConnection createHttpURLConnection(URL url) throws IOException {
        LinkedList linkedList = sMockedConnectionQueue;
        return !linkedList.isEmpty() ? (HttpURLConnection) linkedList.poll() : (HttpURLConnection) url.openConnection();
    }
}
