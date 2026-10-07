package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface o24 {
    String condition() default "";
    lg4 delivery() default lg4.Synchronously;
    boolean enabled() default true;
    qc3[] filters() default {};
    Class invocation() default wh6.class;
    int priority() default 0;
    boolean rejectSubtypes() default false;
}
