package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface nl4 {
    ml4 access() default ml4.a;

    String defaultValue() default "";

    int index() default -1;

    fu5 isRequired() default fu5.b;

    String namespace() default "";

    boolean required() default false;

    String value() default "";
}
