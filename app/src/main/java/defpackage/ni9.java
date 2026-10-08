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
public final class ni9 {
    public static final ni9 b;
    public static final ni9 c;
    public static final ni9[] d;
    public static final /* synthetic */ ni9[] e;
    public final int a;

    /* JADX INFO: Fake field, exist only in values array */
    ni9 EF0;

    static {
        yj9 yj9Var = yj9.e;
        ni9 ni9Var = new ni9("DOUBLE", 0, 0, 1, yj9Var);
        yj9 yj9Var2 = yj9.d;
        ni9 ni9Var2 = new ni9("FLOAT", 1, 1, 1, yj9Var2);
        yj9 yj9Var3 = yj9.c;
        ni9 ni9Var3 = new ni9("INT64", 2, 2, 1, yj9Var3);
        ni9 ni9Var4 = new ni9("UINT64", 3, 3, 1, yj9Var3);
        yj9 yj9Var4 = yj9.b;
        ni9 ni9Var5 = new ni9("INT32", 4, 4, 1, yj9Var4);
        ni9 ni9Var6 = new ni9("FIXED64", 5, 5, 1, yj9Var3);
        ni9 ni9Var7 = new ni9("FIXED32", 6, 6, 1, yj9Var4);
        yj9 yj9Var5 = yj9.f;
        ni9 ni9Var8 = new ni9("BOOL", 7, 7, 1, yj9Var5);
        yj9 yj9Var6 = yj9.k;
        ni9 ni9Var9 = new ni9("STRING", 8, 8, 1, yj9Var6);
        yj9 yj9Var7 = yj9.q;
        ni9 ni9Var10 = new ni9("MESSAGE", 9, 9, 1, yj9Var7);
        yj9 yj9Var8 = yj9.n;
        ni9 ni9Var11 = new ni9("BYTES", 10, 10, 1, yj9Var8);
        ni9 ni9Var12 = new ni9("UINT32", 11, 11, 1, yj9Var4);
        yj9 yj9Var9 = yj9.p;
        ni9 ni9Var13 = new ni9("ENUM", 12, 12, 1, yj9Var9);
        ni9 ni9Var14 = new ni9("SFIXED32", 13, 13, 1, yj9Var4);
        ni9 ni9Var15 = new ni9("SFIXED64", 14, 14, 1, yj9Var3);
        ni9 ni9Var16 = new ni9("SINT32", 15, 15, 1, yj9Var4);
        ni9 ni9Var17 = new ni9("SINT64", 16, 16, 1, yj9Var3);
        ni9 ni9Var18 = new ni9("GROUP", 17, 17, 1, yj9Var7);
        ni9 ni9Var19 = new ni9("DOUBLE_LIST", 18, 18, 2, yj9Var);
        ni9 ni9Var20 = new ni9("FLOAT_LIST", 19, 19, 2, yj9Var2);
        ni9 ni9Var21 = new ni9("INT64_LIST", 20, 20, 2, yj9Var3);
        ni9 ni9Var22 = new ni9("UINT64_LIST", 21, 21, 2, yj9Var3);
        ni9 ni9Var23 = new ni9("INT32_LIST", 22, 22, 2, yj9Var4);
        ni9 ni9Var24 = new ni9("FIXED64_LIST", 23, 23, 2, yj9Var3);
        ni9 ni9Var25 = new ni9("FIXED32_LIST", 24, 24, 2, yj9Var4);
        ni9 ni9Var26 = new ni9("BOOL_LIST", 25, 25, 2, yj9Var5);
        ni9 ni9Var27 = new ni9("STRING_LIST", 26, 26, 2, yj9Var6);
        ni9 ni9Var28 = new ni9("MESSAGE_LIST", 27, 27, 2, yj9Var7);
        ni9 ni9Var29 = new ni9("BYTES_LIST", 28, 28, 2, yj9Var8);
        ni9 ni9Var30 = new ni9("UINT32_LIST", 29, 29, 2, yj9Var4);
        ni9 ni9Var31 = new ni9("ENUM_LIST", 30, 30, 2, yj9Var9);
        ni9 ni9Var32 = new ni9("SFIXED32_LIST", 31, 31, 2, yj9Var4);
        ni9 ni9Var33 = new ni9("SFIXED64_LIST", 32, 32, 2, yj9Var3);
        ni9 ni9Var34 = new ni9("SINT32_LIST", 33, 33, 2, yj9Var4);
        ni9 ni9Var35 = new ni9("SINT64_LIST", 34, 34, 2, yj9Var3);
        ni9 ni9Var36 = new ni9("DOUBLE_LIST_PACKED", 35, 35, 3, yj9Var);
        b = ni9Var36;
        ni9 ni9Var37 = new ni9("FLOAT_LIST_PACKED", 36, 36, 3, yj9Var2);
        ni9 ni9Var38 = new ni9("INT64_LIST_PACKED", 37, 37, 3, yj9Var3);
        ni9 ni9Var39 = new ni9("UINT64_LIST_PACKED", 38, 38, 3, yj9Var3);
        ni9 ni9Var40 = new ni9("INT32_LIST_PACKED", 39, 39, 3, yj9Var4);
        ni9 ni9Var41 = new ni9("FIXED64_LIST_PACKED", 40, 40, 3, yj9Var3);
        ni9 ni9Var42 = new ni9("FIXED32_LIST_PACKED", 41, 41, 3, yj9Var4);
        ni9 ni9Var43 = new ni9("BOOL_LIST_PACKED", 42, 42, 3, yj9Var5);
        ni9 ni9Var44 = new ni9("UINT32_LIST_PACKED", 43, 43, 3, yj9Var4);
        ni9 ni9Var45 = new ni9("ENUM_LIST_PACKED", 44, 44, 3, yj9Var9);
        ni9 ni9Var46 = new ni9("SFIXED32_LIST_PACKED", 45, 45, 3, yj9Var4);
        ni9 ni9Var47 = new ni9("SFIXED64_LIST_PACKED", 46, 46, 3, yj9Var3);
        ni9 ni9Var48 = new ni9("SINT32_LIST_PACKED", 47, 47, 3, yj9Var4);
        ni9 ni9Var49 = new ni9("SINT64_LIST_PACKED", 48, 48, 3, yj9Var3);
        c = ni9Var49;
        e = new ni9[]{ni9Var, ni9Var2, ni9Var3, ni9Var4, ni9Var5, ni9Var6, ni9Var7, ni9Var8, ni9Var9, ni9Var10, ni9Var11, ni9Var12, ni9Var13, ni9Var14, ni9Var15, ni9Var16, ni9Var17, ni9Var18, ni9Var19, ni9Var20, ni9Var21, ni9Var22, ni9Var23, ni9Var24, ni9Var25, ni9Var26, ni9Var27, ni9Var28, ni9Var29, ni9Var30, ni9Var31, ni9Var32, ni9Var33, ni9Var34, ni9Var35, ni9Var36, ni9Var37, ni9Var38, ni9Var39, ni9Var40, ni9Var41, ni9Var42, ni9Var43, ni9Var44, ni9Var45, ni9Var46, ni9Var47, ni9Var48, ni9Var49, new ni9("GROUP_LIST", 49, 49, 2, yj9Var7), new ni9("MAP", 50, 50, 4, yj9.a)};
        ni9[] ni9VarArrValues = values();
        d = new ni9[ni9VarArrValues.length];
        for (ni9 ni9Var50 : ni9VarArrValues) {
            d[ni9Var50.a] = ni9Var50;
        }
    }

    public ni9(String str, int i, int i2, int i3, yj9 yj9Var) {
        super(str, i);
        this.a = i2;
        int i4 = i3 - 1;
        if (i4 == 1 || i4 == 3) {
            yj9Var.getClass();
        }
        if (i3 == 1) {
            yj9 yj9Var2 = yj9.a;
            yj9Var.ordinal();
        }
    }

    public static ni9[] values() {
        return (ni9[]) e.clone();
    }
}
