package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y40 implements gd4 {
    public final /* synthetic */ int a = 1;
    public int b;
    public Object c;
    public Serializable d;

    public y40(wi8 wi8Var) {
        this.b = wi8Var.getLength();
        this.d = wi8Var.getType();
        this.c = wi8Var;
    }

    @Override // defpackage.gd4
    public boolean c() {
        return ((wi8) this.c).c();
    }

    @Override // defpackage.gd4
    public Object d() {
        wi8 wi8Var = (wi8) this.c;
        if (wi8Var.c()) {
            return wi8Var.getValue();
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.d, this.b);
        wi8Var.setValue(objNewInstance);
        return objNewInstance;
    }

    @Override // defpackage.gd4
    public Object e(Object obj) {
        wi8 wi8Var = (wi8) this.c;
        if (wi8Var != null) {
            wi8Var.setValue(obj);
        }
        return obj;
    }

    @Override // defpackage.gd4
    public Class getType() {
        return (Class) this.d;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("FileNotifyInformation{action=");
                sb.append((z83) this.c);
                sb.append(", fileName='");
                return dj7.n(sb, (String) this.d, "'}");
            default:
                return super.toString();
        }
    }

    public y40(Method method, int i, String str) {
        this.c = method;
        this.b = i;
        this.d = str;
    }

    public /* synthetic */ y40() {
    }
}
