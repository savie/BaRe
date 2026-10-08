package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r47 {
    public static final r47 a;
    public static final r47 b;
    public static final r47 c;
    public static final /* synthetic */ r47[] d;

    static {
        r47 r47Var = new r47("NETWORK_UNMETERED", 0);
        a = r47Var;
        r47 r47Var2 = new r47("DEVICE_IDLE", 1);
        b = r47Var2;
        r47 r47Var3 = new r47("DEVICE_CHARGING", 2);
        c = r47Var3;
        d = new r47[]{r47Var, r47Var2, r47Var3};
    }

    public static r47 valueOf(String str) {
        return (r47) Enum.valueOf(r47.class, str);
    }

    public static r47[] values() {
        return (r47[]) d.clone();
    }
}
