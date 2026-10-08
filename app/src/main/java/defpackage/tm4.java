package defpackage;

public enum tm4 {
    a("PROPERTY"), b("WRAPPER_OBJECT"), c("WRAPPER_ARRAY"), d("EXTERNAL_PROPERTY"), e("EXISTING_PROPERTY");
    private final String value;
    tm4(String value) { this.value = value; }
    @Override public String toString() { return value; }
}
