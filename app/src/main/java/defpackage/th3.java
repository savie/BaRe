package defpackage;

import com.google.android.flexbox.FlexboxLayoutManager;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class th3 {
    public int a;
    public int b;
    public int c;
    public int d = 0;
    public boolean e;
    public boolean f;
    public boolean g;
    public final /* synthetic */ FlexboxLayoutManager h;

    public th3(FlexboxLayoutManager flexboxLayoutManager) {
        this.h = flexboxLayoutManager;
    }

    public static void a(th3 th3Var) {
        FlexboxLayoutManager flexboxLayoutManager = th3Var.h;
        if (!flexboxLayoutManager.j() && flexboxLayoutManager.M) {
            th3Var.c = th3Var.e ? flexboxLayoutManager.U.i() : flexboxLayoutManager.y - flexboxLayoutManager.U.m();
            return;
        }
        boolean z = th3Var.e;
        gu2 gu2Var = flexboxLayoutManager.U;
        th3Var.c = z ? gu2Var.i() : gu2Var.m();
    }

    public static void b(th3 th3Var) {
        th3Var.a = -1;
        th3Var.b = -1;
        th3Var.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        th3Var.f = false;
        th3Var.g = false;
        FlexboxLayoutManager flexboxLayoutManager = th3Var.h;
        boolean zJ = flexboxLayoutManager.j();
        int i = flexboxLayoutManager.I;
        if (zJ) {
            if (i == 0) {
                th3Var.e = flexboxLayoutManager.H == 1;
                return;
            } else {
                th3Var.e = i == 2;
                return;
            }
        }
        if (i == 0) {
            th3Var.e = flexboxLayoutManager.H == 3;
        } else {
            th3Var.e = i == 2;
        }
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.a + ", mFlexLinePosition=" + this.b + ", mCoordinate=" + this.c + ", mPerpendicularCoordinate=" + this.d + ", mLayoutFromEnd=" + this.e + ", mValid=" + this.f + ", mAssignedFromSavedState=" + this.g + '}';
    }
}
