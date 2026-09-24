package com.jcraft.jsch;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificate {
    public final String a;
    public final byte[] b;
    public final int c;
    public final String d;
    public final ArrayList e;
    public final long f;
    public final long g;
    public final LinkedHashMap h;
    public final byte[] i;
    public final byte[] j;
    public final byte[] k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Builder {
        public String a;
        public byte[] b;
        public byte[] c;
        public int d;
        public String e;
        public ArrayList f;
        public long g = 0;
        public long h = -1;
        public LinkedHashMap i;
        public byte[] j;
        public byte[] k;
        public byte[] l;
    }

    private OpenSshCertificate(Builder builder) {
        this.a = builder.a;
        this.b = builder.c;
        this.c = builder.d;
        this.d = builder.e;
        this.e = builder.f;
        this.f = builder.g;
        this.g = builder.h;
        this.h = builder.i;
        this.i = builder.j;
        this.j = builder.k;
        this.k = builder.l;
    }
}
