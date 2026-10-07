package defpackage;

import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

public enum yi4 {
    ANY,
    NON_PRIVATE,
    PROTECTED_AND_PUBLIC,
    PUBLIC_ONLY,
    NONE,
    DEFAULT;

    public static final yi4 a = ANY;
    public static final yi4 b = PUBLIC_ONLY;
    public static final yi4 c = NONE;
    public static final yi4 d = DEFAULT;

    public final boolean a(Member member) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) return true;
        if (iOrdinal == 1) return !Modifier.isPrivate(member.getModifiers());
        if (iOrdinal != 2) {
            if (iOrdinal != 3) return false;
        } else if (Modifier.isProtected(member.getModifiers())) return true;
        return Modifier.isPublic(member.getModifiers());
    }
}
