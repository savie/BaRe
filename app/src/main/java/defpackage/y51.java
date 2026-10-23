package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class y51 {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        CRC32,
        CRC32C,
        CRC64NVME,
        SHA1,
        SHA256,
        MD5;

        public final z51 a() {
            if (this == CRC32) {
                return new b();
            }
            if (this == CRC32C) {
                return new c();
            }
            if (this == CRC64NVME) {
                return new d();
            }
            if (this == SHA1) {
                return new f();
            }
            if (this == SHA256) {
                return new g();
            }
            if (this == MD5) {
                return new e();
            }
            return null;
        }

        public final String b() {
            if (this == MD5) {
                return "Content-Md5";
            }
            return "x-amz-checksum-" + name().toLowerCase(Locale.US);
        }

        @Override // java.lang.Enum
        public final String toString() {
            return name().toLowerCase(Locale.US);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class b implements z51 {
        public final CRC32 a = new CRC32();

        @Override // defpackage.z51
        public final void reset() {
            this.a.reset();
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            int value = (int) this.a.getValue();
            return new byte[]{(byte) (value >>> 24), (byte) (value >>> 16), (byte) (value >>> 8), (byte) value};
        }

        public final String toString() {
            return "CRC32{" + y51.b(sum()) + "}";
        }

        @Override // defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            this.a.update(bArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class e implements z51 {
        public final MessageDigest a;

        public e() throws rg5 {
            try {
                this.a = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
                throw new rg5(e);
            }
        }

        @Override // defpackage.z51
        public final void reset() {
            this.a.reset();
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            return this.a.digest();
        }

        public final String toString() {
            return "MD5{" + y51.a(this.a.digest()) + "}";
        }

        @Override // defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            this.a.update(bArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class f implements z51 {
        public final MessageDigest a;

        public f() throws rg5 {
            try {
                this.a = MessageDigest.getInstance("SHA-1");
            } catch (NoSuchAlgorithmException e) {
                throw new rg5(e);
            }
        }

        @Override // defpackage.z51
        public final void reset() {
            this.a.reset();
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            return this.a.digest();
        }

        public final String toString() {
            return "SHA1{" + y51.b(this.a.digest()) + "}";
        }

        @Override // defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            this.a.update(bArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class g implements z51 {
        public final MessageDigest a;

        public g() throws rg5 {
            try {
                this.a = MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e) {
                throw new rg5(e);
            }
        }

        @Override // defpackage.z51
        public final void reset() {
            this.a.reset();
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            return this.a.digest();
        }

        public final String toString() {
            return "SHA256{" + y51.b(this.a.digest()) + "}";
        }

        @Override // defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            this.a.update(bArr, i, i2);
        }
    }

    private y51() {
    }

    public static String a(byte[] bArr) {
        return Base64.getEncoder().encodeToString(bArr);
    }

    public static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return sb.toString();
    }

    public static v64.c c(Map map, boolean z, boolean z2) {
        if (map == null) {
            return null;
        }
        v64.c cVar = new v64.c();
        for (Map.Entry entry : map.entrySet()) {
            byte[] bArrSum = ((z51) entry.getValue()).sum();
            if (entry.getKey() == a.SHA256) {
                if (z) {
                    cVar.i("X-Amz-Content-Sha256", b(bArrSum));
                }
                if (!z2) {
                }
            }
            cVar.i("x-amz-sdk-checksum-algorithm", ((a) entry.getKey()).toString());
            cVar.i(((a) entry.getKey()).b(), a(bArrSum));
        }
        return cVar;
    }

    public static HashMap d(a[] aVarArr) {
        HashMap map;
        if (aVarArr != null) {
            map = null;
            for (a aVar : aVarArr) {
                if (aVar != null) {
                    if (map == null) {
                        map = new HashMap();
                    }
                    if (!map.containsKey(aVar)) {
                        map.put(aVar, aVar.a());
                    }
                }
            }
        } else {
            map = null;
        }
        if (map == null || map.size() == 0) {
            return null;
        }
        return map;
    }

    public static void e(HashMap map, ox0 ox0Var, RandomAccessFile randomAccessFile, Long l) {
        InputStream inputStream;
        if (map == null || map.size() == 0) {
            return;
        }
        if (ox0Var != null) {
            InputStream inputStreamQ0 = ox0Var.q0();
            l = Long.valueOf(ox0Var.d);
            inputStream = inputStreamQ0;
        } else {
            inputStream = null;
        }
        byte[] bArr = new byte[16384];
        long j = 0;
        while (j != l.longValue()) {
            try {
                int iMin = (int) Math.min(l.longValue() - j, 16384L);
                int i = randomAccessFile != null ? randomAccessFile.read(bArr, 0, iMin) : inputStream.read(bArr, 0, iMin);
                if (i < 0) {
                    throw new rg5("unexpected EOF");
                }
                if (i != 0) {
                    j += (long) i;
                    f(map, bArr, i);
                }
            } catch (IOException e2) {
                throw new rg5(e2);
            }
        }
    }

    public static void f(Map map, byte[] bArr, int i) {
        if (map == null || map.size() == 0) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            ((z51) ((Map.Entry) it.next()).getValue()).update(bArr, 0, i);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class c implements Checksum, z51 {
        public static final int[] b = new int[256];
        public int a = -1;

        static {
            for (int i = 0; i < 256; i++) {
                int i2 = i;
                for (int i3 = 0; i3 < 8; i3++) {
                    i2 = ((i2 & 1) != 0 ? -2097792136 : 0) ^ (i2 >>> 1);
                }
                b[i] = i2;
            }
        }

        @Override // java.util.zip.Checksum
        public final long getValue() {
            return (((long) this.a) ^ 4294967295L) & 4294967295L;
        }

        @Override // java.util.zip.Checksum, defpackage.z51
        public final void reset() {
            this.a = -1;
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            int value = (int) getValue();
            return new byte[]{(byte) (value >>> 24), (byte) (value >>> 16), (byte) (value >>> 8), (byte) value};
        }

        public final String toString() {
            return "CRC32C{" + y51.b(sum()) + "}";
        }

        @Override // java.util.zip.Checksum
        public final void update(int i) {
            int i2 = this.a;
            this.a = b[(i ^ i2) & 255] ^ (i2 >>> 8);
        }

        @Override // java.util.zip.Checksum, defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            for (int i3 = i; i3 < i + i2; i3++) {
                update(bArr[i3]);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class d implements Checksum, z51 {
        public static final long[] b = new long[256];
        public static final long[][] c = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 256);
        public long a = 0;

        static {
            for (int i = 0; i < 256; i++) {
                long j = i;
                for (int i2 = 0; i2 < 8; i2++) {
                    j = (j & 1) == 1 ? (j >>> 1) ^ (-7319313487190308427L) : j >>> 1;
                }
                b[i] = j;
            }
            c[0] = b;
            for (int i3 = 0; i3 < 256; i3++) {
                long j2 = b[i3];
                for (int i4 = 1; i4 < 8; i4++) {
                    j2 = (j2 >>> 8) ^ b[((int) j2) & 255];
                    c[i4][i3] = j2;
                }
            }
        }

        @Override // java.util.zip.Checksum
        public final long getValue() {
            return this.a;
        }

        @Override // java.util.zip.Checksum, defpackage.z51
        public final void reset() {
            this.a = 0L;
        }

        @Override // defpackage.z51
        public final byte[] sum() {
            long j = this.a;
            return new byte[]{(byte) (j >>> 56), (byte) (j >>> 48), (byte) (j >>> 40), (byte) (j >>> 32), (byte) (j >>> 24), (byte) (j >>> 16), (byte) (j >>> 8), (byte) j};
        }

        public final String toString() {
            return "CRC64NVME{" + y51.b(sum()) + "}";
        }

        @Override // java.util.zip.Checksum, defpackage.z51
        public final void update(byte[] bArr, int i, int i2) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, i2);
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            int iPosition = byteBufferWrap.position();
            this.a = ~this.a;
            while (bArr.length >= 64 && bArr.length - iPosition > 8) {
                long j = byteBufferWrap.getLong() ^ this.a;
                this.a = j;
                long[][] jArr = c;
                this.a = jArr[0][(int) (j >>> 56)] ^ ((((((jArr[7][(int) (j & 255)] ^ jArr[6][(int) ((j >>> 8) & 255)]) ^ jArr[5][(int) ((j >>> 16) & 255)]) ^ jArr[4][(int) ((j >>> 24) & 255)]) ^ jArr[3][(int) ((j >>> 32) & 255)]) ^ jArr[2][(int) ((j >>> 40) & 255)]) ^ jArr[1][(int) (255 & (j >>> 48))]);
                iPosition = byteBufferWrap.position();
            }
            while (true) {
                long j2 = this.a;
                if (iPosition >= i2) {
                    this.a = ~j2;
                    return;
                }
                int i3 = (int) ((((long) bArr[iPosition]) ^ j2) & 255);
                this.a = (j2 >>> 8) ^ b[i3];
                iPosition++;
            }
        }

        @Override // java.util.zip.Checksum
        public final void update(int i) {
            update(new byte[]{(byte) i}, 0, 1);
        }
    }
}
