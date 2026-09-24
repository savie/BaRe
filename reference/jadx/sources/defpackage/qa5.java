package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qa5 {
    public static final byte[] a;

    static {
        byte[] bytes = "MEGA".getBytes(f51.a);
        bytes.getClass();
        a = bytes;
    }

    public static String a(int[] iArr, String str) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String strO;
        str.getClass();
        byte[] bArrA = x13.a(iArr);
        byte[] bArrC = x13.c(str);
        byte[] bArr = new byte[16];
        if (bArrC.length % 16 != 0) {
            c6.f("AES-CBC ciphertext must be block aligned");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(2, new SecretKeySpec(bArrA, "AES"), new IvParameterSpec(bArr));
        byte[] bArrDoFinal = cipher.doFinal(bArrC);
        bArrDoFinal.getClass();
        try {
            int length = bArrDoFinal.length;
            byte[] bArr2 = a;
            if (length < bArr2.length) {
                throw new IllegalArgumentException("MEGA node attributes are shorter than expected");
            }
            if (!Arrays.equals(x50.k0(bArrDoFinal, 0, bArr2.length), bArr2)) {
                throw new IllegalArgumentException("MEGA node attributes have an invalid prefix");
            }
            byte[] bArrK0 = x50.k0(bArrDoFinal, bArr2.length, bArrDoFinal.length);
            ArrayList arrayList = new ArrayList();
            for (byte b : bArrK0) {
                if (b == 0) {
                    break;
                }
                arrayList.add(Byte.valueOf(b));
            }
            fl4 fl4VarC = c(yc9.K(new String(el1.s1(arrayList), f51.a)).i());
            Arrays.fill(bArrA, (byte) 0);
            Arrays.fill(bArrC, (byte) 0);
            Arrays.fill(bArrDoFinal, (byte) 0);
            qj4 qj4VarX = fl4VarC.x(JWKParameterNames.RSA_MODULUS);
            if (qj4VarX != null && (strO = qj4VarX.o()) != null) {
                if (nq7.j0(strO)) {
                    strO = null;
                }
                if (strO != null) {
                    return strO;
                }
            }
            l0.e("MEGA node attributes are missing name");
            return null;
        } catch (Throwable th) {
            Arrays.fill(bArrA, (byte) 0);
            Arrays.fill(bArrC, (byte) 0);
            Arrays.fill(bArrDoFinal, (byte) 0);
            throw th;
        }
    }

    public static String b(int[] iArr, fl4 fl4Var) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iArr.length * 4);
        byteBufferAllocate.getClass();
        for (int i : iArr) {
            byteBufferAllocate.putInt(i);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        byte[] bytes = c(fl4Var).toString().getBytes(f51.a);
        bytes.getClass();
        byte[] bArrU0 = x50.u0(a, bytes);
        byte[] bArrCopyOf = Arrays.copyOf(bArrU0, ((bArrU0.length + 15) / 16) * 16);
        try {
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(y13.a(bArrArray, new byte[16], bArrCopyOf));
            strEncodeToString.getClass();
            return strEncodeToString;
        } finally {
            Arrays.fill(bArrArray, (byte) 0);
            Arrays.fill(bArrCopyOf, (byte) 0);
        }
    }

    public static fl4 c(fl4 fl4Var) {
        String strO;
        fl4 fl4VarC = fl4Var.c();
        qj4 qj4VarX = fl4VarC.x(JWKParameterNames.RSA_MODULUS);
        if (qj4VarX != null) {
            if (!(qj4VarX instanceof kl4) || !(qj4VarX.k().a instanceof String)) {
                qj4VarX = null;
            }
            if (qj4VarX != null && (strO = qj4VarX.o()) != null) {
                fl4VarC.u(JWKParameterNames.RSA_MODULUS, Normalizer.normalize(strO, Normalizer.Form.NFC));
            }
        }
        return fl4VarC;
    }
}
