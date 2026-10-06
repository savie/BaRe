package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface Compression {
    public static final int DEFLATER = 1;
    public static final int INFLATER = 0;

    byte[] compress(byte[] bArr, int i, int[] iArr);

    void init(int i, int i2);

    default void init(int i, int i2, Session session) {
        init(i, i2);
    }

    byte[] uncompress(byte[] bArr, int i, int[] iArr);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class InflaterException extends RuntimeException {
        public InflaterException() {
        }

        public InflaterException(String str) {
            super(str);
        }

        public InflaterException(String str, Throwable th) {
            super(str, th);
        }
    }

    default void end() {
    }
}
