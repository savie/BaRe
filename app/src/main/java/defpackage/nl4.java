package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface nl4 {
    ml4 access() default ml4.AUTO;
    String defaultValue() default "";
    int index() default -1;
    fu5 isRequired() default fu5.DEFAULT;
    String namespace() default "";
    boolean required() default false;
    String value() default "";
}
