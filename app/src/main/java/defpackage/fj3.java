package defpackage;

import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.focus.FocusRingDrawable;
import com.jcraft.jsch.SftpATTRS;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fj3 extends Drawable.ConstantState {
    public Drawable.ConstantState a;
    public int b;
    public boolean c;
    public int d;
    public boolean e;
    public int f;
    public int g;
    public int h;
    public int i;
    public float j;
    public int k;
    public float l;
    public int m;
    public float n;
    public int o;
    public float p;
    public int q;
    public float r;
    public int s;
    public rb7 t;
    public int u;
    public int v;
    public Rect w;
    public int[] x;

    public fj3(fj3 fj3Var) {
        this.b = 0;
        this.c = false;
        this.d = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.e = false;
        this.f = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.h = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.i = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.j = Float.NaN;
        this.k = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.l = Float.NaN;
        this.m = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.n = Float.NaN;
        this.o = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.p = Float.NaN;
        this.q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.r = Float.NaN;
        this.s = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.t = null;
        this.u = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.v = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.w = null;
        this.x = FocusRingDrawable.I;
        if (fj3Var != null) {
            this.a = fj3Var.a;
            this.b = fj3Var.b;
            this.c = fj3Var.c;
            this.d = fj3Var.d;
            this.e = fj3Var.e;
            this.f = fj3Var.f;
            this.g = fj3Var.g;
            this.h = fj3Var.h;
            this.i = fj3Var.i;
            this.j = fj3Var.j;
            this.k = fj3Var.k;
            this.l = fj3Var.l;
            this.m = fj3Var.m;
            this.n = fj3Var.n;
            this.o = fj3Var.o;
            this.p = fj3Var.p;
            this.q = fj3Var.q;
            this.r = fj3Var.r;
            this.s = fj3Var.s;
            this.u = fj3Var.u;
            this.v = fj3Var.v;
            rb7 rb7Var = fj3Var.t;
            if (rb7Var instanceof tb7) {
                this.t = ((tb7) rb7Var).m().a();
            } else if (rb7Var instanceof nm7) {
                this.t = ((nm7) rb7Var).j().b();
            } else {
                this.t = rb7Var;
            }
            if (fj3Var.w != null) {
                this.w = new Rect(fj3Var.w);
            }
            int[] iArr = fj3Var.x;
            this.x = Arrays.copyOf(iArr, iArr.length);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        Drawable.ConstantState constantState = this.a;
        return this.b | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new FocusRingDrawable(this, (Resources) null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new FocusRingDrawable(this, resources);
    }
}
