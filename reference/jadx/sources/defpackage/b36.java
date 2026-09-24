package defpackage;

import android.database.SQLException;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b36 implements g98, gf6 {
    public final hx0 a;
    public final ns1 b;
    public final boolean c;
    public final w40 d;
    public volatile boolean e;

    public b36(hx0 hx0Var, ns1 ns1Var, boolean z) {
        hx0Var.getClass();
        this.a = hx0Var;
        this.b = ns1Var;
        this.c = z;
        this.d = new w40();
    }

    @Override // defpackage.g98
    public final Object a(f98 f98Var, qt3 qt3Var, ws7 ws7Var) {
        if (this.e) {
            ly8.P(21, "Connection is recycled");
            throw null;
        }
        zr1 zr1Var = (zr1) ws7Var.getContext().get(this.a);
        if (zr1Var != null && zr1Var.b == this) {
            return g(f98Var, qt3Var, ws7Var);
        }
        ly8.P(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    @Override // defpackage.g98
    public final Boolean b(jv1 jv1Var) {
        if (this.e) {
            ly8.P(21, "Connection is recycled");
            throw null;
        }
        zr1 zr1Var = (zr1) jv1Var.getContext().get(this.a);
        if (zr1Var != null && zr1Var.b == this) {
            return Boolean.valueOf(!this.d.isEmpty() || this.b.a.a0());
        }
        ly8.P(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.t26
    public final Object c(String str, mt3 mt3Var, kv1 kv1Var) {
        a36 a36Var;
        ns1 ns1Var;
        if (kv1Var instanceof a36) {
            a36Var = (a36) kv1Var;
            int i = a36Var.f;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                a36Var.f = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                a36Var = new a36(this, kv1Var);
            }
        } else {
            a36Var = new a36(this, kv1Var);
        }
        Object obj = a36Var.d;
        yx1 yx1Var = yx1.a;
        int i2 = a36Var.f;
        if (i2 == 0) {
            lg7.H(obj);
            if (this.e) {
                ly8.P(21, "Connection is recycled");
                throw null;
            }
            zr1 zr1Var = (zr1) a36Var.getContext().get(this.a);
            if (zr1Var == null || zr1Var.b != this) {
                ly8.P(21, "Attempted to use connection on a different coroutine");
                throw null;
            }
            ns1Var = this.b;
            a36Var.a = str;
            a36Var.b = mt3Var;
            a36Var.c = ns1Var;
            a36Var.f = 1;
            if (ns1Var.b.a(a36Var) == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ns1 ns1Var2 = a36Var.c;
            mt3Var = a36Var.b;
            String str2 = a36Var.a;
            lg7.H(obj);
            ns1Var = ns1Var2;
            str = str2;
        }
        try {
            u26 u26Var = new u26(this, this.b.p0(str));
            try {
                Object objInvoke = mt3Var.invoke(u26Var);
                k55.d(u26Var, null);
                ns1Var.b(null);
                return objInvoke;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(u26Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            ns1Var.b(null);
            throw th3;
        }
    }

    @Override // defpackage.gf6
    public final fw6 d() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object e(f98 f98Var, kv1 kv1Var) {
        x26 x26Var;
        ns1 ns1Var;
        w40 w40Var = this.d;
        if (kv1Var instanceof x26) {
            x26Var = (x26) kv1Var;
            int i = x26Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                x26Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                x26Var = new x26(this, kv1Var);
            }
        } else {
            x26Var = new x26(this, kv1Var);
        }
        Object obj = x26Var.c;
        int i2 = x26Var.e;
        ns1 ns1Var2 = this.b;
        if (i2 == 0) {
            lg7.H(obj);
            x26Var.a = f98Var;
            x26Var.b = ns1Var2;
            x26Var.e = 1;
            Object objA = ns1Var2.b.a(x26Var);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
            ns1Var = ns1Var2;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ns1 ns1Var3 = x26Var.b;
            f98 f98Var2 = x26Var.a;
            lg7.H(obj);
            ns1Var = ns1Var3;
            f98Var = f98Var2;
        }
        try {
            int i3 = w40Var.c;
            if (w40Var.isEmpty()) {
                int iOrdinal = f98Var.ordinal();
                if (iOrdinal == 0) {
                    ly8.t("BEGIN DEFERRED TRANSACTION", ns1Var2);
                } else if (iOrdinal == 1) {
                    ly8.t("BEGIN IMMEDIATE TRANSACTION", ns1Var2);
                } else {
                    if (iOrdinal != 2) {
                        throw new mn5();
                    }
                    ly8.t("BEGIN EXCLUSIVE TRANSACTION", ns1Var2);
                }
            } else {
                ly8.t("SAVEPOINT '" + i3 + '\'', ns1Var2);
            }
            w40Var.addLast(new w26(i3));
            be8 be8Var = be8.a;
            ns1Var.b(null);
            return be8Var;
        } catch (Throwable th) {
            ns1Var.b(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object f(boolean z, kv1 kv1Var) {
        y26 y26Var;
        ns1 ns1Var;
        w40 w40Var = this.d;
        if (kv1Var instanceof y26) {
            y26Var = (y26) kv1Var;
            int i = y26Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                y26Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                y26Var = new y26(this, kv1Var);
            }
        } else {
            y26Var = new y26(this, kv1Var);
        }
        Object obj = y26Var.c;
        int i2 = y26Var.e;
        ns1 ns1Var2 = this.b;
        if (i2 == 0) {
            lg7.H(obj);
            y26Var.b = ns1Var2;
            y26Var.a = z;
            y26Var.e = 1;
            Object objA = ns1Var2.b.a(y26Var);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
            ns1Var = ns1Var2;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = y26Var.a;
            ns1Var = y26Var.b;
            lg7.H(obj);
        }
        try {
            if (w40Var.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            w26 w26Var = (w26) el1.i1(w40Var);
            if (z) {
                w26Var.getClass();
                if (w40Var.isEmpty()) {
                    ly8.t("END TRANSACTION", ns1Var2);
                } else {
                    ly8.t("RELEASE SAVEPOINT '" + w26Var.a + '\'', ns1Var2);
                }
            } else if (w40Var.isEmpty()) {
                ly8.t("ROLLBACK TRANSACTION", ns1Var2);
            } else {
                ly8.t("ROLLBACK TRANSACTION TO SAVEPOINT '" + w26Var.a + '\'', ns1Var2);
            }
            be8 be8Var = be8.a;
            ns1Var.b(null);
            return be8Var;
        } catch (Throwable th) {
            ns1Var.b(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:46:0x008f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(f98 f98Var, qt3 qt3Var, kv1 kv1Var) throws Throwable {
        z26 z26Var;
        SQLException e;
        Throwable th;
        int i;
        boolean z;
        if (kv1Var instanceof z26) {
            z26Var = (z26) kv1Var;
            int i2 = z26Var.f;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                z26Var.f = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                z26Var = new z26(this, kv1Var);
            }
        } else {
            z26Var = new z26(this, kv1Var);
        }
        Object objInvoke = z26Var.d;
        int i3 = z26Var.f;
        Object obj = yx1.a;
        try {
            if (i3 == 0) {
                lg7.H(objInvoke);
                if (f98Var == null) {
                    f98Var = f98.a;
                }
                z26Var.a = qt3Var;
                z26Var.f = 1;
                if (e(f98Var, z26Var) != obj) {
                }
                return obj;
            }
            if (i3 == 1) {
                qt3Var = (qt3) z26Var.a;
                lg7.H(objInvoke);
            } else {
                if (i3 != 2) {
                    if (i3 == 3 || i3 == 4) {
                        Object obj2 = z26Var.a;
                        lg7.H(objInvoke);
                        return obj2;
                    }
                    if (i3 != 5) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    th = z26Var.b;
                    th = (Throwable) z26Var.a;
                    try {
                        lg7.H(objInvoke);
                        throw th;
                    } catch (SQLException e2) {
                        e = e2;
                        if (th != null) {
                            throw e;
                        }
                        yc9.a(th, e);
                        throw th;
                    }
                }
                i = z26Var.c;
                lg7.H(objInvoke);
            }
            z = i != 0;
            z26Var.a = objInvoke;
            z26Var.f = 3;
            if (f(z, z26Var) != obj) {
                return obj;
            }
            return objInvoke;
            v26 v26Var = new v26(this);
            z26Var.a = null;
            z26Var.c = 1;
            z26Var.f = 2;
            objInvoke = qt3Var.invoke(v26Var, z26Var);
            if (objInvoke != obj) {
                i = 1;
                if (i != 0) {
                }
                z26Var.a = objInvoke;
                z26Var.f = 3;
                if (f(z, z26Var) != obj) {
                    return objInvoke;
                }
            }
            return obj;
        } catch (Throwable th2) {
            th = th2;
            try {
                throw th;
            } catch (Throwable th3) {
                try {
                    z26Var.a = th;
                    z26Var.b = th3;
                    z26Var.f = 5;
                    if (f(false, z26Var) != obj) {
                        throw th3;
                    }
                } catch (SQLException e3) {
                    e = e3;
                    th = th3;
                    if (th != null) {
                        throw e;
                    }
                    yc9.a(th, e);
                    throw th;
                }
            }
        }
    }
}
