package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface zi4 {
    yi4 creatorVisibility() default yi4.d;

    yi4 fieldVisibility() default yi4.d;

    yi4 getterVisibility() default yi4.d;

    yi4 isGetterVisibility() default yi4.d;

    yi4 setterVisibility() default yi4.d;
}
