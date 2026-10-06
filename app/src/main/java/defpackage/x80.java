package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x80 {
    public static final z80 a;
    public static final z80 b;
    public static final z80 c;
    public static final z80 d;
    public static final z80 e;
    public static final z80 f;

    static {
        z80.a(0, "Invalid discovery document");
        a = z80.a(1, "User cancelled flow");
        b = z80.a(2, "Flow cancelled programmatically");
        c = z80.a(3, "Network error");
        z80.a(4, "Server error");
        d = z80.a(5, "JSON deserialization error");
        z80.a(6, "Token response construction error");
        z80.a(7, "Invalid registration response");
        e = z80.a(8, "Unable to parse ID Token");
        f = z80.a(9, "Invalid ID Token");
    }
}
