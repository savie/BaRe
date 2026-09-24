package defpackage;

import com.google.gson.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xh6 {
    public final String a;
    public final Field b;
    public final String c;
    public final /* synthetic */ Method d;
    public final /* synthetic */ b e;
    public final /* synthetic */ b f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;

    public xh6(String str, Field field, Method method, b bVar, b bVar2, boolean z, boolean z2) {
        this.d = method;
        this.e = bVar;
        this.f = bVar2;
        this.g = z;
        this.h = z2;
        this.a = str;
        this.b = field;
        this.c = field.getName();
    }

    public final void a(nn4 nn4Var, Object obj) throws IllegalAccessException {
        Object objInvoke;
        Method method = this.d;
        if (method != null) {
            try {
                objInvoke = method.invoke(obj, null);
            } catch (InvocationTargetException e) {
                throw new ik4(eq3.k("Accessor ", th6.d(method, false), " threw exception"), e.getCause());
            }
        } else {
            objInvoke = this.b.get(obj);
        }
        if (objInvoke == obj) {
            return;
        }
        nn4Var.n(this.a);
        this.e.write(nn4Var, objInvoke);
    }
}
