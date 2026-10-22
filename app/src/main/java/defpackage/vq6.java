package defpackage;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vq6 extends IOException {
    public final String a;
    public final List b;

    public vq6(String str, String str2, List list, String str3) {
        super(str3, null);
        this.a = str2;
        this.b = list;
    }

    public vq6(String str, String str2, List list, String str3, UnknownHostException unknownHostException) {
        super(str3, unknownHostException);
        this.a = str2;
        this.b = list;
    }
}
