package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gv7 implements os4, Serializable {
    public bt3 a;
    public volatile Object b;
    public final Object c;

    public gv7(bt3 bt3Var) {
        bt3Var.getClass();
        this.a = bt3Var;
        this.b = sl4.e;
        this.c = this;
    }

    public final boolean a() {
        return this.b != sl4.e;
    }

    @Override // defpackage.os4
    public final Object getValue() {
        Object objInvoke;
        Object obj = this.b;
        sl4 sl4Var = sl4.e;
        if (obj != sl4Var) {
            return obj;
        }
        synchronized (this.c) {
            objInvoke = this.b;
            if (objInvoke == sl4Var) {
                bt3 bt3Var = this.a;
                bt3Var.getClass();
                objInvoke = bt3Var.invoke();
                this.b = objInvoke;
                this.a = null;
            }
        }
        return objInvoke;
    }

    public final String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
