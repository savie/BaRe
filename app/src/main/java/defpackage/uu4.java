package defpackage;

import android.view.View;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uu4 {
    public gu2 a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;

    public uu4() {
        c();
    }

    public final void a() {
        boolean z = this.d;
        gu2 gu2Var = this.a;
        this.c = z ? gu2Var.i() : gu2Var.m();
    }

    public final void b(View view, int i) {
        int iO = this.a.o();
        if (iO >= 0) {
            boolean z = this.d;
            gu2 gu2Var = this.a;
            if (z) {
                this.c = this.a.o() + gu2Var.d(view);
            } else {
                this.c = gu2Var.g(view);
            }
            this.b = i;
            return;
        }
        this.b = i;
        boolean z2 = this.d;
        gu2 gu2Var2 = this.a;
        if (!z2) {
            int iG = gu2Var2.g(view);
            int iM = iG - this.a.m();
            this.c = iG;
            if (iM > 0) {
                int i2 = (this.a.i() - Math.min(0, (this.a.i() - iO) - this.a.d(view))) - (this.a.e(view) + iG);
                if (i2 < 0) {
                    this.c -= Math.min(iM, -i2);
                    return;
                }
                return;
            }
            return;
        }
        int i3 = (gu2Var2.i() - iO) - this.a.d(view);
        this.c = this.a.i() - i3;
        if (i3 > 0) {
            int iE = this.c - this.a.e(view);
            int iM2 = this.a.m();
            int iMin = iE - (Math.min(this.a.g(view) - iM2, 0) + iM2);
            if (iMin < 0) {
                this.c = Math.min(i3, -iMin) + this.c;
            }
        }
    }

    public final void c() {
        this.b = -1;
        this.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.d = false;
        this.e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
    }
}
