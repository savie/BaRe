package okhttp3.internal.http2;

import defpackage.hy0;
import defpackage.nw0;
import defpackage.pe4;
import defpackage.tf6;
import defpackage.x50;
import defpackage.y5;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Hpack {
    public static final Header[] a;
    public static final Map b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Reader {
        public final tf6 c;
        public int f;
        public int g;
        public int a = 4096;
        public final ArrayList b = new ArrayList();
        public Header[] d = new Header[8];
        public int e = 7;

        public Reader(Http2Reader.ContinuationSource continuationSource) {
            this.c = new tf6(continuationSource);
        }

        public final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.d.length;
                while (true) {
                    length--;
                    i2 = this.e;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.d[length];
                    header.getClass();
                    int i4 = header.c;
                    i -= i4;
                    this.g -= i4;
                    this.f--;
                    i3++;
                }
                Header[] headerArr = this.d;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f);
                this.e += i3;
            }
            return i3;
        }

        public final hy0 b(int i) throws IOException {
            if (i >= 0) {
                Header[] headerArr = Hpack.a;
                if (i <= headerArr.length - 1) {
                    return headerArr[i].a;
                }
            }
            int length = this.e + 1 + (i - Hpack.a.length);
            if (length >= 0) {
                Header[] headerArr2 = this.d;
                if (length < headerArr2.length) {
                    Header header = headerArr2[length];
                    header.getClass();
                    return header.a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        public final void c(Header header) {
            this.b.add(header);
            int i = header.c;
            int i2 = this.a;
            if (i > i2) {
                Header[] headerArr = this.d;
                x50.m0(headerArr, 0, headerArr.length);
                this.e = this.d.length - 1;
                this.f = 0;
                this.g = 0;
                return;
            }
            a((this.g + i) - i2);
            int i3 = this.f + 1;
            Header[] headerArr2 = this.d;
            if (i3 > headerArr2.length) {
                Header[] headerArr3 = new Header[headerArr2.length * 2];
                System.arraycopy(headerArr2, 0, headerArr3, headerArr2.length, headerArr2.length);
                this.e = this.d.length - 1;
                this.d = headerArr3;
            }
            int i4 = this.e;
            this.e = i4 - 1;
            this.d[i4] = header;
            this.f++;
            this.g += i;
        }

        public final hy0 d() {
            tf6 tf6Var = this.c;
            byte b = tf6Var.readByte();
            byte[] bArr = _UtilCommonKt.a;
            int i = b & 255;
            int i2 = 0;
            boolean z = (b & 128) == 128;
            long jE = e(i, 127);
            if (!z) {
                return tf6Var.o(jE);
            }
            nw0 nw0Var = new nw0();
            int[] iArr = Huffman.a;
            tf6Var.getClass();
            Huffman.Node node = Huffman.c;
            Huffman.Node node2 = node;
            int i3 = 0;
            for (long j = 0; j < jE; j++) {
                byte b2 = tf6Var.readByte();
                byte[] bArr2 = _UtilCommonKt.a;
                i2 = (i2 << 8) | (b2 & 255);
                i3 += 8;
                while (i3 >= 8) {
                    Huffman.Node[] nodeArr = node2.a;
                    nodeArr.getClass();
                    node2 = nodeArr[(i2 >>> (i3 - 8)) & 255];
                    node2.getClass();
                    if (node2.a == null) {
                        nw0Var.J(node2.b);
                        i3 -= node2.c;
                        node2 = node;
                    } else {
                        i3 -= 8;
                    }
                }
            }
            while (i3 > 0) {
                Huffman.Node[] nodeArr2 = node2.a;
                nodeArr2.getClass();
                Huffman.Node node3 = nodeArr2[(i2 << (8 - i3)) & 255];
                node3.getClass();
                int i4 = node3.c;
                if (node3.a != null || i4 > i3) {
                    break;
                }
                nw0Var.J(node3.b);
                i3 -= i4;
                node2 = node;
            }
            return nw0Var.o(nw0Var.b);
        }

        public final int e(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                byte b = this.c.readByte();
                byte[] bArr = _UtilCommonKt.a;
                int i5 = b & 255;
                if ((b & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (b & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Writer {
        public final nw0 a;
        public boolean c;
        public int g;
        public int h;
        public int b = Integer.MAX_VALUE;
        public int d = 4096;
        public Header[] e = new Header[8];
        public int f = 7;

        public Writer(nw0 nw0Var) {
            this.a = nw0Var;
        }

        public final void a(int i) {
            int i2;
            if (i > 0) {
                int length = this.e.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.e[length];
                    header.getClass();
                    i -= header.c;
                    int i4 = this.h;
                    Header header2 = this.e[length];
                    header2.getClass();
                    this.h = i4 - header2.c;
                    this.g--;
                    i3++;
                    length--;
                }
                Header[] headerArr = this.e;
                int i5 = i2 + 1;
                System.arraycopy(headerArr, i5, headerArr, i5 + i3, this.g);
                Header[] headerArr2 = this.e;
                int i6 = this.f + 1;
                Arrays.fill(headerArr2, i6, i6 + i3, (Object) null);
                this.f += i3;
            }
        }

        public final void b(Header header) {
            int i = header.c;
            int i2 = this.d;
            if (i > i2) {
                Header[] headerArr = this.e;
                x50.m0(headerArr, 0, headerArr.length);
                this.f = this.e.length - 1;
                this.g = 0;
                this.h = 0;
                return;
            }
            a((this.h + i) - i2);
            int i3 = this.g + 1;
            Header[] headerArr2 = this.e;
            if (i3 > headerArr2.length) {
                Header[] headerArr3 = new Header[headerArr2.length * 2];
                System.arraycopy(headerArr2, 0, headerArr3, headerArr2.length, headerArr2.length);
                this.f = this.e.length - 1;
                this.e = headerArr3;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            this.e[i4] = header;
            this.g++;
            this.h += i;
        }

        public final void c(hy0 hy0Var) throws EOFException {
            hy0Var.getClass();
            int[] iArr = Huffman.a;
            int iD = hy0Var.d();
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < iD; i++) {
                byte bI = hy0Var.i(i);
                byte[] bArr = _UtilCommonKt.a;
                j2 += (long) Huffman.b[bI & 255];
            }
            int i2 = (int) ((j2 + 7) >> 3);
            int iD2 = hy0Var.d();
            nw0 nw0Var = this.a;
            if (i2 >= iD2) {
                e(hy0Var.d(), 127, 0);
                nw0Var.D(hy0Var);
                return;
            }
            nw0 nw0Var2 = new nw0();
            int[] iArr2 = Huffman.a;
            int iD3 = hy0Var.d();
            int i3 = 0;
            for (int i4 = 0; i4 < iD3; i4++) {
                byte bI2 = hy0Var.i(i4);
                byte[] bArr2 = _UtilCommonKt.a;
                int i5 = bI2 & 255;
                int i6 = Huffman.a[i5];
                byte b = Huffman.b[i5];
                j = (j << b) | ((long) i6);
                i3 += b;
                while (i3 >= 8) {
                    i3 -= 8;
                    nw0Var2.J((int) (j >> i3));
                }
            }
            if (i3 > 0) {
                nw0Var2.J((int) ((j << (8 - i3)) | (255 >>> i3)));
            }
            hy0 hy0VarO = nw0Var2.o(nw0Var2.b);
            e(hy0VarO.d(), 127, 128);
            nw0Var.D(hy0VarO);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0069  */
        public final void d(ArrayList arrayList) throws EOFException {
            int length;
            int length2;
            if (this.c) {
                int i = this.b;
                if (i < this.d) {
                    e(i, 31, 32);
                }
                this.c = false;
                this.b = Integer.MAX_VALUE;
                e(this.d, 31, 32);
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Header header = (Header) arrayList.get(i2);
                hy0 hy0VarT = header.a.t();
                hy0 hy0Var = header.b;
                Integer num = (Integer) Hpack.b.get(hy0VarT);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (2 > length2 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else {
                        Header[] headerArr = Hpack.a;
                        if (pe4.d(headerArr[iIntValue].b, hy0Var)) {
                            length = length2;
                        } else if (pe4.d(headerArr[length2].b, hy0Var)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.e.length;
                    for (int i3 = this.f + 1; i3 < length3; i3++) {
                        Header header2 = this.e[i3];
                        header2.getClass();
                        if (pe4.d(header2.a, hy0VarT)) {
                            Header header3 = this.e[i3];
                            header3.getClass();
                            if (pe4.d(header3.b, hy0Var)) {
                                length2 = Hpack.a.length + (i3 - this.f);
                                break;
                            } else if (length == -1) {
                                length = (i3 - this.f) + Hpack.a.length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    e(length2, 127, 128);
                } else if (length == -1) {
                    this.a.J(64);
                    c(hy0VarT);
                    c(hy0Var);
                    b(header);
                } else {
                    hy0 hy0Var2 = Header.d;
                    hy0VarT.getClass();
                    hy0Var2.getClass();
                    if (!hy0VarT.l(0, hy0Var2, hy0Var2.d()) || pe4.d(Header.i, hy0VarT)) {
                        e(length, 63, 64);
                        c(hy0Var);
                        b(header);
                    } else {
                        e(length, 15, 0);
                        c(hy0Var);
                    }
                }
            }
        }

        public final void e(int i, int i2, int i3) {
            nw0 nw0Var = this.a;
            if (i < i2) {
                nw0Var.J(i | i3);
                return;
            }
            nw0Var.J(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                nw0Var.J(128 | (i4 & 127));
                i4 >>>= 7;
            }
            nw0Var.J(i4);
        }
    }

    static {
        Header header = new Header(Header.i, "");
        hy0 hy0Var = Header.f;
        Header header2 = new Header(hy0Var, "GET");
        Header header3 = new Header(hy0Var, "POST");
        hy0 hy0Var2 = Header.g;
        Header header4 = new Header(hy0Var2, "/");
        Header header5 = new Header(hy0Var2, "/index.html");
        hy0 hy0Var3 = Header.h;
        Header header6 = new Header(hy0Var3, "http");
        Header header7 = new Header(hy0Var3, "https");
        hy0 hy0Var4 = Header.e;
        Header[] headerArr = {header, header2, header3, header4, header5, header6, header7, new Header(hy0Var4, "200"), new Header(hy0Var4, "204"), new Header(hy0Var4, "206"), new Header(hy0Var4, "304"), new Header(hy0Var4, "400"), new Header(hy0Var4, "404"), new Header(hy0Var4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        a = headerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61, 1.0f);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(headerArr[i].a)) {
                linkedHashMap.put(headerArr[i].a, Integer.valueOf(i));
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        b = mapUnmodifiableMap;
    }

    public static void a(hy0 hy0Var) throws IOException {
        hy0Var.getClass();
        int iD = hy0Var.d();
        for (int i = 0; i < iD; i++) {
            byte bI = hy0Var.i(i);
            if (65 <= bI && bI < 91) {
                y5.m("PROTOCOL_ERROR response malformed: mixed case name: ".concat(hy0Var.w()));
                return;
            }
        }
    }
}
