package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class aw6 {
    public static final aw6 A;
    public static final aw6 B;
    public static final aw6 C;
    public static final aw6 D;
    public static final aw6 E;
    public static final aw6 F;
    public static final aw6 G;
    public static final aw6 H;
    public static final aw6 I;
    public static final aw6 J;
    public static final aw6 K;
    public static final aw6 L;
    public static final aw6 M;
    public static final HashMap N;
    public static final aw6 d;
    public static final aw6 e;
    public static final aw6 f;
    public static final aw6 g;
    public static final aw6 h;
    public static final aw6 i;
    public static final aw6 j;
    public static final aw6 k;
    public static final aw6 l;
    public static final aw6 m;
    public static final aw6 n;
    public static final aw6 o;
    public static final aw6 p;
    public static final aw6 q;
    public static final aw6 r;
    public static final aw6 s;
    public static final aw6 t;
    public static final aw6 u;
    public static final aw6 v;
    public static final aw6 w;
    public static final aw6 x;
    public static final aw6 y;
    public static final aw6 z;
    public final Integer a;
    public final String b;
    public final xv6 c;

    static {
        aw6 aw6Var = new aw6(65793, "sha2-128f-robust", new j15(16, false));
        d = aw6Var;
        aw6 aw6Var2 = new aw6(65794, "sha2-128s-robust", new j15(16, false));
        e = aw6Var2;
        aw6 aw6Var3 = new aw6(65795, "sha2-192f-robust", new j15(24, false));
        f = aw6Var3;
        aw6 aw6Var4 = new aw6(65796, "sha2-192s-robust", new j15(24, false));
        g = aw6Var4;
        aw6 aw6Var5 = new aw6(65797, "sha2-256f-robust", new j15(32, false));
        h = aw6Var5;
        aw6 aw6Var6 = new aw6(65798, "sha2-256s-robust", new j15(32, false));
        i = aw6Var6;
        aw6 aw6Var7 = new aw6(66049, "sha2-128f", new j15(16, false));
        j = aw6Var7;
        aw6 aw6Var8 = new aw6(66050, "sha2-128s", new j15(16, false));
        k = aw6Var8;
        aw6 aw6Var9 = new aw6(66051, "sha2-192f", new j15(24, false));
        l = aw6Var9;
        aw6 aw6Var10 = new aw6(66052, "sha2-192s", new j15(24, false));
        m = aw6Var10;
        aw6 aw6Var11 = new aw6(66053, "sha2-256f", new j15(32, false));
        n = aw6Var11;
        aw6 aw6Var12 = new aw6(66054, "sha2-256s", new j15(32, false));
        o = aw6Var12;
        aw6 aw6Var13 = new aw6(131329, "shake-128f-robust", new ci2(16));
        p = aw6Var13;
        aw6 aw6Var14 = new aw6(131330, "shake-128s-robust", new ci2(16));
        q = aw6Var14;
        aw6 aw6Var15 = new aw6(131331, "shake-192f-robust", new ci2(24));
        r = aw6Var15;
        aw6 aw6Var16 = new aw6(131332, "shake-192s-robust", new ci2(24));
        s = aw6Var16;
        aw6 aw6Var17 = new aw6(131333, "shake-256f-robust", new ci2(32));
        t = aw6Var17;
        aw6 aw6Var18 = new aw6(131334, "shake-256s-robust", new ci2(32));
        u = aw6Var18;
        aw6 aw6Var19 = new aw6(131585, "shake-128f", new ci2(16));
        v = aw6Var19;
        aw6 aw6Var20 = new aw6(131586, "shake-128s", new ci2(16));
        w = aw6Var20;
        aw6 aw6Var21 = new aw6(131587, "shake-192f", new ci2(24));
        x = aw6Var21;
        aw6 aw6Var22 = new aw6(131588, "shake-192s", new ci2(24));
        y = aw6Var22;
        aw6 aw6Var23 = new aw6(131589, "shake-256f", new ci2(32));
        z = aw6Var23;
        aw6 aw6Var24 = new aw6(131590, "shake-256s", new ci2(32));
        A = aw6Var24;
        aw6 aw6Var25 = new aw6(196865, "haraka-128f-robust", new zv6(16));
        B = aw6Var25;
        aw6 aw6Var26 = new aw6(196866, "haraka-128s-robust", new zv6(16));
        C = aw6Var26;
        aw6 aw6Var27 = new aw6(196867, "haraka-192f-robust", new zv6(24));
        D = aw6Var27;
        aw6 aw6Var28 = new aw6(196868, "haraka-192s-robust", new zv6(24));
        E = aw6Var28;
        aw6 aw6Var29 = new aw6(196869, "haraka-256f-robust", new zv6(32));
        F = aw6Var29;
        aw6 aw6Var30 = new aw6(196870, "haraka-256s-robust", new zv6(32));
        G = aw6Var30;
        aw6 aw6Var31 = new aw6(197121, "haraka-128f-simple", new zv6(16));
        H = aw6Var31;
        aw6 aw6Var32 = new aw6(197122, "haraka-128s-simple", new zv6(16));
        I = aw6Var32;
        aw6 aw6Var33 = new aw6(197123, "haraka-192f-simple", new zv6(24));
        J = aw6Var33;
        aw6 aw6Var34 = new aw6(197124, "haraka-192s-simple", new zv6(24));
        K = aw6Var34;
        aw6 aw6Var35 = new aw6(197125, "haraka-256f-simple", new zv6(32));
        L = aw6Var35;
        aw6 aw6Var36 = new aw6(197126, "haraka-256s-simple", new zv6(32));
        M = aw6Var36;
        N = new HashMap();
        aw6[] aw6VarArr = {aw6Var, aw6Var2, aw6Var3, aw6Var4, aw6Var5, aw6Var6, aw6Var7, aw6Var8, aw6Var9, aw6Var10, aw6Var11, aw6Var12, aw6Var13, aw6Var14, aw6Var15, aw6Var16, aw6Var17, aw6Var18, aw6Var19, aw6Var20, aw6Var21, aw6Var22, aw6Var23, aw6Var24, aw6Var25, aw6Var26, aw6Var27, aw6Var28, aw6Var29, aw6Var30, aw6Var31, aw6Var32, aw6Var33, aw6Var34, aw6Var35, aw6Var36};
        for (int i2 = 0; i2 < 36; i2++) {
            aw6 aw6Var37 = aw6VarArr[i2];
            N.put(aw6Var37.a, aw6Var37);
        }
    }

    public aw6(Integer num, String str, xv6 xv6Var) {
        this.a = num;
        this.b = str;
        this.c = xv6Var;
    }
}
