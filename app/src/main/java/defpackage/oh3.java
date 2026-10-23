package defpackage;

import android.view.View;
import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oh3 {
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public float j;
    public float k;
    public int l;
    public int m;
    public int o;
    public int p;
    public boolean q;
    public boolean r;
    public int a = Integer.MAX_VALUE;
    public int b = Integer.MAX_VALUE;
    public int c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    public int d = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    public final ArrayList n = new ArrayList();

    public final int a() {
        return this.h - this.i;
    }

    public final void b(View view, int i, int i2, int i3, int i4) {
        nh3 nh3Var = (nh3) view.getLayoutParams();
        this.a = Math.min(this.a, (view.getLeft() - nh3Var.k()) - i);
        this.b = Math.min(this.b, (view.getTop() - nh3Var.o()) - i2);
        this.c = Math.max(this.c, nh3Var.t() + view.getRight() + i3);
        this.d = Math.max(this.d, nh3Var.j() + view.getBottom() + i4);
    }
}
