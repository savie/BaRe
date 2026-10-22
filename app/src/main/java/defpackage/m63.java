package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
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
public final class m63 {
    public static final m63 b;
    public static final m63 c;
    public static final m63[] d;
    public static final /* synthetic */ m63[] e;
    public final int a;

    /* JADX INFO: Fake field, exist only in values array */
    m63 EF0;

    static {
        lh4 lh4Var = lh4.DOUBLE;
        m63 m63Var = new m63("DOUBLE", 0, 0, 1, lh4Var);
        lh4 lh4Var2 = lh4.FLOAT;
        m63 m63Var2 = new m63("FLOAT", 1, 1, 1, lh4Var2);
        lh4 lh4Var3 = lh4.LONG;
        m63 m63Var3 = new m63("INT64", 2, 2, 1, lh4Var3);
        m63 m63Var4 = new m63("UINT64", 3, 3, 1, lh4Var3);
        lh4 lh4Var4 = lh4.INT;
        m63 m63Var5 = new m63("INT32", 4, 4, 1, lh4Var4);
        m63 m63Var6 = new m63("FIXED64", 5, 5, 1, lh4Var3);
        m63 m63Var7 = new m63("FIXED32", 6, 6, 1, lh4Var4);
        lh4 lh4Var5 = lh4.BOOLEAN;
        m63 m63Var8 = new m63("BOOL", 7, 7, 1, lh4Var5);
        lh4 lh4Var6 = lh4.STRING;
        m63 m63Var9 = new m63("STRING", 8, 8, 1, lh4Var6);
        lh4 lh4Var7 = lh4.MESSAGE;
        m63 m63Var10 = new m63("MESSAGE", 9, 9, 1, lh4Var7);
        lh4 lh4Var8 = lh4.BYTE_STRING;
        m63 m63Var11 = new m63("BYTES", 10, 10, 1, lh4Var8);
        m63 m63Var12 = new m63("UINT32", 11, 11, 1, lh4Var4);
        lh4 lh4Var9 = lh4.ENUM;
        m63 m63Var13 = new m63("ENUM", 12, 12, 1, lh4Var9);
        m63 m63Var14 = new m63("SFIXED32", 13, 13, 1, lh4Var4);
        m63 m63Var15 = new m63("SFIXED64", 14, 14, 1, lh4Var3);
        m63 m63Var16 = new m63("SINT32", 15, 15, 1, lh4Var4);
        m63 m63Var17 = new m63("SINT64", 16, 16, 1, lh4Var3);
        m63 m63Var18 = new m63("GROUP", 17, 17, 1, lh4Var7);
        m63 m63Var19 = new m63("DOUBLE_LIST", 18, 18, 2, lh4Var);
        m63 m63Var20 = new m63("FLOAT_LIST", 19, 19, 2, lh4Var2);
        m63 m63Var21 = new m63("INT64_LIST", 20, 20, 2, lh4Var3);
        m63 m63Var22 = new m63("UINT64_LIST", 21, 21, 2, lh4Var3);
        m63 m63Var23 = new m63("INT32_LIST", 22, 22, 2, lh4Var4);
        m63 m63Var24 = new m63("FIXED64_LIST", 23, 23, 2, lh4Var3);
        m63 m63Var25 = new m63("FIXED32_LIST", 24, 24, 2, lh4Var4);
        m63 m63Var26 = new m63("BOOL_LIST", 25, 25, 2, lh4Var5);
        m63 m63Var27 = new m63("STRING_LIST", 26, 26, 2, lh4Var6);
        m63 m63Var28 = new m63("MESSAGE_LIST", 27, 27, 2, lh4Var7);
        m63 m63Var29 = new m63("BYTES_LIST", 28, 28, 2, lh4Var8);
        m63 m63Var30 = new m63("UINT32_LIST", 29, 29, 2, lh4Var4);
        m63 m63Var31 = new m63("ENUM_LIST", 30, 30, 2, lh4Var9);
        m63 m63Var32 = new m63("SFIXED32_LIST", 31, 31, 2, lh4Var4);
        m63 m63Var33 = new m63("SFIXED64_LIST", 32, 32, 2, lh4Var3);
        m63 m63Var34 = new m63("SINT32_LIST", 33, 33, 2, lh4Var4);
        m63 m63Var35 = new m63("SINT64_LIST", 34, 34, 2, lh4Var3);
        m63 m63Var36 = new m63("DOUBLE_LIST_PACKED", 35, 35, 3, lh4Var);
        b = m63Var36;
        m63 m63Var37 = new m63("FLOAT_LIST_PACKED", 36, 36, 3, lh4Var2);
        m63 m63Var38 = new m63("INT64_LIST_PACKED", 37, 37, 3, lh4Var3);
        m63 m63Var39 = new m63("UINT64_LIST_PACKED", 38, 38, 3, lh4Var3);
        m63 m63Var40 = new m63("INT32_LIST_PACKED", 39, 39, 3, lh4Var4);
        m63 m63Var41 = new m63("FIXED64_LIST_PACKED", 40, 40, 3, lh4Var3);
        m63 m63Var42 = new m63("FIXED32_LIST_PACKED", 41, 41, 3, lh4Var4);
        m63 m63Var43 = new m63("BOOL_LIST_PACKED", 42, 42, 3, lh4Var5);
        m63 m63Var44 = new m63("UINT32_LIST_PACKED", 43, 43, 3, lh4Var4);
        m63 m63Var45 = new m63("ENUM_LIST_PACKED", 44, 44, 3, lh4Var9);
        m63 m63Var46 = new m63("SFIXED32_LIST_PACKED", 45, 45, 3, lh4Var4);
        m63 m63Var47 = new m63("SFIXED64_LIST_PACKED", 46, 46, 3, lh4Var3);
        m63 m63Var48 = new m63("SINT32_LIST_PACKED", 47, 47, 3, lh4Var4);
        m63 m63Var49 = new m63("SINT64_LIST_PACKED", 48, 48, 3, lh4Var3);
        c = m63Var49;
        e = new m63[]{m63Var, m63Var2, m63Var3, m63Var4, m63Var5, m63Var6, m63Var7, m63Var8, m63Var9, m63Var10, m63Var11, m63Var12, m63Var13, m63Var14, m63Var15, m63Var16, m63Var17, m63Var18, m63Var19, m63Var20, m63Var21, m63Var22, m63Var23, m63Var24, m63Var25, m63Var26, m63Var27, m63Var28, m63Var29, m63Var30, m63Var31, m63Var32, m63Var33, m63Var34, m63Var35, m63Var36, m63Var37, m63Var38, m63Var39, m63Var40, m63Var41, m63Var42, m63Var43, m63Var44, m63Var45, m63Var46, m63Var47, m63Var48, m63Var49, new m63("GROUP_LIST", 49, 49, 2, lh4Var7), new m63("MAP", 50, 50, 4, lh4.VOID)};
        m63[] m63VarArrValues = values();
        d = new m63[m63VarArrValues.length];
        for (m63 m63Var50 : m63VarArrValues) {
            d[m63Var50.a] = m63Var50;
        }
    }

    public m63(String str, int i, int i2, int i3, lh4 lh4Var) {
        super(str, i);
        this.a = i2;
        int iA = dj7.A(i3);
        if (iA == 1 || iA == 3) {
            lh4Var.getClass();
        }
        if (i3 == 1) {
            lh4Var.ordinal();
        }
    }

    public static m63 valueOf(String str) {
        return (m63) Enum.valueOf(m63.class, str);
    }

    public static m63[] values() {
        return (m63[]) e.clone();
    }
}
