package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface gm4 {
    sp5 contentNulls() default sp5.DEFAULT;
    sp5 nulls() default sp5.DEFAULT;
    String value() default "";
}
