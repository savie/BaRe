package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface zi4 {
    yi4 creatorVisibility() default yi4.DEFAULT;
    yi4 fieldVisibility() default yi4.DEFAULT;
    yi4 getterVisibility() default yi4.DEFAULT;
    yi4 isGetterVisibility() default yi4.DEFAULT;
    yi4 setterVisibility() default yi4.DEFAULT;
}
