package defpackage;

import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tk1 {
    public static final lk1 a;

    static {
        lk1 lk1Var = new lk1();
        lk1Var.put(fb7.COPY, new ok1(new Class[0]));
        lk1Var.put(fb7.LZMA, new lq4(eq4.class, Number.class));
        lk1Var.put(fb7.LZMA2, new cq4(eq4.class, Number.class));
        lk1Var.put(fb7.DEFLATE, new sk1(Number.class));
        lk1Var.put(fb7.DEFLATE64, new pk1(Number.class));
        lk1Var.put(fb7.BZIP2, new nk1(Number.class));
        lk1Var.put(fb7.AES256SHA256, new i(f.class));
        lk1Var.put(fb7.BCJ_X86_FILTER, new mk1(new fx8()));
        lk1Var.put(fb7.BCJ_PPC_FILTER, new mk1(new p(1)));
        lk1Var.put(fb7.BCJ_IA64_FILTER, new mk1(new m74()));
        lk1Var.put(fb7.BCJ_ARM_FILTER, new mk1(new n()));
        lk1Var.put(fb7.BCJ_ARM_THUMB_FILTER, new mk1(new p(0)));
        lk1Var.put(fb7.BCJ_SPARC_FILTER, new mk1(new sv6()));
        lk1Var.put(fb7.DELTA_FILTER, new ei2(Number.class));
        a = lk1Var;
    }

    public static InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) {
        fb7 fb7Var;
        byte[] bArr2 = kk1Var.a;
        fb7[] fb7VarArr = (fb7[]) fb7.class.getEnumConstants();
        int length = fb7VarArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                fb7Var = null;
                break;
            }
            fb7Var = fb7VarArr[i2];
            if (Arrays.equals(fb7Var.a, bArr2)) {
                break;
            }
            i2++;
        }
        j3 j3Var = (j3) a.get(fb7Var);
        if (j3Var != null) {
            return j3Var.a(str, inputStream, j, kk1Var, bArr, i);
        }
        q.k("Unsupported compression method ", Arrays.toString(bArr2), " used in ", str);
        return null;
    }
}
