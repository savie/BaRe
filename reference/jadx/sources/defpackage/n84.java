package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n84 {
    public static final /* synthetic */ int a = 0;

    static {
        char c = File.separatorChar;
        System.lineSeparator();
        sl7.b.getClass();
        sl7.a.getClass();
    }

    public static void a(int i, int i2, int i3) {
        if ((i | i2 | i3) < 0 || i3 - i2 < i) {
            throw new IndexOutOfBoundsException(String.format("Range [%s, %<s + %s) out of bounds for length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static long c(InputStream inputStream, long j) {
        final l84 l84VarA = l84.a();
        try {
            Objects.requireNonNull(l84VarA);
            long jD = d(inputStream, j, new Supplier() { // from class: k84
                @Override // java.util.function.Supplier
                public final Object get() {
                    byte[] bArr = l84VarA.a;
                    return bArr != null ? bArr : (byte[]) ((Object[]) l84.b.get())[1];
                }
            });
            l84VarA.close();
            return jD;
        } catch (Throwable th) {
            if (l84VarA != null) {
                try {
                    l84VarA.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static long d(InputStream inputStream, long j, Supplier supplier) {
        if (j < 0) {
            c6.f(u48.l(j, "Skip count must be non-negative, actual: "));
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            byte[] bArr = (byte[]) supplier.get();
            long j3 = inputStream.read(bArr, 0, (int) Math.min(j2, bArr.length));
            if (j3 < 0) {
                break;
            }
            j2 -= j3;
        }
        return j - j2;
    }

    public static void e(String str, OutputStream outputStream, Charset charset) throws IOException {
        if (str != null) {
            WritableByteChannel writableByteChannelNewChannel = Channels.newChannel(outputStream);
            int i = g51.a;
            if (charset == null) {
                charset = Charset.defaultCharset();
            }
            writableByteChannelNewChannel.write(charset.encode(str));
        }
    }

    public static void f(ArrayList arrayList, OutputStream outputStream, Charset charset) throws IOException {
        if (arrayList == null) {
            return;
        }
        String strLineSeparator = System.lineSeparator();
        if (StandardCharsets.UTF_16.equals(charset)) {
            charset = StandardCharsets.UTF_16BE;
        }
        byte[] bytes = strLineSeparator.getBytes(charset);
        for (Object obj : arrayList) {
            if (obj != null) {
                e(obj.toString(), outputStream, charset);
            }
            outputStream.write(bytes);
        }
    }
}
