package defpackage;

import java.io.Closeable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nv5 implements Closeable {
    public final ArrayList a = new ArrayList();
    public final /* synthetic */ long b;
    public final /* synthetic */ c62 c;

    public nv5(long j, c62 c62Var) {
        this.b = j;
        this.c = c62Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        for (yw0 yw0Var : this.a) {
            if (yw0Var != null) {
                f13.a(yw0Var);
            }
        }
    }
}
