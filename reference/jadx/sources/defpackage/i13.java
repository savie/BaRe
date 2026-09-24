package defpackage;

import java.util.function.Supplier;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i13 implements Supplier {
    public final /* synthetic */ int a;

    public /* synthetic */ i13(int i) {
        this.a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                f60 f60Var = new f60();
                f60Var.d = "";
                f60Var.f = new CRC32();
                return f60Var;
            case 1:
                return new yd8();
            default:
                int i = n84.a;
                return new byte[8192];
        }
    }
}
