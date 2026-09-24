package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface bm4 {
    Class as() default Void.class;

    Class contentAs() default Void.class;

    Class contentConverter() default zv1.class;

    Class contentUsing() default cm4.class;

    Class converter() default zv1.class;

    zl4 include() default zl4.a;

    Class keyAs() default Void.class;

    Class keyUsing() default cm4.class;

    Class nullsUsing() default cm4.class;

    am4 typing() default am4.c;

    Class using() default cm4.class;
}
