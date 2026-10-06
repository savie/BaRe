package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yv8 implements sx2 {
    public static final yv8 b;
    public static final /* synthetic */ yv8[] c;
    public long a;

    /* JADX INFO: Fake field, exist only in values array */
    yv8 EF0;

    static {
        yv8 yv8Var = new yv8("NTLMSSP_REVISION_W2K3", 0);
        yv8Var.a = 15L;
        b = yv8Var;
        c = new yv8[]{yv8Var};
    }

    public static yv8 valueOf(String str) {
        return (yv8) Enum.valueOf(yv8.class, str);
    }

    public static yv8[] values() {
        return (yv8[]) c.clone();
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
