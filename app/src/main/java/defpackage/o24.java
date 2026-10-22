package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface o24 {
    String condition() default "";

    lg4 delivery() default lg4.a;

    boolean enabled() default true;

    qc3[] filters() default {};

    Class invocation() default wh6.class;

    int priority() default 0;

    boolean rejectSubtypes() default false;
}
