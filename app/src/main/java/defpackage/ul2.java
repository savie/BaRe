package defpackage;

import android.content.res.Resources;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ul2 implements ra2 {
    public final Resources.Theme a;
    public final Resources b;
    public final vl2 c;
    public final int d;
    public Object e;

    public ul2(Resources.Theme theme, Resources resources, vl2 vl2Var, int i) {
        this.a = theme;
        this.b = resources;
        this.c = vl2Var;
        this.d = i;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return this.c.a();
    }

    @Override // defpackage.ra2
    public final void c() {
        Object obj = this.e;
        if (obj != null) {
            try {
                this.c.b(obj);
            } catch (IOException unused) {
            }
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        try {
            Object objK = this.c.k(this.d, this.a, this.b);
            this.e = objK;
            qa2Var.f(objK);
        } catch (Resources.NotFoundException e) {
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
