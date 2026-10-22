package defpackage;

import android.database.SQLException;
import com.jcraft.jsch.SftpATTRS;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nx5 implements g98, gf6 {
    public final qt3 a;
    public final fw6 b;
    public final AtomicInteger c;
    public f98 d;

    public nx5(qt3 qt3Var, fw6 fw6Var) {
        fw6Var.getClass();
        this.a = qt3Var;
        this.b = fw6Var;
        this.c = new AtomicInteger(0);
    }

    @Override // defpackage.g98
    public final Object a(f98 f98Var, qt3 qt3Var, ws7 ws7Var) {
        return this.a.invoke(new mx5(this, f98Var, qt3Var, null), ws7Var);
    }

    @Override // defpackage.g98
    public final Boolean b(jv1 jv1Var) {
        return Boolean.valueOf(this.d != null || this.b.a0());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.t26
    public final Object c(String str, mt3 mt3Var, kv1 kv1Var) {
        kx5 kx5Var;
        if (kv1Var instanceof kx5) {
            kx5Var = (kx5) kv1Var;
            int i = kx5Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                kx5Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                kx5Var = new kx5(this, kv1Var);
            }
        } else {
            kx5Var = new kx5(this, kv1Var);
        }
        Object objB = kx5Var.c;
        int i2 = kx5Var.e;
        Object obj = yx1.a;
        if (i2 == 0) {
            lg7.H(objB);
            kx5Var.a = str;
            kx5Var.b = mt3Var;
            kx5Var.e = 1;
            objB = b(kx5Var);
            if (objB != obj) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                lg7.H(objB);
                return objB;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        mt3Var = kx5Var.b;
        str = kx5Var.a;
        lg7.H(objB);
        if (((Boolean) objB).booleanValue()) {
            lx5 lx5Var = new lx5(this, str, mt3Var, null);
            kx5Var.a = null;
            kx5Var.b = null;
            kx5Var.e = 2;
            Object objInvoke = this.a.invoke(lx5Var, kx5Var);
            return objInvoke == obj ? obj : objInvoke;
        }
        nw6 nw6VarP0 = this.b.p0(str);
        try {
            Object objInvoke2 = mt3Var.invoke(nw6VarP0);
            k55.d(nw6VarP0, null);
            return objInvoke2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.gf6
    public final fw6 d() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(f98 f98Var, qt3 qt3Var, kv1 kv1Var) {
        jx5 jx5Var;
        if (kv1Var instanceof jx5) {
            jx5Var = (jx5) kv1Var;
            int i = jx5Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                jx5Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                jx5Var = new jx5(this, kv1Var);
            }
        } else {
            jx5Var = new jx5(this, kv1Var);
        }
        Object objInvoke = jx5Var.b;
        int i2 = jx5Var.d;
        AtomicInteger atomicInteger = this.c;
        int i3 = 1;
        fw6 fw6Var = this.b;
        try {
            if (i2 == 0) {
                lg7.H(objInvoke);
                int iOrdinal = f98Var.ordinal();
                if (iOrdinal == 0) {
                    ly8.t("BEGIN DEFERRED TRANSACTION", fw6Var);
                } else if (iOrdinal == 1) {
                    ly8.t("BEGIN IMMEDIATE TRANSACTION", fw6Var);
                } else {
                    if (iOrdinal != 2) {
                        q.j();
                        return null;
                    }
                    ly8.t("BEGIN EXCLUSIVE TRANSACTION", fw6Var);
                }
                if (atomicInteger.incrementAndGet() > 0) {
                    this.d = f98Var;
                }
                Object ix5Var = new ix5(this);
                jx5Var.a = 1;
                jx5Var.d = 1;
                objInvoke = qt3Var.invoke(ix5Var, jx5Var);
                Object obj = yx1.a;
                if (objInvoke == obj) {
                    return obj;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i3 = jx5Var.a;
                lg7.H(objInvoke);
            }
            if (atomicInteger.decrementAndGet() == 0) {
                this.d = null;
            }
            if (i3 != 0) {
                ly8.t("END TRANSACTION", fw6Var);
                return objInvoke;
            }
            ly8.t("ROLLBACK TRANSACTION", fw6Var);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    if (atomicInteger.decrementAndGet() == 0) {
                        this.d = null;
                    }
                    ly8.t("ROLLBACK TRANSACTION", fw6Var);
                } catch (SQLException e) {
                    yc9.a(th, e);
                }
                throw th2;
            }
        }
    }
}
