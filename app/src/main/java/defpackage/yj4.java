package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yj4 {
    public static final yj4 a;
    public static final yj4 b;
    public static final /* synthetic */ yj4[] c;

    /* JADX INFO: Fake field, exist only in values array */
    yj4 EF0;

    static {
        yj4 yj4Var = new yj4("ACCEPT_SINGLE_VALUE_AS_ARRAY", 0);
        yj4 yj4Var2 = new yj4("ACCEPT_CASE_INSENSITIVE_PROPERTIES", 1);
        yj4 yj4Var3 = new yj4("READ_UNKNOWN_ENUM_VALUES_AS_NULL", 2);
        yj4 yj4Var4 = new yj4("READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE", 3);
        yj4 yj4Var5 = new yj4("READ_DATE_TIMESTAMPS_AS_NANOSECONDS", 4);
        yj4 yj4Var6 = new yj4("ACCEPT_CASE_INSENSITIVE_VALUES", 5);
        yj4 yj4Var7 = new yj4("WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS", 6);
        yj4 yj4Var8 = new yj4("WRITE_DATES_WITH_ZONE_ID", 7);
        yj4 yj4Var9 = new yj4("WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED", 8);
        a = yj4Var9;
        yj4 yj4Var10 = new yj4("WRITE_SORTED_MAP_ENTRIES", 9);
        b = yj4Var10;
        c = new yj4[]{yj4Var, yj4Var2, yj4Var3, yj4Var4, yj4Var5, yj4Var6, yj4Var7, yj4Var8, yj4Var9, yj4Var10, new yj4("ADJUST_DATES_TO_CONTEXT_TIME_ZONE", 10)};
    }

    public static yj4 valueOf(String str) {
        return (yj4) Enum.valueOf(yj4.class, str);
    }

    public static yj4[] values() {
        return (yj4[]) c.clone();
    }
}
