package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.nimbusds.jose.crypto.PasswordBasedDecrypter;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j15 implements oe8, gg7, xv6, hr9 {
    public static j15 b;
    public static final j15 c;
    public static final j15 d;
    public static final j15 e;
    public int a;

    static {
        boolean z = false;
        c = new j15(0, z);
        d = new j15(1, z);
        e = new j15(2, z);
    }

    public j15(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(fz5.j(i, "Unsupported key length: "));
        }
        this.a = i;
    }

    public static void d(String str, Object... objArr) {
        e().f(3, null, str, objArr);
    }

    public static synchronized j15 e() {
        try {
            if (b == null) {
                j15 j15Var = new j15();
                int i = 7;
                while (i >= 2 && Log.isLoggable("AppAuth", i)) {
                    i--;
                }
                j15Var.a = i + 1;
                b = j15Var;
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [int] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r1v16, types: [fu] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0154 -> B:72:0x0155). Please report as a decompilation issue!!! */
    public static j15 g() throws Throwable {
        InputStream resourceAsStream;
        String str;
        String str2;
        ?? r0;
        jt4 jt4Var = jt4.c;
        jt4Var.getClass();
        dz3 dz3Var = jt4.b;
        ly8.f("firebase-auth", "Please provide a valid libraryName");
        ConcurrentHashMap concurrentHashMap = jt4Var.a;
        if (concurrentHashMap.containsKey("firebase-auth")) {
            str2 = (String) concurrentHashMap.get("firebase-auth");
        } else {
            Properties properties = new Properties();
            InputStream inputStream = null;
            property = null;
            String property = null;
            inputStream = null;
            try {
                try {
                    resourceAsStream = jt4.class.getResourceAsStream("/firebase-auth.properties");
                    try {
                        if (resourceAsStream != null) {
                            properties.load(resourceAsStream);
                            property = properties.getProperty("version", null);
                            StringBuilder sb = new StringBuilder(25 + String.valueOf(property).length());
                            sb.append("firebase-auth version is ");
                            sb.append(property);
                            String string = sb.toString();
                            if (Log.isLoggable(dz3Var.b, 2)) {
                                String str3 = dz3Var.c;
                                if (str3 != null) {
                                    string = str3.concat(string);
                                }
                                Log.v("LibraryVersion", string);
                            }
                        } else {
                            StringBuilder sb2 = new StringBuilder(56);
                            sb2.append("Failed to get app version for libraryName: firebase-auth");
                            String string2 = sb2.toString();
                            if (Log.isLoggable(dz3Var.b, 5)) {
                                String str4 = dz3Var.c;
                                if (str4 != null) {
                                    string2 = str4.concat(string2);
                                }
                                Log.w("LibraryVersion", string2);
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        inputStream = resourceAsStream;
                        StringBuilder sb3 = new StringBuilder(56);
                        sb3.append("Failed to get app version for libraryName: firebase-auth");
                        String string3 = sb3.toString();
                        if (Log.isLoggable(dz3Var.b, 6)) {
                            String str5 = dz3Var.c;
                            if (str5 != null) {
                                string3 = str5.concat(string3);
                            }
                            Log.e("LibraryVersion", string3, e);
                        }
                        resourceAsStream = inputStream;
                        property = null;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = resourceAsStream;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException unused2) {
                    }
                }
                if (property == null) {
                    if (Log.isLoggable(dz3Var.b, 3)) {
                        String str6 = dz3Var.c;
                        Log.d("LibraryVersion", str6 != null ? str6.concat(".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used") : ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
                    }
                    str = "UNKNOWN";
                } else {
                    str = property;
                }
                concurrentHashMap.put("firebase-auth", str);
                str2 = str;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (TextUtils.isEmpty(str2) || str2.equals("UNKNOWN")) {
            r0 = str2;
            r0 = "-1";
        }
        r0 = str2;
        j15 j15Var = new j15();
        try {
            List listJ = fu.i().j(r0);
            if (listJ.size() == 1) {
                r0 = Integer.parseInt(r0);
            } else if (listJ.size() >= 3) {
                r0 = Integer.parseInt((String) listJ.get(2)) + (Integer.parseInt((String) listJ.get(1)) * PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT) + (Integer.parseInt((String) listJ.get(0)) * PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT);
            } else {
                r0 = -1;
            }
        } catch (IllegalArgumentException e4) {
            if (Log.isLoggable("LibraryVersionContainer", 3)) {
                Log.d("LibraryVersionContainer", String.format("Version code parsing failed for: %s with exception %s.", r0, e4));
            }
        }
        j15Var.a = r0;
        return j15Var;
    }

    @Override // defpackage.oe8
    public yy8 a(byte[] bArr, int i, int i2, boolean z, int i3) throws ZipException {
        int i4 = this.a;
        if (i4 == 0) {
            StringBuilder sbN = xs1.n("Bad extra field starting at ", i, ".  Block length of ", " bytes exceeds remaining data of ", i3);
            sbN.append(i2 - 4);
            sbN.append(" bytes.");
            throw new ZipException(sbN.toString());
        }
        if (i4 == 1) {
            return null;
        }
        if (i4 != 2) {
            throw new ZipException(fz5.j(i4, "Unknown UnparseableExtraField key: "));
        }
        pe8 pe8Var = new pe8();
        if (z) {
            pe8Var.c(bArr, i, i2);
            return pe8Var;
        }
        pe8Var.h(bArr, i, i2);
        return pe8Var;
    }

    @Override // defpackage.gg7
    public int b(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b2 = bArr[i4 + 3];
            if ((b2 & 252) == 148) {
                pe4.C(bArr, i4, ((pe4.p(bArr, i4) + (-(((this.a + i4) - i) >>> 2))) & 67108863) | (-1811939328));
            } else if ((b2 & 159) == 144) {
                int iP = pe4.p(bArr, i4);
                int i5 = ((iP >>> 29) & 3) | ((iP >>> 3) & 2097148);
                if (((i5 + 131072) & 1835008) == 0) {
                    int i6 = i5 + (-(((this.a + i4) - i) >>> 12));
                    pe4.C(bArr, i4, (iP & (-1879048161)) | ((i6 & 3) << 29) | ((262140 & i6) << 3) | ((-(i6 & 131072)) & 14680064));
                }
            }
            i4 += 4;
        }
        int i7 = i4 - i;
        this.a += i7;
        return i7;
    }

    @Override // defpackage.hr9
    public byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, byte[] bArr4) throws GeneralSecurityException {
        if (bArr.length != this.a) {
            throw new InvalidAlgorithmParameterException(fz5.j(bArr.length, "Unexpected key length: "));
        }
        if (!u48.c(2)) {
            m0.h("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            return null;
        }
        SecretKeySpec secretKeySpecC = yk9.c(bArr);
        if (bArr2.length != 12) {
            m0.h("iv is wrong size");
            return null;
        }
        if (bArr3.length < i + 16) {
            m0.h("ciphertext too short");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArr2, 0, bArr2.length);
        Cipher cipherB = yk9.b();
        cipherB.init(2, secretKeySpecC, algorithmParameterSpecA);
        if (bArr4.length != 0) {
            cipherB.updateAAD(bArr4);
        }
        return cipherB.doFinal(bArr3, i, bArr3.length - i);
    }

    public void f(int i, Exception exc, String str, Object... objArr) {
        if (this.a > i) {
            return;
        }
        if (objArr.length >= 1) {
            str = String.format(str, objArr);
        }
        if (exc != null) {
            StringBuilder sbN = fz5.n(str, "\n");
            sbN.append(Log.getStackTraceString(exc));
            str = sbN.toString();
        }
        Log.println(i, "AppAuth", str);
    }

    @Override // defpackage.xv6
    public int getN() {
        return this.a;
    }

    @Override // defpackage.hr9
    public int zza() {
        return this.a;
    }

    @Override // defpackage.hr9
    public byte[] zzc() throws GeneralSecurityException {
        int i = this.a;
        if (i == 16) {
            return or9.i;
        }
        if (i == 32) {
            return or9.j;
        }
        m0.h("Could not determine HPKE AEAD ID");
        return null;
    }

    public /* synthetic */ j15(int i, boolean z) {
        this.a = i;
    }
}
