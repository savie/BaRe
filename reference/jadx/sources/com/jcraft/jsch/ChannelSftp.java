package com.jcraft.jsch;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.a6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.l0;
import defpackage.xs1;
import defpackage.y5;
import defpackage.z5;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Hashtable;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChannelSftp extends ChannelSession {
    public static final int APPEND = 2;
    public static final int OVERWRITE = 0;
    public static final int RESUME = 1;
    public static final int SSH_FX_BAD_MESSAGE = 5;
    public static final int SSH_FX_CONNECTION_LOST = 7;
    public static final int SSH_FX_EOF = 1;
    public static final int SSH_FX_FAILURE = 4;
    public static final int SSH_FX_NO_CONNECTION = 6;
    public static final int SSH_FX_NO_SUCH_FILE = 2;
    public static final int SSH_FX_OK = 0;
    public static final int SSH_FX_OP_UNSUPPORTED = 8;
    public static final int SSH_FX_PERMISSION_DENIED = 3;
    public static final String a0 = File.separator;
    public static final char b0;
    public static final boolean c0;
    public Buffer I;
    public Packet J;
    public Buffer K;
    public Packet L;
    public String T;
    public String U;
    public String V;
    public int G = 1;
    public final int[] H = new int[1];
    public int M = 3;
    public final String N = String.valueOf(3);
    public Hashtable O = null;
    public InputStream P = null;
    public boolean Q = false;
    public boolean R = false;
    public boolean S = false;
    public Charset W = StandardCharsets.UTF_8;
    public boolean X = true;
    public boolean Y = true;
    public RequestQueue Z = new RequestQueue(16);

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Header {
        public int a;
        public int b;
        public int c;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class LsEntry implements Comparable<LsEntry> {
        public final String a;
        public final String b;
        public final SftpATTRS c;

        public LsEntry(String str, String str2, SftpATTRS sftpATTRS) {
            this.a = str;
            this.b = str2;
            this.c = sftpATTRS;
        }

        @Override // java.lang.Comparable
        public final int compareTo(LsEntry lsEntry) {
            return this.a.compareTo(lsEntry.a);
        }

        public final SftpATTRS getAttrs() {
            return this.c;
        }

        public final String getFilename() {
            return this.a;
        }

        public final String getLongname() {
            return this.b;
        }

        public final String toString() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface LsEntrySelector {
        public static final int BREAK = 1;
        public static final int CONTINUE = 0;

        int select(LsEntry lsEntry);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class RequestQueue {
        public final Request[] a;
        public int b;
        public int c;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public class OutOfOrderException extends Exception {
            public final long a;

            public OutOfOrderException(RequestQueue requestQueue, long j) {
                this.a = j;
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public class Request {
            public int a;
            public long b;
            public long c;

            public Request(RequestQueue requestQueue) {
            }
        }

        public RequestQueue(int i) {
            this.a = null;
            this.a = new Request[i];
            int i2 = 0;
            while (true) {
                Request[] requestArr = this.a;
                if (i2 >= requestArr.length) {
                    this.c = 0;
                    this.b = 0;
                    return;
                } else {
                    requestArr[i2] = new Request();
                    i2++;
                }
            }
        }

        public final void a(Buffer buffer, Header header) throws IOException {
            int i = this.c;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = ChannelSftp.SSH_FX_OK;
                ChannelSftp channelSftp = ChannelSftp.this;
                channelSftp.A(buffer, header);
                int i4 = header.a;
                int i5 = 0;
                while (true) {
                    Request[] requestArr = this.a;
                    if (i5 >= requestArr.length) {
                        break;
                    }
                    Request request = requestArr[i5];
                    if (request.a == header.c) {
                        request.a = 0;
                        break;
                    }
                    i5++;
                }
                channelSftp.P(i4);
            }
            this.c = 0;
            this.b = 0;
        }

        public final Request b(int i) throws OutOfOrderException, SftpException {
            this.c--;
            int i2 = this.b;
            int i3 = i2 + 1;
            this.b = i3;
            Request[] requestArr = this.a;
            if (i3 == requestArr.length) {
                this.b = 0;
            }
            Request request = requestArr[i2];
            if (request.a == i) {
                request.a = 0;
                return request;
            }
            long j = Long.MAX_VALUE;
            for (Request request2 : requestArr) {
                if (request2.a != 0) {
                    long j2 = request2.b;
                    if (j > j2) {
                        j = j2;
                    }
                }
            }
            for (Request request3 : requestArr) {
                if (request3.a == i) {
                    request3.a = 0;
                    throw new OutOfOrderException(this, j);
                }
            }
            throw new SftpException(4, fz5.j(i, "RequestQueue: unknown request id "));
        }
    }

    static {
        char c = File.separatorChar;
        b0 = c;
        c0 = ((byte) c) == 92;
    }

    public ChannelSftp() {
        this.d = 2097152;
        this.e = 2097152;
        this.f = 32768;
    }

    public static boolean B(String str, byte[][] bArr) {
        int i;
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArr2 = Util.a;
        byte[] bytes = str.getBytes(charset);
        if (bArr != null) {
            bArr[0] = bytes;
        }
        int length = bytes.length;
        int i2 = 0;
        while (i2 < length) {
            byte b = bytes[i2];
            if (b == 42 || b == 63) {
                return true;
            }
            if (b == 92 && (i = i2 + 1) < length) {
                i2 = i;
            }
            i2++;
        }
        return false;
    }

    public static Vector y(String str) {
        boolean z;
        byte b;
        byte[] bArr;
        byte b2;
        Vector vector = new Vector();
        byte[] bArrP = Util.p(str, StandardCharsets.UTF_8);
        int length = bArrP.length - 1;
        while (true) {
            z = c0;
            if (length < 0) {
                break;
            }
            byte b3 = bArrP[length];
            if (b3 == 42 || b3 == 63) {
                if (z || length <= 0 || bArrP[length - 1] != 92) {
                    break;
                }
                int i = length - 1;
                if (i <= 0 || bArrP[length - 2] != 92) {
                    length = i;
                    break;
                }
                length -= 3;
            } else {
                length--;
            }
        }
        if (length < 0) {
            if (!z) {
                str = Util.s(str);
            }
            vector.addElement(str);
            return vector;
        }
        while (true) {
            b = b0;
            if (length < 0 || (b2 = bArrP[length]) == b || (z && b2 == 47)) {
                break;
            }
            length--;
        }
        if (length < 0) {
            if (!z) {
                str = Util.s(str);
            }
            vector.addElement(str);
            return vector;
        }
        if (length == 0) {
            bArr = new byte[]{b};
        } else {
            bArr = new byte[length];
            System.arraycopy(bArrP, 0, bArr, 0, length);
        }
        int length2 = (bArrP.length - length) - 1;
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArrP, length + 1, bArr2, 0, length2);
        try {
            Charset charset = StandardCharsets.UTF_8;
            String[] list = new File(new String(bArr, 0, bArr.length, charset)).list();
            String str2 = new String(bArr, 0, bArr.length, charset) + a0;
            for (int i2 = 0; i2 < list.length; i2++) {
                if (Util.l(bArr2, Util.p(list[i2], StandardCharsets.UTF_8))) {
                    vector.addElement(str2 + list[i2]);
                }
            }
        } catch (Exception unused) {
        }
        return vector;
    }

    public final void A(Buffer buffer, Header header) throws IOException {
        buffer.d = 0;
        w(buffer.b, 0, 9);
        header.a = buffer.getInt() - 5;
        header.b = buffer.getByte() & 255;
        header.c = buffer.getInt();
    }

    public final boolean C(String str) {
        try {
            J((byte) 17, Util.p(str, this.W), null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 105) {
                return false;
            }
            return SftpATTRS.a(this.I).b(16384);
        } catch (Exception unused) {
            return false;
        }
    }

    public final String D(String str) throws SftpException, IOException, JSchException {
        Vector vectorZ = z(str);
        if (vectorZ.size() == 1) {
            return (String) vectorZ.elementAt(0);
        }
        StringBuilder sbN = fz5.n(str, " is not unique: ");
        sbN.append(vectorZ.toString());
        throw new SftpException(4, sbN.toString());
    }

    public final String E(String str) {
        if (new File(str).isAbsolute()) {
            return str;
        }
        String str2 = this.V;
        String str3 = a0;
        boolean zEndsWith = str2.endsWith(str3);
        String str4 = this.V;
        return zEndsWith ? eq3.j(str4, str) : dj7.k(str4, str3, str);
    }

    public final void F(byte b, int i) {
        Buffer buffer = this.I;
        buffer.putByte((byte) 94);
        buffer.putInt(this.b);
        buffer.putInt(i + 4);
        buffer.putInt(i);
        buffer.putByte(b);
    }

    public final String G(String str) {
        if (str.charAt(0) == '/') {
            return str;
        }
        if (this.T == null) {
            this.T = getHome();
        }
        String str2 = this.T;
        return str2.endsWith("/") ? str2.concat(str) : dj7.k(str2, "/", str);
    }

    public final void H(byte[] bArr) throws IOException, JSchException {
        this.J.a();
        F((byte) 14, bArr.length + 13);
        Buffer buffer = this.I;
        int i = this.G;
        this.G = i + 1;
        buffer.putInt(i);
        Buffer buffer2 = this.I;
        buffer2.getClass();
        buffer2.putString(bArr, 0, bArr.length);
        this.I.putInt(0);
        getSession().A(this.J, this, bArr.length + 17);
    }

    public final void I(byte[] bArr, int i) throws IOException, JSchException {
        this.J.a();
        F((byte) 3, bArr.length + 17);
        Buffer buffer = this.I;
        int i2 = this.G;
        this.G = i2 + 1;
        buffer.putInt(i2);
        Buffer buffer2 = this.I;
        buffer2.getClass();
        buffer2.putString(bArr, 0, bArr.length);
        this.I.putInt(i);
        this.I.putInt(0);
        getSession().A(this.J, this, bArr.length + 21);
    }

    public final void J(byte b, byte[] bArr, String str) throws IOException, JSchException {
        this.J.a();
        int length = bArr.length + 9;
        if (str == null) {
            F(b, length);
            Buffer buffer = this.I;
            int i = this.G;
            this.G = i + 1;
            buffer.putInt(i);
        } else {
            length += str.length() + 4;
            F((byte) -56, length);
            Buffer buffer2 = this.I;
            int i2 = this.G;
            this.G = i2 + 1;
            buffer2.putInt(i2);
            Buffer buffer3 = this.I;
            byte[] bArr2 = Util.a;
            buffer3.putString(str.getBytes(StandardCharsets.UTF_8));
        }
        Buffer buffer4 = this.I;
        buffer4.getClass();
        buffer4.putString(bArr, 0, bArr.length);
        getSession().A(this.J, this, length + 4);
    }

    public final void K(byte b, byte[] bArr, byte[] bArr2, String str) throws IOException, JSchException {
        this.J.a();
        int length = bArr.length + 13 + bArr2.length;
        if (str == null) {
            F(b, length);
            Buffer buffer = this.I;
            int i = this.G;
            this.G = i + 1;
            buffer.putInt(i);
        } else {
            length += str.length() + 4;
            F((byte) -56, length);
            Buffer buffer2 = this.I;
            int i2 = this.G;
            this.G = i2 + 1;
            buffer2.putInt(i2);
            Buffer buffer3 = this.I;
            byte[] bArr3 = Util.a;
            buffer3.putString(str.getBytes(StandardCharsets.UTF_8));
        }
        Buffer buffer4 = this.I;
        buffer4.getClass();
        buffer4.putString(bArr, 0, bArr.length);
        Buffer buffer5 = this.I;
        buffer5.getClass();
        buffer5.putString(bArr2, 0, bArr2.length);
        getSession().A(this.J, this, length + 4);
    }

    public final void L(byte[] bArr, long j, int i, RequestQueue requestQueue) throws IOException, JSchException {
        this.J.a();
        F((byte) 5, bArr.length + 21);
        Buffer buffer = this.I;
        int i2 = this.G;
        this.G = i2 + 1;
        buffer.putInt(i2);
        Buffer buffer2 = this.I;
        buffer2.getClass();
        buffer2.putString(bArr, 0, bArr.length);
        this.I.putLong(j);
        this.I.putInt(i);
        getSession().A(this.J, this, bArr.length + 25);
        if (requestQueue != null) {
            int i3 = this.G - 1;
            int i4 = requestQueue.c;
            if (i4 == 0) {
                requestQueue.b = 0;
            }
            int length = requestQueue.b + i4;
            RequestQueue.Request[] requestArr = requestQueue.a;
            if (length >= requestArr.length) {
                length -= requestArr.length;
            }
            RequestQueue.Request request = requestArr[length];
            request.a = i3;
            request.b = j;
            request.c = i;
            requestQueue.c = i4 + 1;
        }
    }

    public final void M(byte[] bArr, SftpATTRS sftpATTRS) throws IOException, JSchException {
        int length;
        this.J.a();
        F((byte) 9, sftpATTRS.c() + bArr.length + 9);
        Buffer buffer = this.I;
        int i = this.G;
        this.G = i + 1;
        buffer.putInt(i);
        Buffer buffer2 = this.I;
        buffer2.getClass();
        buffer2.putString(bArr, 0, bArr.length);
        Buffer buffer3 = this.I;
        buffer3.putInt(sftpATTRS.a);
        if ((sftpATTRS.a & 1) != 0) {
            buffer3.putLong(sftpATTRS.b);
        }
        if ((sftpATTRS.a & 2) != 0) {
            buffer3.putInt(sftpATTRS.c);
            buffer3.putInt(sftpATTRS.d);
        }
        if ((sftpATTRS.a & 4) != 0) {
            buffer3.putInt(sftpATTRS.e);
        }
        if ((sftpATTRS.a & 8) != 0) {
            buffer3.putInt(sftpATTRS.f);
        }
        if ((sftpATTRS.a & 8) != 0) {
            buffer3.putInt(sftpATTRS.g);
        }
        if ((sftpATTRS.a & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 && (length = sftpATTRS.h.length / 2) > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                String str = sftpATTRS.h[i3];
                byte[] bArr2 = Util.a;
                Charset charset = StandardCharsets.UTF_8;
                buffer3.putString(Util.p(str, charset));
                buffer3.putString(Util.p(sftpATTRS.h[i3 + 1], charset));
            }
        }
        getSession().A(this.J, this, sftpATTRS.c() + bArr.length + 9 + 4);
    }

    public final int N(byte[] bArr, long j, byte[] bArr2, int i, int i2) throws IOException, JSchException {
        this.L.a();
        Session session = getSession();
        int iK = session.k();
        Buffer buffer = this.K;
        byte[] bArr3 = buffer.b;
        int length = bArr3.length;
        int i3 = buffer.c + 34;
        if (length < bArr.length + i3 + i2 + iK) {
            i2 = bArr3.length - ((i3 + bArr.length) + iK);
        }
        int length2 = bArr.length + 21 + i2;
        buffer.putByte((byte) 94);
        buffer.putInt(this.b);
        buffer.putInt(length2 + 4);
        buffer.putInt(length2);
        buffer.putByte((byte) 6);
        Buffer buffer2 = this.K;
        int i4 = this.G;
        this.G = i4 + 1;
        buffer2.putInt(i4);
        Buffer buffer3 = this.K;
        buffer3.getClass();
        buffer3.putString(bArr, 0, bArr.length);
        this.K.putLong(j);
        Buffer buffer4 = this.K;
        if (buffer4.b != bArr2) {
            buffer4.putString(bArr2, i, i2);
        } else {
            buffer4.putInt(i2);
            this.K.h(i2);
        }
        session.A(this.L, this, bArr.length + 21 + i2 + 4);
        return i2;
    }

    public final String O(Buffer buffer, int i) {
        String strH;
        switch (i) {
            case 0:
                strH = "SSH_FX_OK";
                break;
            case 1:
                strH = "SSH_FX_EOF";
                break;
            case 2:
                strH = "SSH_FX_NO_SUCH_FILE";
                break;
            case 3:
                strH = "SSH_FX_PERMISSION_DENIED";
                break;
            case 4:
                strH = "SSH_FX_FAILURE";
                break;
            case 5:
                strH = "SSH_FX_BAD_MESSAGE";
                break;
            case 6:
                strH = "SSH_FX_NO_CONNECTION";
                break;
            case 7:
                strH = "SSH_FX_CONNECTION_LOST";
                break;
            case 8:
                strH = "SSH_FX_OP_UNSUPPORTED";
                break;
            default:
                strH = xs1.h(i, "Unknown code: (", ")");
                break;
        }
        if (this.M < 3 || buffer.getLength() < 4) {
            return strH.concat(": Failure");
        }
        byte[] string = buffer.getString();
        StringBuilder sbN = fz5.n(strH, ": ");
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArr = Util.a;
        sbN.append(new String(string, 0, string.length, charset));
        return sbN.toString();
    }

    public final void P(long j) throws IOException {
        while (j > 0) {
            long jSkip = this.P.skip(j);
            if (jSkip <= 0) {
                return;
            } else {
                j -= jSkip;
            }
        }
    }

    public final void Q(Buffer buffer, int i) throws SftpException {
        throw new SftpException(i, O(buffer, i));
    }

    public final void _put(InputStream inputStream, String str, SftpProgressMonitor sftpProgressMonitor, int i) throws SftpException {
        long j;
        int i2;
        int i3;
        Header header;
        int i4;
        byte[] bArr;
        Header header2;
        byte[] bArr2;
        int i5;
        int i6;
        int[] iArr = this.H;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            byte[] bArrP = Util.p(str, this.W);
            boolean z = true;
            if (i == 1 || i == 2) {
                try {
                    j = t(bArrP).b;
                } catch (Exception unused) {
                    j = 0;
                }
            } else {
                j = 0;
            }
            if (i == 1 && j > 0 && inputStream.skip(j) < j) {
                throw new SftpException(4, "failed to resume for " + str);
            }
            if (i == 0) {
                I(bArrP, 26);
            } else {
                I(bArrP, 10);
            }
            Header header3 = new Header();
            A(this.I, header3);
            int i7 = header3.a;
            int i8 = header3.b;
            x(this.I, i7);
            if (i8 != 101 && i8 != 102) {
                throw new SftpException(4, "invalid type=" + i8);
            }
            Buffer buffer = this.I;
            if (i8 == 101) {
                Q(this.I, buffer.getInt());
                throw null;
            }
            byte[] string = buffer.getString();
            int iK = this.s.k();
            if (i != 1 && i != 2) {
                j = 0;
            }
            int i9 = this.G;
            byte[] bArr3 = this.K.b;
            int length = string.length + 39;
            int length2 = (bArr3.length - length) - iK;
            int length3 = this.Z.a.length;
            int i10 = 0;
            while (true) {
                int i11 = length2;
                boolean z2 = z;
                int i12 = length;
                int i13 = 0;
                while (true) {
                    int i14 = inputStream.read(bArr3, i12, i11);
                    if (i14 > 0) {
                        i12 += i14;
                        i11 -= i14;
                        i13 += i14;
                    }
                    i2 = length2;
                    i3 = i13;
                    if (i11 <= 0 || i14 <= 0) {
                        break;
                        break;
                    } else {
                        i13 = i3;
                        length2 = i2;
                    }
                }
                if (i3 <= 0) {
                    header = header3;
                    i4 = i9;
                    bArr = string;
                    break;
                }
                int length4 = i2;
                int i15 = i3;
                while (i15 > 0) {
                    int i16 = this.G;
                    byte[] bArr4 = string;
                    if (i16 - 1 == i9 || (i16 - i9) - i10 >= length3) {
                        while ((this.G - i9) - i10 >= length3) {
                            v(iArr, header3);
                            int i17 = iArr[0];
                            if (i9 > i17 || i17 > this.G - 1) {
                                header2 = header3;
                                bArr2 = bArr3;
                                i5 = i3;
                                if (i17 != this.G) {
                                    throw new SftpException(4, "ack error: startid=" + i9 + " seq=" + this.G + " _ackid=" + i17);
                                }
                                i6 = length3;
                                if (getSession().getLogger().isEnabled(3)) {
                                    getSession().getLogger().log(3, "ack error: startid=" + i9 + " seq=" + this.G + " _ackid=" + i17);
                                }
                            } else {
                                header2 = header3;
                                bArr2 = bArr3;
                                i5 = i3;
                                i6 = length3;
                            }
                            i10++;
                            bArr3 = bArr2;
                            header3 = header2;
                            i3 = i5;
                            length3 = i6;
                        }
                    }
                    Header header4 = header3;
                    int i18 = i3;
                    int i19 = length3;
                    long j2 = j;
                    int i20 = i9;
                    bArr3 = bArr3;
                    int i21 = i15;
                    int iN = i21 - N(bArr4, j2, bArr3, 0, i21);
                    byte[] bArr5 = this.K.b;
                    if (bArr3 != bArr5) {
                        length4 = (bArr5.length - length) - iK;
                        bArr3 = bArr5;
                    }
                    length3 = i19;
                    string = bArr4;
                    header3 = header4;
                    i9 = i20;
                    i15 = iN;
                    i3 = i18;
                    j = j2;
                }
                header = header3;
                bArr = string;
                int i22 = length3;
                long j3 = j;
                i4 = i9;
                long j4 = i3;
                long j5 = j3 + j4;
                if (sftpProgressMonitor != null && !sftpProgressMonitor.count(j4)) {
                    break;
                }
                i9 = i4;
                j = j5;
                string = bArr;
                length2 = length4;
                header3 = header;
                z = z2;
                length3 = i22;
            }
            int i23 = this.G - i4;
            for (int i24 = i10; i23 > i24; i24++) {
                v(null, header);
            }
            if (sftpProgressMonitor != null) {
                sftpProgressMonitor.end();
            }
            q(bArr, header);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void cd(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strD = D(G(str));
            byte[] bArrP = p(strD);
            SftpATTRS sftpATTRST = t(bArrP);
            if ((sftpATTRST.a & 4) == 0) {
                throw new SftpException(4, "Can't change directory: " + strD);
            }
            if (sftpATTRST.b(16384)) {
                this.T = new String(bArrP, 0, bArrP.length, this.W);
            } else {
                throw new SftpException(4, "Can't change directory: " + strD);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void chgrp(int i, String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) vectorZ.elementAt(i2);
                SftpATTRS sftpATTRSS = s(str2);
                sftpATTRSS.a = 0;
                sftpATTRSS.setUIDGID(sftpATTRSS.c, i);
                r(str2, sftpATTRSS);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void chmod(int i, String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) vectorZ.elementAt(i2);
                SftpATTRS sftpATTRSS = s(str2);
                sftpATTRSS.a = 0;
                sftpATTRSS.setPERMISSIONS(i);
                r(str2, sftpATTRSS);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void chown(int i, String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) vectorZ.elementAt(i2);
                SftpATTRS sftpATTRSS = s(str2);
                sftpATTRSS.a = 0;
                sftpATTRSS.setUIDGID(i, sftpATTRSS.d);
                r(str2, sftpATTRSS);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    @Override // com.jcraft.jsch.Channel
    public final void disconnect() {
        super.disconnect();
    }

    public final void exit() {
        super.disconnect();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:112:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:114:0x0203  */
    public final void get(String str, String str2, SftpProgressMonitor sftpProgressMonitor, int i) throws Throwable {
        boolean z;
        String str3;
        File file;
        StringBuilder sb;
        String string;
        String str4;
        String str5;
        String str6;
        StringBuilder sb2;
        int i2;
        SftpProgressMonitor sftpProgressMonitor2;
        String str7;
        FileOutputStream fileOutputStream;
        boolean z2;
        FileOutputStream fileOutputStream2;
        ChannelSftp channelSftp = this;
        try {
            ((Channel.MyPipedInputStream) channelSftp.P).updateReadSide();
            String strG = G(str);
            String strE = channelSftp.E(str2);
            Vector vectorZ = channelSftp.z(strG);
            int size = vectorZ.size();
            if (size == 0) {
                throw new SftpException(2, "No such file");
            }
            boolean zIsDirectory = new File(strE).isDirectory();
            String str8 = a0;
            boolean z3 = true;
            if (zIsDirectory) {
                if (!strE.endsWith(str8)) {
                    strE = strE + str8;
                }
                sb = new StringBuilder(strE);
            } else {
                if (size > 1) {
                    throw new SftpException(4, "Copying multiple files, but destination is missing or a file.");
                }
                sb = null;
            }
            int i3 = 0;
            String str9 = null;
            boolean zExists = false;
            while (i3 < size) {
                try {
                    String str10 = (String) vectorZ.elementAt(i3);
                    SftpATTRS sftpATTRSS = channelSftp.s(str10);
                    if (sftpATTRSS.b(16384)) {
                        throw new SftpException(4, "not supported to get directory " + str10);
                    }
                    if (zIsDirectory) {
                        try {
                            int iLastIndexOf = str10.lastIndexOf(47);
                            if (iLastIndexOf == -1) {
                                sb.append(str10);
                            } else {
                                sb.append(str10.substring(iLastIndexOf + 1));
                            }
                            string = sb.toString();
                            if (string.indexOf("..") != -1) {
                                String canonicalPath = new File(strE).getCanonicalPath();
                                String canonicalPath2 = new File(string).getCanonicalPath();
                                if (canonicalPath2.length() > canonicalPath.length()) {
                                    if (canonicalPath2.substring(0, canonicalPath.length() + 1).equals(canonicalPath + str8)) {
                                    }
                                }
                                throw new SftpException(4, "writing to an unexpected file " + str10);
                            }
                            sb.delete(strE.length(), string.length());
                        } catch (Exception e) {
                            e = e;
                            z = zExists;
                            str3 = null;
                            if (!z) {
                                file = new File(str3);
                                if (file.exists()) {
                                    file.delete();
                                }
                            }
                            if (e instanceof SftpException) {
                                throw ((SftpException) e);
                            }
                            z5.h(e);
                            return;
                        }
                    } else {
                        string = strE;
                    }
                    try {
                        File file2 = new File(string);
                        if (i == z3) {
                            long j = sftpATTRSS.b;
                            long length = file2.length();
                            if (length > j) {
                                throw new SftpException(4, "failed to resume for " + string);
                            }
                            if (length == j) {
                                return;
                            }
                        }
                        if (sftpProgressMonitor != null) {
                            try {
                                str6 = strE;
                                sb2 = sb;
                                i2 = i3;
                                sftpProgressMonitor.init(1, str10, string, sftpATTRSS.b);
                                sftpProgressMonitor2 = sftpProgressMonitor;
                                str5 = string;
                                if (i == 1) {
                                    str7 = str10;
                                    try {
                                        sftpProgressMonitor2.count(file2.length());
                                    } catch (Exception e2) {
                                        e = e2;
                                        str3 = str5;
                                        z = zExists;
                                        if (!z) {
                                            file = new File(str3);
                                            if (file.exists()) {
                                                file.delete();
                                            }
                                        }
                                        if (e instanceof SftpException) {
                                            throw ((SftpException) e);
                                        }
                                        z5.h(e);
                                        return;
                                    }
                                } else {
                                    str7 = str10;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                str5 = string;
                            }
                        } else {
                            sb2 = sb;
                            str6 = strE;
                            i2 = i3;
                            str5 = string;
                            str7 = str10;
                            sftpProgressMonitor2 = sftpProgressMonitor;
                        }
                        try {
                            zExists = file2.exists();
                            if (i == 0) {
                                fileOutputStream = new FileOutputStream(str5);
                                z2 = true;
                            } else {
                                z2 = true;
                                fileOutputStream = new FileOutputStream(str5, true);
                            }
                            try {
                                long length2 = new File(str5).length();
                                str4 = str5;
                                String str11 = str7;
                                fileOutputStream2 = fileOutputStream;
                                try {
                                    channelSftp.n(str11, fileOutputStream2, sftpProgressMonitor2, i, length2);
                                    try {
                                        fileOutputStream2.close();
                                        i3 = i2 + 1;
                                        channelSftp = this;
                                        str9 = str4;
                                        z3 = z2;
                                        strE = str6;
                                        sb = sb2;
                                    } catch (Exception e4) {
                                        e = e4;
                                        str3 = str4;
                                        z = zExists;
                                        if (!z && str3 != null) {
                                            file = new File(str3);
                                            if (file.exists() && file.length() == 0) {
                                                file.delete();
                                            }
                                        }
                                        if (e instanceof SftpException) {
                                            throw ((SftpException) e);
                                        }
                                        z5.h(e);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    try {
                                        fileOutputStream2.close();
                                        throw th2;
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                str4 = str5;
                                fileOutputStream2 = fileOutputStream;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            str4 = str5;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        str4 = string;
                    }
                } catch (Exception e7) {
                    e = e7;
                    str3 = str9;
                }
            }
        } catch (Exception e8) {
            e = e8;
            z = false;
        }
    }

    public final int getBulkRequests() {
        return this.Z.a.length;
    }

    public final String getExtension(String str) {
        Hashtable hashtable = this.O;
        if (hashtable == null) {
            return null;
        }
        return (String) hashtable.get(str);
    }

    public final String getHome() throws SftpException {
        if (this.U == null) {
            try {
                ((Channel.MyPipedInputStream) this.P).updateReadSide();
                byte[] bArrP = p("");
                this.U = new String(bArrP, 0, bArrP.length, this.W);
            } catch (Exception e) {
                if (e instanceof SftpException) {
                    throw ((SftpException) e);
                }
                z5.h(e);
                return null;
            }
        }
        return this.U;
    }

    public final int getServerVersion() throws SftpException {
        if (isConnected()) {
            return this.M;
        }
        throw new SftpException(4, "The channel is not connected.");
    }

    public final boolean getUseWriteFlushWorkaround() {
        return this.Y;
    }

    public final void hardlink(String str, String str2) throws SftpException {
        if (!this.S) {
            throw new SftpException(8, "hardlink@openssh.com is not supported");
        }
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            String strG2 = G(str2);
            String strD = D(strG);
            if (str.charAt(0) != '/') {
                if (this.T == null) {
                    this.T = getHome();
                }
                String str3 = this.T;
                strD = strD.substring(str3.length() + (!str3.endsWith("/") ? 1 : 0));
            }
            if (B(strG2, null)) {
                throw new SftpException(4, strG2);
            }
            K((byte) 0, Util.p(strD, this.W), Util.p(Util.s(strG2), this.W), "hardlink@openssh.com");
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int i3 = this.I.getInt();
            if (i3 == 0) {
                return;
            }
            Q(this.I, i3);
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void lcd(String str) throws SftpException {
        String strE = E(str);
        if (!new File(strE).isDirectory()) {
            throw new SftpException(2, "No such directory");
        }
        try {
            strE = new File(strE).getCanonicalPath();
        } catch (Exception unused) {
        }
        this.V = strE;
    }

    public final String lpwd() {
        return this.V;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.jcraft.jsch.ChannelSftp] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final void ls(String str, LsEntrySelector lsEntrySelector) throws SftpException {
        byte[] bArrT;
        ?? r8;
        byte[] bytes;
        ?? r9;
        ?? r16;
        boolean zL;
        ?? r10;
        ?? r17;
        ?? str2;
        String str3;
        ?? r11;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            new Vector();
            int iLastIndexOf = strG.lastIndexOf(47);
            int i = 1;
            String strSubstring = strG.substring(0, iLastIndexOf == 0 ? 1 : iLastIndexOf);
            String strSubstring2 = strG.substring(iLastIndexOf + 1);
            String strS = Util.s(strSubstring);
            byte[][] bArr = new byte[1][];
            boolean zB = B(strSubstring2, bArr);
            ?? r12 = 0;
            if (zB) {
                bArrT = bArr[0];
            } else {
                String strS2 = Util.s(strG);
                if (s(strS2).b(16384)) {
                    strS = strS2;
                    bArrT = null;
                } else {
                    bArrT = this.X ? Util.t(bArr[0]) : Util.p(Util.s(strSubstring2), this.W);
                }
            }
            J((byte) 11, Util.p(strS, this.W), null);
            Header header = new Header();
            A(this.I, header);
            int i2 = header.a;
            int i3 = header.b;
            x(this.I, i2);
            int i4 = 4;
            if (i3 != 101 && i3 != 102) {
                throw new SftpException(4, "");
            }
            Buffer buffer = this.I;
            if (i3 == 101) {
                Q(this.I, buffer.getInt());
                throw null;
            }
            byte[] string = buffer.getString();
            while (true) {
                J((byte) 12, string, r12);
                A(this.I, header);
                int i5 = header.a;
                int i6 = header.b;
                if (i6 != 101 && i6 != 104) {
                    throw new SftpException(i4, "");
                }
                Buffer buffer2 = this.I;
                if (i6 == 101) {
                    x(buffer2, i5);
                    int i7 = this.I.getInt();
                    if (i7 == i) {
                        q(string, header);
                        return;
                    } else {
                        Q(this.I, i7);
                        throw r12;
                    }
                }
                buffer2.d = 0;
                w(buffer2.b, 0, i4);
                int i8 = i5 - 4;
                int i9 = this.I.getInt();
                this.I.reset();
                while (i9 > 0) {
                    if (i8 > 0) {
                        this.I.shift();
                        Buffer buffer3 = this.I;
                        byte[] bArr2 = buffer3.b;
                        int length = bArr2.length;
                        int i10 = buffer3.c;
                        int iW = w(bArr2, i10, length > i10 + i8 ? i8 : bArr2.length - i10);
                        this.I.c += iW;
                        i8 -= iW;
                    }
                    byte[] string2 = this.I.getString();
                    ?? string3 = this.M <= 3 ? this.I.getString() : r8;
                    SftpATTRS sftpATTRSA = SftpATTRS.a(this.I);
                    if (bArrT == null) {
                        r11 = r8;
                        r17 = r11;
                        zL = true;
                    } else if (zB) {
                        if (this.X) {
                            ?? r18 = r8;
                            bytes = string2;
                            r9 = r18;
                            r16 = r18;
                        } else {
                            r16 = r8;
                            String str4 = new String(string2, 0, string2.length, this.W);
                            bytes = str4.getBytes(StandardCharsets.UTF_8);
                            r9 = str4;
                        }
                        zL = Util.l(bArrT, bytes);
                        str2 = r9;
                        r17 = r16;
                    } else {
                        zL = Util.a(bArrT, string2);
                        r10 = r8;
                        r17 = r10;
                    }
                    if (zL) {
                        if (str2 == 0) {
                            str2 = new String(string2, 0, string2.length, this.W);
                        }
                        if (string3 == 0) {
                            str3 = sftpATTRSA.toString() + TokenAuthenticationScheme.SCHEME_DELIMITER + str2;
                        } else {
                            str3 = new String((byte[]) string3, 0, string3.length, this.W);
                        }
                        lsEntrySelector.select(new LsEntry(str2, str3, sftpATTRSA));
                    } else {
                        str2 = r10;
                        str2 = r11;
                    }
                    i9--;
                    r8 = r17;
                    i4 = 4;
                }
                r8 = r12;
                i = 1;
                r12 = r8;
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final SftpATTRS lstat(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            return o(D(G(str)));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final void mkdir(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            Charset charset = this.W;
            byte[] bArr = Util.a;
            H(strG.getBytes(charset));
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int i3 = this.I.getInt();
            if (i3 == 0) {
                return;
            }
            Q(this.I, i3);
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void n(String str, OutputStream outputStream, SftpProgressMonitor sftpProgressMonitor, int i, long j) throws SftpException {
        OutputStream outputStream2;
        int i2 = 1;
        try {
            I(Util.p(str, this.W), 1);
            Header header = new Header();
            A(this.I, header);
            int i3 = header.a;
            int i4 = header.b;
            x(this.I, i3);
            int i5 = 4;
            int i6 = 101;
            if (i4 != 101 && i4 != 102) {
                throw new SftpException(4, "");
            }
            Buffer buffer = this.I;
            if (i4 == 101) {
                Q(this.I, buffer.getInt());
                throw null;
            }
            byte[] string = buffer.getString();
            long j2 = i == 1 ? j : 0L;
            RequestQueue requestQueue = this.Z;
            int i7 = 0;
            requestQueue.c = 0;
            requestQueue.b = 0;
            int length = this.I.b.length - 13;
            if (this.M == 0) {
                length = 1024;
            }
            int i8 = length;
            int i9 = 1;
            loop0: while (true) {
                RequestQueue requestQueue2 = this.Z;
                if (requestQueue2.c < i9) {
                    L(string, j2, i8, requestQueue2);
                    int i10 = i8;
                    j2 += (long) i10;
                    i8 = i10;
                } else {
                    int i11 = i8;
                    A(this.I, header);
                    int i12 = header.a;
                    int i13 = header.b;
                    try {
                        try {
                            RequestQueue.Request requestB = this.Z.b(header.c);
                            if (i13 == i6) {
                                x(this.I, i12);
                                int i14 = this.I.getInt();
                                if (i14 != i2) {
                                    Q(this.I, i14);
                                    throw null;
                                }
                            } else if (i13 == 103) {
                                Buffer buffer2 = this.I;
                                buffer2.d = i7;
                                w(buffer2.b, i7, i5);
                                int i15 = this.I.getInt();
                                int i16 = (i12 - 4) - i15;
                                int i17 = i15;
                                while (true) {
                                    if (i17 > 0) {
                                        byte[] bArr = this.I.b;
                                        int i18 = this.P.read(bArr, i7, i17 > bArr.length ? bArr.length : i17);
                                        if (i18 >= 0) {
                                            outputStream2 = outputStream;
                                            outputStream2.write(this.I.b, i7, i18);
                                            int i19 = i9;
                                            long j3 = i18;
                                            i17 -= i18;
                                            if (sftpProgressMonitor != null && !sftpProgressMonitor.count(j3)) {
                                                P(i17);
                                                if (i16 <= 0) {
                                                    break loop0;
                                                }
                                                P(i16);
                                                break loop0;
                                            }
                                            i9 = i19;
                                            i7 = 0;
                                        }
                                    } else {
                                        i9 = i9;
                                        if (i16 > 0) {
                                            P(i16);
                                        }
                                        long j4 = i15;
                                        if (j4 < requestB.c) {
                                            this.Z.a(this.I, header);
                                            L(string, requestB.b + j4, (int) (requestB.c - j4), this.Z);
                                            j2 = requestB.b + requestB.c;
                                        }
                                        i9 = i9 < this.Z.a.length ? i9 + 1 : i9;
                                        i8 = i11;
                                        i2 = 1;
                                        i5 = 4;
                                        i6 = 101;
                                        i7 = 0;
                                    }
                                }
                            }
                            outputStream2 = outputStream;
                            break;
                        } catch (RequestQueue.OutOfOrderException e) {
                            e = e;
                            j2 = e.a;
                            P(header.a);
                            this.Z.a(this.I, header);
                        }
                    } catch (RequestQueue.OutOfOrderException e2) {
                        e = e2;
                    }
                }
            }
            outputStream2.flush();
            if (sftpProgressMonitor != null) {
                sftpProgressMonitor.end();
            }
            this.Z.a(this.I, header);
            q(string, header);
        } catch (Exception e3) {
            if (e3 instanceof SftpException) {
                throw ((SftpException) e3);
            }
            z5.h(e3);
        }
    }

    public final SftpATTRS o(String str) throws SftpException {
        try {
            J((byte) 7, Util.p(str, this.W), null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 == 105) {
                return SftpATTRS.a(this.I);
            }
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            Q(this.I, this.I.getInt());
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final byte[] p(String str) throws SftpException, IOException, JSchException {
        byte[] string = null;
        J((byte) 16, Util.p(str, this.W), null);
        Header header = new Header();
        A(this.I, header);
        int i = header.a;
        int i2 = header.b;
        x(this.I, i);
        if (i2 != 101 && i2 != 104) {
            throw new SftpException(4, "");
        }
        Buffer buffer = this.I;
        if (i2 == 101) {
            Q(this.I, buffer.getInt());
            throw null;
        }
        int i3 = buffer.getInt();
        while (true) {
            int i4 = i3 - 1;
            if (i3 <= 0) {
                return string;
            }
            string = this.I.getString();
            if (this.M <= 3) {
                this.I.getString();
            }
            SftpATTRS.a(this.I);
            i3 = i4;
        }
    }

    public final void put(String str, String str2, SftpProgressMonitor sftpProgressMonitor, int i) throws SftpException {
        String str3;
        SftpProgressMonitor sftpProgressMonitor2;
        int iLastIndexOf;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strE = E(str);
            String strG = G(str2);
            Vector vectorZ = z(strG);
            int size = vectorZ.size();
            StringBuilder sb = null;
            if (size != 1) {
                if (size == 0) {
                    if (B(strG, null)) {
                        throw new SftpException(4, strG);
                    }
                    Util.s(strG);
                }
                throw new SftpException(4, vectorZ.toString());
            }
            String strConcat = (String) vectorZ.elementAt(0);
            boolean zC = C(strConcat);
            Vector vectorY = y(strE);
            int size2 = vectorY.size();
            if (zC) {
                if (!strConcat.endsWith("/")) {
                    strConcat = strConcat.concat("/");
                }
                sb = new StringBuilder(strConcat);
            } else if (size2 > 1) {
                throw new SftpException(4, "Copying multiple files, but the destination is missing or a file.");
            }
            String str4 = strConcat;
            StringBuilder sb2 = sb;
            for (int i2 = 0; i2 < size2; i2++) {
                String str5 = (String) vectorY.elementAt(i2);
                if (zC) {
                    int iLastIndexOf2 = str5.lastIndexOf(b0);
                    if (c0 && (iLastIndexOf = str5.lastIndexOf(47)) != -1 && iLastIndexOf > iLastIndexOf2) {
                        iLastIndexOf2 = iLastIndexOf;
                    }
                    if (iLastIndexOf2 == -1) {
                        sb2.append(str5);
                    } else {
                        sb2.append(str5.substring(iLastIndexOf2 + 1));
                    }
                    String string = sb2.toString();
                    sb2.delete(str4.length(), string.length());
                    str3 = string;
                } else {
                    str3 = str4;
                }
                long j = 0;
                if (i == 1) {
                    try {
                        j = s(str3).b;
                    } catch (Exception unused) {
                    }
                    long length = new File(str5).length();
                    if (length < j) {
                        throw new SftpException(4, "failed to resume for " + str3);
                    }
                    if (length == j) {
                        return;
                    }
                }
                if (sftpProgressMonitor != null) {
                    long j2 = j;
                    sftpProgressMonitor2 = sftpProgressMonitor;
                    sftpProgressMonitor2.init(0, str5, str3, new File(str5).length());
                    if (i == 1) {
                        sftpProgressMonitor2.count(j2);
                    }
                } else {
                    sftpProgressMonitor2 = sftpProgressMonitor;
                }
                FileInputStream fileInputStream = new FileInputStream(str5);
                try {
                    _put(fileInputStream, str3, sftpProgressMonitor2, i);
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final String pwd() throws SftpException {
        if (this.T == null) {
            this.T = getHome();
        }
        return this.T;
    }

    public final void q(byte[] bArr, Header header) throws SftpException, IOException, JSchException {
        J((byte) 4, bArr, null);
        v(null, header);
    }

    public final void quit() {
        super.disconnect();
    }

    public final void r(String str, SftpATTRS sftpATTRS) throws SftpException {
        try {
            M(Util.p(str, this.W), sftpATTRS);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int i3 = this.I.getInt();
            if (i3 == 0) {
                return;
            }
            Q(this.I, i3);
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final String readlink(String str) throws SftpException {
        try {
            if (this.M < 3) {
                throw new SftpException(8, "The remote sshd is too old to support symlink operation.");
            }
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            J((byte) 19, Util.p(D(G(str)), this.W), null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101 && i2 != 104) {
                throw new SftpException(4, "");
            }
            Buffer buffer = this.I;
            if (i2 != 104) {
                Q(this.I, buffer.getInt());
                throw null;
            }
            int i3 = buffer.getInt();
            byte[] string = null;
            for (int i4 = 0; i4 < i3; i4++) {
                string = this.I.getString();
                if (this.M <= 3) {
                    this.I.getString();
                }
                SftpATTRS.a(this.I);
            }
            return new String(string, 0, string.length, this.W);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final String realpath(String str) throws SftpException {
        try {
            byte[] bArrP = p(G(str));
            return new String(bArrP, 0, bArrP.length, this.W);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final void rename(String str, String str2) throws SftpException {
        String strS;
        if (this.M < 2) {
            throw new SftpException(8, "The remote sshd is too old to support rename operation.");
        }
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            String strG2 = G(str2);
            String strD = D(strG);
            Vector vectorZ = z(strG2);
            int size = vectorZ.size();
            if (size >= 2) {
                throw new SftpException(4, vectorZ.toString());
            }
            if (size == 1) {
                strS = (String) vectorZ.elementAt(0);
            } else {
                if (B(strG2, null)) {
                    throw new SftpException(4, strG2);
                }
                strS = Util.s(strG2);
            }
            K((byte) 18, Util.p(strD, this.W), Util.p(strS, this.W), this.Q ? "posix-rename@openssh.com" : null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int i3 = this.I.getInt();
            if (i3 == 0) {
                return;
            }
            Q(this.I, i3);
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void rm(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            Header header = new Header();
            for (int i = 0; i < size; i++) {
                J((byte) 13, Util.p((String) vectorZ.elementAt(i), this.W), null);
                A(this.I, header);
                int i2 = header.a;
                int i3 = header.b;
                x(this.I, i2);
                if (i3 != 101) {
                    throw new SftpException(4, "");
                }
                int i4 = this.I.getInt();
                if (i4 != 0) {
                    Q(this.I, i4);
                    throw null;
                }
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void rmdir(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            Header header = new Header();
            for (int i = 0; i < size; i++) {
                J((byte) 15, Util.p((String) vectorZ.elementAt(i), this.W), null);
                A(this.I, header);
                int i2 = header.a;
                int i3 = header.b;
                x(this.I, i2);
                if (i3 != 101) {
                    throw new SftpException(4, "");
                }
                int i4 = this.I.getInt();
                if (i4 != 0) {
                    Q(this.I, i4);
                    throw null;
                }
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final SftpATTRS s(String str) {
        return t(Util.p(str, this.W));
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setAgentForwarding(boolean z) {
        this.v = z;
    }

    public final void setBulkRequests(int i) throws JSchException {
        if (i <= 0) {
            throw new JSchException(xs1.h(i, "setBulkRequests: ", " must be greater than 0."));
        }
        this.Z = new RequestQueue(i);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setEnv(String str, String str2) {
        super.setEnv(str, str2);
    }

    @Deprecated
    public final void setFilenameEncoding(String str) throws SftpException {
        try {
            setFilenameEncoding(Charset.forName(str));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final void setMtime(String str, int i) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) vectorZ.elementAt(i2);
                SftpATTRS sftpATTRSS = s(str2);
                sftpATTRSS.a = 0;
                sftpATTRSS.setACMODTIME(sftpATTRSS.f, i);
                r(str2, sftpATTRSS);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setPty(boolean z) {
        this.y = z;
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtySize(int i, int i2, int i3, int i4) {
        super.setPtySize(i, i2, i3, i4);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtyType(String str) {
        super.setPtyType(str);
    }

    public final void setStat(String str, SftpATTRS sftpATTRS) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            Vector vectorZ = z(G(str));
            int size = vectorZ.size();
            for (int i = 0; i < size; i++) {
                r((String) vectorZ.elementAt(i), sftpATTRS);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setTerminalMode(byte[] bArr) {
        this.E = bArr;
    }

    public final void setUseWriteFlushWorkaround(boolean z) {
        this.Y = z;
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel
    public final void setXForwarding(boolean z) {
        this.w = z;
    }

    @Override // com.jcraft.jsch.Channel
    public final void start() throws JSchException {
        try {
            PipedOutputStream pipedOutputStream = new PipedOutputStream();
            this.i.b = pipedOutputStream;
            Channel.MyPipedInputStream myPipedInputStream = new Channel.MyPipedInputStream(pipedOutputStream, this.Z.a.length * this.h);
            this.i.a = myPipedInputStream;
            this.P = myPipedInputStream;
            new RequestSftp().request(getSession(), this);
            Buffer buffer = new Buffer(this.f);
            this.I = buffer;
            this.J = new Packet(buffer);
            Buffer buffer2 = new Buffer(this.h);
            this.K = buffer2;
            this.L = new Packet(buffer2);
            this.J.a();
            F((byte) 1, 5);
            this.I.putInt(3);
            getSession().A(this.J, this, 9);
            Header header = new Header();
            A(this.I, header);
            int length = header.a;
            if (length > 262144) {
                throw new SftpException(4, "Received message is too long: " + length);
            }
            this.M = header.c;
            this.O = new Hashtable();
            if (length > 0) {
                x(this.I, length);
                while (length > 0) {
                    byte[] string = this.I.getString();
                    int length2 = length - (string.length + 4);
                    byte[] string2 = this.I.getString();
                    length = length2 - (string2.length + 4);
                    Hashtable hashtable = this.O;
                    int length3 = string.length;
                    Charset charset = StandardCharsets.UTF_8;
                    hashtable.put(new String(string, 0, length3, charset), new String(string2, 0, string2.length, charset));
                }
            }
            if (this.O.get("posix-rename@openssh.com") != null && ((String) this.O.get("posix-rename@openssh.com")).equals("1")) {
                this.Q = true;
            }
            if (this.O.get("statvfs@openssh.com") != null && ((String) this.O.get("statvfs@openssh.com")).equals("2")) {
                this.R = true;
            }
            if (this.O.get("hardlink@openssh.com") != null && ((String) this.O.get("hardlink@openssh.com")).equals("1")) {
                this.S = true;
            }
            this.V = new File(".").getCanonicalPath();
        } catch (Exception e) {
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            a6.f(e);
        }
    }

    public final SftpATTRS stat(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            return s(D(G(str)));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final SftpStatVFS statVFS(String str) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            return u(D(G(str)));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final void symlink(String str, String str2) throws SftpException {
        if (this.M < 3) {
            throw new SftpException(8, "The remote sshd is too old to support symlink operation.");
        }
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            String strG2 = G(str2);
            String strD = D(strG);
            if (str.charAt(0) != '/') {
                if (this.T == null) {
                    this.T = getHome();
                }
                String str3 = this.T;
                strD = strD.substring(str3.length() + (!str3.endsWith("/") ? 1 : 0));
            }
            if (B(strG2, null)) {
                throw new SftpException(4, strG2);
            }
            K((byte) 20, Util.p(strD, this.W), Util.p(Util.s(strG2), this.W), null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int i3 = this.I.getInt();
            if (i3 == 0) {
                return;
            }
            Q(this.I, i3);
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
        }
    }

    public final SftpATTRS t(byte[] bArr) throws SftpException {
        try {
            J((byte) 17, bArr, null);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 == 105) {
                return SftpATTRS.a(this.I);
            }
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            Q(this.I, this.I.getInt());
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final SftpStatVFS u(String str) throws SftpException {
        byte[] bArrP = Util.p(str, this.W);
        if (!this.R) {
            throw new SftpException(8, "statvfs@openssh.com is not supported");
        }
        try {
            J((byte) 0, bArrP, "statvfs@openssh.com");
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 == 201) {
                return SftpStatVFS.a(this.I);
            }
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            Q(this.I, this.I.getInt());
            throw null;
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            z5.h(e);
            return null;
        }
    }

    public final void v(int[] iArr, Header header) throws SftpException, IOException {
        A(this.I, header);
        int i = header.a;
        int i2 = header.b;
        if (iArr != null) {
            iArr[0] = header.c;
        }
        x(this.I, i);
        if (i2 != 101) {
            throw new SftpException(4, "");
        }
        int i3 = this.I.getInt();
        if (i3 == 0) {
            return;
        }
        Q(this.I, i3);
        throw null;
    }

    public final String version() {
        return this.N;
    }

    public final int w(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i;
        while (i2 > 0) {
            int i4 = this.P.read(bArr, i3, i2);
            if (i4 <= 0) {
                y5.m("inputstream is closed");
                return 0;
            }
            i3 += i4;
            i2 -= i4;
        }
        return i3 - i;
    }

    public final void x(Buffer buffer, int i) throws IOException {
        buffer.reset();
        w(buffer.b, 0, i);
        buffer.h(i);
    }

    public final Vector z(String str) throws SftpException, IOException, JSchException {
        String str2;
        String str3;
        byte[] bytes;
        Vector vector = new Vector();
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0) {
            vector.addElement(Util.s(str));
            return vector;
        }
        String strSubstring = str.substring(0, iLastIndexOf == 0 ? 1 : iLastIndexOf);
        String strSubstring2 = str.substring(iLastIndexOf + 1);
        String strS = Util.s(strSubstring);
        byte[][] bArr = new byte[1][];
        if (!B(strSubstring2, bArr)) {
            if (!strS.equals("/")) {
                strS = strS.concat("/");
            }
            StringBuilder sbS = dj7.s(strS);
            sbS.append(Util.s(strSubstring2));
            vector.addElement(sbS.toString());
            return vector;
        }
        byte[] bArr2 = bArr[0];
        String str4 = null;
        J((byte) 11, Util.p(strS, this.W), null);
        Header header = new Header();
        A(this.I, header);
        int i = header.a;
        int i2 = header.b;
        x(this.I, i);
        int i3 = 4;
        int i4 = 101;
        if (i2 != 101 && i2 != 102) {
            throw new SftpException(4, "");
        }
        Buffer buffer = this.I;
        if (i2 == 101) {
            Q(this.I, buffer.getInt());
            throw null;
        }
        byte[] string = buffer.getString();
        String strConcat = null;
        while (true) {
            J((byte) 12, string, str4);
            A(this.I, header);
            int i5 = header.a;
            int i6 = header.b;
            if (i6 != i4 && i6 != 104) {
                throw new SftpException(i3, "");
            }
            Buffer buffer2 = this.I;
            if (i6 == i4) {
                x(buffer2, i5);
                q(string, header);
                return vector;
            }
            buffer2.d = 0;
            w(buffer2.b, 0, i3);
            int i7 = i5 - 4;
            int i8 = this.I.getInt();
            this.I.reset();
            while (true) {
                if (i8 <= 0) {
                    str2 = str4;
                    break;
                }
                if (i7 > 0) {
                    this.I.shift();
                    Buffer buffer3 = this.I;
                    str2 = str4;
                    byte[] bArr3 = buffer3.b;
                    int length = bArr3.length;
                    int i9 = buffer3.c;
                    int i10 = this.P.read(bArr3, i9, length > i9 + i7 ? i7 : bArr3.length - i9);
                    if (i10 <= 0) {
                        break;
                    }
                    this.I.c += i10;
                    i7 -= i10;
                } else {
                    str2 = str4;
                }
                byte[] string2 = this.I.getString();
                if (this.M <= 3) {
                    this.I.getString();
                }
                SftpATTRS.a(this.I);
                if (this.X) {
                    str3 = str2;
                    bytes = string2;
                } else {
                    str3 = new String(string2, 0, string2.length, this.W);
                    bytes = str3.getBytes(StandardCharsets.UTF_8);
                }
                if (Util.l(bArr2, bytes)) {
                    if (str3 == null) {
                        str3 = new String(string2, 0, string2.length, this.W);
                    }
                    if (strConcat == null) {
                        strConcat = !strS.endsWith("/") ? strS.concat("/") : strS;
                    }
                    vector.addElement(strConcat.concat(str3));
                }
                i8--;
                str4 = str2;
            }
            str4 = str2;
            i3 = 4;
            i4 = 101;
        }
    }

    @Override // com.jcraft.jsch.ChannelSession
    @Deprecated
    public final /* bridge */ /* synthetic */ void setEnv(Hashtable hashtable) {
        super.setEnv(hashtable);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtyType(String str, int i, int i2, int i3, int i4) {
        super.setPtyType(str, i, i2, i3, i4);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setEnv(byte[] bArr, byte[] bArr2) {
        super.setEnv(bArr, bArr2);
    }

    @Override // com.jcraft.jsch.Channel
    public final void g() {
    }

    public final void setFilenameEncoding(Charset charset) {
        this.W = charset;
        this.X = charset.equals(StandardCharsets.UTF_8);
    }

    public final void put(String str, String str2, int i) throws SftpException {
        put(str, str2, (SftpProgressMonitor) null, i);
    }

    public final void put(String str, String str2, SftpProgressMonitor sftpProgressMonitor) throws SftpException {
        put(str, str2, sftpProgressMonitor, 0);
    }

    public final void put(String str, String str2) throws SftpException {
        put(str, str2, (SftpProgressMonitor) null, 0);
    }

    public final void put(InputStream inputStream, String str) throws SftpException {
        put(inputStream, str, (SftpProgressMonitor) null, 0);
    }

    public final void put(InputStream inputStream, String str, int i) throws SftpException {
        put(inputStream, str, (SftpProgressMonitor) null, i);
    }

    public final void put(InputStream inputStream, String str, SftpProgressMonitor sftpProgressMonitor) throws SftpException {
        put(inputStream, str, sftpProgressMonitor, 0);
    }

    public final void put(InputStream inputStream, String str, SftpProgressMonitor sftpProgressMonitor, int i) throws SftpException {
        Exception exc;
        SftpProgressMonitor sftpProgressMonitor2;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strG = G(str);
            Vector vectorZ = z(strG);
            int size = vectorZ.size();
            if (size != 1) {
                if (size == 0) {
                    if (B(strG, null)) {
                        throw new SftpException(4, strG);
                    }
                    Util.s(strG);
                }
                throw new SftpException(4, vectorZ.toString());
            }
            String str2 = (String) vectorZ.elementAt(0);
            if (sftpProgressMonitor != null) {
                try {
                    sftpProgressMonitor2 = sftpProgressMonitor;
                    sftpProgressMonitor2.init(0, "-", str2, -1L);
                } catch (Exception e) {
                    exc = e;
                    str = str2;
                    if (exc instanceof SftpException) {
                        SftpException sftpException = (SftpException) exc;
                        if (sftpException.id == 4 && C(str)) {
                            throw new SftpException(4, eq3.j(str, " is a directory"));
                        }
                        throw sftpException;
                    }
                    z5.h(exc);
                    return;
                }
            } else {
                sftpProgressMonitor2 = sftpProgressMonitor;
            }
            _put(inputStream, str2, sftpProgressMonitor2, i);
        } catch (Exception e2) {
            exc = e2;
        }
    }

    public final OutputStream put(String str) throws SftpException {
        return put(str, (SftpProgressMonitor) null, 0, 0L);
    }

    public final OutputStream put(String str, int i) throws SftpException {
        return put(str, (SftpProgressMonitor) null, i, 0L);
    }

    public final OutputStream put(String str, SftpProgressMonitor sftpProgressMonitor, int i) throws SftpException {
        return put(str, sftpProgressMonitor, i, 0L);
    }

    public final OutputStream put(String str, SftpProgressMonitor sftpProgressMonitor, int i, long j) throws SftpException {
        long j2;
        final SftpProgressMonitor sftpProgressMonitor2;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strD = D(G(str));
            if (!C(strD)) {
                byte[] bArrP = Util.p(strD, this.W);
                if (i == 1 || i == 2) {
                    try {
                        j2 = t(bArrP).b;
                    } catch (Exception unused) {
                        j2 = 0;
                    }
                } else {
                    j2 = 0;
                }
                long j3 = j2;
                if (sftpProgressMonitor != null) {
                    sftpProgressMonitor2 = sftpProgressMonitor;
                    sftpProgressMonitor2.init(0, "-", strD, -1L);
                } else {
                    sftpProgressMonitor2 = sftpProgressMonitor;
                }
                if (i == 0) {
                    I(bArrP, 26);
                } else {
                    I(bArrP, 10);
                }
                Header header = new Header();
                A(this.I, header);
                int i2 = header.a;
                int i3 = header.b;
                x(this.I, i2);
                if (i3 != 101 && i3 != 102) {
                    throw new SftpException(4, "");
                }
                Buffer buffer = this.I;
                if (i3 != 101) {
                    final byte[] string = buffer.getString();
                    final long[] jArr = {(i == 1 || i == 2) ? j + j3 : j};
                    return new OutputStream(this) { // from class: com.jcraft.jsch.ChannelSftp.1
                        public boolean a = true;
                        public boolean b = false;
                        public final int[] c = new int[1];
                        public int d = 0;
                        public int e = 0;
                        public int f = 0;
                        public final Header k = new Header();
                        public final byte[] n = new byte[1];
                        public final /* synthetic */ ChannelSftp t;

                        {
                            this.t = this;
                        }

                        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                        public final void close() throws IOException {
                            if (this.b) {
                                return;
                            }
                            flush();
                            SftpProgressMonitor sftpProgressMonitor3 = sftpProgressMonitor2;
                            if (sftpProgressMonitor3 != null) {
                                sftpProgressMonitor3.end();
                            }
                            try {
                                ChannelSftp channelSftp = this.t;
                                byte[] bArr = string;
                                Header header2 = this.k;
                                int i4 = ChannelSftp.SSH_FX_OK;
                                channelSftp.q(bArr, header2);
                                this.b = true;
                            } catch (IOException e) {
                                throw e;
                            } catch (Exception e2) {
                                throw new IOException(e2.toString(), e2);
                            }
                        }

                        @Override // java.io.OutputStream, java.io.Flushable
                        public final void flush() throws IOException {
                            if (this.b) {
                                y5.m("stream already closed");
                                return;
                            }
                            if (this.a) {
                                return;
                            }
                            while (this.f > this.e) {
                                try {
                                    ChannelSftp channelSftp = this.t;
                                    Header header2 = this.k;
                                    int i4 = ChannelSftp.SSH_FX_OK;
                                    channelSftp.v(null, header2);
                                    this.e++;
                                } catch (SftpException e) {
                                    throw new IOException(e.toString(), e);
                                }
                            }
                        }

                        @Override // java.io.OutputStream
                        public final void write(byte[] bArr, int i4, int i5) throws IOException {
                            if (this.a) {
                                this.d = this.t.G;
                                this.a = false;
                            }
                            if (this.b) {
                                y5.m("stream already closed");
                                return;
                            }
                            int i6 = i4;
                            int i7 = i5;
                            while (i7 > 0) {
                                try {
                                    ChannelSftp channelSftp = this.t;
                                    if (channelSftp.Y && channelSftp.g < string.length + 21 + i7 + 4) {
                                        flush();
                                    }
                                    byte[] bArr2 = bArr;
                                    int iN = this.t.N(string, jArr[0], bArr2, i6, i7);
                                    this.f++;
                                    long[] jArr2 = jArr;
                                    jArr2[0] = jArr2[0] + ((long) iN);
                                    i6 += iN;
                                    i7 -= iN;
                                    ChannelSftp channelSftp2 = this.t;
                                    if (channelSftp2.G - 1 == this.d || channelSftp2.P.available() >= 1024) {
                                        while (this.t.P.available() > 0) {
                                            this.t.v(this.c, this.k);
                                            int i8 = this.c[0];
                                            if (this.d > i8 || i8 > this.t.G - 1) {
                                                throw new SftpException(4, "");
                                            }
                                            this.e++;
                                        }
                                    }
                                    bArr = bArr2;
                                } catch (IOException e) {
                                    throw e;
                                } catch (Exception e2) {
                                    throw new IOException(e2.toString(), e2);
                                }
                            }
                            SftpProgressMonitor sftpProgressMonitor3 = sftpProgressMonitor2;
                            if (sftpProgressMonitor3 != null && !sftpProgressMonitor3.count(i5)) {
                                close();
                                throw new IOException("canceled");
                            }
                        }

                        @Override // java.io.OutputStream
                        public final void write(byte[] bArr) throws IOException {
                            write(bArr, 0, bArr.length);
                        }

                        @Override // java.io.OutputStream
                        public final void write(int i4) throws IOException {
                            byte[] bArr = this.n;
                            bArr[0] = (byte) i4;
                            write(bArr, 0, 1);
                        }
                    };
                }
                Q(this.I, buffer.getInt());
                throw null;
            }
            throw new SftpException(4, strD + " is a directory");
        } catch (Exception e) {
            if (!(e instanceof SftpException)) {
                z5.h(e);
                return null;
            }
            throw ((SftpException) e);
        }
    }

    public final Vector<LsEntry> ls(String str) throws SftpException {
        final Vector<LsEntry> vector = new Vector<>();
        ls(str, new LsEntrySelector(this) { // from class: com.jcraft.jsch.ChannelSftp.3
            @Override // com.jcraft.jsch.ChannelSftp.LsEntrySelector
            public final int select(LsEntry lsEntry) {
                vector.addElement(lsEntry);
                return 0;
            }
        });
        return vector;
    }

    public final void get(String str, String str2, SftpProgressMonitor sftpProgressMonitor) throws Throwable {
        get(str, str2, sftpProgressMonitor, 0);
    }

    public final void get(String str, String str2) throws Throwable {
        get(str, str2, null, 0);
    }

    public final void get(String str, OutputStream outputStream) throws SftpException {
        get(str, outputStream, null, 0, 0L);
    }

    public final void get(String str, OutputStream outputStream, SftpProgressMonitor sftpProgressMonitor) throws SftpException {
        get(str, outputStream, sftpProgressMonitor, 0, 0L);
    }

    public final void get(String str, OutputStream outputStream, SftpProgressMonitor sftpProgressMonitor, int i, long j) throws SftpException {
        SftpProgressMonitor sftpProgressMonitor2;
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strD = D(G(str));
            if (sftpProgressMonitor != null) {
                sftpProgressMonitor.init(1, strD, "??", s(strD).b);
                if (i == 1) {
                    sftpProgressMonitor.count(j);
                }
                sftpProgressMonitor2 = sftpProgressMonitor;
                strD = strD;
            } else {
                sftpProgressMonitor2 = sftpProgressMonitor;
            }
            n(strD, outputStream, sftpProgressMonitor2, i, j);
        } catch (Exception e) {
            if (!(e instanceof SftpException)) {
                z5.h(e);
                return;
            }
            throw ((SftpException) e);
        }
    }

    public final InputStream get(String str) throws SftpException {
        return get(str, (SftpProgressMonitor) null, 0L);
    }

    public final InputStream get(String str, SftpProgressMonitor sftpProgressMonitor) throws SftpException {
        return get(str, sftpProgressMonitor, 0L);
    }

    @Deprecated
    public final InputStream get(String str, int i) throws SftpException {
        return get(str, (SftpProgressMonitor) null, 0L);
    }

    @Deprecated
    public final InputStream get(String str, SftpProgressMonitor sftpProgressMonitor, int i) throws SftpException {
        return get(str, sftpProgressMonitor, 0L);
    }

    public final InputStream get(String str, SftpProgressMonitor sftpProgressMonitor, long j) throws SftpException {
        try {
            ((Channel.MyPipedInputStream) this.P).updateReadSide();
            String strD = D(G(str));
            byte[] bArrP = Util.p(strD, this.W);
            SftpATTRS sftpATTRST = t(bArrP);
            if (sftpProgressMonitor != null) {
                sftpProgressMonitor.init(1, strD, "??", sftpATTRST.b);
            }
            I(bArrP, 1);
            Header header = new Header();
            A(this.I, header);
            int i = header.a;
            int i2 = header.b;
            x(this.I, i);
            if (i2 != 101 && i2 != 102) {
                throw new SftpException(4, "");
            }
            Buffer buffer = this.I;
            if (i2 != 101) {
                byte[] string = buffer.getString();
                RequestQueue requestQueue = this.Z;
                requestQueue.c = 0;
                requestQueue.b = 0;
                return new InputStream(this, j, sftpProgressMonitor, string) { // from class: com.jcraft.jsch.ChannelSftp.2
                    public boolean a = false;
                    public int b = 0;
                    public final byte[] c = new byte[1];
                    public byte[] d = new byte[1024];
                    public Header e = new Header();
                    public int f = 1;
                    public long k;
                    public final /* synthetic */ SftpProgressMonitor n;
                    public final /* synthetic */ byte[] p;
                    public final /* synthetic */ ChannelSftp q;

                    {
                        this.n = sftpProgressMonitor;
                        this.p = string;
                        this.q = this;
                        this.k = j;
                    }

                    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() throws IOException {
                        if (this.a) {
                            return;
                        }
                        this.a = true;
                        SftpProgressMonitor sftpProgressMonitor2 = this.n;
                        if (sftpProgressMonitor2 != null) {
                            sftpProgressMonitor2.end();
                        }
                        ChannelSftp channelSftp = this.q;
                        channelSftp.Z.a(channelSftp.I, this.e);
                        try {
                            channelSftp.q(this.p, this.e);
                        } catch (IOException e) {
                            throw e;
                        } catch (Exception e2) {
                            throw new IOException(e2.toString(), e2);
                        }
                    }

                    @Override // java.io.InputStream
                    public final int read(byte[] bArr, int i3, int i4) throws IOException {
                        String strH;
                        int length = i4;
                        if (!this.a) {
                            bArr.getClass();
                            if (i3 < 0 || length < 0 || i3 + length > bArr.length) {
                                l0.a();
                                return 0;
                            }
                            if (length != 0) {
                                int i5 = this.b;
                                SftpProgressMonitor sftpProgressMonitor2 = this.n;
                                if (i5 > 0) {
                                    if (i5 <= length) {
                                        length = i5;
                                    }
                                    System.arraycopy(this.d, 0, bArr, i3, length);
                                    int i6 = this.b;
                                    if (length != i6) {
                                        byte[] bArr2 = this.d;
                                        System.arraycopy(bArr2, length, bArr2, 0, i6 - length);
                                    }
                                    if (sftpProgressMonitor2 == null || sftpProgressMonitor2.count(length)) {
                                        this.b -= length;
                                        return length;
                                    }
                                    close();
                                    return -1;
                                }
                                ChannelSftp channelSftp = this.q;
                                byte[] bArr3 = channelSftp.I.b;
                                if (bArr3.length - 13 < length) {
                                    length = bArr3.length - 13;
                                }
                                if (channelSftp.M == 0 && length > 1024) {
                                    length = 1024;
                                }
                                channelSftp.Z.getClass();
                                int length2 = channelSftp.M == 0 ? 1024 : channelSftp.I.b.length - 13;
                                while (true) {
                                    RequestQueue requestQueue2 = channelSftp.Z;
                                    if (requestQueue2.c >= this.f) {
                                        break;
                                    }
                                    try {
                                        channelSftp.L(this.p, this.k, length2, requestQueue2);
                                        this.k += (long) length2;
                                    } catch (Exception unused) {
                                        y5.m("error");
                                        return 0;
                                    }
                                }
                                Buffer buffer2 = channelSftp.I;
                                Header header2 = this.e;
                                channelSftp.A(buffer2, header2);
                                this.e = header2;
                                this.b = header2.a;
                                int i7 = header2.b;
                                try {
                                    RequestQueue.Request requestB = channelSftp.Z.b(header2.c);
                                    if (i7 != 101 && i7 != 103) {
                                        StringBuilder sb = new StringBuilder("Unexpected server response type: ");
                                        if (i7 == -56) {
                                            strH = "SSH_FXP_EXTENDED";
                                        } else if (i7 != -55) {
                                            switch (i7) {
                                                case 1:
                                                    strH = "SSH_FXP_INIT";
                                                    break;
                                                case 2:
                                                    strH = "SSH_FXP_VERSION";
                                                    break;
                                                case 3:
                                                    strH = "SSH_FXP_OPEN";
                                                    break;
                                                case 4:
                                                    strH = "SSH_FXP_CLOSE";
                                                    break;
                                                case 5:
                                                    strH = "SSH_FXP_READ";
                                                    break;
                                                case 6:
                                                    strH = "SSH_FXP_WRITE";
                                                    break;
                                                case 7:
                                                    strH = "SSH_FXP_LSTAT";
                                                    break;
                                                case 8:
                                                    strH = "SSH_FXP_FSTAT";
                                                    break;
                                                case XmlPullParser.COMMENT /* 9 */:
                                                    strH = "SSH_FXP_SETSTAT";
                                                    break;
                                                case 10:
                                                    strH = "SSH_FXP_FSETSTAT";
                                                    break;
                                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                                    strH = "SSH_FXP_OPENDIR";
                                                    break;
                                                case 12:
                                                    strH = "SSH_FXP_READDIR";
                                                    break;
                                                case 13:
                                                    strH = "SSH_FXP_REMOVE";
                                                    break;
                                                case 14:
                                                    strH = "SSH_FXP_MKDIR";
                                                    break;
                                                case 15:
                                                    strH = "SSH_FXP_RMDIR";
                                                    break;
                                                case Argon2.V10 /* 16 */:
                                                    strH = "SSH_FXP_REALPATH";
                                                    break;
                                                case 17:
                                                    strH = "SSH_FXP_STAT";
                                                    break;
                                                case 18:
                                                    strH = "SSH_FXP_RENAME";
                                                    break;
                                                case Argon2.V13 /* 19 */:
                                                    strH = "SSH_FXP_READLINK";
                                                    break;
                                                case 20:
                                                    strH = "SSH_FXP_SYMLINK";
                                                    break;
                                                default:
                                                    switch (i7) {
                                                        case 101:
                                                            strH = "SSH_FXP_STATUS";
                                                            break;
                                                        case 102:
                                                            strH = "SSH_FXP_HANDLE";
                                                            break;
                                                        case 103:
                                                            strH = "SSH_FXP_DATA";
                                                            break;
                                                        case 104:
                                                            strH = "SSH_FXP_NAME";
                                                            break;
                                                        case 105:
                                                            strH = "SSH_FXP_ATTRS";
                                                            break;
                                                        default:
                                                            strH = xs1.h(i7, "Unknown code: (", ")");
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            strH = "SSH_FXP_EXTENDED_REPLY";
                                        }
                                        sb.append(strH);
                                        throw new IOException(sb.toString());
                                    }
                                    Buffer buffer3 = channelSftp.I;
                                    if (i7 == 101) {
                                        channelSftp.x(buffer3, this.b);
                                        int i8 = channelSftp.I.getInt();
                                        this.b = 0;
                                        if (i8 == 1) {
                                            close();
                                            return -1;
                                        }
                                        y5.m("SFTP status error: ".concat(channelSftp.O(channelSftp.I, i8)));
                                        return 0;
                                    }
                                    buffer3.d = 0;
                                    channelSftp.w(buffer3.b, 0, 4);
                                    int i9 = channelSftp.I.getInt();
                                    int i10 = this.b - 4;
                                    this.b = i10;
                                    int i11 = i10 - i9;
                                    long j2 = i9;
                                    if (i9 > 0) {
                                        if (i9 <= length) {
                                            length = i9;
                                        }
                                        int i12 = channelSftp.P.read(bArr, i3, length);
                                        if (i12 >= 0) {
                                            int i13 = i9 - i12;
                                            this.b = i13;
                                            if (i13 > 0) {
                                                if (this.d.length < i13) {
                                                    this.d = new byte[i13];
                                                }
                                                int i14 = 0;
                                                while (i13 > 0) {
                                                    int i15 = channelSftp.P.read(this.d, i14, i13);
                                                    if (i15 <= 0) {
                                                        break;
                                                    }
                                                    i14 += i15;
                                                    i13 -= i15;
                                                }
                                            }
                                            if (i11 > 0) {
                                                channelSftp.P.skip(i11);
                                            }
                                            if (j2 < requestB.c) {
                                                channelSftp.Z.a(channelSftp.I, this.e);
                                                try {
                                                    try {
                                                        channelSftp.L(this.p, requestB.b + j2, (int) (requestB.c - j2), channelSftp.Z);
                                                        this.k = requestB.b + requestB.c;
                                                    } catch (Exception unused2) {
                                                        y5.m("error");
                                                        return 0;
                                                    }
                                                } catch (Exception unused3) {
                                                }
                                            }
                                            int i16 = this.f;
                                            if (i16 < channelSftp.Z.a.length) {
                                                this.f = i16 + 1;
                                            }
                                            if (sftpProgressMonitor2 == null || sftpProgressMonitor2.count(i12)) {
                                                return i12;
                                            }
                                            close();
                                            return -1;
                                        }
                                    }
                                } catch (RequestQueue.OutOfOrderException e) {
                                    this.k = e.a;
                                    skip(this.e.a);
                                    channelSftp.Z.a(channelSftp.I, this.e);
                                    return 0;
                                } catch (SftpException e2) {
                                    throw new IOException("error: ".concat(e2.toString()), e2);
                                }
                            }
                            return 0;
                        }
                        return -1;
                    }

                    @Override // java.io.InputStream
                    public final int read(byte[] bArr) throws IOException {
                        if (this.a) {
                            return -1;
                        }
                        return read(bArr, 0, bArr.length);
                    }

                    @Override // java.io.InputStream
                    public final int read() throws IOException {
                        if (!this.a) {
                            byte[] bArr = this.c;
                            if (read(bArr, 0, 1) != -1) {
                                return bArr[0] & 255;
                            }
                        }
                        return -1;
                    }
                };
            }
            Q(this.I, buffer.getInt());
            throw null;
        } catch (Exception e) {
            if (!(e instanceof SftpException)) {
                z5.h(e);
                return null;
            }
            throw ((SftpException) e);
        }
    }
}
