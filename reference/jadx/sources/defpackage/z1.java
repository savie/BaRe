package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.IOException;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class z1 {
    public final /* synthetic */ int a;
    public final int b;
    public final Object c;
    public final Object d;

    public /* synthetic */ z1(Object obj, int i, int i2, Object obj2) {
        this.a = i2;
        this.c = obj;
        this.b = i;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b0 a(int i) throws IOException {
        byte[][] bArr = (byte[][]) this.d;
        ou4 ou4Var = (ou4) this.c;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (ou4Var instanceof hb4) {
            hb4 hb4Var = (hb4) ou4Var;
            hb4Var.f = false;
            hb4Var.b();
        }
        int iN = o0.n(ou4Var, i);
        int i2 = 1;
        boolean z = iN == 3 || iN == 4 || iN == 16 || iN == 17 || iN == 8;
        int i3 = this.b;
        int iJ = o0.j(ou4Var, i3, z);
        if (iJ < 0) {
            if ((i & 32) == 0) {
                y5.m("indefinite-length primitive encoding encountered");
                return null;
            }
            z1 z1Var = new z1(new hb4(ou4Var, i3), i3, objArr3 == true ? 1 : 0, bArr);
            int i4 = i & XC20P.IV_BIT_LENGTH;
            if (i4 != 0) {
                return new ci0(i4, iN, z1Var);
            }
            if (iN == 3) {
                return new th0(z1Var);
            }
            if (iN == 4) {
                return new wh0(z1Var);
            }
            if (iN == 8) {
                return new i82(z1Var);
            }
            if (iN == 16) {
                yh0 yh0Var = new yh0(objArr2 == true ? 1 : 0);
                yh0Var.b = z1Var;
                return yh0Var;
            }
            if (iN != 17) {
                l0.d(Integer.toHexString(iN), "unknown BER object encountered: 0x");
                return null;
            }
            ai0 ai0Var = new ai0(0);
            ai0Var.b = z1Var;
            return ai0Var;
        }
        mg2 mg2Var = new mg2(ou4Var, iJ, i3);
        if ((i & 224) == 0) {
            if (iN == 3) {
                return new e92(mg2Var);
            }
            if (iN == 4) {
                q82 q82Var = new q82();
                q82Var.a = mg2Var;
                return q82Var;
            }
            if (iN == 8) {
                throw new i0("externals must use constructed encoding (see X.690 8.18)");
            }
            if (iN == 16) {
                throw new i0("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
            }
            if (iN == 17) {
                throw new i0("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
            }
            try {
                return o0.b(iN, mg2Var, bArr);
            } catch (IllegalArgumentException e) {
                throw new i0(e, "corrupted stream detected");
            }
        }
        z1 z1Var2 = new z1(mg2Var, mg2Var.b, objArr == true ? 1 : 0, bArr);
        int i5 = i & XC20P.IV_BIT_LENGTH;
        if (i5 != 0) {
            return new j92(i5, iN, (i & 32) != 0, z1Var2);
        }
        if (iN == 3) {
            return new th0(z1Var2);
        }
        if (iN == 4) {
            return new wh0(z1Var2);
        }
        if (iN == 8) {
            return new i82(z1Var2);
        }
        if (iN == 16) {
            yh0 yh0Var2 = new yh0(i2);
            yh0Var2.b = z1Var2;
            return yh0Var2;
        }
        if (iN != 17) {
            l0.d(Integer.toHexString(iN), "unknown DL object encountered: 0x");
            return null;
        }
        ai0 ai0Var2 = new ai0(1);
        ai0Var2.b = z1Var2;
        return ai0Var2;
    }

    public bi0 b(int i, int i2) {
        c0 c0VarC = c();
        int i3 = c0VarC.b;
        if (i3 == 1) {
            return new bi0(3, i, i2, c0VarC.b(0), 0);
        }
        xh0 xh0Var = uh0.a;
        return new bi0(4, i, i2, i3 < 1 ? uh0.a : new xh0(c0VarC), 0);
    }

    public c0 c() {
        ou4 ou4Var = (ou4) this.c;
        int i = ou4Var.read();
        if (i < 0) {
            return new c0(0);
        }
        c0 c0Var = new c0();
        do {
            b0 b0VarA = a(i);
            c0Var.a(b0VarA instanceof cb4 ? ((cb4) b0VarA).g() : b0VarA.d());
            i = ou4Var.read();
        } while (i >= 0);
        return c0Var;
    }

    public boolean equals(Object obj) {
        switch (this.a) {
            case 1:
                if (obj != this) {
                    if (!u81.n((Class) this.c, obj)) {
                        return false;
                    }
                    int length = Array.getLength(obj);
                    int i = this.b;
                    if (length != i) {
                        return false;
                    }
                    for (int i2 = 0; i2 < i; i2++) {
                        Object obj2 = Array.get(this.d, i2);
                        Object obj3 = Array.get(obj, i2);
                        if (obj2 != obj3 && obj2 != null && !obj2.equals(obj3)) {
                            return false;
                        }
                    }
                }
                return true;
            default:
                return super.equals(obj);
        }
    }
}
