package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface ck4 {
    fu5 lenient() default fu5.b;

    String locale() default "##default";

    String pattern() default "";

    ak4 shape() default ak4.p;

    String timezone() default "##default";

    yj4[] with() default {};

    yj4[] without() default {};
}
