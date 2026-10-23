package defpackage;

import com.topjohnwu.superuser.Shell;
import org.swiftapps.filesystem.File$FileType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dm2 extends an6 implements qt3 {
    public int b;
    public int c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ q63 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dm2(q63 q63Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.f = q63Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        dm2 dm2Var = new dm2(this.f, jv1Var);
        dm2Var.e = obj;
        return dm2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((dm2) create((g77) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0098  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        g77 g77Var = (g77) this.e;
        int i5 = this.d;
        yx1 yx1Var = yx1.a;
        if (i5 != 0) {
            if (i5 == 1) {
                i = this.c;
                i2 = this.b;
                lg7.H(obj);
            } else if (i5 == 2) {
                i = this.c;
                i3 = this.b;
                lg7.H(obj);
                gv7 gv7Var = qe7.a;
                if (!le7.f() && qe7.b()) {
                    o93 o93Var = o93.SHIZUKU;
                    this.e = g77Var;
                    this.b = i3;
                    this.c = i;
                    this.d = 3;
                    g77Var.d(o93Var, this);
                    return yx1Var;
                }
                i4 = i3;
                if (i4 == 0) {
                    o93 o93Var2 = o93.NORMAL;
                    this.e = null;
                    this.b = i4;
                    this.c = i;
                    this.d = 4;
                    g77Var.d(o93Var2, this);
                    return yx1Var;
                }
            } else if (i5 == 3) {
                i = this.c;
                i4 = this.b;
                lg7.H(obj);
                if (i4 == 0) {
                    o93 o93Var3 = o93.NORMAL;
                    this.e = null;
                    this.b = i4;
                    this.c = i;
                    this.d = 4;
                    g77Var.d(o93Var3, this);
                    return yx1Var;
                }
            } else {
                if (i5 != 4) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            return be8.a;
        }
        lg7.H(obj);
        boolean z = this.f.n() instanceof File$FileType.JavaFile;
        int i6 = Shell.UNKNOWN;
        zd7 zd7VarK = k55.k();
        i = (zd7VarK == null || !zd7VarK.isRoot()) ? 0 : 1;
        if (z) {
            o93 o93Var4 = o93.NORMAL;
            this.e = g77Var;
            this.b = z ? 1 : 0;
            this.c = i;
            this.d = 1;
            g77Var.d(o93Var4, this);
            return yx1Var;
        }
        i2 = z ? 1 : 0;
        if (i == 0) {
            int i7 = Shell.UNKNOWN;
            if (!k55.j().isRoot()) {
                i3 = i2;
                gv7 gv7Var2 = qe7.a;
                if (!le7.f()) {
                }
                i4 = i3;
                if (i4 == 0) {
                    o93 o93Var5 = o93.NORMAL;
                    this.e = null;
                    this.b = i4;
                    this.c = i;
                    this.d = 4;
                    g77Var.d(o93Var5, this);
                    return yx1Var;
                }
                return be8.a;
            }
        }
        o93 o93Var6 = o93.ROOT;
        this.e = g77Var;
        this.b = i2;
        this.c = i;
        this.d = 2;
        g77Var.d(o93Var6, this);
        return yx1Var;
    }
}
