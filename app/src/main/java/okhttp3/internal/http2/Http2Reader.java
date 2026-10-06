package okhttp3.internal.http2;

import defpackage.c6;
import defpackage.dj7;
import defpackage.el1;
import defpackage.f48;
import defpackage.fz5;
import defpackage.hy0;
import defpackage.ij7;
import defpackage.l73;
import defpackage.ld4;
import defpackage.lx;
import defpackage.nw0;
import defpackage.tf6;
import defpackage.x50;
import defpackage.xs1;
import defpackage.y5;
import defpackage.zw0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.concurrent.TaskQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http2Reader implements Closeable {
    public static final Logger d;
    public final zw0 a;
    public final ContinuationSource b;
    public final Hpack.Reader c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static int a(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            y5.m(dj7.i("PROTOCOL_ERROR padding ", i3, i, " > remaining length "));
            return 0;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface Handler {
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        logger.getClass();
        d = logger;
    }

    public Http2Reader(zw0 zw0Var) {
        zw0Var.getClass();
        this.a = zw0Var;
        ContinuationSource continuationSource = new ContinuationSource(zw0Var);
        this.b = continuationSource;
        this.c = new Hpack.Reader(continuationSource);
    }

    /* JADX WARN: Code duplicated, block: B:172:0x0265  */
    /* JADX WARN: Code duplicated, block: B:174:0x0269  */
    /* JADX WARN: Code duplicated, block: B:224:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0115  */
    /* JADX WARN: Code duplicated, block: B:95:0x0143  */
    public final boolean a(boolean z, Http2Connection.ReaderRunnable readerRunnable) throws Exception {
        int i;
        hy0 hy0VarO;
        Http2Connection http2Connection;
        Logger logger = d;
        zw0 zw0Var = this.a;
        try {
            zw0Var.j0(9L);
            int iM = _UtilCommonKt.m(zw0Var);
            if (iM > 16384) {
                y5.m(fz5.j(iM, "FRAME_SIZE_ERROR: "));
                return false;
            }
            int i2 = zw0Var.readByte() & 255;
            byte b = zw0Var.readByte();
            int i3 = b & 255;
            int i4 = zw0Var.readInt() & Integer.MAX_VALUE;
            int i5 = 8;
            if (i2 != 8 && logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.b(true, i4, iM, i2, i3));
            }
            if (z && i2 != 4) {
                c6.k(Http2.a(i2), "Expected a SETTINGS frame but was ");
                return false;
            }
            ErrorCode errorCode = null;
            switch (i2) {
                case 0:
                    if (i4 == 0) {
                        y5.m("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                        return false;
                    }
                    boolean z2 = (b & 1) != 0;
                    if ((b & 32) != 0) {
                        y5.m("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                        return false;
                    }
                    int i6 = (b & 8) != 0 ? zw0Var.readByte() & 255 : 0;
                    readerRunnable.b(z2, i4, zw0Var, Companion.a(iM, i3, i6));
                    zw0Var.skip(i6);
                    return true;
                case 1:
                    if (i4 == 0) {
                        y5.m("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                        return false;
                    }
                    boolean z3 = (b & 1) != 0;
                    int i7 = (b & 8) != 0 ? zw0Var.readByte() & 255 : 0;
                    if ((b & 32) != 0) {
                        g(readerRunnable, i4);
                        iM -= 5;
                    }
                    readerRunnable.c(i4, b(Companion.a(iM, i3, i7), i7, i3, i4), z3);
                    return true;
                case 2:
                    if (iM != 5) {
                        y5.m(xs1.h(iM, "TYPE_PRIORITY length: ", " != 5"));
                        return false;
                    }
                    if (i4 != 0) {
                        g(readerRunnable, i4);
                        return true;
                    }
                    y5.m("TYPE_PRIORITY streamId == 0");
                    return false;
                case 3:
                    if (iM != 4) {
                        y5.m(xs1.h(iM, "TYPE_RST_STREAM length: ", " != 4"));
                        return false;
                    }
                    if (i4 == 0) {
                        y5.m("TYPE_RST_STREAM streamId == 0");
                        return false;
                    }
                    int i8 = zw0Var.readInt();
                    ErrorCode.b.getClass();
                    for (ErrorCode errorCode2 : ErrorCode.values()) {
                        if (errorCode2.a == i8) {
                            errorCode = errorCode2;
                            if (errorCode != null) {
                                readerRunnable.g(i4, errorCode);
                                return true;
                            }
                            y5.m(fz5.j(i8, "TYPE_RST_STREAM unexpected error code: "));
                            return false;
                        }
                    }
                    if (errorCode != null) {
                        readerRunnable.g(i4, errorCode);
                        return true;
                    }
                    y5.m(fz5.j(i8, "TYPE_RST_STREAM unexpected error code: "));
                    return false;
                case 4:
                    if (i4 != 0) {
                        y5.m("TYPE_SETTINGS streamId != 0");
                        return false;
                    }
                    if ((b & 1) != 0) {
                        if (iM != 0) {
                            y5.m("FRAME_SIZE_ERROR ack frame should be empty!");
                            return false;
                        }
                        return true;
                    }
                    if (iM % 6 != 0) {
                        y5.m(fz5.j(iM, "TYPE_SETTINGS length % 6 != 0: "));
                        return false;
                    }
                    Settings settings = new Settings();
                    ld4 ld4VarD = l73.D(l73.F(0, iM), 6);
                    int i9 = ld4VarD.a;
                    int i10 = ld4VarD.b;
                    int i11 = ld4VarD.c;
                    if ((i11 > 0 && i9 <= i10) || (i11 < 0 && i10 <= i9)) {
                        while (true) {
                            short s = zw0Var.readShort();
                            byte[] bArr = _UtilCommonKt.a;
                            int i12 = s & 65535;
                            i = zw0Var.readInt();
                            if (i12 != 2) {
                                if (i12 != 4) {
                                    if (i12 == 5 && (i < 16384 || i > 16777215)) {
                                    }
                                } else if (i < 0) {
                                    y5.m("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                    return false;
                                }
                            } else if (i != 0 && i != 1) {
                                y5.m("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                return false;
                            }
                            settings.b(i12, i);
                            if (i9 != i10) {
                                i9 += i11;
                            }
                        }
                        y5.m(fz5.j(i, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
                        return false;
                    }
                    Http2Connection http2Connection2 = Http2Connection.this;
                    TaskQueue.c(http2Connection2.n, dj7.n(new StringBuilder(), http2Connection2.c, " applyAndAckSettings"), new lx(i5, readerRunnable, settings), 6);
                    return true;
                case 5:
                    if (i4 == 0) {
                        y5.m("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                        return false;
                    }
                    int i13 = (b & 8) != 0 ? zw0Var.readByte() & 255 : 0;
                    readerRunnable.f(zw0Var.readInt() & Integer.MAX_VALUE, b(Companion.a(iM - 4, i3, i13), i13, i3, i4));
                    return true;
                case 6:
                    if (iM != 8) {
                        y5.m(fz5.j(iM, "TYPE_PING length != 8: "));
                        return false;
                    }
                    if (i4 == 0) {
                        readerRunnable.e(zw0Var.readInt(), zw0Var.readInt(), (b & 1) != 0);
                        return true;
                    }
                    y5.m("TYPE_PING streamId != 0");
                    return false;
                case 7:
                    if (iM < 8) {
                        y5.m(fz5.j(iM, "TYPE_GOAWAY length < 8: "));
                        return false;
                    }
                    if (i4 != 0) {
                        y5.m("TYPE_GOAWAY streamId != 0");
                        return false;
                    }
                    int i14 = zw0Var.readInt();
                    int i15 = zw0Var.readInt();
                    int i16 = iM - 8;
                    ErrorCode.b.getClass();
                    for (ErrorCode errorCode3 : ErrorCode.values()) {
                        if (errorCode3.a == i15) {
                            errorCode = errorCode3;
                            if (errorCode != null) {
                                y5.m(fz5.j(i15, "TYPE_GOAWAY unexpected error code: "));
                                return false;
                            }
                            hy0VarO = hy0.d;
                            if (i16 > 0) {
                                hy0VarO = zw0Var.o(i16);
                            }
                            hy0VarO.getClass();
                            hy0VarO.d();
                            http2Connection = Http2Connection.this;
                            synchronized (http2Connection) {
                                Object[] array = http2Connection.b.values().toArray(new Http2Stream[0]);
                                http2Connection.f = true;
                            }
                            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                                if (http2Stream.a <= i14 && http2Stream.h()) {
                                    ErrorCode errorCode4 = ErrorCode.REFUSED_STREAM;
                                    synchronized (http2Stream) {
                                        if (http2Stream.g() == null) {
                                            http2Stream.t = errorCode4;
                                            http2Stream.notifyAll();
                                        }
                                        break;
                                    }
                                    Http2Connection.this.g(http2Stream.a);
                                }
                            }
                            return true;
                        }
                    }
                    if (errorCode != null) {
                        y5.m(fz5.j(i15, "TYPE_GOAWAY unexpected error code: "));
                        return false;
                    }
                    hy0VarO = hy0.d;
                    if (i16 > 0) {
                        hy0VarO = zw0Var.o(i16);
                    }
                    hy0VarO.getClass();
                    hy0VarO.d();
                    http2Connection = Http2Connection.this;
                    synchronized (http2Connection) {
                        Object[] array2 = http2Connection.b.values().toArray(new Http2Stream[0]);
                        http2Connection.f = true;
                        while (i < r2) {
                            if (http2Stream.a <= i14) {
                            }
                        }
                        return true;
                    }
                case 8:
                    try {
                        if (iM != 4) {
                            throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + iM);
                        }
                        long j = 2147483647L & ((long) zw0Var.readInt());
                        if (j == 0) {
                            throw new IOException("windowSizeIncrement was 0");
                        }
                        if (logger.isLoggable(Level.FINE)) {
                            logger.fine(Http2.c(true, i4, iM, j));
                        }
                        Http2Connection http2Connection3 = Http2Connection.this;
                        if (i4 == 0) {
                            synchronized (http2Connection3) {
                                http2Connection3.N += j;
                                http2Connection3.notifyAll();
                            }
                            return true;
                        }
                        Http2Stream http2StreamB = http2Connection3.b(i4);
                        if (http2StreamB != null) {
                            synchronized (http2StreamB) {
                                http2StreamB.e += j;
                                if (j > 0) {
                                    http2StreamB.notifyAll();
                                }
                                break;
                            }
                            return true;
                        }
                        return true;
                    } catch (Exception e) {
                        logger.fine(Http2.b(true, i4, iM, 8, i3));
                        throw e;
                    }
                default:
                    zw0Var.skip(iM);
                    return true;
            }
        } catch (EOFException unused) {
        }
    }

    public final List b(int i, int i2, int i3, int i4) throws IOException {
        ContinuationSource continuationSource = this.b;
        continuationSource.e = i;
        continuationSource.b = i;
        continuationSource.f = i2;
        continuationSource.c = i3;
        continuationSource.d = i4;
        Hpack.Reader reader = this.c;
        tf6 tf6Var = reader.c;
        ArrayList arrayList = reader.b;
        while (!tf6Var.x()) {
            byte b = tf6Var.readByte();
            byte[] bArr = _UtilCommonKt.a;
            int i5 = b & 255;
            if (i5 == 128) {
                y5.m("index == 0");
                return null;
            }
            if ((b & 128) == 128) {
                int iE = reader.e(i5, 127);
                int i6 = iE - 1;
                if (i6 >= 0) {
                    Header[] headerArr = Hpack.a;
                    if (i6 <= headerArr.length - 1) {
                        arrayList.add(headerArr[i6]);
                    }
                }
                int length = reader.e + 1 + (i6 - Hpack.a.length);
                if (length >= 0) {
                    Header[] headerArr2 = reader.d;
                    if (length < headerArr2.length) {
                        Header header = headerArr2[length];
                        header.getClass();
                        arrayList.add(header);
                    }
                }
                y5.m(fz5.j(iE, "Header index too large "));
                return null;
            }
            if (i5 == 64) {
                Header[] headerArr3 = Hpack.a;
                hy0 hy0VarD = reader.d();
                Hpack.a(hy0VarD);
                reader.c(new Header(hy0VarD, reader.d()));
            } else if ((b & 64) == 64) {
                reader.c(new Header(reader.b(reader.e(i5, 63) - 1), reader.d()));
            } else if ((b & 32) == 32) {
                int iE2 = reader.e(i5, 31);
                reader.a = iE2;
                if (iE2 < 0 || iE2 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + reader.a);
                }
                int i7 = reader.g;
                if (iE2 < i7) {
                    if (iE2 == 0) {
                        Header[] headerArr4 = reader.d;
                        x50.m0(headerArr4, 0, headerArr4.length);
                        reader.e = reader.d.length - 1;
                        reader.f = 0;
                        reader.g = 0;
                    } else {
                        reader.a(i7 - iE2);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                Header[] headerArr5 = Hpack.a;
                hy0 hy0VarD2 = reader.d();
                Hpack.a(hy0VarD2);
                arrayList.add(new Header(hy0VarD2, reader.d()));
            } else {
                arrayList.add(new Header(reader.b(reader.e(i5, 15) - 1), reader.d()));
            }
        }
        List listV1 = el1.v1(arrayList);
        arrayList.clear();
        return listV1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    public final void g(Http2Connection.ReaderRunnable readerRunnable, int i) {
        zw0 zw0Var = this.a;
        zw0Var.readInt();
        zw0Var.readByte();
        byte[] bArr = _UtilCommonKt.a;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class ContinuationSource implements ij7 {
        public final zw0 a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;

        public ContinuationSource(zw0 zw0Var) {
            zw0Var.getClass();
            this.a = zw0Var;
        }

        @Override // defpackage.ij7
        public final long H(nw0 nw0Var, long j) throws IOException {
            int i;
            int i2;
            nw0Var.getClass();
            do {
                int i3 = this.e;
                zw0 zw0Var = this.a;
                if (i3 == 0) {
                    zw0Var.skip(this.f);
                    this.f = 0;
                    if ((this.c & 4) == 0) {
                        i = this.d;
                        int iM = _UtilCommonKt.m(zw0Var);
                        this.e = iM;
                        this.b = iM;
                        int i4 = zw0Var.readByte() & 255;
                        this.c = zw0Var.readByte() & 255;
                        Logger logger = Http2Reader.d;
                        if (logger.isLoggable(Level.FINE)) {
                            hy0 hy0Var = Http2.a;
                            logger.fine(Http2.b(true, this.d, this.b, i4, this.c));
                        }
                        i2 = zw0Var.readInt() & Integer.MAX_VALUE;
                        this.d = i2;
                        if (i4 != 9) {
                            throw new IOException(i4 + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long jH = zw0Var.H(nw0Var, Math.min(j, i3));
                    if (jH != -1) {
                        this.e -= (int) jH;
                        return jH;
                    }
                }
                return -1L;
            } while (i2 == i);
            y5.m("TYPE_CONTINUATION streamId changed");
            return 0L;
        }

        @Override // defpackage.ij7
        public final f48 d() {
            return this.a.d();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }
}
