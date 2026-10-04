package com.facebook.crypto.cipher;

/** Reference-compatible JNI surface for Facebook Conceal's NativeGCMCipher. */
public final class NativeGCMCipher {
    private static final int STATE_NEW = 1, STATE_ENCRYPT = 2, STATE_DECRYPT = 3,
            STATE_FINAL_ENCRYPT = 4, STATE_FINAL_DECRYPT = 5;
    private static volatile boolean nativeLoaded;
    private int state = STATE_NEW;
    private long mCtxPtr;

    public NativeGCMCipher() { ensureNative(); }

    private static void ensureNative() {
        if (nativeLoaded) return;
        synchronized (NativeGCMCipher.class) {
            if (nativeLoaded) return;
            System.loadLibrary("conceal");
            nativeLoaded = true;
        }
    }

    private native int nativeDecryptFinal(byte[] bytes, int length);
    private native int nativeDecryptInit(byte[] key, byte[] iv);
    private native int nativeDestroy();
    private native int nativeEncryptFinal(byte[] bytes, int length);
    private native int nativeEncryptInit(byte[] key, byte[] iv);
    private static native int nativeFailure();
    private native int nativeGetCipherBlockSize();
    private native int nativeUpdate(byte[] input, int offset, int length, byte[] output, int outputOffset);
    private native int nativeUpdateAad(byte[] aad, int length);

    public void decryptInit(byte[] key, byte[] iv) {
        check(state == STATE_NEW, "Cipher has already been initialized");
        ensureNative();
        if (nativeDecryptInit(key, iv) == nativeFailure()) throw new IllegalStateException("decryptInit");
        state = STATE_DECRYPT;
    }

    public void encryptInit(byte[] key, byte[] iv) {
        check(state == STATE_NEW, "Cipher has already been initialized");
        ensureNative();
        if (nativeEncryptInit(key, iv) == nativeFailure()) throw new IllegalStateException("encryptInit");
        state = STATE_ENCRYPT;
    }

    public void updateAad(byte[] aad) {
        check(state == STATE_DECRYPT || state == STATE_ENCRYPT, "Cipher has not been initialized");
        if (nativeUpdateAad(aad, aad.length) < 0) throw new IllegalStateException("updateAad");
    }

    public int update(byte[] input, int offset, int length, byte[] output, int outputOffset) {
        check(state == STATE_DECRYPT || state == STATE_ENCRYPT, "Cipher has not been initialized");
        int result = nativeUpdate(input, offset, length, output, outputOffset);
        if (result < 0) throw new IllegalStateException("update");
        return result;
    }

    public int getCipherBlockSize() {
        check(state == STATE_DECRYPT || state == STATE_ENCRYPT, "Cipher has not been initialized");
        return nativeGetCipherBlockSize();
    }

    public int encryptFinal(byte[] output) {
        check(state == STATE_ENCRYPT, "Cipher has not been initialized");
        state = STATE_FINAL_ENCRYPT;
        int result = nativeEncryptFinal(output, output.length);
        if (result == nativeFailure()) throw new IllegalStateException("encryptFinal: " + output.length);
        return result;
    }

    public void decryptFinal(byte[] tag) {
        check(state == STATE_DECRYPT, "Cipher has not been initialized");
        state = STATE_FINAL_DECRYPT;
        if (nativeDecryptFinal(tag, tag.length) == nativeFailure()) {
            throw new SecurityException("The message could not be decrypted successfully.");
        }
    }

    public void destroy() {
        check(state == STATE_FINAL_ENCRYPT || state == STATE_FINAL_DECRYPT, "Cipher has not been finalized");
        if (nativeDestroy() == nativeFailure()) throw new IllegalStateException("destroy");
        state = STATE_NEW;
    }

    private static void check(boolean condition, String message) {
        if (!condition) throw new IllegalStateException(message);
    }
}
