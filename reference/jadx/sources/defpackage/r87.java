package defpackage;

import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r87 implements a87 {
    public final b97 a;

    public r87(b97 b97Var) {
        b97Var.getClass();
        this.a = b97Var;
    }

    @Override // defpackage.a87
    public final Object d() {
        return new q87(this.a.a(null), null, null);
    }

    @Override // defpackage.a87
    public final void h(Object obj, qd8 qd8Var) throws IOException {
        byte[] bytes = ni4.d.b(q87.Companion.serializer(), (q87) obj).getBytes(f51.a);
        bytes.getClass();
        qd8Var.a.write(bytes);
    }

    @Override // defpackage.a87
    public final Object l(FileInputStream fileInputStream) throws dy1 {
        try {
            ni4 ni4Var = ni4.d;
            String str = new String(cy0.E(fileInputStream), f51.a);
            ni4Var.getClass();
            return (q87) ni4Var.a(q87.Companion.serializer(), str);
        } catch (Exception e) {
            throw new dy1("Cannot parse session data", e);
        }
    }
}
