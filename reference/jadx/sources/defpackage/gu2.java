package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.a;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gu2 {
    public int a;
    public final Object b;
    public final Object c;

    public gu2(a aVar) {
        this.a = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.c = new Rect();
        this.b = aVar;
    }

    public static gu2 b(a aVar, int i) {
        if (i == 0) {
            return new su5(aVar);
        }
        if (i == 1) {
            return new tu5(aVar);
        }
        c6.f("invalid orientation");
        return null;
    }

    public abstract void a(fw6 fw6Var);

    public abstract void c(fw6 fw6Var);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.a) {
            return 0;
        }
        return n() - this.a;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i);

    public abstract void s(fw6 fw6Var);

    public abstract void t(fw6 fw6Var);

    public abstract void u(fw6 fw6Var);

    public abstract void v(fw6 fw6Var);

    public abstract ko6 w(fw6 fw6Var);

    public abstract gu2 x(m61 m61Var);

    public /* synthetic */ gu2(int i, Comparable comparable, Object obj) {
        this.a = i;
        this.b = obj;
        this.c = comparable;
    }

    public gu2(ju2 ju2Var) {
        this.a = 0;
        this.c = new je2();
        this.b = ju2Var;
    }
}
