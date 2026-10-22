package defpackage;

import com.nimbusds.jose.JWEObject;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oa5 {
    public final ea5 a;

    public oa5(ea5 ea5Var) {
        this.a = ea5Var;
    }

    public static na5 a(byte[] bArr) {
        Object bn6Var;
        ma5 ma5VarF = f(bArr, 0);
        int i = ma5VarF.b;
        BigInteger bigInteger = ma5VarF.a;
        ma5 ma5VarF2 = f(bArr, i);
        int i2 = ma5VarF2.b;
        BigInteger bigInteger2 = ma5VarF2.a;
        ma5 ma5VarF3 = f(bArr, i2);
        int i3 = ma5VarF3.b;
        BigInteger bigInteger3 = ma5VarF3.a;
        ma5 ma5VarF4 = f(bArr, i3);
        int i4 = ma5VarF4.b;
        BigInteger bigInteger4 = ma5VarF4.a;
        g("MEGA RSA private key", i4, bArr);
        if (bigInteger.bitLength() > 1000 && bigInteger2.bitLength() > 1000 && bigInteger3.bitLength() > 2000 && bigInteger4.bitLength() > 1000) {
            try {
                bn6Var = Boolean.valueOf(pe4.d(bigInteger.modInverse(bigInteger2), bigInteger4));
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Object obj = Boolean.FALSE;
            if (bn6Var instanceof bn6) {
                bn6Var = obj;
            }
            if (((Boolean) bn6Var).booleanValue()) {
                BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger2);
                bigIntegerMultiply.getClass();
                return new na5(bigIntegerMultiply, bigInteger3, (((bigInteger2.bitLength() + 7) / 8) + ((bigInteger.bitLength() + 7) / 8)) - 2);
            }
        }
        c6.f("MEGA RSA private key is invalid");
        return null;
    }

    public static byte[] b(String str, byte[] bArr) {
        String strReplace = str.replace('+', '-');
        strReplace.getClass();
        String strReplace2 = strReplace.replace('/', '_');
        strReplace2.getClass();
        byte[] bArrDecode = Base64.getUrlDecoder().decode(eq3.j(strReplace2, uq7.R((4 - (strReplace2.length() % 4)) % 4, "=")));
        bArrDecode.getClass();
        if (bArrDecode.length == 16) {
            return y13.b(bArr, bArrDecode);
        }
        f6.g(fz5.j(bArrDecode.length, "Unexpected MEGA encrypted master key size: "));
        return null;
    }

    public static String c(byte[] bArr, String str, String str2, String str3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        if (str == null || nq7.j0(str) || str2 == null || nq7.j0(str2)) {
            return null;
        }
        byte[] bArrC = x13.c(str);
        byte[] bArrB = y13.b(bArr, bArrC);
        byte[] bArrC2 = x13.c(str2);
        byte[] bArr2 = new byte[0];
        try {
            na5 na5VarA = a(bArrB);
            ma5 ma5VarF = f(bArrC2, 0);
            g("MEGA RSA encrypted session", ma5VarF.b, bArrC2);
            BigInteger bigIntegerModPow = ma5VarF.a.modPow(na5VarA.b, na5VarA.a);
            bigIntegerModPow.getClass();
            byte[] bArrI = i(na5VarA.c, bigIntegerModPow);
            if (bArrI.length < 43) {
                throw new IllegalArgumentException("MEGA RSA decrypted session is too short");
            }
            byte[] bArrK0 = x50.k0(bArrI, 0, 43);
            if (nq7.j0(str3)) {
                throw new IllegalArgumentException("MEGA login response is missing user handle");
            }
            if (bArrK0.length < 27) {
                throw new IllegalArgumentException("MEGA RSA decrypted session is missing user handle");
            }
            if (!new String(x50.k0(bArrK0, 16, 27), f51.d).equals(str3)) {
                throw new IllegalArgumentException("MEGA RSA decrypted session user handle mismatch");
            }
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(bArrK0);
            strEncodeToString.getClass();
            Arrays.fill(bArrC, (byte) 0);
            Arrays.fill(bArrB, (byte) 0);
            Arrays.fill(bArrC2, (byte) 0);
            Arrays.fill(bArrI, (byte) 0);
            return strEncodeToString;
        } catch (Throwable th) {
            Arrays.fill(bArrC, (byte) 0);
            Arrays.fill(bArrB, (byte) 0);
            Arrays.fill(bArrC2, (byte) 0);
            Arrays.fill(bArr2, (byte) 0);
            throw th;
        }
    }

    public static String e(fl4 fl4Var, String str) {
        String strO;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null && (strO = qj4VarX.o()) != null && !nq7.j0(strO)) {
                return strO;
            }
        }
        return null;
    }

    public static ma5 f(byte[] bArr, int i) {
        int i2 = i + 2;
        if (i2 > bArr.length) {
            c6.f("Truncated MEGA MPI length");
            return null;
        }
        int i3 = ((((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8)) + 7) / 8) + i2;
        if (i3 <= bArr.length) {
            return new ma5(i3, new BigInteger(1, x50.k0(bArr, i2, i3)));
        }
        c6.f("Truncated MEGA MPI value");
        return null;
    }

    public static void g(String str, int i, byte[] bArr) {
        if (i > bArr.length || bArr.length - i >= 16) {
            f6.g(str.concat(" has invalid trailing data"));
        }
    }

    public static String h(fl4 fl4Var, String str) {
        String strE = e(fl4Var, str);
        if (strE != null) {
            return strE;
        }
        m0.j(str, "MEGA login response is missing '");
        return null;
    }

    public static byte[] i(int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        byteArray.getClass();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte b : byteArray) {
            if (z) {
                arrayList.add(Byte.valueOf(b));
            } else if (b != 0) {
                arrayList.add(Byte.valueOf(b));
                z = true;
            }
        }
        byte[] bArrS1 = el1.s1(arrayList);
        return x50.u0(new byte[Math.max(i, bArrS1.length) - bArrS1.length], bArrS1);
    }

    public static void k(String str, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        if (str == null || nq7.j0(str)) {
            c6.f("MEGA login response is missing a usable session id");
            return;
        }
        str.getClass();
        String strReplace = str.replace('+', '-');
        strReplace.getClass();
        String strReplace2 = strReplace.replace('/', '_');
        strReplace2.getClass();
        byte[] bArrDecode = Base64.getUrlDecoder().decode(eq3.j(strReplace2, uq7.R((4 - (strReplace2.length() % 4)) % 4, "=")));
        bArrDecode.getClass();
        if (bArrDecode.length != 43) {
            c6.f("MEGA temporary session id has invalid length");
            return;
        }
        byte[] bArrK0 = x50.k0(bArrDecode, 0, 16);
        byte[] bArrK1 = x50.k0(bArrDecode, bArrDecode.length - 16, bArrDecode.length);
        byte[] bArrC = y13.c(bArr, bArrK0);
        try {
            if (!Arrays.equals(bArrK1, bArrC)) {
                throw new IllegalArgumentException("MEGA temporary session challenge verification failed");
            }
            Arrays.fill(bArrDecode, (byte) 0);
            Arrays.fill(bArrK0, (byte) 0);
            Arrays.fill(bArrK1, (byte) 0);
            Arrays.fill(bArrC, (byte) 0);
        } catch (Throwable th) {
            Arrays.fill(bArrDecode, (byte) 0);
            Arrays.fill(bArrK0, (byte) 0);
            Arrays.fill(bArrK1, (byte) 0);
            Arrays.fill(bArrC, (byte) 0);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final gh d(String str, String str2, String str3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArrDecode;
        gh ghVar;
        la laVar;
        String strO;
        str.getClass();
        str2.getClass();
        String lowerCase = nq7.H0(str).toString().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        gh ghVar2 = null;
        if (lowerCase.length() <= 0) {
            c6.f("MEGA email is blank");
            return null;
        }
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "us0");
        fl4Var.u("user", lowerCase);
        da5 da5Var = da5.READ_SAFE;
        da5Var.getClass();
        ea5 ea5Var = this.a;
        fl4 fl4VarI = ea5Var.b(fl4Var, null, da5Var).i();
        qj4 qj4VarX = fl4VarI.x("v");
        if (qj4VarX == null) {
            l0.e("MEGA prelogin response is missing version");
            return null;
        }
        int iF = qj4VarX.f();
        if (1 > iF || iF >= 3) {
            f6.g(fz5.j(iF, "Unsupported MEGA account version: "));
            return null;
        }
        qj4 qj4VarX2 = fl4VarI.x("s");
        if (qj4VarX2 == null || (strO = qj4VarX2.o()) == null) {
            bArrDecode = null;
        } else {
            if (nq7.j0(strO)) {
                strO = null;
            }
            if (strO != null) {
                String strReplace = strO.replace('+', '-');
                strReplace.getClass();
                String strReplace2 = strReplace.replace('/', '_');
                strReplace2.getClass();
                bArrDecode = Base64.getUrlDecoder().decode(eq3.j(strReplace2, uq7.R((4 - (strReplace2.length() % 4)) % 4, "=")));
                bArrDecode.getClass();
            } else {
                bArrDecode = null;
            }
        }
        if (iF > 1 && (bArrDecode == null || bArrDecode.length == 0)) {
            c6.f("MEGA prelogin response is missing salt");
            return null;
        }
        if (iF == 1) {
            Charset charset = StandardCharsets.UTF_8;
            charset.getClass();
            byte[] bytes = str2.getBytes(charset);
            bytes.getClass();
            int[] iArrE = x13.e(bytes);
            byte[] bArrA = x13.a(new int[]{-1815844893, 2108737444, -776061055, 22203222});
            int iMax = Math.max(1, (iArrE.length + 3) / 4);
            byte[][] bArr = new byte[iMax][];
            int i = 0;
            while (i < iMax) {
                gh ghVar3 = ghVar2;
                int[] iArr = new int[4];
                for (int i2 = 0; i2 < 4; i2++) {
                    int i3 = (i * 4) + i2;
                    iArr[i2] = (i3 < 0 || i3 >= iArrE.length) ? 0 : iArrE[i3];
                }
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                byteBufferAllocate.getClass();
                for (int i4 = 0; i4 < 4; i4++) {
                    byteBufferAllocate.putInt(iArr[i4]);
                }
                byte[] bArrArray = byteBufferAllocate.array();
                bArrArray.getClass();
                bArr[i] = bArrArray;
                i++;
                ghVar2 = ghVar3;
            }
            ghVar = ghVar2;
            for (int i5 = 0; i5 < 65536; i5++) {
                for (int i6 = 0; i6 < iMax; i6++) {
                    bArrA = y13.c(bArr[i6], bArrA);
                }
            }
            Charset charset2 = StandardCharsets.UTF_8;
            charset2.getClass();
            byte[] bytes2 = lowerCase.getBytes(charset2);
            bytes2.getClass();
            int length = ((bytes2.length + 3) / 4) * 4;
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(Arrays.copyOf(bytes2, length));
            int i7 = length / 4;
            int[] iArr2 = new int[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                iArr2[i8] = byteBufferWrap.getInt();
            }
            int[] iArr3 = new int[4];
            int i9 = 0;
            int i10 = 0;
            while (i9 < i7) {
                int i11 = i10 + 1;
                int i12 = i10 & 3;
                iArr3[i12] = iArr3[i12] ^ iArr2[i9];
                i9++;
                i10 = i11;
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(16);
            byteBufferAllocate2.getClass();
            for (int i13 = 0; i13 < 4; i13++) {
                byteBufferAllocate2.putInt(iArr3[i13]);
            }
            byte[] bArrArray2 = byteBufferAllocate2.array();
            bArrArray2.getClass();
            if (bArrArray2.length != 16) {
                c6.f("AES-ECB repeated encryption block must be 16 bytes");
                return ghVar;
            }
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            cipher.init(1, new SecretKeySpec(bArrA, "AES"));
            for (int i14 = 0; i14 < 16384; i14++) {
                bArrArray2 = cipher.doFinal(bArrArray2);
                bArrArray2.getClass();
            }
            int[] iArrE2 = x13.e(bArrArray2);
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(x13.a(new int[]{iArrE2[0], iArrE2[2]}));
            strEncodeToString.getClass();
            laVar = new la(bArrA, strEncodeToString, false);
        } else {
            ghVar = null;
            if (bArrDecode == null) {
                c6.f("Required value was null.");
                return null;
            }
            char[] charArray = str2.toCharArray();
            charArray.getClass();
            PBEKeySpec pBEKeySpec = new PBEKeySpec(charArray, bArrDecode, JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH, 256);
            try {
                byte[] encoded = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA512").generateSecret(pBEKeySpec).getEncoded();
                encoded.getClass();
                Arrays.fill(charArray, (char) 0);
                pBEKeySpec.clearPassword();
                byte[] bArrK0 = x50.k0(encoded, 0, 16);
                String strEncodeToString2 = Base64.getUrlEncoder().withoutPadding().encodeToString(x50.k0(encoded, 16, 32));
                strEncodeToString2.getClass();
                la laVar2 = new la(bArrK0, strEncodeToString2, false);
                Arrays.fill(encoded, (byte) 0);
                laVar = laVar2;
            } catch (Throwable th) {
                Arrays.fill(charArray, (char) 0);
                pBEKeySpec.clearPassword();
                throw th;
            }
        }
        byte[] bArr2 = (byte[]) laVar.b;
        String str4 = (String) laVar.a;
        fl4 fl4Var2 = new fl4();
        fl4Var2.u("a", "us");
        fl4Var2.u("user", lowerCase);
        fl4Var2.u("uh", str4);
        if (str3 != null && !nq7.j0(str3)) {
            fl4Var2.u("mfa", str3);
        }
        da5 da5Var2 = da5.READ_SAFE;
        da5Var2.getClass();
        fl4 fl4VarI2 = ea5Var.b(fl4Var2, ghVar, da5Var2).i();
        String strH = h(fl4VarI2, JWKParameterNames.OCT_KEY_VALUE);
        String strE = e(fl4VarI2, "csid");
        String strE2 = e(fl4VarI2, "privk");
        String strE3 = e(fl4VarI2, "tsid");
        String strH2 = h(fl4VarI2, "u");
        try {
            byte[] bArrB = b(strH, bArr2);
            String strC = c(bArrB, strE2, strE, strH2);
            if (strC == null) {
                k(strE3, bArrB);
            } else {
                strE3 = strC;
            }
            j(strE3);
            byte b = 0;
            return new gh(strE3, bArrB, strH2);
        } finally {
            Arrays.fill(bArr2, (byte) 0);
        }
    }

    public final void j(String str) {
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "ug");
        fl4Var.t("v", 1);
        if (this.a.b(fl4Var, str, da5.READ_SAFE) instanceof fl4) {
            return;
        }
        c6.f("MEGA session verification did not return a user object");
    }
}
