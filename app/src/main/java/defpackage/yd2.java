package defpackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
public @interface yd2 { boolean required() default true; eg2 value() default eg2.FIELD; }
