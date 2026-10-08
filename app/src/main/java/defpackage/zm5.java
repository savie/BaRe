package defpackage;

import android.R;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.widget.EdgeEffect;
import com.bumptech.glide.a;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.crypto.impl.AESGCM;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.crypto.KeyAgreement;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zm5 {
    public static final du9 a = new du9("CLOSED", 2);
    public static final int[] b = {R.attr.theme, org.swiftapps.swiftbackup.R.attr.theme};
    public static final int[] c = {org.swiftapps.swiftbackup.R.attr.materialThemeOverlay};
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static String e;

    public static int A(char c2, int i, int i2, CharSequence charSequence) {
        while (i < i2) {
            if (charSequence.charAt(i) != c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int B(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt != '\t' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static List C(List list) {
        Comparator qs0Var;
        list.getClass();
        pw5 pw5VarQ = q();
        xk3 xk3Var = (xk3) pw5VarQ.a;
        vk3 vk3Var = (vk3) pw5VarQ.b;
        int i = yk3.a[xk3Var.ordinal()];
        int i2 = 2;
        int i3 = 1;
        if (i == 1) {
            String.CASE_INSENSITIVE_ORDER.getClass();
            qs0Var = new qs0(i2);
        } else if (i == 2) {
            qs0Var = new gj1(i3);
        } else {
            if (i != 3) {
                q.j();
                return null;
            }
            qs0Var = new zk2(i3);
        }
        vk3 vk3Var2 = vk3.Desc;
        if (vk3Var == vk3Var2) {
            qs0Var = qs0Var.reversed();
        }
        qs0Var.getClass();
        Comparator cl7Var = new cl7(5);
        if (vk3Var == vk3Var2) {
            cl7Var = cl7Var.reversed();
        }
        cl7Var.getClass();
        return el1.n1(list, new ym1(cl7Var, qs0Var));
    }

    public static void D(Activity activity, ArrayList arrayList, boolean z) {
        g00 g00Var = g00.a;
        if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, "Feature not supported on this device");
            return;
        }
        r01 r01Var = new r01(arrayList, z);
        ny2 ny2VarB = ny2.b();
        synchronized (ny2VarB.c) {
            ny2VarB.c.put(r01.class, r01Var);
        }
        ny2VarB.e(r01Var);
        ai8.q(activity, CallsBackupsActivity.class);
    }

    public static String E(String str) {
        String strReplace = str.indexOf(92) != -1 ? str.replace("\\", "\\\\") : str;
        if (str.indexOf(34) != -1) {
            strReplace = strReplace.replace("\"", "\\\"");
        }
        return u48.j('\"', "\"", strReplace);
    }

    public static void F(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i;
        int[] iArr5 = iArr3;
        char c2 = ' ';
        int i4 = 0;
        long j = 4294967295L;
        long j2 = 0;
        if (i2 == 0) {
            long j3 = 0;
            while (i4 <= i3) {
                long j4 = ((long) iArr5[i4]) & 4294967295L;
                long j5 = (j2 + (((long) iArr[i4]) & 4294967295L)) - j4;
                long j6 = (j3 + j4) - (((long) iArr2[i4]) & 4294967295L);
                int i5 = (int) j6;
                j3 = j6 >> 32;
                iArr5[i4] = i5;
                long j7 = j5 - (((long) i5) & 4294967295L);
                iArr[i4] = (int) j7;
                j2 = j7 >> 32;
                i4++;
            }
            return;
        }
        if (i2 < 32) {
            int i6 = 0;
            long j8 = 0;
            long j9 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i4 <= i3) {
                int i9 = iArr5[i4];
                char c3 = c2;
                int i10 = -i2;
                long j10 = j;
                long j11 = (j8 + (((long) iArr[i4]) & j10)) - (((long) ((i6 >>> i10) | (i9 << i2))) & j10);
                int i11 = iArr2[i4];
                long j12 = (j9 + (((long) i9) & j10)) - (((long) ((i11 << i2) | (i7 >>> i10))) & j10);
                int i12 = (int) j12;
                j9 = j12 >> c3;
                iArr5[i4] = i12;
                long j13 = j11 - (((long) ((i8 >>> i10) | (i12 << i2))) & j10);
                iArr[i4] = (int) j13;
                j8 = j13 >> c3;
                i4++;
                i7 = i11;
                i8 = i12;
                i6 = i9;
                c2 = c3;
                j = j10;
            }
            return;
        }
        System.arraycopy(iArr5, 0, iArr4, 0, i3);
        int i13 = i2 >>> 5;
        int i14 = i2 & 31;
        if (i14 == 0) {
            long j14 = 0;
            for (int i15 = i13; i15 <= i3; i15++) {
                int i16 = i15 - i13;
                long j15 = (j2 + (((long) iArr[i15]) & 4294967295L)) - (((long) iArr4[i16]) & 4294967295L);
                long j16 = (j14 + (((long) iArr5[i15]) & 4294967295L)) - (((long) iArr2[i16]) & 4294967295L);
                iArr5[i15] = (int) j16;
                j14 = j16 >> 32;
                long j17 = j15 - (((long) iArr5[i16]) & 4294967295L);
                iArr[i15] = (int) j17;
                j2 = j17 >> 32;
            }
            return;
        }
        int i17 = i13;
        int i18 = 0;
        int i19 = 0;
        long j18 = 0;
        while (i17 <= i3) {
            int i20 = i17 - i13;
            int i21 = iArr4[i20];
            int i22 = -i14;
            int i23 = i14;
            long j19 = (j2 + (((long) iArr[i17]) & 4294967295L)) - (((long) ((i4 >>> i22) | (i21 << i14))) & 4294967295L);
            int i24 = iArr2[i20];
            long j20 = (j18 + (((long) iArr5[i17]) & 4294967295L)) - (((long) ((i24 << i23) | (i18 >>> i22))) & 4294967295L);
            iArr3[i17] = (int) j20;
            j18 = j20 >> 32;
            int i25 = iArr3[i20];
            long j21 = j19 - (((long) ((i25 << i23) | (i19 >>> i22))) & 4294967295L);
            iArr[i17] = (int) j21;
            j2 = j21 >> 32;
            i17++;
            i14 = i23;
            iArr5 = iArr3;
            i19 = i25;
            i18 = i24;
            i4 = i21;
            i3 = i;
        }
    }

    public static void G(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i2 >>> 5;
        int i4 = i2 & 31;
        char c2 = ' ';
        long j = 4294967295L;
        long j2 = 0;
        if (i4 == 0) {
            long j3 = 0;
            for (int i5 = i3; i5 <= i; i5++) {
                long j4 = j2 + (((long) iArr[i5]) & 4294967295L);
                long j5 = j3 + (((long) iArr2[i5]) & 4294967295L);
                int i6 = i5 - i3;
                long j6 = j4 - (((long) iArr3[i6]) & 4294967295L);
                long j7 = j5 - (((long) iArr4[i6]) & 4294967295L);
                iArr[i5] = (int) j6;
                j2 = j6 >> 32;
                iArr2[i5] = (int) j7;
                j3 = j7 >> 32;
            }
            return;
        }
        int i7 = i3;
        int i8 = 0;
        int i9 = 0;
        long j8 = 0;
        while (i7 <= i) {
            int i10 = i7 - i3;
            int i11 = iArr3[i10];
            int i12 = iArr4[i10];
            char c3 = c2;
            int i13 = -i4;
            long j9 = j;
            long j10 = j2 + (((long) iArr[i7]) & j9);
            long j11 = j10 - (((long) ((i8 >>> i13) | (i11 << i4))) & j9);
            long j12 = (j8 + (((long) iArr2[i7]) & j9)) - (((long) ((i9 >>> i13) | (i12 << i4))) & j9);
            iArr[i7] = (int) j11;
            j2 = j11 >> c3;
            iArr2[i7] = (int) j12;
            j8 = j12 >> c3;
            i7++;
            c2 = c3;
            i9 = i12;
            i8 = i11;
            j = j9;
        }
    }

    public static Integer H(String str) {
        boolean z;
        if (str.length() > 11 || str.length() == 0) {
            return null;
        }
        int i = 0;
        if (str.charAt(0) == '-') {
            z = true;
            if (str.length() == 1) {
                return null;
            }
            i = 1;
        } else {
            z = false;
        }
        long j = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            j = (j * 10) + ((long) (cCharAt - '0'));
            i++;
        }
        if (!z) {
            if (j > 2147483647L) {
                return null;
            }
            return Integer.valueOf((int) j);
        }
        long j2 = -j;
        if (j2 < -2147483648L) {
            return null;
        }
        return Integer.valueOf((int) j2);
    }

    public static Context I(int i, int i2, Context context, AttributeSet attributeSet, int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c, i, i2);
        int[] iArr2 = {typedArrayObtainStyledAttributes.getResourceId(0, 0)};
        typedArrayObtainStyledAttributes.recycle();
        int i3 = iArr2[0];
        boolean z = (context instanceof hv1) && ((hv1) context).a == i3;
        if (i3 == 0 || z) {
            return context;
        }
        hv1 hv1Var = new hv1(context, i3);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        if (iArr.length > 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr3[i4] = typedArrayObtainStyledAttributes2.getResourceId(i4, 0);
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = iArr3[i5];
            if (i6 != 0) {
                hv1Var.getTheme().applyStyle(i6, true);
            }
        }
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, b);
        int resourceId = typedArrayObtainStyledAttributes3.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(1, 0);
        typedArrayObtainStyledAttributes3.recycle();
        if (resourceId == 0) {
            resourceId = resourceId2;
        }
        if (resourceId != 0) {
            hv1Var.getTheme().applyStyle(resourceId, true);
        }
        return hv1Var;
    }

    public static Context J(Context context, AttributeSet attributeSet, int i, int i2) {
        return I(i, i2, context, attributeSet, new int[0]);
    }

    public static int K(EllipticCurve ellipticCurve) {
        return (yr9.a(ellipticCurve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
    }

    public static BigInteger L(BigInteger bigInteger, boolean z, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger bigIntegerA = yr9.a(ellipticCurve);
        BigInteger bigIntegerMod = bigInteger.multiply(bigInteger).add(ellipticCurve.getA()).multiply(bigInteger).add(ellipticCurve.getB()).mod(bigIntegerA);
        if (bigIntegerA.signum() != 1) {
            throw new InvalidAlgorithmParameterException("p must be positive");
        }
        BigInteger bigIntegerMod2 = bigIntegerMod.mod(bigIntegerA);
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        if (!bigIntegerMod2.equals(bigIntegerAdd)) {
            if (bigIntegerA.testBit(0) && bigIntegerA.testBit(1)) {
                bigIntegerAdd = bigIntegerMod2.modPow(bigIntegerA.add(BigInteger.ONE).shiftRight(2), bigIntegerA);
            } else if (!bigIntegerA.testBit(0) || bigIntegerA.testBit(1)) {
                bigIntegerAdd = null;
            } else {
                bigIntegerAdd = BigInteger.ONE;
                BigInteger bigIntegerShiftRight = bigIntegerA.subtract(bigIntegerAdd).shiftRight(1);
                int i = 0;
                while (true) {
                    BigInteger bigIntegerMod3 = bigIntegerAdd.multiply(bigIntegerAdd).subtract(bigIntegerMod2).mod(bigIntegerA);
                    if (!bigIntegerMod3.equals(BigInteger.ZERO)) {
                        BigInteger bigIntegerModPow = bigIntegerMod3.modPow(bigIntegerShiftRight, bigIntegerA);
                        BigInteger bigIntegerMod4 = BigInteger.ONE;
                        if (bigIntegerModPow.add(bigIntegerMod4).equals(bigIntegerA)) {
                            BigInteger bigIntegerShiftRight2 = bigIntegerA.add(bigIntegerMod4).shiftRight(1);
                            BigInteger bigIntegerMod5 = bigIntegerAdd;
                            for (int iBitLength = bigIntegerShiftRight2.bitLength() - 2; iBitLength >= 0; iBitLength--) {
                                BigInteger bigIntegerMultiply = bigIntegerMod5.multiply(bigIntegerMod4);
                                bigIntegerMod5 = bigIntegerMod5.multiply(bigIntegerMod5).add(bigIntegerMod4.multiply(bigIntegerMod4).mod(bigIntegerA).multiply(bigIntegerMod3)).mod(bigIntegerA);
                                BigInteger bigIntegerMod6 = bigIntegerMultiply.add(bigIntegerMultiply).mod(bigIntegerA);
                                if (bigIntegerShiftRight2.testBit(iBitLength)) {
                                    BigInteger bigIntegerMod7 = bigIntegerMod5.multiply(bigIntegerAdd).add(bigIntegerMod6.multiply(bigIntegerMod3)).mod(bigIntegerA);
                                    bigIntegerMod4 = bigIntegerAdd.multiply(bigIntegerMod6).add(bigIntegerMod5).mod(bigIntegerA);
                                    bigIntegerMod5 = bigIntegerMod7;
                                } else {
                                    bigIntegerMod4 = bigIntegerMod6;
                                }
                            }
                            bigIntegerAdd = bigIntegerMod5;
                        } else {
                            if (!bigIntegerModPow.equals(bigIntegerMod4)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            }
                            bigIntegerAdd = bigIntegerAdd.add(bigIntegerMod4);
                            i++;
                            if (i == 128 && !bigIntegerA.isProbablePrime(80)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            }
                        }
                    }
                }
            }
            if (bigIntegerAdd != null && bigIntegerAdd.multiply(bigIntegerAdd).mod(bigIntegerA).compareTo(bigIntegerMod2) != 0) {
                m0.h("Could not find a modular square root");
                return null;
            }
        }
        return z != bigIntegerAdd.testBit(0) ? bigIntegerA.subtract(bigIntegerAdd).mod(bigIntegerA) : bigIntegerAdd;
    }

    public static ECParameterSpec M(p1a p1aVar) throws NoSuchAlgorithmException {
        int iOrdinal = p1aVar.ordinal();
        if (iOrdinal == 0) {
            return yr9.a;
        }
        if (iOrdinal == 1) {
            return yr9.b;
        }
        if (iOrdinal == 2) {
            return yr9.c;
        }
        throw new NoSuchAlgorithmException("curve not implemented:".concat(String.valueOf(p1aVar)));
    }

    public static ECPoint N(EllipticCurve ellipticCurve, r1a r1aVar, byte[] bArr) throws GeneralSecurityException {
        int iK = K(ellipticCurve);
        int iOrdinal = r1aVar.ordinal();
        boolean z = false;
        if (iOrdinal == 0) {
            if (bArr.length != (iK * 2) + 1) {
                m0.h("invalid point size");
                return null;
            }
            if (bArr[0] != 4) {
                m0.h("invalid point format");
                return null;
            }
            int i = iK + 1;
            ECPoint eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArr, 1, i)), new BigInteger(1, Arrays.copyOfRange(bArr, i, bArr.length)));
            yr9.g(eCPoint, ellipticCurve);
            return eCPoint;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new GeneralSecurityException("invalid format:".concat(String.valueOf(r1aVar)));
            }
            if (bArr.length != iK * 2) {
                m0.h("invalid point size");
                return null;
            }
            ECPoint eCPoint2 = new ECPoint(new BigInteger(1, Arrays.copyOf(bArr, iK)), new BigInteger(1, Arrays.copyOfRange(bArr, iK, bArr.length)));
            yr9.g(eCPoint2, ellipticCurve);
            return eCPoint2;
        }
        BigInteger bigIntegerA = yr9.a(ellipticCurve);
        if (bArr.length != iK + 1) {
            m0.h("compressed point has wrong length");
            return null;
        }
        byte b2 = bArr[0];
        if (b2 != 2) {
            if (b2 != 3) {
                m0.h("invalid format");
                return null;
            }
            z = true;
        }
        BigInteger bigInteger = new BigInteger(1, Arrays.copyOfRange(bArr, 1, bArr.length));
        if (bigInteger.signum() != -1 && bigInteger.compareTo(bigIntegerA) < 0) {
            return new ECPoint(bigInteger, L(bigInteger, z, ellipticCurve));
        }
        m0.h("x is out of range");
        return null;
    }

    public static void O(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                f6.n(fz5.j(i2, "at index "));
                return;
            }
        }
    }

    public static byte[] P(ECPrivateKey eCPrivateKey, ECPublicKey eCPublicKey) throws GeneralSecurityException {
        try {
            if (!yr9.h(eCPublicKey.getParams(), eCPrivateKey.getParams())) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            ECPoint w = eCPublicKey.getW();
            yr9.g(w, eCPrivateKey.getParams().getCurve());
            PublicKey publicKeyGeneratePublic = ((KeyFactory) s1a.f.a.zza("EC")).generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
            KeyAgreement keyAgreement = (KeyAgreement) s1a.d.a.zza("ECDH");
            keyAgreement.init(eCPrivateKey);
            try {
                keyAgreement.doPhase(publicKeyGeneratePublic, true);
                byte[] bArrGenerateSecret = keyAgreement.generateSecret();
                EllipticCurve curve = eCPrivateKey.getParams().getCurve();
                BigInteger bigInteger = new BigInteger(1, bArrGenerateSecret);
                if (bigInteger.signum() == -1 || bigInteger.compareTo(yr9.a(curve)) >= 0) {
                    throw new GeneralSecurityException("shared secret is out of range");
                }
                L(bigInteger, true, curve);
                return bArrGenerateSecret;
            } catch (IllegalStateException e2) {
                throw new GeneralSecurityException(e2);
            }
        } catch (IllegalArgumentException | NullPointerException e3) {
            throw new GeneralSecurityException(e3);
        }
    }

    public static fs7 a() {
        return new fs7(null);
    }

    public static boolean b(TokenCredentials tokenCredentials) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long expiresAtMillis = tokenCredentials.getExpiresAtMillis();
        return expiresAtMillis != null && jCurrentTimeMillis + 300000 > expiresAtMillis.longValue();
    }

    public static void c(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i;
        int[] iArr5 = iArr3;
        char c2 = ' ';
        int i4 = 0;
        long j = 4294967295L;
        long j2 = 0;
        if (i2 == 0) {
            long j3 = 0;
            while (i4 <= i3) {
                long j4 = ((long) iArr5[i4]) & 4294967295L;
                long j5 = j2 + (((long) iArr[i4]) & 4294967295L) + j4;
                long j6 = j3 + j4 + (((long) iArr2[i4]) & 4294967295L);
                int i5 = (int) j6;
                j3 = j6 >>> 32;
                iArr5[i4] = i5;
                long j7 = j5 + (((long) i5) & 4294967295L);
                iArr[i4] = (int) j7;
                j2 = j7 >>> 32;
                i4++;
            }
            return;
        }
        if (i2 < 32) {
            int i6 = 0;
            long j8 = 0;
            long j9 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i4 <= i3) {
                int i9 = iArr5[i4];
                char c3 = c2;
                int i10 = -i2;
                long j10 = j;
                long j11 = j8 + (((long) iArr[i4]) & j10) + (((long) ((i6 >>> i10) | (i9 << i2))) & j10);
                int i11 = iArr2[i4];
                long j12 = j9 + (((long) i9) & j10) + (((long) ((i11 << i2) | (i7 >>> i10))) & j10);
                int i12 = (int) j12;
                j9 = j12 >>> c3;
                iArr5[i4] = i12;
                long j13 = j11 + (((long) ((i8 >>> i10) | (i12 << i2))) & j10);
                iArr[i4] = (int) j13;
                j8 = j13 >>> c3;
                i4++;
                i7 = i11;
                i8 = i12;
                i6 = i9;
                c2 = c3;
                j = j10;
            }
            return;
        }
        System.arraycopy(iArr5, 0, iArr4, 0, i3);
        int i13 = i2 >>> 5;
        int i14 = i2 & 31;
        if (i14 == 0) {
            long j14 = 0;
            for (int i15 = i13; i15 <= i3; i15++) {
                int i16 = i15 - i13;
                long j15 = j2 + (((long) iArr[i15]) & 4294967295L) + (((long) iArr4[i16]) & 4294967295L);
                long j16 = j14 + (((long) iArr5[i15]) & 4294967295L) + (((long) iArr2[i16]) & 4294967295L);
                iArr5[i15] = (int) j16;
                j14 = j16 >>> 32;
                long j17 = j15 + (((long) iArr5[i16]) & 4294967295L);
                iArr[i15] = (int) j17;
                j2 = j17 >>> 32;
            }
            return;
        }
        int i17 = i13;
        int i18 = 0;
        int i19 = 0;
        long j18 = 0;
        while (i17 <= i3) {
            int i20 = i17 - i13;
            int i21 = iArr4[i20];
            int i22 = -i14;
            int i23 = i14;
            long j19 = j2 + (((long) iArr[i17]) & 4294967295L) + (((long) ((i4 >>> i22) | (i21 << i14))) & 4294967295L);
            int i24 = iArr2[i20];
            long j20 = j18 + (((long) iArr5[i17]) & 4294967295L) + (((long) ((i24 << i23) | (i18 >>> i22))) & 4294967295L);
            iArr3[i17] = (int) j20;
            j18 = j20 >>> 32;
            int i25 = iArr3[i20];
            long j21 = j19 + (((long) ((i25 << i23) | (i19 >>> i22))) & 4294967295L);
            iArr[i17] = (int) j21;
            j2 = j21 >>> 32;
            i17++;
            i14 = i23;
            iArr5 = iArr3;
            i19 = i25;
            i18 = i24;
            i4 = i21;
            i3 = i;
        }
    }

    public static void d(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = i2 >>> 5;
        int i4 = i2 & 31;
        char c2 = ' ';
        long j = 4294967295L;
        long j2 = 0;
        if (i4 == 0) {
            long j3 = 0;
            for (int i5 = i3; i5 <= i; i5++) {
                long j4 = j2 + (((long) iArr[i5]) & 4294967295L);
                long j5 = j3 + (((long) iArr2[i5]) & 4294967295L);
                int i6 = i5 - i3;
                long j6 = j4 + (((long) iArr3[i6]) & 4294967295L);
                long j7 = j5 + (((long) iArr4[i6]) & 4294967295L);
                iArr[i5] = (int) j6;
                j2 = j6 >>> 32;
                iArr2[i5] = (int) j7;
                j3 = j7 >>> 32;
            }
            return;
        }
        int i7 = i3;
        int i8 = 0;
        int i9 = 0;
        long j8 = 0;
        while (i7 <= i) {
            int i10 = i7 - i3;
            int i11 = iArr3[i10];
            int i12 = iArr4[i10];
            char c3 = c2;
            int i13 = -i4;
            long j9 = j;
            long j10 = j2 + (((long) iArr[i7]) & j9);
            long j11 = j10 + (((long) ((i8 >>> i13) | (i11 << i4))) & j9);
            long j12 = j8 + (((long) iArr2[i7]) & j9) + (((long) ((i9 >>> i13) | (i12 << i4))) & j9);
            iArr[i7] = (int) j11;
            j2 = j11 >>> c3;
            iArr2[i7] = (int) j12;
            j8 = j12 >>> c3;
            i7++;
            c2 = c3;
            i9 = i12;
            i8 = i11;
            j = j9;
        }
    }

    public static ix0 e(Context context) throws Exception {
        context.getClass();
        int color = context.getColor(sz8.y(context, org.swiftapps.swiftbackup.R.attr.toolbarColor)) | (-16777216);
        String strP = p(context);
        if (strP == null) {
            throw new Exception("Null custom tab package");
        }
        h72 h72Var = new h72();
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", color);
        h72Var.d = bundle;
        ix0 ix0VarA = h72Var.a();
        ((Intent) ix0VarA.b).setPackage(strP);
        return ix0VarA;
    }

    public static final void f(int i) {
        if (i >= 1) {
            return;
        }
        f6.g(fz5.j(i, "Expected positive parallelism level, but got "));
    }

    public static void g(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            StringBuilder sbN = xs1.n("fromIndex: ", i, ", toIndex: ", ", size: ", i2);
            sbN.append(i3);
            throw new IndexOutOfBoundsException(sbN.toString());
        }
        if (i <= i2) {
            return;
        }
        c6.f(dj7.i("fromIndex: ", i, i2, " > toIndex: "));
    }

    public static void h(float f, float f2, float f3) {
        if (f >= f2) {
            c6.f("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        } else {
            if (f2 < f3) {
                return;
            }
            c6.f("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    public static mi6 i(a aVar, List list, x13 x13Var) {
        ql6 qx0Var;
        ql6 bp7Var;
        Class cls;
        nr0 nr0Var = aVar.a;
        m35 m35Var = aVar.d;
        dy3 dy3Var = aVar.c;
        Context applicationContext = dy3Var.getApplicationContext();
        ky3 ky3Var = dy3Var.h;
        mi6 mi6Var = new mi6();
        Class<InputStream> cls2 = InputStream.class;
        qe2 qe2Var = new qe2();
        y94 y94Var = mi6Var.g;
        synchronized (y94Var) {
            y94Var.a.add(qe2Var);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 27) {
            d03 d03Var = new d03();
            y94 y94Var2 = mi6Var.g;
            synchronized (y94Var2) {
                y94Var2.a.add(d03Var);
            }
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListE = mi6Var.e();
        ux0 ux0Var = new ux0(applicationContext, arrayListE, nr0Var, m35Var);
        ql6 hk8Var = new hk8(nr0Var, new us2(29));
        uo2 uo2Var = new uo2(mi6Var.e(), resources.getDisplayMetrics(), nr0Var, m35Var);
        if (i < 28 || !ky3Var.a.containsKey(wx3.class)) {
            qx0Var = new qx0(uo2Var);
            bp7Var = new bp7(uo2Var, m35Var);
        } else {
            bp7Var = new lr0(1);
            qx0Var = new qc();
        }
        if (i >= 28) {
            mi6Var.d("Animation", InputStream.class, Drawable.class, new rc(new sc(arrayListE, m35Var)));
            mi6Var.d("Animation", ByteBuffer.class, Drawable.class, new qc(new sc(arrayListE, m35Var)));
        }
        sl6 sl6Var = new sl6(applicationContext);
        tl6 kr0Var = new kr0(m35Var);
        am6 ir0Var = new ir0(0);
        am6 b05Var = new b05();
        ContentResolver contentResolver = applicationContext.getContentResolver();
        mi6Var.a(ByteBuffer.class, new hx0(2));
        mi6Var.a(InputStream.class, new om5(m35Var));
        mi6Var.d("Bitmap", ByteBuffer.class, Bitmap.class, qx0Var);
        mi6Var.d("Bitmap", InputStream.class, Bitmap.class, bp7Var);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = ParcelFileDescriptor.class;
        } else {
            cls = ParcelFileDescriptor.class;
            mi6Var.d("Bitmap", cls, Bitmap.class, new mx3(uo2Var, 1));
        }
        mi6Var.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new hk8(nr0Var, new ma2(22)));
        mi6Var.d("Bitmap", cls, Bitmap.class, hk8Var);
        dh5 dh5Var = lv1.k;
        mi6Var.c(Bitmap.class, Bitmap.class, dh5Var);
        mi6Var.d("Bitmap", Bitmap.class, Bitmap.class, new de8());
        mi6Var.b(Bitmap.class, kr0Var);
        mi6Var.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new jr0(resources, qx0Var));
        mi6Var.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new jr0(resources, bp7Var));
        mi6Var.d("BitmapDrawable", cls, BitmapDrawable.class, new jr0(resources, hk8Var));
        mi6Var.b(BitmapDrawable.class, new cd(2, nr0Var, kr0Var));
        mi6Var.d("Animation", InputStream.class, fx3.class, new fp7(arrayListE, ux0Var, m35Var));
        mi6Var.d("Animation", ByteBuffer.class, fx3.class, ux0Var);
        mi6Var.b(fx3.class, new sl4());
        mi6Var.c(gl7.class, gl7.class, dh5Var);
        mi6Var.d("Bitmap", gl7.class, Bitmap.class, new mx3(nr0Var, 0));
        mi6Var.d("legacy_append", Uri.class, Drawable.class, sl6Var);
        mi6Var.d("legacy_append", Uri.class, Bitmap.class, new nl6(sl6Var, nr0Var));
        mi6Var.h(new wx0());
        mi6Var.c(File.class, ByteBuffer.class, new ma2(3));
        int i2 = 9;
        mi6Var.c(File.class, InputStream.class, new u83(new ns0(i2), i2));
        mi6Var.d("legacy_append", File.class, File.class, new f73());
        mi6Var.c(File.class, cls, new r83(new lk(), i2));
        mi6Var.c(File.class, File.class, dh5Var);
        mi6Var.h(new qc4(m35Var));
        if (!"robolectric".equals(str)) {
            mi6Var.h(new ww5());
        }
        dh5 zq8Var = new zq8(applicationContext, 8);
        dh5 om5Var = new om5(applicationContext);
        dh5 rbVar = new rb(applicationContext, 12);
        Class cls3 = Integer.TYPE;
        mi6Var.c(cls3, InputStream.class, zq8Var);
        mi6Var.c(Integer.class, InputStream.class, zq8Var);
        mi6Var.c(cls3, AssetFileDescriptor.class, om5Var);
        mi6Var.c(Integer.class, AssetFileDescriptor.class, om5Var);
        mi6Var.c(cls3, Drawable.class, rbVar);
        mi6Var.c(Integer.class, Drawable.class, rbVar);
        mi6Var.c(Uri.class, InputStream.class, new be4(applicationContext, 3));
        mi6Var.c(Uri.class, AssetFileDescriptor.class, new km5(applicationContext, 16));
        dh5 jq6Var = new jq6(resources, 18);
        dh5 ln5Var = new ln5(resources, 12);
        int i3 = 15;
        dh5 z28Var = new z28(resources, i3);
        mi6Var.c(Integer.class, Uri.class, jq6Var);
        mi6Var.c(cls3, Uri.class, jq6Var);
        mi6Var.c(Integer.class, AssetFileDescriptor.class, ln5Var);
        mi6Var.c(cls3, AssetFileDescriptor.class, ln5Var);
        mi6Var.c(Integer.class, InputStream.class, z28Var);
        mi6Var.c(cls3, InputStream.class, z28Var);
        mi6Var.c(String.class, InputStream.class, new rb(10));
        mi6Var.c(Uri.class, InputStream.class, new rb(10));
        mi6Var.c(String.class, InputStream.class, new q34(13));
        mi6Var.c(String.class, cls, new hx0(i3));
        mi6Var.c(String.class, AssetFileDescriptor.class, new ns0(18));
        mi6Var.c(Uri.class, InputStream.class, new z28(applicationContext.getAssets(), 5));
        mi6Var.c(Uri.class, AssetFileDescriptor.class, new ln5(applicationContext.getAssets(), 3));
        mi6Var.c(Uri.class, InputStream.class, new p92(applicationContext));
        mi6Var.c(Uri.class, InputStream.class, new be4(applicationContext, 1));
        if (i >= 29) {
            mi6Var.c(Uri.class, InputStream.class, new ic6(applicationContext, cls2));
            mi6Var.c(Uri.class, cls, new hc6(applicationContext, cls));
        }
        mi6Var.c(Uri.class, InputStream.class, new km8(contentResolver));
        mi6Var.c(Uri.class, cls, new vk9(contentResolver, 19));
        mi6Var.c(Uri.class, AssetFileDescriptor.class, new a38(contentResolver));
        mi6Var.c(Uri.class, InputStream.class, new lv1(20));
        mi6Var.c(URL.class, InputStream.class, new q34(16));
        mi6Var.c(Uri.class, File.class, new vk9(applicationContext, 11));
        mi6Var.c(sy3.class, InputStream.class, new km5((byte) 0, 12));
        mi6Var.c(byte[].class, ByteBuffer.class, new ge());
        mi6Var.c(byte[].class, InputStream.class, new b05());
        mi6Var.c(Uri.class, Uri.class, dh5Var);
        mi6Var.c(Drawable.class, Drawable.class, dh5Var);
        mi6Var.d("legacy_append", Drawable.class, Drawable.class, new ee8());
        mi6Var.i(Bitmap.class, BitmapDrawable.class, new tr9(resources, 3));
        mi6Var.i(Bitmap.class, byte[].class, ir0Var);
        mi6Var.i(Drawable.class, byte[].class, new u94(nr0Var, ir0Var, b05Var));
        mi6Var.i(fx3.class, byte[].class, b05Var);
        ql6 hk8Var2 = new hk8(nr0Var, new fk8(0));
        mi6Var.d("legacy_append", ByteBuffer.class, Bitmap.class, hk8Var2);
        mi6Var.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new jr0(resources, hk8Var2));
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
        if (x13Var != null) {
            x13Var.O(applicationContext, aVar, mi6Var);
        }
        return mi6Var;
    }

    public static String j(double d2) {
        StringBuilder sb = new StringBuilder(16);
        long jDoubleToLongBits = Double.doubleToLongBits(d2);
        for (int i = 7; i >= 0; i--) {
            int i2 = (int) ((jDoubleToLongBits >>> (i * 8)) & 255);
            char[] cArr = d;
            sb.append(cArr[(i2 >> 4) & 15]);
            sb.append(cArr[i2 & 15]);
        }
        return sb.toString();
    }

    public static final Object k(n67 n67Var, long j, qt3 qt3Var) {
        while (true) {
            if (n67Var.e >= j && !n67Var.g()) {
                return n67Var;
            }
            Object objE = n67Var.e();
            du9 du9Var = a;
            if (objE == du9Var) {
                return du9Var;
            }
            n67 n67Var2 = (n67) ((dq1) objE);
            if (n67Var2 == null) {
                n67Var2 = (n67) qt3Var.invoke(Long.valueOf(n67Var.e + 1), n67Var);
                if (n67Var.j(n67Var2)) {
                    if (n67Var.g()) {
                        n67Var.i();
                    }
                }
            }
            n67Var = n67Var2;
        }
    }

    public static final String l(String str) {
        return str.substring(nq7.h0(str, "\"", 0, false, 6) + 1, nq7.l0(6, str, "\""));
    }

    public static int m(int[] iArr, int i) {
        int i2 = iArr[i] >> 31;
        while (i > 0 && iArr[i] == i2) {
            i--;
        }
        return ((i * 32) + 32) - Integer.numberOfLeadingZeros(iArr[i] ^ i2);
    }

    public static int n(int[] iArr, int i) {
        while (i > 0 && iArr[i] == 0) {
            i--;
        }
        return ((i * 32) + 32) - Integer.numberOfLeadingZeros(iArr[i]);
    }

    public static float o(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return ls2.b(edgeEffect);
        }
        return 0.0f;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f7  */
    public static String p(Context context) {
        context.getClass();
        String str = e;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        String str2 = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        listQueryIntentActivities.getClass();
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            e = null;
        } else if (arrayList.size() == 1) {
            e = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2)) {
            try {
                List<ResolveInfo> listQueryIntentActivities2 = context.getPackageManager().queryIntentActivities(intent, 64);
                listQueryIntentActivities2.getClass();
                if (listQueryIntentActivities2.size() != 0) {
                    Iterator<ResolveInfo> it = listQueryIntentActivities2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ResolveInfo next = it.next();
                            IntentFilter intentFilter = next.filter;
                            if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && next.activityInfo != null) {
                            }
                        }
                        if (arrayList.contains("com.android.chrome")) {
                            e = "com.android.chrome";
                        } else if (arrayList.contains("com.chrome.beta")) {
                            e = "com.chrome.beta";
                        } else if (arrayList.contains("com.chrome.dev")) {
                            e = "com.chrome.dev";
                        } else if (arrayList.contains("com.google.android.apps.chrome")) {
                            e = "com.google.android.apps.chrome";
                        }
                    }
                }
            } catch (RuntimeException unused) {
                Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
            }
            if (el1.M0(arrayList, str2)) {
                e = str2;
            } else if (arrayList.contains("com.android.chrome")) {
                e = "com.android.chrome";
            } else if (arrayList.contains("com.chrome.beta")) {
                e = "com.chrome.beta";
            } else if (arrayList.contains("com.chrome.dev")) {
                e = "com.chrome.dev";
            } else if (arrayList.contains("com.google.android.apps.chrome")) {
                e = "com.google.android.apps.chrome";
            }
        } else if (arrayList.contains("com.android.chrome")) {
            e = "com.android.chrome";
        } else if (arrayList.contains("com.chrome.beta")) {
            e = "com.chrome.beta";
        } else if (arrayList.contains("com.chrome.dev")) {
            e = "com.chrome.dev";
        } else if (arrayList.contains("com.google.android.apps.chrome")) {
            e = "com.google.android.apps.chrome";
        }
        return e;
    }

    public static pw5 q() {
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("folders_list_sort_options", null);
            if (string == null) {
                xk3.Companion.getClass();
                xk3 xk3Var = xk3.f4default;
                vk3.Companion.getClass();
                string = xk3Var + ":" + vk3.f3default;
            }
            return new pw5(xk3.valueOf(ai8.g(string, ":")), vk3.valueOf(ai8.d(string, ":")));
        } catch (ClassCastException unused) {
        }
    }

    public static void r(String str, boolean z) {
        if (z) {
            return;
        }
        Log.w("FirebaseDatabase", "Assertion failed: ".concat(str));
    }

    public static void s(boolean z) {
        r("", z);
    }

    public static boolean t(int i, CharSequence charSequence) {
        if (i >= charSequence.length()) {
            return false;
        }
        char cCharAt = charSequence.charAt(i);
        switch (cCharAt) {
            case '!':
            case '\"':
            case '#':
            case '$':
            case '%':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '.':
            case '/':
                return true;
            default:
                switch (cCharAt) {
                    case ':':
                    case ';':
                    case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                    case '=':
                    case '>':
                    case '?':
                    case '@':
                        return true;
                    default:
                        switch (cCharAt) {
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                            case '_':
                            case AESGCM.IV_BIT_LENGTH /* 96 */:
                                return true;
                            default:
                                switch (cCharAt) {
                                    case '{':
                                    case '|':
                                    case '}':
                                    case '~':
                                        return true;
                                    default:
                                        return false;
                                }
                        }
                }
        }
    }

    public static final boolean u(CloudServiceId cloudServiceId) {
        return cloudServiceId != null && cloudServiceId.getVersion() > 0 && cloudServiceId.getId().length() > 0 && !nq7.j0(cloudServiceId.getId());
    }

    public static float v(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return ls2.c(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    public static fd4 w(String[] strArr) {
        Iterable<String> iterableI;
        if (strArr.length < 3) {
            c6.f("Expected installer package, target package, and at least one APK file");
            return null;
        }
        int length = strArr.length - 2;
        if (length < 0) {
            length = 0;
        }
        if (length < 0) {
            f6.g(xs1.h(length, "Requested element count ", " is less than zero."));
            return null;
        }
        if (length == 0) {
            iterableI = ov2.a;
        } else {
            int length2 = strArr.length;
            if (length >= length2) {
                iterableI = x50.z0(strArr);
            } else if (length == 1) {
                iterableI = nc8.I(strArr[length2 - 1]);
            } else {
                ArrayList arrayList = new ArrayList(length);
                for (int i = length2 - length; i < length2; i++) {
                    arrayList.add(strArr[i]);
                }
                iterableI = arrayList;
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(iterableI, 10));
        for (String str : iterableI) {
            int iG0 = nq7.g0('|', 0, 6, str);
            if (iG0 <= 0 || iG0 >= str.length() - 1) {
                c6.f("Invalid APK argument");
                return null;
            }
            String strSubstring = str.substring(0, iG0);
            String strSubstring2 = str.substring(iG0 + 1);
            File file = new File(strSubstring2);
            if (nq7.j0(strSubstring)) {
                c6.f("Blank APK name");
                return null;
            }
            if (!file.isFile()) {
                f6.g("APK file not found: ".concat(strSubstring2));
                return null;
            }
            if (file.length() <= 0) {
                f6.g("Empty APK file: ".concat(strSubstring2));
                return null;
            }
            arrayList2.add(new ad4(strSubstring, strSubstring2, file.length()));
        }
        return new fd4(strArr[0], strArr[1], arrayList2);
    }

    public static ax5 x(String str) {
        String strSubstring;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (scheme == null) {
                throw new IllegalArgumentException("Database URL does not specify a URL scheme");
            }
            String host = uri.getHost();
            if (host == null) {
                throw new IllegalArgumentException("Database URL does not specify a valid host");
            }
            String queryParameter = uri.getQueryParameter("ns");
            if (queryParameter == null) {
                queryParameter = host.split("\\.", -1)[0].toLowerCase(Locale.US);
            }
            xj6 xj6Var = new xj6();
            xj6Var.a = host.toLowerCase(Locale.US);
            int port = uri.getPort();
            if (port != -1) {
                xj6Var.b = scheme.equals("https") || scheme.equals("wss");
                xj6Var.a += ":" + port;
            } else {
                xj6Var.b = true;
            }
            xj6Var.c = queryParameter;
            int iIndexOf = str.indexOf("//");
            if (iIndexOf == -1) {
                throw new xc2("Firebase Database URL is missing URL scheme");
            }
            String strSubstring2 = str.substring(iIndexOf + 2);
            int iIndexOf2 = strSubstring2.indexOf("/");
            if (iIndexOf2 != -1) {
                int iIndexOf3 = strSubstring2.indexOf("?");
                strSubstring = iIndexOf3 != -1 ? strSubstring2.substring(iIndexOf2 + 1, iIndexOf3) : strSubstring2.substring(iIndexOf2 + 1);
            } else {
                strSubstring = "";
            }
            String strReplace = strSubstring.replace("+", TokenAuthenticationScheme.SCHEME_DELIMITER);
            ui8.b(strReplace);
            ax5 ax5Var = new ax5();
            ax5Var.b = new gy5(strReplace);
            ax5Var.a = xj6Var;
            return ax5Var;
        } catch (Exception e2) {
            throw new xc2("Invalid Firebase Database url specified: ".concat(str), e2);
        }
    }

    public static of5 y(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i = byteBufferDuplicate.getShort() & 65535;
        if (i > 100) {
            y5.m("Cannot read metadata.");
            return null;
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                j = -1;
                break;
            }
            int i3 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i3) {
                break;
            }
            i2++;
        }
        if (j != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j - ((long) byteBufferDuplicate.position()))));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j2 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            for (int i4 = 0; i4 < j2; i4++) {
                int i5 = byteBufferDuplicate.getInt();
                long j3 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i5 || 1701669481 == i5) {
                    byteBufferDuplicate.position((int) (j3 + j));
                    of5 of5Var = new of5();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    of5Var.d = byteBufferDuplicate;
                    of5Var.a = iPosition;
                    int i6 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    of5Var.b = i6;
                    of5Var.c = ((ByteBuffer) of5Var.d).getShort(i6);
                    return of5Var;
                }
            }
        }
        y5.m("Cannot read metadata.");
        return null;
    }

    public static String z(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (UnsupportedEncodingException unused) {
            g84.h("UTF-8 encoding is required for Firebase Database to run!");
            return null;
        } catch (NoSuchAlgorithmException e2) {
            e6.i("Missing SHA-1 MessageDigest provider.", e2);
            return null;
        }
    }
}
