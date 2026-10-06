package okhttp3.internal.connection;

import defpackage.ij7;
import defpackage.l40;
import defpackage.nh7;
import defpackage.rf6;
import defpackage.tf6;
import defpackage.vf2;
import defpackage.wf2;
import defpackage.yw0;
import defpackage.zw0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BufferedSocketKt$asBufferedSocket$1 implements BufferedSocket {
    public final l40 a;
    public final tf6 b;
    public final rf6 c;

    public BufferedSocketKt$asBufferedSocket$1(l40 l40Var) {
        this.a = l40Var;
        wf2 wf2Var = (wf2) l40Var.d;
        wf2Var.getClass();
        this.b = new tf6(wf2Var);
        vf2 vf2Var = (vf2) l40Var.e;
        vf2Var.getClass();
        this.c = new rf6(vf2Var);
    }

    @Override // okhttp3.internal.connection.BufferedSocket, defpackage.wi7
    public final yw0 a() {
        return this.c;
    }

    @Override // defpackage.wi7
    public final void cancel() {
        this.a.cancel();
    }

    @Override // okhttp3.internal.connection.BufferedSocket, defpackage.wi7
    public final zw0 getSource() {
        return this.b;
    }

    @Override // defpackage.wi7
    public final nh7 a() {
        return this.c;
    }

    @Override // defpackage.wi7
    public final ij7 getSource() {
        return this.b;
    }
}
