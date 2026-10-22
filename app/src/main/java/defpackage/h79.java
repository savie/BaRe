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
public final class h79 {
    public static final h79 b;
    public static final h79 c;
    public static final h79[] d;
    public static final /* synthetic */ h79[] e;
    public final int a;

    /* JADX INFO: Fake field, exist only in values array */
    h79 EF0;

    static {
        q79 q79Var = q79.e;
        h79 h79Var = new h79("DOUBLE", 0, 0, 1, q79Var);
        q79 q79Var2 = q79.d;
        h79 h79Var2 = new h79("FLOAT", 1, 1, 1, q79Var2);
        q79 q79Var3 = q79.c;
        h79 h79Var3 = new h79("INT64", 2, 2, 1, q79Var3);
        h79 h79Var4 = new h79("UINT64", 3, 3, 1, q79Var3);
        q79 q79Var4 = q79.b;
        h79 h79Var5 = new h79("INT32", 4, 4, 1, q79Var4);
        h79 h79Var6 = new h79("FIXED64", 5, 5, 1, q79Var3);
        h79 h79Var7 = new h79("FIXED32", 6, 6, 1, q79Var4);
        q79 q79Var5 = q79.f;
        h79 h79Var8 = new h79("BOOL", 7, 7, 1, q79Var5);
        q79 q79Var6 = q79.k;
        h79 h79Var9 = new h79("STRING", 8, 8, 1, q79Var6);
        q79 q79Var7 = q79.q;
        h79 h79Var10 = new h79("MESSAGE", 9, 9, 1, q79Var7);
        q79 q79Var8 = q79.n;
        h79 h79Var11 = new h79("BYTES", 10, 10, 1, q79Var8);
        h79 h79Var12 = new h79("UINT32", 11, 11, 1, q79Var4);
        q79 q79Var9 = q79.p;
        h79 h79Var13 = new h79("ENUM", 12, 12, 1, q79Var9);
        h79 h79Var14 = new h79("SFIXED32", 13, 13, 1, q79Var4);
        h79 h79Var15 = new h79("SFIXED64", 14, 14, 1, q79Var3);
        h79 h79Var16 = new h79("SINT32", 15, 15, 1, q79Var4);
        h79 h79Var17 = new h79("SINT64", 16, 16, 1, q79Var3);
        h79 h79Var18 = new h79("GROUP", 17, 17, 1, q79Var7);
        h79 h79Var19 = new h79("DOUBLE_LIST", 18, 18, 2, q79Var);
        h79 h79Var20 = new h79("FLOAT_LIST", 19, 19, 2, q79Var2);
        h79 h79Var21 = new h79("INT64_LIST", 20, 20, 2, q79Var3);
        h79 h79Var22 = new h79("UINT64_LIST", 21, 21, 2, q79Var3);
        h79 h79Var23 = new h79("INT32_LIST", 22, 22, 2, q79Var4);
        h79 h79Var24 = new h79("FIXED64_LIST", 23, 23, 2, q79Var3);
        h79 h79Var25 = new h79("FIXED32_LIST", 24, 24, 2, q79Var4);
        h79 h79Var26 = new h79("BOOL_LIST", 25, 25, 2, q79Var5);
        h79 h79Var27 = new h79("STRING_LIST", 26, 26, 2, q79Var6);
        h79 h79Var28 = new h79("MESSAGE_LIST", 27, 27, 2, q79Var7);
        h79 h79Var29 = new h79("BYTES_LIST", 28, 28, 2, q79Var8);
        h79 h79Var30 = new h79("UINT32_LIST", 29, 29, 2, q79Var4);
        h79 h79Var31 = new h79("ENUM_LIST", 30, 30, 2, q79Var9);
        h79 h79Var32 = new h79("SFIXED32_LIST", 31, 31, 2, q79Var4);
        h79 h79Var33 = new h79("SFIXED64_LIST", 32, 32, 2, q79Var3);
        h79 h79Var34 = new h79("SINT32_LIST", 33, 33, 2, q79Var4);
        h79 h79Var35 = new h79("SINT64_LIST", 34, 34, 2, q79Var3);
        h79 h79Var36 = new h79("DOUBLE_LIST_PACKED", 35, 35, 3, q79Var);
        b = h79Var36;
        h79 h79Var37 = new h79("FLOAT_LIST_PACKED", 36, 36, 3, q79Var2);
        h79 h79Var38 = new h79("INT64_LIST_PACKED", 37, 37, 3, q79Var3);
        h79 h79Var39 = new h79("UINT64_LIST_PACKED", 38, 38, 3, q79Var3);
        h79 h79Var40 = new h79("INT32_LIST_PACKED", 39, 39, 3, q79Var4);
        h79 h79Var41 = new h79("FIXED64_LIST_PACKED", 40, 40, 3, q79Var3);
        h79 h79Var42 = new h79("FIXED32_LIST_PACKED", 41, 41, 3, q79Var4);
        h79 h79Var43 = new h79("BOOL_LIST_PACKED", 42, 42, 3, q79Var5);
        h79 h79Var44 = new h79("UINT32_LIST_PACKED", 43, 43, 3, q79Var4);
        h79 h79Var45 = new h79("ENUM_LIST_PACKED", 44, 44, 3, q79Var9);
        h79 h79Var46 = new h79("SFIXED32_LIST_PACKED", 45, 45, 3, q79Var4);
        h79 h79Var47 = new h79("SFIXED64_LIST_PACKED", 46, 46, 3, q79Var3);
        h79 h79Var48 = new h79("SINT32_LIST_PACKED", 47, 47, 3, q79Var4);
        h79 h79Var49 = new h79("SINT64_LIST_PACKED", 48, 48, 3, q79Var3);
        c = h79Var49;
        e = new h79[]{h79Var, h79Var2, h79Var3, h79Var4, h79Var5, h79Var6, h79Var7, h79Var8, h79Var9, h79Var10, h79Var11, h79Var12, h79Var13, h79Var14, h79Var15, h79Var16, h79Var17, h79Var18, h79Var19, h79Var20, h79Var21, h79Var22, h79Var23, h79Var24, h79Var25, h79Var26, h79Var27, h79Var28, h79Var29, h79Var30, h79Var31, h79Var32, h79Var33, h79Var34, h79Var35, h79Var36, h79Var37, h79Var38, h79Var39, h79Var40, h79Var41, h79Var42, h79Var43, h79Var44, h79Var45, h79Var46, h79Var47, h79Var48, h79Var49, new h79("GROUP_LIST", 49, 49, 2, q79Var7), new h79("MAP", 50, 50, 4, q79.a)};
        h79[] h79VarArrValues = values();
        d = new h79[h79VarArrValues.length];
        for (h79 h79Var50 : h79VarArrValues) {
            d[h79Var50.a] = h79Var50;
        }
    }

    public h79(String str, int i, int i2, int i3, q79 q79Var) {
        super(str, i);
        this.a = i2;
        int iA = dj7.A(i3);
        if (iA == 1 || iA == 3) {
            q79Var.getClass();
        }
        if (i3 == 1) {
            int i4 = g79.a[q79Var.ordinal()];
        }
    }

    public static h79[] values() {
        return (h79[]) e.clone();
    }
}
