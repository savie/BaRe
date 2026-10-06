package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.pe4;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfx implements InvocationHandler {
    private final Object zza;

    public zzfx(Object obj) {
        this.zza = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        if (pe4.d(method.getName(), "toString") && method.getParameterTypes().length == 0) {
            return "Proxy@".concat(String.valueOf(Integer.toHexString(obj.hashCode())));
        }
        if (pe4.d(method.getName(), "hashCode") && method.getParameterTypes().length == 0) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (pe4.d(method.getName(), "equals") && method.getParameterTypes().length != 0) {
            boolean z = false;
            if (objArr != null && objArr.length != 0) {
                Object obj3 = objArr[0];
                if ((obj3 != null ? obj3.hashCode() : 0) == obj.hashCode()) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
        boolean zZza = zza(obj, method, objArr);
        be8 be8Var = be8.a;
        if (!zZza) {
            return be8Var;
        }
        if ((this.zza == null && pe4.d(method.getReturnType(), Void.TYPE)) || ((obj2 = this.zza) != null && pe4.d(zzkm.zza(obj2.getClass()), zzkm.zza(method.getReturnType())))) {
            Object obj4 = this.zza;
            return obj4 == null ? be8Var : obj4;
        }
        throw new IllegalArgumentException(this.zza + " cannot be returned from method with return type " + method.getReturnType());
    }

    public abstract boolean zza(Object obj, Method method, Object[] objArr);
}
