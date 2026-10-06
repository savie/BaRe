package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ns3 implements ns7 {
    public final Context a;
    public final String b;
    public final kh5 c;
    public final gv7 d;
    public boolean e;

    public ns3(Context context, String str, kh5 kh5Var) {
        context.getClass();
        kh5Var.getClass();
        this.a = context;
        this.b = str;
        this.c = kh5Var;
        this.d = new gv7(new ak(this, 20));
    }

    @Override // defpackage.ns7
    public final is3 L() {
        return ((ms3) this.d.getValue()).a(true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        gv7 gv7Var = this.d;
        if (gv7Var.a()) {
            ((ms3) gv7Var.getValue()).close();
        }
    }

    @Override // defpackage.ns7
    public final String getDatabaseName() {
        return this.b;
    }

    @Override // defpackage.ns7
    public final void setWriteAheadLoggingEnabled(boolean z) {
        gv7 gv7Var = this.d;
        if (gv7Var.a()) {
            ((ms3) gv7Var.getValue()).setWriteAheadLoggingEnabled(z);
        }
        this.e = z;
    }
}
