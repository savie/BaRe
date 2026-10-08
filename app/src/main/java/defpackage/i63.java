package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i63 {
    public final Annotation[] a;
    public final Field b;

    public i63(Field field) {
        this.a = field.getDeclaredAnnotations();
        field.getName();
        this.b = field;
    }
}
