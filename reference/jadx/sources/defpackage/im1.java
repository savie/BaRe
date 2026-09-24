package defpackage;

import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class im1 {
    public static final im1 a;
    public static final HashMap b;
    public static final /* synthetic */ im1[] c;

    /* JADX INFO: Fake field, exist only in values array */
    im1 EF0;

    static {
        im1 im1Var = new im1("X86_32", 0);
        im1 im1Var2 = new im1("X86_64", 1);
        im1 im1Var3 = new im1("ARM_UNKNOWN", 2);
        im1 im1Var4 = new im1("PPC", 3);
        im1 im1Var5 = new im1("PPC64", 4);
        im1 im1Var6 = new im1("ARMV6", 5);
        im1 im1Var7 = new im1("ARMV7", 6);
        im1 im1Var8 = new im1("UNKNOWN", 7);
        a = im1Var8;
        im1 im1Var9 = new im1("ARMV7S", 8);
        im1 im1Var10 = new im1("ARM64", 9);
        c = new im1[]{im1Var, im1Var2, im1Var3, im1Var4, im1Var5, im1Var6, im1Var7, im1Var8, im1Var9, im1Var10};
        HashMap map = new HashMap(4);
        b = map;
        map.put("armeabi-v7a", im1Var7);
        map.put("armeabi", im1Var6);
        map.put("arm64-v8a", im1Var10);
        map.put("x86", im1Var);
    }

    public static im1 valueOf(String str) {
        return (im1) Enum.valueOf(im1.class, str);
    }

    public static im1[] values() {
        return (im1[]) c.clone();
    }
}
