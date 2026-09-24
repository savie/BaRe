package defpackage;

import android.graphics.Bitmap;
import android.util.Log;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.Objects;
import java.util.Random;
import javax.crypto.Cipher;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class nh4 implements nx1, to2, al6, o98, es9, gt9, y1a {
    public static final nh4 c;
    public static final nh4 d;
    public final /* synthetic */ int a;
    public static final /* synthetic */ nh4 b = new nh4(0);
    public static final char[] e = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    static {
        int i = 1;
        c = new nh4(i);
        d = new nh4(new u13(i));
    }

    public nh4(u13 u13Var) {
        this.a = 2;
    }

    public static final q63 a() {
        String str = ry5.u;
        return new q63(eq3.j(qy5.f(false, null).o, "wifi_networks.wfi"), 2);
    }

    public static final long b(byte[] bArr, int i) {
        long j = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            j = (j << 8) | (((long) bArr[i + i2]) & 255);
        }
        return j;
    }

    public static boolean j(String str, String str2, Long l) {
        jy8 jy8Var = new jy8();
        TokenCredentials tokenCredentials = new TokenCredentials(str, null, str2, l, 2, null);
        jy8Var.a = tokenCredentials;
        CloudOperationsImpl$LoginResult cloudOperationsImpl$LoginResultD = jy8Var.d(false);
        Log.i("CloudOperationsImpl", "processToken: loginResult=" + cloudOperationsImpl$LoginResultD);
        if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.Success) {
            String strD = eh1.d(jy8Var);
            if (strD != null && strD.length() != 0) {
                CloudServiceId cloudServiceIdC = eh1.c(jy8Var, null);
                TokenCredentials tokenCredentialsCopy$default = TokenCredentials.copy$default(tokenCredentials, null, cloudServiceIdC, null, null, 13, null);
                boolean zU = zm5.u(cloudServiceIdC);
                if (zU) {
                    TokenCredentials.Companion.getClass();
                    i58.c(jy8Var.d, tokenCredentialsCopy$default);
                }
                vr6.i$default(vr6.INSTANCE, "CloudOperationsImpl", "CloudServiceId = " + cloudServiceIdC, null, 4, null);
                return zU;
            }
            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", eq3.k("Folder creation failed (", strD, ")!"), null, 4, null);
        }
        return false;
    }

    public static String k(int i, boolean z, boolean z2, char[] cArr, Random random) {
        int iMax;
        int length;
        int i2;
        int i3 = i;
        if (i3 == 0) {
            return "";
        }
        String str = null;
        if (i3 < 0) {
            c6.f(xs1.h(i3, "Requested random string length ", " is less than 0."));
            return null;
        }
        if (cArr != null && cArr.length == 0) {
            c6.f("The chars array must not be empty");
            return null;
        }
        int i4 = 0;
        int i5 = 32;
        if (cArr != null) {
            length = cArr.length;
            iMax = 0;
        } else if (z || z2) {
            iMax = 32;
            length = 123;
        } else {
            iMax = 0;
            length = 1114111;
        }
        int iMin = length <= 1114111 ? length : 1114111;
        if (cArr == null && iMin <= 127) {
            if (z && z2 && iMin >= 123) {
                return k(i3, false, false, e, random);
            }
            if ((z2 && iMin <= 48) || (z && iMin <= 65)) {
                c6.f(xs1.h(iMin, "Parameter end (", ") must be greater then (48) for generating digits or greater then (65) for generating letters."));
                return null;
            }
            if (z && z2) {
                iMax = Math.max(48, iMax);
                iMin = Math.min(123, iMin);
            } else if (z2) {
                iMax = Math.max(48, iMax);
                iMin = Math.min(58, iMin);
            } else if (z) {
                iMax = Math.max(65, iMax);
                iMin = Math.min(123, iMin);
            }
        }
        StringBuilder sb = new StringBuilder(i3);
        int iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(iMin - iMax);
        int iMin2 = (int) Math.min((((((long) i3) * ((long) iNumberOfLeadingZeros)) + 3) / 5) + 10, 429496739L);
        if (iMin2 <= 0) {
            c6.f("cacheSize must be positive");
            return null;
        }
        byte[] bArr = iMin2 <= 268435455 ? new byte[iMin2] : new byte[268435455];
        Objects.requireNonNull(random, "random");
        random.nextBytes(bArr);
        int i6 = 0;
        while (true) {
            int i7 = i3 - 1;
            if (i3 == 0) {
                return sb.toString();
            }
            if (iNumberOfLeadingZeros > i5 || iNumberOfLeadingZeros <= 0) {
                String str2 = str;
                c6.f("number of bits must be between 1 and 32");
                return str2;
            }
            int i8 = i4;
            int i9 = i8;
            while (i8 < iNumberOfLeadingZeros) {
                String str3 = str;
                if ((i6 >> 3) >= bArr.length) {
                    random.nextBytes(bArr);
                    i6 = 0;
                }
                int i10 = i6 & 7;
                int iMin3 = Math.min(8 - i10, iNumberOfLeadingZeros - i8);
                i9 = (i9 << iMin3) | ((bArr[i6 >> 3] >> i10) & ((1 << iMin3) - 1));
                i8 += iMin3;
                i6 += iMin3;
                str = str3;
            }
            String str4 = str;
            int i11 = i9 + iMax;
            if (i11 < iMin) {
                if (cArr == null) {
                    int type = Character.getType(i11);
                    if (type != 0 && type != 18) {
                        if (type == 19) {
                            i2 = i11;
                        }
                    }
                } else {
                    i2 = cArr[i11];
                }
                i2 = i11;
                int iCharCount = Character.charCount(i2);
                if ((i7 != 0 || iCharCount <= 1) && ((z && Character.isLetter(i2)) || ((z2 && Character.isDigit(i2)) || (!z && !z2)))) {
                    sb.appendCodePoint(i2);
                    i3 = iCharCount == 2 ? i3 - 2 : i7;
                }
            }
            str = str4;
            i4 = 0;
            i5 = 32;
        }
    }

    public static int l(p0 p0Var) {
        try {
            int i = p0Var.read();
            if (i <= 127) {
                return i;
            }
            int i2 = i & 127;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 = (i3 << 8) + p0Var.read();
            }
            if (i3 != 0) {
                return i3;
            }
            throw new o1("The indefinite length form is not (yet) supported!");
        } catch (IOException e2) {
            throw new o1("Unable to read the length of the ASN.1 object.", e2);
        }
    }

    public static m2 m(p0 p0Var) {
        try {
            int i = p0Var.read();
            byte b2 = (byte) i;
            int i2 = b2 & 192;
            int i3 = 0;
            for (n2 n2Var : n2.values()) {
                if (n2Var.a == i2) {
                    d0 d0Var = (b2 & 32) == 0 ? d0.PRIMITIVE : d0.CONSTRUCTED;
                    int i4 = i & 31;
                    if (i4 <= 30) {
                        return m2.b(n2Var, i4).a(d0Var);
                    }
                    int i5 = p0Var.read();
                    if ((i5 & 127) == 0) {
                        throw new o1("corrupted stream - invalid high tag number found");
                    }
                    while (i5 >= 0 && (i5 & 128) != 0) {
                        i3 = ((i5 & 127) | i3) << 7;
                        i5 = p0Var.read();
                    }
                    if (i5 >= 0) {
                        return m2.b(n2Var, (i5 & 127) | i3).a(d0Var);
                    }
                    throw new o1("EOF found inside tag value.");
                }
            }
            throw new IllegalStateException("Could not parse ASN.1 Tag Class (should be impossible)");
        } catch (IOException e2) {
            throw new o1("Unable to parse ASN.1 tag", e2);
        }
    }

    public static byte[] n(int i, p0 p0Var) {
        try {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = p0Var.read(bArr, i2, i - i2);
                if (i3 == -1) {
                    break;
                }
                i2 += i3;
            }
            return bArr;
        } catch (IOException e2) {
            throw new o1("Unable to read the value of the ASN.1 object", e2);
        }
    }

    public static boolean s(int i, lb4 lb4Var, Object obj) throws p79 {
        int i2 = lb4Var.a;
        gk1 gk1Var = (gk1) lb4Var.d;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            lb4Var.f(0);
            ((l89) obj).c(i3 << 3, Long.valueOf(gk1Var.U()));
            return true;
        }
        if (i4 == 1) {
            lb4Var.f(1);
            ((l89) obj).c((i3 << 3) | 1, Long.valueOf(gk1Var.T()));
            return true;
        }
        if (i4 == 2) {
            ((l89) obj).c((i3 << 3) | 2, lb4Var.y());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                if (i != 0) {
                    return false;
                }
                throw new p79("Protocol message end-group tag did not match expected tag.");
            }
            if (i4 != 5) {
                throw p79.a();
            }
            lb4Var.f(5);
            ((l89) obj).c(5 | (i3 << 3), Integer.valueOf(gk1Var.N()));
            return true;
        }
        l89 l89VarE = l89.e();
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i + 1;
        if (i7 >= 100) {
            throw new p79("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (lb4Var.i() != Integer.MAX_VALUE && s(i7, lb4Var, l89VarE)) {
        }
        if (i6 != lb4Var.a) {
            throw new p79("Protocol message end-group tag did not match expected tag.");
        }
        if (l89VarE.e) {
            l89VarE.e = false;
        }
        ((l89) obj).c(i5 | 3, l89VarE);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean t(byte[] bArr, int i, int i2) {
        int iA;
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            iA = 0;
            break;
        }
        while (true) {
            if (i >= i2) {
                iA = 0;
                break;
            }
            int i3 = i + 1;
            iA = bArr[i];
            if (iA < 0) {
                if (iA >= -32) {
                    if (iA >= -16) {
                        if (i3 < i2 - 2) {
                            int i4 = i + 2;
                            int i5 = bArr[i3];
                            if (i5 <= -65) {
                                if ((((i5 + OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) + (iA << 28)) >> 30) == 0) {
                                    int i6 = i + 3;
                                    if (bArr[i4] <= -65) {
                                        i += 4;
                                        if (bArr[i6] > -65) {
                                        }
                                    }
                                }
                            }
                            iA = -1;
                            break;
                        }
                        iA = om9.a(bArr, i3, i2);
                        break;
                    }
                    if (i3 < i2 - 1) {
                        int i7 = i + 2;
                        char c2 = bArr[i3];
                        if (c2 <= -65 && ((iA != -32 || c2 >= -96) && (iA != -19 || c2 < -96))) {
                            i += 3;
                            if (bArr[i7] > -65) {
                            }
                        }
                        iA = -1;
                        break;
                    }
                    iA = om9.a(bArr, i3, i2);
                    break;
                }
                if (i3 >= i2) {
                    break;
                }
                if (iA >= -62) {
                    i += 2;
                    if (bArr[i3] > -65) {
                    }
                }
                iA = -1;
                break;
            }
            i = i3;
        }
        return iA == 0;
    }

    public static l89 u(Object obj) {
        k79 k79Var = (k79) obj;
        l89 l89Var = k79Var.zzb;
        if (l89Var != l89.f) {
            return l89Var;
        }
        l89 l89VarE = l89.e();
        k79Var.zzb = l89VarE;
        return l89VarE;
    }

    @Override // defpackage.o98, defpackage.kw6
    public Object apply(Object obj) {
        return ((dq9) obj).b();
    }

    public boolean d(int i) {
        return 4 <= i || Log.isLoggable("FirebaseCrashlytics", i);
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) throws GeneralSecurityException {
        r0a r0aVar;
        switch (this.a) {
            case Argon2.V10 /* 16 */:
                ei9 ei9Var = (ei9) vm4Var;
                k0a k0aVarW = l0a.w();
                o0a o0aVarB = ki9.b(ei9Var.d);
                k0aVarW.c();
                l0a.v((l0a) k0aVarW.b, o0aVarB);
                x69 x69VarB = ((l0a) k0aVarW.b()).b();
                ci9 ci9Var = ei9Var.d.a;
                if (ci9.c == ci9Var) {
                    r0aVar = r0a.TINK;
                } else {
                    if (ci9.d != ci9Var) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ci9Var)));
                    }
                    r0aVar = r0a.RAW;
                }
                return pt9.a("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", x69VarB, 5, r0aVar, ei9Var.f);
            case Argon2.V13 /* 19 */:
                ck9 ck9Var = (ck9) vm4Var;
                c1a c1aVarW = d1a.w();
                byte[] bArrB = ((d2a) ck9Var.e.a).b();
                x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
                c1aVarW.c();
                d1a.v((d1a) c1aVarW.b, x69VarG);
                return pt9.a("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((d1a) c1aVarW.b()).b(), 2, ao9.b(ck9Var.d.a), ck9Var.k);
            default:
                pt9 pt9Var = ((ns9) vm4Var).d;
                int i = ps9.b[dj7.A(pt9Var.d)];
                return pt9Var;
        }
    }

    public void h(String str) {
        if (d(3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public String i(int i, boolean z, boolean z2) {
        return k(i, z, z2, null, (Random) xe6.b.a.get());
    }

    public void o(String str) {
        if (d(2)) {
            Log.v("FirebaseCrashlytics", str, null);
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        sf9 sf9Var = (sf9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesEaxKey");
        ew9 ew9VarX = fw9.x();
        iw9 iw9VarC = sk9.c(sf9Var);
        ew9VarX.c();
        fw9.w((fw9) ew9VarX.b, iw9VarC);
        int i = sf9Var.a;
        ew9VarX.c();
        ((fw9) ew9VarX.b).zzg = i;
        lz9VarT.h(((fw9) ew9VarX.b()).b());
        lz9VarT.e(sk9.b(sf9Var.d));
        return ot9.m((mz9) lz9VarT.b());
    }

    public void q(String str, Exception exc) {
        if (d(5)) {
            Log.w("FirebaseCrashlytics", str, exc);
        }
    }

    public Throwable r(Exception exc) {
        return exc instanceof gv6 ? (gv6) exc : new gv6(exc);
    }

    public String toString() {
        switch (this.a) {
            case 2:
                return "RandomStringUtils [random=" + ((Random) xe6.b.a.get()) + "]";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ nh4(int i) {
        this.a = i;
    }

    @Override // defpackage.to2
    public void c() {
    }

    @Override // defpackage.to2
    public void g(nr0 nr0Var, Bitmap bitmap) {
    }
}
