package defpackage;

import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b97 {
    public final a48 a;
    public final ni8 b;

    public b97(a48 a48Var, ni8 ni8Var) {
        a48Var.getClass();
        ni8Var.getClass();
        this.a = a48Var;
        this.b = ni8Var;
    }

    public final u87 a(u87 u87Var) {
        String str;
        this.b.getClass();
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        String string = uuidRandomUUID.toString();
        string.getClass();
        String lowerCase = uq7.T(string, "-", "").toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str2 = (u87Var == null || (str = u87Var.b) == null) ? lowerCase : str;
        int i = u87Var != null ? u87Var.c + 1 : 0;
        this.a.getClass();
        return new u87(i, lowerCase, str2, a48.a().b);
    }
}
