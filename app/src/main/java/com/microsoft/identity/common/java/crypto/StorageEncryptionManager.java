package com.microsoft.identity.common.java.crypto;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.base64.Base64Flags;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider;
import com.microsoft.identity.common.java.crypto.key.KeyUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.c6;
import defpackage.f6;
import defpackage.l0;
import defpackage.q;
import defpackage.xs1;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class StorageEncryptionManager {
    private final IVGenerator mGenerator = new AnonymousClass1();

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.crypto.StorageEncryptionManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements IVGenerator {
        final SecureRandom mRandom = new SecureRandom();

        public final byte[] generate() {
            byte[] bArr = new byte[16];
            this.mRandom.nextBytes(bArr);
            return bArr;
        }
    }

    private static void assertHMac(byte[] bArr, byte[] bArr2, int i, int i2) throws ClientException {
        if (bArr2.length != i2 - i) {
            throw new ClientException("unexpected_hmac_length", null, null);
        }
        byte b = 0;
        for (int i3 = i; i3 < i2; i3++) {
            b = (byte) (b | (bArr2[i3 - i] ^ bArr[i3]));
        }
        if (b != 0) {
            throw new ClientException("hmac_mismatch", null, null);
        }
    }

    private static byte[] decryptWithSecretKey(byte[] bArr, ISecretKeyProvider iSecretKeyProvider) throws ClientException {
        String str;
        if (iSecretKeyProvider == null) {
            f6.n("keyProvider is marked non-null but is null");
            return null;
        }
        try {
            SecretKey key = iSecretKeyProvider.getKey();
            SecretKey hMacKey = KeyUtil.getHMacKey(key);
            int length = bArr.length - 48;
            int length2 = bArr.length - 32;
            int length3 = iSecretKeyProvider.getKeyTypeIdentifier().getBytes(AuthenticationConstants.ENCODING_UTF8).length;
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(hMacKey);
            mac.update(bArr, 0, length2);
            assertHMac(bArr, mac.doFinal(), length2, bArr.length);
            cipher.init(2, key, new IvParameterSpec(bArr, length, 16));
            return cipher.doFinal(bArr, length3, length - length3);
        } catch (ClientException e) {
            throw e;
        } catch (IllegalArgumentException e2) {
            e = e2;
            str = "data_malformed";
            throw new ClientException(str, e.getMessage(), e);
        } catch (InvalidAlgorithmParameterException e3) {
            e = e3;
            str = "invalid_algorithm_parameter";
            throw new ClientException(str, e.getMessage(), e);
        } catch (InvalidKeyException e4) {
            e = e4;
            str = "invalid_key";
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            str = "no_such_algorithm";
            throw new ClientException(str, e.getMessage(), e);
        } catch (BadPaddingException e6) {
            e = e6;
            str = "bad_padding";
            throw new ClientException(str, e.getMessage(), e);
        } catch (IllegalBlockSizeException e7) {
            e = e7;
            str = "invalid_block_size";
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchPaddingException e8) {
            e = e8;
            str = "no_such_padding";
            throw new ClientException(str, e.getMessage(), e);
        } catch (Throwable th) {
            e = th;
            str = "unknown_crypto_error";
            throw new ClientException(str, e.getMessage(), e);
        }
    }

    public static String getKeyIdentifierFromCipherText(byte[] bArr) {
        try {
            return new String(stripEncodeVersionFromCipherText(bArr), 0, 4, AuthenticationConstants.ENCODING_UTF8);
        } catch (Exception e) {
            Logger.verbose("StorageEncryptionManager#:getKeyIdentifierFromCipherText", e.getMessage());
            return "EXCEPTION OCCURRED GETTING KEY IDENTIFIER";
        }
    }

    private static byte[] prefixWithEncodeVersion(byte[] bArr) {
        Base64Flags[] base64FlagsArr = {Base64Flags.NO_WRAP};
        int i = Base64Util.a;
        return "cE1".concat(LibraryInfoHelper.encodeToString(bArr, base64FlagsArr)).getBytes(AuthenticationConstants.ENCODING_UTF8);
    }

    private static byte[] stripEncodeVersionFromCipherText(byte[] bArr) throws ClientException {
        if (bArr.length < 1) {
            c6.f("Input blob is null or length < 1");
            return null;
        }
        String str = new String(bArr, AuthenticationConstants.ENCODING_UTF8);
        char cCharAt = str.charAt(0);
        int i = cCharAt - 'a';
        if (i <= 0) {
            throw new ClientException("data_malformed", xs1.h(i, "Encode version length: '", "' is not valid, it must be greater of equal to 0"), null);
        }
        int i2 = cCharAt - '`';
        if (i2 > str.length()) {
            q.i("data_malformed", "Length of encode version string (plus the length character) is longer than the CipherString itself. The data is malformed.", null);
            return null;
        }
        if (!str.substring(1, i2).equals("E1")) {
            q.i("data_malformed", "Unsupported encode version received. Encode version supported is: 'E1'", null);
            return null;
        }
        String strSubstring = str.substring(i2);
        Base64Flags[] base64FlagsArr = {Base64Flags.DEFAULT};
        int i3 = Base64Util.a;
        return LibraryInfoHelper.decode(strSubstring, base64FlagsArr);
    }

    public final byte[] decrypt(byte[] bArr) throws ClientException {
        String keyThumbPrint;
        try {
            byte[] bArrStripEncodeVersionFromCipherText = stripEncodeVersionFromCipherText(bArr);
            List<ISecretKeyProvider> keyProviderForDecryption = getKeyProviderForDecryption(bArr);
            if (keyProviderForDecryption.size() == 0) {
                l0.e("Cannot find a matching keyProvider.");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<ISecretKeyProvider> it = keyProviderForDecryption.iterator();
            while (it.hasNext()) {
                ISecretKeyProvider next = it.next();
                try {
                    return decryptWithSecretKey(bArrStripEncodeVersionFromCipherText, next);
                } catch (Throwable th) {
                    StringBuilder sb = new StringBuilder("Failed to decrypt with key:");
                    sb.append(next.getAlias());
                    sb.append(" thumbprint : ");
                    try {
                        keyThumbPrint = KeyUtil.getKeyThumbPrint(next.getKey());
                    } catch (Throwable th2) {
                        Logger.warn("KeyUtil:getKeyThumbPrint", "failed to load key:" + th2.getMessage());
                        keyThumbPrint = "UNKNOWN_THUMBPRINT";
                    }
                    sb.append(keyThumbPrint);
                    Logger.warn("StorageEncryptionManager#:decrypt", sb.toString());
                    arrayList.add(th);
                }
            }
            if (arrayList.size() == 1) {
                throw PropertyBagUtil.clientExceptionFromException((Throwable) arrayList.get(0));
            }
            ClientException clientException = new ClientException("decryption_failed", "Tried all decryption keys and decryption still fails.", null);
            clientException.getSuppressedException().addAll(arrayList);
            throw clientException;
        } catch (ClientException e) {
            Logger.verbose("StorageEncryptionManager#:decrypt", "Failed to strip encode version from cipherText, string might not be encrypted. Exception: ", e.getMessage());
            return bArr;
        }
    }

    public final byte[] encrypt(byte[] bArr) throws ClientException {
        String str;
        ISecretKeyProvider keyProviderForEncryption = getKeyProviderForEncryption();
        if (keyProviderForEncryption == null) {
            l0.e("Cannot find a matching keyProvider.");
            return null;
        }
        try {
            SecretKey key = keyProviderForEncryption.getKey();
            SecretKey hMacKey = KeyUtil.getHMacKey(key);
            byte[] bytes = keyProviderForEncryption.getKeyTypeIdentifier().getBytes(AuthenticationConstants.ENCODING_UTF8);
            byte[] bArrGenerate = ((AnonymousClass1) this.mGenerator).generate();
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArrGenerate);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            Mac mac = Mac.getInstance("HmacSHA256");
            cipher.init(1, key, ivParameterSpec);
            byte[] bArrDoFinal = cipher.doFinal(bArr);
            mac.init(hMacKey);
            mac.update(bytes);
            mac.update(bArrDoFinal);
            mac.update(bArrGenerate);
            byte[] bArrDoFinal2 = mac.doFinal();
            byte[] bArr2 = new byte[bytes.length + bArrDoFinal.length + 16 + bArrDoFinal2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArrDoFinal, 0, bArr2, bytes.length, bArrDoFinal.length);
            System.arraycopy(bArrGenerate, 0, bArr2, bytes.length + bArrDoFinal.length, 16);
            System.arraycopy(bArrDoFinal2, 0, bArr2, bytes.length + bArrDoFinal.length + 16, bArrDoFinal2.length);
            Logger.verbose("StorageEncryptionManager#:encrypt", "Finished encryption");
            return prefixWithEncodeVersion(bArr2);
        } catch (ClientException e) {
            throw e;
        } catch (InvalidAlgorithmParameterException e2) {
            e = e2;
            str = "invalid_algorithm_parameter";
            throw new ClientException(str, e.getMessage(), e);
        } catch (InvalidKeyException e3) {
            e = e3;
            str = "invalid_key";
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            str = "no_such_algorithm";
            throw new ClientException(str, e.getMessage(), e);
        } catch (BadPaddingException e5) {
            e = e5;
            str = "bad_padding";
            throw new ClientException(str, e.getMessage(), e);
        } catch (IllegalBlockSizeException e6) {
            e = e6;
            str = "invalid_block_size";
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchPaddingException e7) {
            e = e7;
            str = "no_such_padding";
            throw new ClientException(str, e.getMessage(), e);
        } catch (Throwable th) {
            e = th;
            str = "unknown_crypto_error";
            throw new ClientException(str, e.getMessage(), e);
        }
    }

    public abstract List<ISecretKeyProvider> getKeyProviderForDecryption(byte[] bArr) throws ClientException;

    public abstract ISecretKeyProvider getKeyProviderForEncryption() throws ClientException;
}
