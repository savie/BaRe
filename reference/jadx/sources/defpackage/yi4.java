package defpackage;

import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yi4 {
    public static final yi4 a;
    public static final yi4 b;
    public static final yi4 c;
    public static final yi4 d;
    public static final /* synthetic */ yi4[] e;

    static {
        yi4 yi4Var = new yi4("ANY", 0);
        a = yi4Var;
        yi4 yi4Var2 = new yi4("NON_PRIVATE", 1);
        yi4 yi4Var3 = new yi4("PROTECTED_AND_PUBLIC", 2);
        yi4 yi4Var4 = new yi4("PUBLIC_ONLY", 3);
        b = yi4Var4;
        yi4 yi4Var5 = new yi4("NONE", 4);
        c = yi4Var5;
        yi4 yi4Var6 = new yi4("DEFAULT", 5);
        d = yi4Var6;
        e = new yi4[]{yi4Var, yi4Var2, yi4Var3, yi4Var4, yi4Var5, yi4Var6};
    }

    public static yi4 valueOf(String str) {
        return (yi4) Enum.valueOf(yi4.class, str);
    }

    public static yi4[] values() {
        return (yi4[]) e.clone();
    }

    public final boolean a(Member member) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal == 1) {
            return !Modifier.isPrivate(member.getModifiers());
        }
        if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                return false;
            }
        } else if (Modifier.isProtected(member.getModifiers())) {
            return true;
        }
        return Modifier.isPublic(member.getModifiers());
    }
}
