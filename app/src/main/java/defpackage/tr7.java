package defpackage;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr7 {
    public final Method a;
    public final ThreadMode b;
    public final Class c;
    public final int d;
    public final boolean e;
    public String f;

    public tr7(Method method, Class cls, ThreadMode threadMode, int i, boolean z) {
        this.a = method;
        this.b = threadMode;
        this.c = cls;
        this.d = i;
        this.e = z;
    }

    public final synchronized void a() {
        if (this.f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.a.getName());
            sb.append('(');
            sb.append(this.c.getName());
            this.f = sb.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tr7)) {
            return false;
        }
        a();
        tr7 tr7Var = (tr7) obj;
        tr7Var.a();
        return this.f.equals(tr7Var.f);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
