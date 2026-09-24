package okhttp3.internal.publicsuffix;

import defpackage.el1;
import defpackage.eq2;
import defpackage.f51;
import defpackage.f6;
import defpackage.f77;
import defpackage.ge;
import defpackage.h77;
import defpackage.hy0;
import defpackage.iq2;
import defpackage.ll1;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.xs1;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PublicSuffixDatabase {
    public static final hy0 b = new hy0(Arrays.copyOf(new byte[]{42}, 1));
    public static final List c = nc8.I("*");
    public static final PublicSuffixDatabase d = new PublicSuffixDatabase(new AssetPublicSuffixList());
    public final AssetPublicSuffixList a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static final String a(hy0 hy0Var, hy0[] hy0VarArr, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            hy0 hy0Var2 = PublicSuffixDatabase.b;
            int iD = hy0Var.d();
            int i5 = 0;
            while (i5 < iD) {
                int i6 = (i5 + iD) / 2;
                while (i6 > -1 && hy0Var.i(i6) != 10) {
                    i6--;
                }
                int i7 = i6 + 1;
                int i8 = 1;
                while (true) {
                    i2 = i7 + i8;
                    if (hy0Var.i(i2) == 10) {
                        break;
                    }
                    i8++;
                }
                int i9 = i2 - i7;
                int i10 = i;
                boolean z2 = false;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte bI = hy0VarArr[i10].i(i11);
                        byte[] bArr = _UtilCommonKt.a;
                        int i13 = bI & 255;
                        z = z2;
                        i3 = i13;
                    }
                    byte bI2 = hy0Var.i(i7 + i12);
                    byte[] bArr2 = _UtilCommonKt.a;
                    i4 = i3 - (bI2 & 255);
                    if (i4 != 0) {
                        break;
                    }
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (hy0VarArr[i10].d() != i11) {
                        z2 = z;
                    } else {
                        if (i10 == hy0VarArr.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i14 = i9 - i12;
                        int iD2 = hy0VarArr[i10].d() - i11;
                        int length = hy0VarArr.length;
                        for (int i15 = i10 + 1; i15 < length; i15++) {
                            iD2 += hy0VarArr[i15].d();
                        }
                        if (iD2 >= i14) {
                            if (iD2 <= i14) {
                                return hy0Var.r(i7, i9 + i7).p(f51.a);
                            }
                        }
                    }
                    i5 = i2 + 1;
                }
                iD = i6;
            }
            return null;
        }
    }

    public PublicSuffixDatabase(AssetPublicSuffixList assetPublicSuffixList) {
        this.a = assetPublicSuffixList;
    }

    public static List b(String str) {
        List listW0 = nq7.w0(str, new char[]{'.'}, 6);
        return pe4.d(el1.a1(listW0), "") ? el1.O0(1, listW0) : listW0;
    }

    public final String a(String str) {
        String strA;
        String strA2;
        String strA3;
        List listW0;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List listB = b(unicode);
        AssetPublicSuffixList assetPublicSuffixList = this.a;
        AtomicBoolean atomicBoolean = assetPublicSuffixList.a;
        if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
            try {
                assetPublicSuffixList.b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        assetPublicSuffixList.c();
                        break;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedIOException unused2) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    assetPublicSuffixList.e = e;
                    if (z) {
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        if (assetPublicSuffixList.c == null) {
            IllegalStateException illegalStateException = new IllegalStateException("Unable to load " + ((Object) assetPublicSuffixList.f) + " resource.");
            illegalStateException.initCause(assetPublicSuffixList.e);
            throw illegalStateException;
        }
        int size3 = listB.size();
        hy0[] hy0VarArr = new hy0[size3];
        for (int i = 0; i < size3; i++) {
            hy0 hy0Var = hy0.d;
            hy0VarArr[i] = ge.v((String) listB.get(i));
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size3) {
                strA = null;
                break;
            }
            strA = Companion.a(assetPublicSuffixList.a(), hy0VarArr, i2);
            if (strA != null) {
                break;
            }
            i2++;
        }
        if (size3 <= 1) {
            strA2 = null;
            break;
        }
        hy0[] hy0VarArr2 = (hy0[]) hy0VarArr.clone();
        int length = hy0VarArr2.length - 1;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                strA2 = null;
                break;
            }
            hy0VarArr2[i3] = b;
            strA2 = Companion.a(assetPublicSuffixList.a(), hy0VarArr2, i3);
            if (strA2 != null) {
                break;
            }
            i3++;
        }
        if (strA2 == null) {
            strA3 = null;
            break;
        }
        int i4 = size3 - 1;
        int i5 = 0;
        while (true) {
            if (i5 >= i4) {
                strA3 = null;
                break;
            }
            hy0 hy0Var2 = assetPublicSuffixList.d;
            if (hy0Var2 == null) {
                pe4.F("exceptionBytes");
                throw null;
            }
            strA3 = Companion.a(hy0Var2, hy0VarArr, i5);
            if (strA3 != null) {
                break;
            }
            i5++;
        }
        if (strA3 != null) {
            listW0 = nq7.w0("!".concat(strA3), new char[]{'.'}, 6);
        } else if (strA == null && strA2 == null) {
            listW0 = c;
        } else {
            ov2 ov2Var = ov2.a;
            List listW1 = strA != null ? nq7.w0(strA, new char[]{'.'}, 6) : ov2Var;
            listW0 = strA2 != null ? nq7.w0(strA2, new char[]{'.'}, 6) : ov2Var;
            if (listW1.size() > listW0.size()) {
                listW0 = listW1;
            }
        }
        if (listB.size() == listW0.size() && ((String) listW0.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) listW0.get(0)).charAt(0) == '!') {
            size = listB.size();
            size2 = listW0.size();
        } else {
            size = listB.size();
            size2 = listW0.size() + 1;
        }
        int i6 = size - size2;
        f77 ll1Var = new ll1(b(str));
        if (i6 < 0) {
            f6.g(xs1.h(i6, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i6 != 0) {
            ll1Var = ll1Var instanceof iq2 ? ((iq2) ll1Var).b(i6) : new eq2(ll1Var, i6, 0);
        }
        return h77.z0(ll1Var, ".");
    }
}
