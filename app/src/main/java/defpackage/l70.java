package defpackage;

import com.topjohnwu.superuser.Shell;
import org.swiftapps.filesystem.File$FileType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l70 extends an6 implements qt3 {
    public int b;
    public boolean c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ q63 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l70(q63 q63Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.f = q63Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        l70 l70Var = new l70(this.f, jv1Var);
        l70Var.e = obj;
        return l70Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((l70) create((g77) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i;
        Object bn6Var;
        boolean zBooleanValue;
        int i2;
        g77 g77Var = (g77) this.e;
        int i3 = this.d;
        boolean z = false;
        yx1 yx1Var = yx1.a;
        try {
            if (i3 != 0) {
                if (i3 == 1) {
                    int i4 = this.b;
                    lg7.H(obj);
                    i = i4;
                } else {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            lg7.H(obj);
                            return be8.a;
                        }
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    zBooleanValue = this.c;
                    i2 = this.b;
                    lg7.H(obj);
                }
                o93 o93Var = o93.NORMAL;
                this.e = null;
                this.b = i2;
                this.c = zBooleanValue;
                this.d = 3;
                g77Var.d(o93Var, this);
                return yx1Var;
            }
            lg7.H(obj);
            int i5 = Shell.UNKNOWN;
            zd7 zd7VarK = k55.k();
            i = (zd7VarK == null || !zd7VarK.isRoot()) ? 0 : 1;
            if (i != 0 || (this.f.n() instanceof File$FileType.LibsuFile)) {
                o93 o93Var2 = o93.ROOT;
                this.e = g77Var;
                this.b = i;
                this.d = 1;
                g77Var.d(o93Var2, this);
                return yx1Var;
            }
            gv7 gv7Var = qe7.a;
            if (le7.f() && qe7.b()) {
                z = true;
            }
            bn6Var = Boolean.valueOf(z);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Object obj2 = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = obj2;
        }
        zBooleanValue = ((Boolean) bn6Var).booleanValue();
        if (zBooleanValue) {
            o93 o93Var3 = o93.SHIZUKU;
            this.e = g77Var;
            this.b = i;
            this.c = zBooleanValue;
            this.d = 2;
            g77Var.d(o93Var3, this);
            return yx1Var;
        }
        i2 = i;
        o93 o93Var4 = o93.NORMAL;
        this.e = null;
        this.b = i2;
        this.c = zBooleanValue;
        this.d = 3;
        g77Var.d(o93Var4, this);
        return yx1Var;
    }
}
