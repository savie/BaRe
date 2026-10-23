package defpackage;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ml0 implements jv1, zx1, Serializable {
    private final jv1 completion;

    public ml0(jv1 jv1Var) {
        this.completion = jv1Var;
    }

    public jv1 create(jv1 jv1Var) {
        jv1Var.getClass();
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // defpackage.zx1
    public zx1 getCallerFrame() {
        jv1 jv1Var = this.completion;
        if (jv1Var instanceof zx1) {
            return (zx1) jv1Var;
        }
        return null;
    }

    public final jv1 getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        nd2 nd2Var = (nd2) getClass().getAnnotation(nd2.class);
        String str = null;
        if (nd2Var == null || nd2Var.v() < 1) {
            return null;
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i = iIntValue >= 0 ? nd2Var.l()[iIntValue] : -1;
        u00 u00Var = lg7.h;
        u00 u00Var2 = lg7.i;
        if (u00Var2 == null) {
            try {
                u00 u00Var3 = new u00(5, Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                lg7.i = u00Var3;
                u00Var2 = u00Var3;
            } catch (Exception unused2) {
                lg7.i = u00Var;
                u00Var2 = u00Var;
            }
        }
        if (u00Var2 != u00Var && (method = (Method) u00Var2.b) != null && (objInvoke = method.invoke(getClass(), null)) != null && (method2 = (Method) u00Var2.c) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
            Method method3 = (Method) u00Var2.d;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
            if (objInvoke3 instanceof String) {
                str = (String) objInvoke3;
            }
        }
        if (str == null) {
            strC = nd2Var.c();
        } else {
            strC = str + '/' + nd2Var.c();
        }
        return new StackTraceElement(strC, nd2Var.m(), nd2Var.f(), i);
    }

    public abstract Object invokeSuspend(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        ?? r2 = this;
        while (true) {
            ml0 ml0Var = (ml0) r2;
            jv1 jv1Var = ml0Var.completion;
            jv1Var.getClass();
            try {
                obj = ml0Var.invokeSuspend(obj);
                if (obj == yx1.a) {
                    return;
                }
            } catch (Throwable th) {
                obj = new bn6(th);
            }
            ml0Var.releaseIntercepted();
            if (!(jv1Var instanceof ml0)) {
                jv1Var.resumeWith(obj);
                return;
            }
            r2 = jv1Var;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public jv1 create(Object obj, jv1 jv1Var) {
        jv1Var.getClass();
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public void releaseIntercepted() {
    }
}
