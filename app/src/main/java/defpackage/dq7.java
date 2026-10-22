package defpackage;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dq7 extends Reader {
    public final ArrayList a;
    public boolean b = false;
    public int c;
    public int e = this.c;
    public int d;
    public int f = this.d;
    public boolean k = false;

    public dq7() {
        this.a = null;
        this.a = new ArrayList();
    }

    public final long a(long j) {
        long j2 = 0;
        while (this.d < this.a.size() && j2 < j) {
            String strG = g();
            long j3 = j - j2;
            long length = strG == null ? 0 : strG.length() - this.c;
            if (j3 < length) {
                this.c = (int) (((long) this.c) + j3);
                j2 += j3;
            } else {
                j2 += length;
                this.c = 0;
                this.d++;
            }
        }
        return j2;
    }

    public final void b() throws IOException {
        if (this.b) {
            y5.m("Stream already closed");
        } else {
            if (this.k) {
                return;
            }
            y5.m("Reader needs to be frozen before read operations can be called");
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        b();
        this.b = true;
    }

    public final String g() {
        int i = this.d;
        ArrayList arrayList = this.a;
        if (i < arrayList.size()) {
            return (String) arrayList.get(this.d);
        }
        return null;
    }

    @Override // java.io.Reader
    public final void mark(int i) throws IOException {
        b();
        this.e = this.c;
        this.f = this.d;
    }

    @Override // java.io.Reader
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.lang.Readable
    public final int read(CharBuffer charBuffer) throws IOException {
        b();
        int iRemaining = charBuffer.remaining();
        String strG = g();
        int i = 0;
        while (iRemaining > 0 && strG != null) {
            int iMin = Math.min(strG.length() - this.c, iRemaining);
            String str = (String) this.a.get(this.d);
            int i2 = this.c;
            charBuffer.put(str, i2, i2 + iMin);
            iRemaining -= iMin;
            i += iMin;
            a(iMin);
            strG = g();
        }
        if (i > 0 || strG != null) {
            return i;
        }
        return -1;
    }

    @Override // java.io.Reader
    public final boolean ready() throws IOException {
        b();
        return true;
    }

    @Override // java.io.Reader
    public final void reset() {
        this.c = this.e;
        this.d = this.f;
    }

    @Override // java.io.Reader
    public final long skip(long j) throws IOException {
        b();
        return a(j);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        return sb.toString();
    }

    @Override // java.io.Reader
    public final int read() throws IOException {
        b();
        String strG = g();
        if (strG == null) {
            return -1;
        }
        char cCharAt = strG.charAt(this.c);
        a(1L);
        return cCharAt;
    }

    @Override // java.io.Reader
    public final int read(char[] cArr, int i, int i2) throws IOException {
        b();
        String strG = g();
        int i3 = 0;
        while (strG != null && i3 < i2) {
            String strG2 = g();
            int iMin = Math.min(strG2 == null ? 0 : strG2.length() - this.c, i2 - i3);
            int i4 = this.c;
            strG.getChars(i4, i4 + iMin, cArr, i + i3);
            i3 += iMin;
            a(iMin);
            strG = g();
        }
        if (i3 > 0 || strG != null) {
            return i3;
        }
        return -1;
    }
}
