package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface xm4 {
    Class defaultImpl() default xm4.class;

    tm4 include() default tm4.a;

    String property() default "";

    fu5 requireTypeIdForSubtypes() default fu5.b;

    um4 use();

    boolean visible() default false;
}
