package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vz3 extends IOException {
    public final String a;
    public final int b;
    public final String c;
    public final Long d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vz3(String str, String str2, int i, String str3, Long l) {
        super("Google Drive API " + str + " failed with HTTP " + i + ": " + str3);
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = i;
        this.c = str3;
        this.d = l;
    }
}
