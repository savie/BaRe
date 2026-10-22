package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ox0 extends OutputStream {
    public final long a;
    public final ArrayList b = new ArrayList();
    public int c = 0;
    public long d = 0;
    public boolean e = false;

    public ox0(long j) {
        if (j <= yr5.o) {
            this.a = j;
        } else {
            c6.f("Size cannot exceed 5GiB");
            throw null;
        }
    }

    public final void a() {
        ArrayList arrayList = this.b;
        int i = 0;
        if (arrayList.isEmpty()) {
            this.c = 0;
            arrayList.add(new a(i));
            return;
        }
        long j = this.d;
        int i2 = this.c + 1;
        if (j >= ((long) i2) * 2147483647L) {
            this.c = i2;
            if (i2 > arrayList.size() - 1) {
                arrayList.add(new a(i));
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.clear();
    }

    public final InputStream q0() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ByteArrayInputStream byteArrayInputStreamA = ((a) it.next()).a();
            if (byteArrayInputStreamA != null) {
                arrayList.add(byteArrayInputStreamA);
            }
        }
        int size = arrayList.size();
        if (size != 0) {
            return size != 1 ? new SequenceInputStream(Collections.enumeration(arrayList)) : (InputStream) arrayList.get(0);
        }
        return new ByteArrayInputStream(ki8.h);
    }

    public final void reset() throws rg5 {
        if (this.e) {
            throw new rg5("Cannot reset a closed stream");
        }
        this.d = 0L;
        this.c = 0;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).reset();
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.e) {
            y5.m("Stream is closed");
            return;
        }
        if (i2 > this.a - this.d) {
            y5.m("Exceeded total size limit");
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            a();
            a aVar = (a) this.b.get(this.c);
            int iMin = Math.min(i3, Integer.MAX_VALUE - aVar.size());
            aVar.write(bArr, (i2 - i3) + i, iMin);
            this.d += (long) iMin;
            i3 -= iMin;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a extends ByteArrayOutputStream {
        private a() {
        }

        public final ByteArrayInputStream a() {
            if (((ByteArrayOutputStream) this).count > 0) {
                return new ByteArrayInputStream(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            }
            return null;
        }

        public /* synthetic */ a(int i) {
            this();
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (this.e) {
            y5.m("Stream is closed");
        } else {
            if (this.d < this.a) {
                a();
                ((a) this.b.get(this.c)).write(i);
                this.d++;
                return;
            }
            y5.m("Exceeded total size limit");
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }
}
