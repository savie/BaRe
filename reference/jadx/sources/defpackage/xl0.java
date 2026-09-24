package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xl0 implements vl0 {
    public final wo4 a;
    public float b = -1.0f;

    public xl0(List list) {
        this.a = (wo4) list.get(0);
    }

    @Override // defpackage.vl0
    public final boolean c(float f) {
        if (this.b == f) {
            return true;
        }
        this.b = f;
        return false;
    }

    @Override // defpackage.vl0
    public final wo4 g() {
        return this.a;
    }

    @Override // defpackage.vl0
    public final boolean h(float f) {
        return !this.a.c();
    }

    @Override // defpackage.vl0
    public final boolean isEmpty() {
        return false;
    }

    @Override // defpackage.vl0
    public final float k() {
        return this.a.a();
    }

    @Override // defpackage.vl0
    public final float l() {
        return this.a.b();
    }
}
