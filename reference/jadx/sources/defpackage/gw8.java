package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class gw8 {
    public static final cw8 c;
    public static final dw8 d;
    public static final ew8 e;
    public static final /* synthetic */ gw8[] f;
    public final hw8 a;
    public final int b;

    /* JADX INFO: Fake field, exist only in values array */
    gw8 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    gw8 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    gw8 EF2;

    static {
        gw8 gw8Var = new gw8("DOUBLE", 0, hw8.DOUBLE, 1);
        gw8 gw8Var2 = new gw8("FLOAT", 1, hw8.FLOAT, 5);
        hw8 hw8Var = hw8.LONG;
        gw8 gw8Var3 = new gw8("INT64", 2, hw8Var, 0);
        gw8 gw8Var4 = new gw8("UINT64", 3, hw8Var, 0);
        hw8 hw8Var2 = hw8.INT;
        gw8 gw8Var5 = new gw8("INT32", 4, hw8Var2, 0);
        gw8 gw8Var6 = new gw8("FIXED64", 5, hw8Var, 1);
        gw8 gw8Var7 = new gw8("FIXED32", 6, hw8Var2, 5);
        gw8 gw8Var8 = new gw8("BOOL", 7, hw8.BOOLEAN, 0);
        cw8 cw8Var = new cw8("STRING", 8, hw8.STRING, 2);
        c = cw8Var;
        hw8 hw8Var3 = hw8.MESSAGE;
        dw8 dw8Var = new dw8("GROUP", 9, hw8Var3, 3);
        d = dw8Var;
        ew8 ew8Var = new ew8("MESSAGE", 10, hw8Var3, 2);
        e = ew8Var;
        f = new gw8[]{gw8Var, gw8Var2, gw8Var3, gw8Var4, gw8Var5, gw8Var6, gw8Var7, gw8Var8, cw8Var, dw8Var, ew8Var, new fw8("BYTES", 11, hw8.BYTE_STRING, 2), new gw8("UINT32", 12, hw8Var2, 0), new gw8("ENUM", 13, hw8.ENUM, 0), new gw8("SFIXED32", 14, hw8Var2, 5), new gw8("SFIXED64", 15, hw8Var, 1), new gw8("SINT32", 16, hw8Var2, 0), new gw8("SINT64", 17, hw8Var, 0)};
    }

    public gw8(String str, int i, hw8 hw8Var, int i2) {
        super(str, i);
        this.a = hw8Var;
        this.b = i2;
    }

    public static gw8 valueOf(String str) {
        return (gw8) Enum.valueOf(gw8.class, str);
    }

    public static gw8[] values() {
        return (gw8[]) f.clone();
    }
}
