package defpackage;

public enum fu5 {
    TRUE,
    FALSE,
    DEFAULT;

    public final Boolean a() {
        if (this == DEFAULT) {
            return null;
        }
        return this == TRUE ? Boolean.TRUE : Boolean.FALSE;
    }
}
