package defpackage;

import android.content.SharedPreferences;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l48 {
    public static final SecureRandom a = new SecureRandom();

    public static k48 a(SharedPreferences sharedPreferences, String str, ty3 ty3Var, j48 j48Var) throws GeneralSecurityException, IOException {
        SecureRandom secureRandom;
        byte[] bArrE;
        k48 k48Var;
        byte[] bArr = rs9.c;
        j48Var.getClass();
        k48 k48Var2 = null;
        String string = sharedPreferences.getString(str, null);
        char c = 16;
        int i = 0;
        if (string == null) {
            byte[] bArr2 = new byte[4];
            int i2 = 0;
            while (true) {
                secureRandom = a;
                if (i2 != 0) {
                    break;
                }
                secureRandom.nextBytes(bArr2);
                i2 = ((bArr2[0] & 127) << 24) | ((bArr2[1] & 255) << 16) | ((bArr2[2] & 255) << 8) | (bArr2[3] & 255);
            }
            byte[] bArr3 = new byte[j48Var.getKeySizeBytes()];
            secureRandom.nextBytes(bArr3);
            List<i48> listI = nc8.I(new i48(j48Var.getTypeUrl(), bArr3, i2, 1, 1));
            k48 k48Var3 = new k48(i2, listI);
            m1 m1Var = new m1();
            m1Var.q(1, i2);
            for (i48 i48Var : listI) {
                m1 m1Var2 = new m1();
                k48 k48Var4 = k48Var2;
                m1 m1Var3 = new m1();
                char c2 = c;
                String str2 = i48Var.a;
                Charset charset = StandardCharsets.UTF_8;
                charset.getClass();
                byte[] bytes = str2.getBytes(charset);
                bytes.getClass();
                m1Var3.h(bytes, 1);
                String str3 = i48Var.a;
                j48 j48Var2 = j48.AES_SIV;
                if (!pe4.d(str3, j48Var2.getTypeUrl())) {
                    j48Var2 = j48.AES_GCM;
                    if (!pe4.d(str3, j48Var2.getTypeUrl())) {
                        throw new GeneralSecurityException(xs1.j("Unsupported key type: ", str3));
                    }
                }
                m1 m1Var4 = new m1();
                m1Var4.q(1, 0);
                m1Var4.h(i48Var.b, j48Var2.getKeyValueFieldNumber());
                byte[] byteArray = m1Var4.a.toByteArray();
                byteArray.getClass();
                m1Var3.h(byteArray, 2);
                m1Var3.q(3, 1);
                byte[] byteArray2 = m1Var3.a.toByteArray();
                byteArray2.getClass();
                m1Var2.h(byteArray2, 1);
                m1Var2.q(2, i48Var.d);
                m1Var2.q(3, i48Var.c);
                m1Var2.q(4, i48Var.e);
                byte[] byteArray3 = m1Var2.a.toByteArray();
                byteArray3.getClass();
                m1Var.h(byteArray3, 2);
                k48Var2 = k48Var4;
                c = c2;
            }
            k48 k48Var5 = k48Var2;
            byte[] byteArray4 = m1Var.a.toByteArray();
            byteArray4.getClass();
            try {
                bArrE = ty3Var.e(byteArray4, bArr);
            } catch (GeneralSecurityException unused) {
                us2.v();
                bArrE = ty3Var.e(byteArray4, bArr);
            } catch (ProviderException unused2) {
                us2.v();
                bArrE = ty3Var.e(byteArray4, bArr);
            }
            m1 m1Var5 = new m1();
            m1Var5.h(bArrE, 2);
            byte[] byteArray5 = m1Var5.a.toByteArray();
            byteArray5.getClass();
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            StringBuilder sb = new StringBuilder(byteArray5.length * 2);
            int length = byteArray5.length;
            while (i < length) {
                int i3 = byteArray5[i] & 255;
                sb.append("0123456789abcdef".charAt(i3 / 16));
                sb.append("0123456789abcdef".charAt(i3 % 16));
                i++;
            }
            if (editorEdit.putString(str, sb.toString()).commit()) {
                return k48Var3;
            }
            m0.h("Failed to write encrypted keyset");
            return k48Var5;
        }
        if (string.length() % 2 != 0) {
            c6.f("Expected even-length hex string");
            return null;
        }
        int length2 = string.length() / 2;
        byte[] bArr4 = new byte[length2];
        while (i < length2) {
            int i4 = i * 2;
            int iDigit = Character.digit(string.charAt(i4), 16);
            int iDigit2 = Character.digit(string.charAt(i4 + 1), 16);
            if (iDigit == -1 || iDigit2 == -1) {
                c6.f("Invalid hex string");
                return null;
            }
            bArr4[i] = (byte) ((iDigit << 4) + iDigit2);
            i++;
        }
        try {
            p96 p96Var = new p96(bArr4);
            byte[] bArrB = null;
            while (p96Var.b < p96Var.a.length) {
                long jC = p96Var.c();
                int i5 = (int) (jC >>> 3);
                int i6 = (int) (jC & 7);
                if (i5 == 2) {
                    bArrB = p96Var.b(i6);
                } else {
                    p96Var.e(i6);
                }
            }
            if (bArrB == null) {
                throw new GeneralSecurityException("Missing encrypted keyset");
            }
            byte[] bArrC = ty3Var.c(bArrB, bArr);
            final jh6 jh6Var = new jh6();
            final ArrayList arrayList = new ArrayList();
            new p96(bArrC).a(new rt3() { // from class: l96
                @Override // defpackage.rt3
                public final Object a(Object obj, Object obj2, Object obj3) throws GeneralSecurityException {
                    int iIntValue = ((Integer) obj).intValue();
                    int iIntValue2 = ((Integer) obj2).intValue();
                    p96 p96Var2 = (p96) obj3;
                    p96Var2.getClass();
                    if (iIntValue == 1) {
                        jh6Var.a = (int) p96Var2.d(iIntValue2);
                    } else if (iIntValue != 2) {
                        p96Var2.e(iIntValue2);
                    } else {
                        byte[] bArrB2 = p96Var2.b(iIntValue2);
                        final lh6 lh6Var = new lh6();
                        final jh6 jh6Var2 = new jh6();
                        final jh6 jh6Var3 = new jh6();
                        final jh6 jh6Var4 = new jh6();
                        new p96(bArrB2).a(new rt3() { // from class: m96
                            @Override // defpackage.rt3
                            public final Object a(Object obj4, Object obj5, Object obj6) throws GeneralSecurityException {
                                int keyValueFieldNumber;
                                int iIntValue3 = ((Integer) obj4).intValue();
                                int iIntValue4 = ((Integer) obj5).intValue();
                                p96 p96Var3 = (p96) obj6;
                                p96Var3.getClass();
                                if (iIntValue3 == 1) {
                                    byte[] bArrB3 = p96Var3.b(iIntValue4);
                                    final lh6 lh6Var2 = new lh6();
                                    final lh6 lh6Var3 = new lh6();
                                    new p96(bArrB3).a(new rt3() { // from class: n96
                                        @Override // defpackage.rt3
                                        public final Object a(Object obj7, Object obj8, Object obj9) throws GeneralSecurityException {
                                            int iIntValue5 = ((Integer) obj7).intValue();
                                            int iIntValue6 = ((Integer) obj8).intValue();
                                            p96 p96Var4 = (p96) obj9;
                                            p96Var4.getClass();
                                            if (iIntValue5 == 1) {
                                                byte[] bArrB4 = p96Var4.b(iIntValue6);
                                                Charset charset2 = StandardCharsets.UTF_8;
                                                charset2.getClass();
                                                lh6Var2.a = new String(bArrB4, charset2);
                                            } else if (iIntValue5 != 2) {
                                                p96Var4.e(iIntValue6);
                                            } else {
                                                lh6Var3.a = p96Var4.b(iIntValue6);
                                            }
                                            return be8.a;
                                        }
                                    });
                                    String str4 = (String) lh6Var2.a;
                                    if (str4 == null) {
                                        m0.h("Missing key type");
                                        return null;
                                    }
                                    byte[] bArr5 = (byte[]) lh6Var3.a;
                                    if (bArr5 == null) {
                                        m0.h("Missing key value");
                                        return null;
                                    }
                                    j48 j48Var3 = j48.AES_SIV;
                                    if (str4.equals(j48Var3.getTypeUrl())) {
                                        keyValueFieldNumber = j48Var3.getKeyValueFieldNumber();
                                    } else {
                                        j48 j48Var4 = j48.AES_GCM;
                                        if (!str4.equals(j48Var4.getTypeUrl())) {
                                            throw new GeneralSecurityException("Unsupported key type: ".concat(str4));
                                        }
                                        keyValueFieldNumber = j48Var4.getKeyValueFieldNumber();
                                    }
                                    p96 p96Var4 = new p96(bArr5);
                                    byte[] bArrB4 = null;
                                    while (p96Var4.b < p96Var4.a.length) {
                                        long jC2 = p96Var4.c();
                                        int i7 = (int) (jC2 >>> 3);
                                        int i8 = (int) (jC2 & 7);
                                        if (i7 == keyValueFieldNumber) {
                                            bArrB4 = p96Var4.b(i8);
                                        } else {
                                            p96Var4.e(i8);
                                        }
                                    }
                                    if (bArrB4 == null) {
                                        m0.h("Missing AES key material");
                                        return null;
                                    }
                                    lh6Var.a = new pw5(str4, bArrB4);
                                } else if (iIntValue3 == 2) {
                                    jh6Var2.a = (int) p96Var3.d(iIntValue4);
                                } else if (iIntValue3 == 3) {
                                    jh6Var3.a = (int) p96Var3.d(iIntValue4);
                                } else if (iIntValue3 != 4) {
                                    p96Var3.e(iIntValue4);
                                } else {
                                    jh6Var4.a = (int) p96Var3.d(iIntValue4);
                                }
                                return be8.a;
                            }
                        });
                        pw5 pw5Var = (pw5) lh6Var.a;
                        if (pw5Var == null) {
                            m0.h("Missing key data");
                            return null;
                        }
                        arrayList.add(new i48((String) pw5Var.a, (byte[]) pw5Var.b, jh6Var3.a, jh6Var2.a, jh6Var4.a));
                    }
                    return be8.a;
                }
            });
            k48Var = new k48(jh6Var.a, arrayList);
            List<i48> list = k48Var.b;
            if (list.isEmpty()) {
                m0.h("Empty keyset");
                return null;
            }
            for (i48 i48Var2 : list) {
                if (!pe4.d(i48Var2.a, j48Var.getTypeUrl())) {
                    throw new GeneralSecurityException(xs1.j("Unexpected key type: ", i48Var2.a));
                }
                if (i48Var2.b.length != j48Var.getKeySizeBytes()) {
                    m0.h("Unexpected key size");
                    return null;
                }
            }
            k48Var.a();
            return k48Var;
        } catch (Exception e) {
            try {
                final jh6 jh6Var2 = new jh6();
                final ArrayList arrayList2 = new ArrayList();
                new p96(bArr4).a(new rt3() { // from class: l96
                    @Override // defpackage.rt3
                    public final Object a(Object obj, Object obj2, Object obj3) throws GeneralSecurityException {
                        int iIntValue = ((Integer) obj).intValue();
                        int iIntValue2 = ((Integer) obj2).intValue();
                        p96 p96Var2 = (p96) obj3;
                        p96Var2.getClass();
                        if (iIntValue == 1) {
                            jh6Var2.a = (int) p96Var2.d(iIntValue2);
                        } else if (iIntValue != 2) {
                            p96Var2.e(iIntValue2);
                        } else {
                            byte[] bArrB2 = p96Var2.b(iIntValue2);
                            final lh6 lh6Var = new lh6();
                            final jh6 jh6Var3 = new jh6();
                            final jh6 jh6Var4 = new jh6();
                            final jh6 jh6Var5 = new jh6();
                            new p96(bArrB2).a(new rt3() { // from class: m96
                                @Override // defpackage.rt3
                                public final Object a(Object obj4, Object obj5, Object obj6) throws GeneralSecurityException {
                                    int keyValueFieldNumber;
                                    int iIntValue3 = ((Integer) obj4).intValue();
                                    int iIntValue4 = ((Integer) obj5).intValue();
                                    p96 p96Var3 = (p96) obj6;
                                    p96Var3.getClass();
                                    if (iIntValue3 == 1) {
                                        byte[] bArrB3 = p96Var3.b(iIntValue4);
                                        final lh6 lh6Var2 = new lh6();
                                        final lh6 lh6Var3 = new lh6();
                                        new p96(bArrB3).a(new rt3() { // from class: n96
                                            @Override // defpackage.rt3
                                            public final Object a(Object obj7, Object obj8, Object obj9) throws GeneralSecurityException {
                                                int iIntValue5 = ((Integer) obj7).intValue();
                                                int iIntValue6 = ((Integer) obj8).intValue();
                                                p96 p96Var4 = (p96) obj9;
                                                p96Var4.getClass();
                                                if (iIntValue5 == 1) {
                                                    byte[] bArrB4 = p96Var4.b(iIntValue6);
                                                    Charset charset2 = StandardCharsets.UTF_8;
                                                    charset2.getClass();
                                                    lh6Var2.a = new String(bArrB4, charset2);
                                                } else if (iIntValue5 != 2) {
                                                    p96Var4.e(iIntValue6);
                                                } else {
                                                    lh6Var3.a = p96Var4.b(iIntValue6);
                                                }
                                                return be8.a;
                                            }
                                        });
                                        String str4 = (String) lh6Var2.a;
                                        if (str4 == null) {
                                            m0.h("Missing key type");
                                            return null;
                                        }
                                        byte[] bArr5 = (byte[]) lh6Var3.a;
                                        if (bArr5 == null) {
                                            m0.h("Missing key value");
                                            return null;
                                        }
                                        j48 j48Var3 = j48.AES_SIV;
                                        if (str4.equals(j48Var3.getTypeUrl())) {
                                            keyValueFieldNumber = j48Var3.getKeyValueFieldNumber();
                                        } else {
                                            j48 j48Var4 = j48.AES_GCM;
                                            if (!str4.equals(j48Var4.getTypeUrl())) {
                                                throw new GeneralSecurityException("Unsupported key type: ".concat(str4));
                                            }
                                            keyValueFieldNumber = j48Var4.getKeyValueFieldNumber();
                                        }
                                        p96 p96Var4 = new p96(bArr5);
                                        byte[] bArrB4 = null;
                                        while (p96Var4.b < p96Var4.a.length) {
                                            long jC2 = p96Var4.c();
                                            int i7 = (int) (jC2 >>> 3);
                                            int i8 = (int) (jC2 & 7);
                                            if (i7 == keyValueFieldNumber) {
                                                bArrB4 = p96Var4.b(i8);
                                            } else {
                                                p96Var4.e(i8);
                                            }
                                        }
                                        if (bArrB4 == null) {
                                            m0.h("Missing AES key material");
                                            return null;
                                        }
                                        lh6Var.a = new pw5(str4, bArrB4);
                                    } else if (iIntValue3 == 2) {
                                        jh6Var3.a = (int) p96Var3.d(iIntValue4);
                                    } else if (iIntValue3 == 3) {
                                        jh6Var4.a = (int) p96Var3.d(iIntValue4);
                                    } else if (iIntValue3 != 4) {
                                        p96Var3.e(iIntValue4);
                                    } else {
                                        jh6Var5.a = (int) p96Var3.d(iIntValue4);
                                    }
                                    return be8.a;
                                }
                            });
                            pw5 pw5Var = (pw5) lh6Var.a;
                            if (pw5Var == null) {
                                m0.h("Missing key data");
                                return null;
                            }
                            arrayList2.add(new i48((String) pw5Var.a, (byte[]) pw5Var.b, jh6Var4.a, jh6Var3.a, jh6Var5.a));
                        }
                        return be8.a;
                    }
                });
                k48Var = new k48(jh6Var2.a, arrayList2);
            } catch (Exception unused3) {
                throw new GeneralSecurityException("Cannot read encrypted keyset", e);
            }
        }
    }
}
