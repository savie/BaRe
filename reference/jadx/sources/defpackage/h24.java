package defpackage;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public final class h24 implements b55 {
    public static final Hashtable h;
    public final hl2 a;
    public final int b;
    public final int c;
    public xb5 d;
    public xb5 e;
    public final byte[] f;
    public final byte[] g;

    static {
        Hashtable hashtable = new Hashtable();
        h = hashtable;
        hashtable.put("GOST3411", 32);
        hashtable.put("MD2", 16);
        hashtable.put("MD4", 64);
        hashtable.put("MD5", 64);
        hashtable.put("RIPEMD128", 64);
        hashtable.put("RIPEMD160", 64);
        hashtable.put("SHA-1", 64);
        hashtable.put("SHA-224", 64);
        hashtable.put("SHA-256", 64);
        hashtable.put("SHA-384", 128);
        hashtable.put("SHA-512", 128);
        hashtable.put("Tiger", 64);
        hashtable.put("Whirlpool", 64);
    }

    public h24(uu3 uu3Var) {
        int iIntValue;
        if (uu3Var != null) {
            iIntValue = 64;
        } else {
            Integer num = (Integer) h.get(uu3Var.f());
            if (num == null) {
                b6.e(uu3Var.f(), "unknown digest passed: ");
                throw null;
            }
            iIntValue = num.intValue();
        }
        this.a = uu3Var;
        int iC = uu3Var.c();
        this.b = iC;
        this.c = iIntValue;
        this.f = new byte[iIntValue];
        this.g = new byte[iIntValue + iC];
    }

    @Override // defpackage.b55
    public final void a(byte b) {
        this.a.a(b);
    }

    @Override // defpackage.b55
    public final int b() {
        return this.b;
    }

    @Override // defpackage.b55
    public final void c(z61 z61Var) {
        hl2 hl2Var = this.a;
        hl2Var.reset();
        byte[] bArr = ((oo4) z61Var).a;
        int length = bArr.length;
        byte[] bArr2 = this.f;
        int i = this.c;
        if (length > i) {
            hl2Var.update(bArr, 0, length);
            hl2Var.doFinal(bArr2, 0);
            length = this.b;
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, length);
        }
        while (length < bArr2.length) {
            bArr2[length] = 0;
            length++;
        }
        byte[] bArr3 = this.g;
        System.arraycopy(bArr2, 0, bArr3, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            bArr2[i2] = (byte) (bArr2[i2] ^ 54);
        }
        for (int i3 = 0; i3 < i; i3++) {
            bArr3[i3] = (byte) (bArr3[i3] ^ 92);
        }
        boolean z = hl2Var instanceof xb5;
        if (z) {
            xb5 xb5VarCopy = ((xb5) hl2Var).copy();
            this.e = xb5VarCopy;
            ((hl2) xb5VarCopy).update(bArr3, 0, i);
        }
        hl2Var.update(bArr2, 0, bArr2.length);
        if (z) {
            this.d = ((xb5) hl2Var).copy();
        }
    }

    @Override // defpackage.b55
    public final int doFinal(byte[] bArr, int i) {
        hl2 hl2Var = this.a;
        byte[] bArr2 = this.g;
        int i2 = this.c;
        hl2Var.doFinal(bArr2, i2);
        xb5 xb5Var = this.e;
        if (xb5Var != null) {
            ((xb5) hl2Var).b(xb5Var);
            hl2Var.update(bArr2, i2, hl2Var.c());
        } else {
            hl2Var.update(bArr2, 0, bArr2.length);
        }
        int iDoFinal = hl2Var.doFinal(bArr, i);
        while (i2 < bArr2.length) {
            bArr2[i2] = 0;
            i2++;
        }
        xb5 xb5Var2 = this.d;
        if (xb5Var2 != null) {
            ((xb5) hl2Var).b(xb5Var2);
            return iDoFinal;
        }
        byte[] bArr3 = this.f;
        hl2Var.update(bArr3, 0, bArr3.length);
        return iDoFinal;
    }

    @Override // defpackage.b55
    public final void update(byte[] bArr, int i, int i2) {
        this.a.update(bArr, i, i2);
    }
}
