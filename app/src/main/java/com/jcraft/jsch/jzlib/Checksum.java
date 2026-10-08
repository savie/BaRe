package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
interface Checksum {
    Checksum copy();

    long getValue();

    void reset();

    void reset(long j);

    void update(byte[] bArr, int i, int i2);
}
