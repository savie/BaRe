package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sq6 {
    public pr8 a;
    public ArrayList b;

    public static long a(ni2 ni2Var, long j) {
        pr8 pr8Var = ni2Var.d;
        ArrayList arrayList = ni2Var.k;
        if (pr8Var instanceof c44) {
            return j;
        }
        int size = arrayList.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            ki2 ki2Var = (ki2) arrayList.get(i);
            if (ki2Var instanceof ni2) {
                ni2 ni2Var2 = (ni2) ki2Var;
                if (ni2Var2.d != pr8Var) {
                    jMin = Math.min(jMin, a(ni2Var2, ((long) ni2Var2.f) + j));
                }
            }
        }
        ni2 ni2Var3 = pr8Var.i;
        ni2 ni2Var4 = pr8Var.h;
        if (ni2Var != ni2Var3) {
            return jMin;
        }
        long j2 = j - pr8Var.j();
        return Math.min(Math.min(jMin, a(ni2Var4, j2)), j2 - ((long) ni2Var4.f));
    }

    public static long b(ni2 ni2Var, long j) {
        pr8 pr8Var = ni2Var.d;
        ArrayList arrayList = ni2Var.k;
        if (pr8Var instanceof c44) {
            return j;
        }
        int size = arrayList.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            ki2 ki2Var = (ki2) arrayList.get(i);
            if (ki2Var instanceof ni2) {
                ni2 ni2Var2 = (ni2) ki2Var;
                if (ni2Var2.d != pr8Var) {
                    jMax = Math.max(jMax, b(ni2Var2, ((long) ni2Var2.f) + j));
                }
            }
        }
        ni2 ni2Var3 = pr8Var.h;
        ni2 ni2Var4 = pr8Var.i;
        if (ni2Var != ni2Var3) {
            return jMax;
        }
        long j2 = pr8Var.j() + j;
        return Math.max(Math.max(jMax, b(ni2Var4, j2)), j2 - ((long) ni2Var4.f));
    }
}
