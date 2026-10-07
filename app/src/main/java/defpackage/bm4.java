package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface bm4 {
    Class as() default Void.class;
    Class contentAs() default Void.class;
    Class contentConverter() default zv1.class;
    Class contentUsing() default cm4.class;
    Class converter() default zv1.class;
    zl4 include() default zl4.DEFAULT_INCLUSION;
    Class keyAs() default Void.class;
    Class keyUsing() default cm4.class;
    Class nullsUsing() default cm4.class;
    am4 typing() default am4.DEFAULT_TYPING;
    Class using() default cm4.class;
}
