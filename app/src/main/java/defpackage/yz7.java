package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yz7 extends IOException {
    public final int a;
    public final Integer b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yz7(String str, String str2, int i, Integer num, String str3) {
        super("TeraBox API error: method=" + str + ", url=" + str2 + ", httpCode=" + i + ", errno=" + num + ", body=" + str3);
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = num;
    }

    public final boolean a() {
        int i = this.a;
        if (i == 401 || i == 403) {
            return true;
        }
        Integer num = this.b;
        if (num != null && num.intValue() == 200002) {
            return true;
        }
        return num != null && num.intValue() == 200003;
    }

    public final boolean b() {
        Integer num = this.b;
        return num != null && num.intValue() == -9;
    }
}
