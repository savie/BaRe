package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ForwardedTCPIPDaemon extends Runnable {
    void setArg(Object[] objArr);

    void setChannel(ChannelForwardedTCPIP channelForwardedTCPIP, InputStream inputStream, OutputStream outputStream);
}
