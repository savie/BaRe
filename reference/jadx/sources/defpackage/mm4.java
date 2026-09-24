package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum mm4 {
    /* JADX INFO: Fake field, exist only in values array */
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    /* JADX INFO: Fake field, exist only in values array */
    END_OBJECT("}", 2),
    START_ARRAY("[", 3),
    /* JADX INFO: Fake field, exist only in values array */
    FIELD_NAME("]", 4),
    /* JADX INFO: Fake field, exist only in values array */
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    /* JADX INFO: Fake field, exist only in values array */
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    /* JADX INFO: Fake field, exist only in values array */
    VALUE_TRUE("true", 9),
    /* JADX INFO: Fake field, exist only in values array */
    VALUE_FALSE("false", 10),
    /* JADX INFO: Fake field, exist only in values array */
    VALUE_NULL("null", 11);

    public final char[] a;
    public final byte[] b;
    public final boolean c;

    mm4(String str, int i) {
        if (str == null) {
            this.a = null;
            this.b = null;
        } else {
            char[] charArray = str.toCharArray();
            this.a = charArray;
            int length = charArray.length;
            this.b = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.b[i2] = (byte) this.a[i2];
            }
        }
        if (i != 10) {
        }
        if (i != 7) {
        }
        this.c = i == 1 || i == 3;
    }
}
