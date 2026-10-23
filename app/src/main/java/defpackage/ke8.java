package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ke8 {
    public static je8 a(Object obj) {
        av3 av3Var = (av3) obj;
        je8 je8Var = av3Var.unknownFields;
        if (je8Var != je8.f) {
            return je8Var;
        }
        je8 je8Var2 = new je8(0, new int[8], new Object[8], true);
        av3Var.unknownFields = je8Var2;
        return je8Var2;
    }

    public static boolean b(int i, hk1 hk1Var, Object obj) throws fg4 {
        int i2 = hk1Var.b;
        gk1 gk1Var = hk1Var.a;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            hk1Var.w(0);
            ((je8) obj).c(i3 << 3, Long.valueOf(gk1Var.o()));
            return true;
        }
        if (i4 == 1) {
            hk1Var.w(1);
            ((je8) obj).c((i3 << 3) | 1, Long.valueOf(gk1Var.l()));
            return true;
        }
        if (i4 == 2) {
            ((je8) obj).c((i3 << 3) | 2, hk1Var.e());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw fg4.b();
            }
            hk1Var.w(5);
            ((je8) obj).c(5 | (i3 << 3), Integer.valueOf(gk1Var.k()));
            return true;
        }
        je8 je8Var = new je8(0, new int[8], new Object[8], true);
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i + 1;
        if (i7 >= 100) {
            throw new fg4("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (hk1Var.a() != Integer.MAX_VALUE && b(i7, hk1Var, je8Var)) {
        }
        if (i6 != hk1Var.b) {
            throw new fg4("Protocol message end-group tag did not match expected tag.");
        }
        if (je8Var.e) {
            je8Var.e = false;
        }
        ((je8) obj).c(i5 | 3, je8Var);
        return true;
    }
}
