package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public final class o0 extends FilterInputStream {
    public final int a;
    public final boolean b;
    public final byte[][] c;

    public o0(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length, true);
    }

    public static q1 b(int i, mg2 mg2Var, byte[][] bArr) throws IOException {
        try {
            switch (i) {
                case 1:
                    return z.x(h(mg2Var, bArr));
                case 2:
                    return new t0(mg2Var.b());
                case 3:
                    return u.x(mg2Var.b());
                case 4:
                    return new p82(mg2Var.b());
                case 5:
                    if (mg2Var.b().length == 0) {
                        return n82.a;
                    }
                    throw new IllegalStateException("malformed NULL encoding encountered");
                case 6:
                    f1.y(mg2Var.d);
                    return f1.B(h(mg2Var, bArr), true);
                case 7:
                    return new a1(new l82(mg2Var.b()));
                case 8:
                case XmlPullParser.COMMENT /* 9 */:
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                case 15:
                case Argon2.V10 /* 16 */:
                case 17:
                case 29:
                default:
                    throw new IOException("unknown tag " + i + " encountered");
                case 10:
                    return g0.x(h(mg2Var, bArr), true);
                case 12:
                    return new x82(mg2Var.b());
                case 13:
                    int i2 = mg2Var.d;
                    ConcurrentHashMap concurrentHashMap = s1.c;
                    if (i2 <= 4096) {
                        return s1.x(h(mg2Var, bArr), true);
                    }
                    throw new IllegalArgumentException("exceeded relative OID contents length limit");
                case 14:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                    throw new IOException("unsupported tag " + i + " encountered");
                case 18:
                    return new o82(mg2Var.b());
                case Argon2.V13 /* 19 */:
                    return new s82(mg2Var.b());
                case 20:
                    return new v82(mg2Var.b());
                case 21:
                    return new z82(mg2Var.b());
                case 22:
                    return new m82(mg2Var.b());
                case 23:
                    return new s2(mg2Var.b());
                case 24:
                    return new j0(mg2Var.b());
                case 25:
                    return new l82(mg2Var.b());
                case 26:
                    return new a92(mg2Var.b());
                case 27:
                    return new j82(mg2Var.b());
                case 28:
                    return new y82(mg2Var.b());
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    return new e82(g(mg2Var));
            }
        } catch (IllegalArgumentException e) {
            throw new i0(e, e.getMessage());
        } catch (IllegalStateException e2) {
            throw new i0(e2, e2.getMessage());
        }
    }

    public static char[] g(mg2 mg2Var) throws IOException {
        int i = mg2Var.d;
        if ((i & 1) != 0) {
            y5.m("malformed BMPString encoding encountered");
            return null;
        }
        int i2 = i / 2;
        char[] cArr = new char[i2];
        byte[] bArr = new byte[8];
        int i3 = 0;
        int i4 = 0;
        while (i >= 8) {
            if (iz1.w(mg2Var, bArr, 8) != 8) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            cArr[i4] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[i4 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[i4 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[i4 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            i4 += 4;
            i -= 8;
        }
        if (i > 0) {
            if (iz1.w(mg2Var, bArr, i) != i) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            do {
                int i5 = i3 + 1;
                int i6 = bArr[i3] << 8;
                i3 += 2;
                cArr[i4] = (char) ((bArr[i5] & 255) | i6);
                i4++;
            } while (i3 < i);
        }
        if (mg2Var.d == 0 && i2 == i4) {
            return cArr;
        }
        g84.c();
        return null;
    }

    public static byte[] h(mg2 mg2Var, byte[][] bArr) throws IOException {
        int i = mg2Var.d;
        if (i >= bArr.length) {
            return mg2Var.b();
        }
        byte[] bArr2 = bArr[i];
        if (bArr2 == null) {
            bArr2 = new byte[i];
            bArr[i] = bArr2;
        }
        if (i != bArr2.length) {
            c6.f("buffer length not right for data");
            return null;
        }
        if (i == 0) {
            return bArr2;
        }
        int i2 = mg2Var.b;
        if (i >= i2) {
            throw new IOException("corrupted stream - out of bounds length found: " + mg2Var.d + " >= " + i2);
        }
        int iW = i - iz1.w(mg2Var.a, bArr2, bArr2.length);
        mg2Var.d = iW;
        if (iW == 0) {
            mg2Var.a();
            return bArr2;
        }
        m0.e(mg2Var.c, mg2Var.d);
        return null;
    }

    public static int j(InputStream inputStream, int i, boolean z) throws IOException {
        String strI;
        int i2 = inputStream.read();
        if ((i2 >>> 7) == 0) {
            return i2;
        }
        if (128 == i2) {
            return -1;
        }
        if (i2 < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (255 != i2) {
            int i3 = i2 & 127;
            int i4 = 0;
            int i5 = 0;
            do {
                int i6 = inputStream.read();
                if (i6 < 0) {
                    throw new EOFException("EOF found reading length");
                }
                if ((i4 >>> 23) == 0) {
                    i4 = (i4 << 8) + i6;
                    i5++;
                } else {
                    strI = "long form definite-length more than 31 bits";
                }
            } while (i5 < i3);
            if (i4 < i || z) {
                return i4;
            }
            strI = dj7.i("corrupted stream - out of bounds length found: ", i4, i, " >= ");
        } else {
            strI = "invalid long form definite-length 0xFF";
        }
        y5.m(strI);
        return 0;
    }

    public static int n(InputStream inputStream, int i) throws IOException {
        String str;
        int i2 = i & 31;
        if (i2 != 31) {
            return i2;
        }
        int i3 = inputStream.read();
        if (i3 >= 31) {
            int i4 = i3 & 127;
            if (i4 != 0) {
                while ((i3 & 128) != 0) {
                    if ((i4 >>> 24) == 0) {
                        int i5 = i4 << 7;
                        int i6 = inputStream.read();
                        if (i6 < 0) {
                            throw new EOFException("EOF found inside tag value.");
                        }
                        i4 = i5 | (i6 & 127);
                        i3 = i6;
                    } else {
                        str = "Tag number more than 31 bits";
                    }
                }
                return i4;
            }
            str = "corrupted stream - invalid high tag number found";
        } else {
            if (i3 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            str = "corrupted stream - high tag number < 31 found";
        }
        y5.m(str);
        return 0;
    }

    public final q1 a(int i, int i2, int i3) throws IOException {
        mg2 mg2Var = new mg2(this, i3, this.a);
        if ((i & 224) == 0) {
            return b(i2, mg2Var, this.c);
        }
        int i4 = i & XC20P.IV_BIT_LENGTH;
        int i5 = 3;
        int i6 = 4;
        int i7 = 0;
        if (i4 != 0) {
            if ((i & 32) == 0) {
                return new bi0(i6, i4, i2, new p82(mg2Var.b()), 1);
            }
            c0 c0VarQ = q(mg2Var);
            return c0VarQ.b == 1 ? new bi0(i5, i4, i2, c0VarQ.b(0), 1) : new bi0(i6, i4, i2, f92.a(c0VarQ), 1);
        }
        if (i2 == 3) {
            c0 c0VarQ2 = q(mg2Var);
            int i8 = c0VarQ2.b;
            u[] uVarArr = new u[i8];
            while (i7 != i8) {
                b0 b0VarB = c0VarQ2.b(i7);
                if (!(b0VarB instanceof u)) {
                    l0.d(b0VarB.getClass(), "unknown object encountered in constructed BIT STRING: ");
                    return null;
                }
                uVarArr[i7] = (u) b0VarB;
                i7++;
            }
            return new sh0(uVarArr);
        }
        if (i2 == 4) {
            c0 c0VarQ3 = q(mg2Var);
            int i9 = c0VarQ3.b;
            j1[] j1VarArr = new j1[i9];
            while (i7 != i9) {
                b0 b0VarB2 = c0VarQ3.b(i7);
                if (!(b0VarB2 instanceof j1)) {
                    l0.d(b0VarB2.getClass(), "unknown object encountered in constructed OCTET STRING: ");
                    return null;
                }
                j1VarArr[i7] = (j1) b0VarB2;
                i7++;
            }
            return new vh0(vh0.y(j1VarArr), j1VarArr);
        }
        if (i2 == 8) {
            h92 h92VarA = f92.a(q(mg2Var));
            h92VarA.getClass();
            return new h82(h92VarA);
        }
        if (i2 != 16) {
            if (i2 == 17) {
                return f92.b(q(mg2Var));
            }
            y5.m(xs1.h(i2, "unknown tag ", " encountered"));
            return null;
        }
        if (mg2Var.d < 1) {
            return f92.a;
        }
        if (!this.b) {
            return f92.a(q(mg2Var));
        }
        byte[] bArrB = mg2Var.b();
        ss4 ss4Var = new ss4();
        ss4Var.c = bArrB;
        return ss4Var;
    }

    public final q1 m() {
        int i = read();
        if (i <= 0) {
            if (i != 0) {
                return null;
            }
            y5.m("unexpected end-of-contents marker");
            return null;
        }
        int iN = n(this, i);
        int i2 = this.a;
        int i3 = 0;
        int iJ = j(this, i2, false);
        if (iJ >= 0) {
            try {
                return a(i, iN, iJ);
            } catch (IllegalArgumentException e) {
                throw new i0(e, "corrupted stream detected");
            }
        }
        if ((i & 32) == 0) {
            y5.m("indefinite-length primitive encoding encountered");
            return null;
        }
        z1 z1Var = new z1(new hb4(this, i2), i2, i3, this.c);
        int i4 = i & XC20P.IV_BIT_LENGTH;
        if (i4 != 0) {
            return z1Var.b(i4, iN);
        }
        if (iN == 3) {
            return th0.a(z1Var);
        }
        if (iN == 4) {
            return wh0.a(z1Var);
        }
        if (iN == 8) {
            return i82.a(z1Var);
        }
        if (iN == 16) {
            return new xh0(z1Var.c());
        }
        if (iN == 17) {
            return new zh0(z1Var.c());
        }
        y5.m("unknown BER object encountered");
        return null;
    }

    public final c0 q(mg2 mg2Var) {
        int i = mg2Var.d;
        if (i < 1) {
            return new c0(0);
        }
        o0 o0Var = new o0(mg2Var, i, this.b, this.c);
        q1 q1VarM = o0Var.m();
        if (q1VarM == null) {
            return new c0(0);
        }
        c0 c0Var = new c0();
        do {
            c0Var.a(q1VarM);
            q1VarM = o0Var.m();
        } while (q1VarM != null);
        return c0Var;
    }

    public o0(InputStream inputStream, int i, boolean z, byte[][] bArr) {
        super(inputStream);
        this.a = i;
        this.b = z;
        this.c = bArr;
    }

    public o0(ByteArrayInputStream byteArrayInputStream, int i, boolean z) {
        this(byteArrayInputStream, i, z, new byte[11][]);
    }
}
