package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface ck4 {
    fu5 lenient() default fu5.DEFAULT;
    String locale() default "##default";
    String pattern() default "";
    ak4 shape() default ak4.ANY;
    String timezone() default "##default";
    yj4[] with() default {};
    yj4[] without() default {};
}
