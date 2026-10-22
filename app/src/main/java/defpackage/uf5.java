package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface uf5 {
    Class b();

    Annotation c();

    Class[] e();

    Annotation getAnnotation(Class cls);

    Class getDeclaringClass();

    Method getMethod();

    int getMethodType();

    String getName();

    Class getType();
}
