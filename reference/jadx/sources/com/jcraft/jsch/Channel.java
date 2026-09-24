package com.jcraft.jsch;

import defpackage.a6;
import defpackage.e6;
import defpackage.y5;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Channel {
    public static final AtomicInteger u = new AtomicInteger();
    public final int a;
    public volatile int b = -1;
    public byte[] c;
    public volatile int d;
    public volatile int e;
    public volatile int f;
    public volatile long g;
    public volatile int h;
    public IO i;
    public Thread j;
    public volatile boolean k;
    public volatile boolean l;
    public volatile boolean m;
    public volatile boolean n;
    public volatile boolean o;
    public volatile int p;
    public volatile int q;
    public volatile int r;
    public Session s;
    public int t;

    public Channel() {
        byte[] bArr = Util.a;
        this.c = "foo".getBytes(StandardCharsets.UTF_8);
        this.d = 1048576;
        this.e = this.d;
        this.f = 16384;
        this.g = 0L;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.t = 0;
        this.a = u.getAndIncrement() & Integer.MAX_VALUE;
    }

    public final synchronized void a(long j) {
        this.g += j;
        if (this.t > 0) {
            notifyAll();
        }
    }

    public final void b() {
        if (this.m) {
            return;
        }
        this.m = true;
        this.l = true;
        this.k = true;
        int i = this.b;
        if (i == -1) {
            return;
        }
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.putByte((byte) 97);
            buffer.putInt(i);
            synchronized (this) {
                try {
                    getSession().z(packet);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void c() {
        if (this.k) {
            return;
        }
        this.k = true;
        int i = this.b;
        if (i == -1) {
            return;
        }
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.putByte((byte) 96);
            buffer.putInt(i);
            synchronized (this) {
                try {
                    if (!this.m) {
                        getSession().z(packet);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
        }
    }

    public void connect(int i) throws JSchException {
        this.r = i;
        try {
            h();
            start();
        } catch (Exception e) {
            this.n = false;
            disconnect();
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            a6.f(e);
        }
    }

    public void d() throws IOException {
        this.l = true;
        try {
            IO io = this.i;
            io.getClass();
            OutputStream outputStream = io.b;
            if (outputStream != null && !io.e) {
                outputStream.close();
            }
            io.b = null;
        } catch (NullPointerException | Exception unused) {
        }
    }

    public void disconnect() {
        try {
            synchronized (this) {
                if (!this.n) {
                    Session session = this.s;
                    if (session != null) {
                        session.g(this);
                        return;
                    }
                    return;
                }
                this.n = false;
                b();
                this.k = true;
                this.l = true;
                this.j = null;
                try {
                    IO io = this.i;
                    if (io != null) {
                        io.a();
                    }
                } catch (Exception unused) {
                }
                Session session2 = this.s;
                if (session2 != null) {
                    session2.g(this);
                }
            }
        } catch (Throwable th) {
            Session session3 = this.s;
            if (session3 != null) {
                session3.g(this);
            }
            throw th;
        }
    }

    public Packet e() {
        Buffer buffer = new Buffer(200);
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 90);
        buffer.putString(this.c);
        buffer.putInt(this.a);
        buffer.putInt(this.e);
        buffer.putInt(this.f);
        return packet;
    }

    public void f(Buffer buffer) {
        k(buffer.getInt());
        long uInt = buffer.getUInt();
        synchronized (this) {
            this.g = uInt;
        }
        this.h = buffer.getInt();
    }

    public final int getExitStatus() {
        return this.p;
    }

    public final InputStream getExtInputStream() throws IOException {
        int i;
        Session session = this.s;
        if (session != null && isConnected() && session.getLogger().isEnabled(2)) {
            session.getLogger().log(2, "getExtInputStream() should be called before connect()");
        }
        try {
            i = Integer.parseInt(getSession().getConfig("max_input_buffer_size"));
        } catch (Exception unused) {
            i = 32768;
        }
        MyPipedInputStream myPipedInputStream = new MyPipedInputStream(32768, i);
        boolean z = 32768 < i;
        IO io = this.i;
        PassiveOutputStream passiveOutputStream = new PassiveOutputStream(myPipedInputStream, z);
        io.f = false;
        io.c = passiveOutputStream;
        return myPipedInputStream;
    }

    public final int getId() {
        return this.a;
    }

    public final InputStream getInputStream() throws IOException {
        int i;
        Session session = this.s;
        if (session != null && isConnected() && session.getLogger().isEnabled(2)) {
            session.getLogger().log(2, "getInputStream() should be called before connect()");
        }
        try {
            i = Integer.parseInt(getSession().getConfig("max_input_buffer_size"));
        } catch (Exception unused) {
            i = 32768;
        }
        MyPipedInputStream myPipedInputStream = new MyPipedInputStream(32768, i);
        boolean z = 32768 < i;
        IO io = this.i;
        PassiveOutputStream passiveOutputStream = new PassiveOutputStream(myPipedInputStream, z);
        io.e = false;
        io.b = passiveOutputStream;
        return myPipedInputStream;
    }

    public final OutputStream getOutputStream() throws IOException {
        return new OutputStream(this) { // from class: com.jcraft.jsch.Channel.1
            public int a = 0;
            public Buffer b = null;
            public Packet c = null;
            public boolean d = false;
            public final byte[] e = new byte[1];
            public final /* synthetic */ Channel k;

            {
                this.k = this;
            }

            public final synchronized void a() {
                Buffer buffer = new Buffer(this.k.h);
                this.b = buffer;
                this.c = new Packet(buffer);
                try {
                    if ((buffer.b.length - 14) - this.k.getSession().k() <= 0) {
                        this.b = null;
                        this.c = null;
                        throw new IOException("failed to initialize the channel.");
                    }
                } catch (JSchException e) {
                    throw new IOException("failed to initialize the channel.", e);
                }
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                if (this.c == null) {
                    try {
                        a();
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (this.d) {
                    return;
                }
                if (this.a > 0) {
                    flush();
                }
                this.c();
                this.d = true;
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() throws IOException {
                if (this.d) {
                    y5.m("Already closed");
                    return;
                }
                if (this.a == 0) {
                    return;
                }
                this.c.a();
                this.b.putByte((byte) 94);
                this.b.putInt(this.k.b);
                this.b.putInt(this.a);
                this.b.h(this.a);
                try {
                    int i = this.a;
                    this.a = 0;
                    synchronized (this) {
                        try {
                            if (!this.m) {
                                this.k.getSession().A(this.c, this, i);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    close();
                    throw new IOException(e.toString(), e);
                }
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) throws IOException {
                if (this.c == null) {
                    a();
                }
                if (this.d) {
                    y5.m("Already closed");
                    return;
                }
                byte[] bArr2 = this.b.b;
                int length = bArr2.length;
                while (i2 > 0) {
                    try {
                        int iK = this.k.getSession().k();
                        int i3 = this.a + 14;
                        int i4 = (length - i3) - iK;
                        if (i2 <= i4) {
                            i4 = i2;
                        }
                        if (i4 <= 0) {
                            flush();
                        } else {
                            System.arraycopy(bArr, i, bArr2, i3, i4);
                            this.a += i4;
                            i += i4;
                            i2 -= i4;
                        }
                    } catch (JSchException e) {
                        throw new IOException(e.toString(), e);
                    }
                }
            }

            @Override // java.io.OutputStream
            public final void write(int i) throws IOException {
                byte[] bArr = this.e;
                bArr[0] = (byte) i;
                write(bArr, 0, 1);
            }
        };
    }

    public final Session getSession() throws JSchException {
        Session session = this.s;
        if (session != null) {
            return session;
        }
        e6.h("session is not available");
        return null;
    }

    public final void h() throws JSchException {
        Session session = getSession();
        if (!session.z) {
            e6.h("session is down");
            return;
        }
        session.z(e());
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.r;
        int i = j != 0 ? 1 : 2000;
        synchronized (this) {
            while (this.b == -1 && session.z && i > 0) {
                if (j <= 0 || System.currentTimeMillis() - jCurrentTimeMillis <= j) {
                    long j2 = j == 0 ? 10L : j;
                    try {
                        this.t = 1;
                        wait(j2);
                    } catch (InterruptedException unused) {
                    } catch (Throwable th) {
                        this.t = 0;
                        throw th;
                    }
                    this.t = 0;
                    i--;
                } else {
                    i = 0;
                }
            }
        }
        if (!session.z) {
            e6.h("session is down");
            return;
        }
        if (this.b == -1) {
            e6.h("channel is not opened.");
        } else if (this.o) {
            this.n = true;
        } else {
            e6.h("channel is not opened.");
        }
    }

    public final void i() {
        Buffer buffer = new Buffer(200);
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 91);
        buffer.putInt(this.b);
        buffer.putInt(this.a);
        buffer.putInt(this.e);
        buffer.putInt(this.f);
        getSession().z(packet);
    }

    public final boolean isClosed() {
        return this.m;
    }

    public final boolean isConnected() {
        Session session = this.s;
        return session != null && session.z && this.n;
    }

    public final boolean isEOF() {
        return this.l;
    }

    public final void j() {
        try {
            Buffer buffer = new Buffer(200);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.putByte((byte) 92);
            buffer.putInt(this.b);
            buffer.putInt(1);
            byte[] bArr = Util.a;
            buffer.putString("open failed".getBytes(StandardCharsets.UTF_8));
            buffer.putString(Util.c);
            getSession().z(packet);
        } catch (Exception unused) {
        }
    }

    public final synchronized void k(int i) {
        this.b = i;
        if (this.t > 0) {
            notifyAll();
        }
    }

    public void l(byte[] bArr, int i, int i2) throws IOException {
        try {
            IO io = this.i;
            io.b.write(bArr, i, i2);
            io.b.flush();
        } catch (NullPointerException unused) {
        }
    }

    public abstract void run();

    public final void sendSignal(String str) throws Exception {
        RequestSignal requestSignal = new RequestSignal();
        requestSignal.d = str;
        requestSignal.request(getSession(), this);
    }

    public final void setExtOutputStream(OutputStream outputStream) {
        IO io = this.i;
        io.f = false;
        io.c = outputStream;
    }

    public void setInputStream(InputStream inputStream) {
        IO io = this.i;
        io.d = false;
        io.a = inputStream;
    }

    public void setOutputStream(OutputStream outputStream) {
        IO io = this.i;
        io.e = false;
        io.b = outputStream;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class PassiveInputStream extends MyPipedInputStream {
        public PipedOutputStream c;

        public PassiveInputStream(PipedOutputStream pipedOutputStream, int i) throws IOException {
            super(pipedOutputStream, i);
            this.c = pipedOutputStream;
        }

        @Override // java.io.PipedInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            PipedOutputStream pipedOutputStream = this.c;
            if (pipedOutputStream != null) {
                pipedOutputStream.close();
            }
            this.c = null;
        }

        public PassiveInputStream(PipedOutputStream pipedOutputStream) throws IOException {
            super(pipedOutputStream);
            this.c = pipedOutputStream;
        }
    }

    public final void setExtOutputStream(OutputStream outputStream, boolean z) {
        IO io = this.i;
        io.f = z;
        io.c = outputStream;
    }

    public final void setInputStream(InputStream inputStream, boolean z) {
        IO io = this.i;
        io.d = z;
        io.a = inputStream;
    }

    public final void setOutputStream(OutputStream outputStream, boolean z) {
        IO io = this.i;
        io.e = z;
        io.b = outputStream;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class PassiveOutputStream extends PipedOutputStream {
        public final MyPipedInputStream a;

        public PassiveOutputStream(PipedInputStream pipedInputStream, boolean z) throws IOException {
            super(pipedInputStream);
            this.a = null;
            if (z && (pipedInputStream instanceof MyPipedInputStream)) {
                this.a = (MyPipedInputStream) pipedInputStream;
            }
        }

        @Override // java.io.PipedOutputStream, java.io.OutputStream
        public final void write(int i) throws IOException {
            MyPipedInputStream myPipedInputStream = this.a;
            if (myPipedInputStream != null) {
                myPipedInputStream.a(1);
            }
            super.write(i);
        }

        @Override // java.io.PipedOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            MyPipedInputStream myPipedInputStream = this.a;
            if (myPipedInputStream != null) {
                myPipedInputStream.a(i2);
            }
            super.write(bArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class MyPipedInputStream extends PipedInputStream {
        public final int a;
        public final int b;

        public MyPipedInputStream(int i) throws IOException {
            this.a = 1024;
            this.b = 1024;
            ((PipedInputStream) this).buffer = new byte[i];
            this.a = i;
            this.b = i;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001b A[Catch: all -> 0x003f, TRY_ENTER, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0022 A[Catch: all -> 0x003f, LOOP:0: B:15:0x001e->B:17:0x0022, LOOP_END, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:20:0x0029  */
        /* JADX WARN: Code duplicated, block: B:23:0x002e A[DONT_GENERATE] */
        /* JADX WARN: Code duplicated, block: B:25:0x0030 A[Catch: all -> 0x003f, TRY_ENTER, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x0038 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:30:0x0041 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:31:0x0043 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:32:0x0045  */
        /* JADX WARN: Code duplicated, block: B:33:0x0046 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:34:0x0062 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:35:0x0064 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:37:0x0072 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000c, B:14:0x001b, B:15:0x001e, B:17:0x0022, B:18:0x0025, B:25:0x0030, B:27:0x0038, B:36:0x006f, B:33:0x0046, B:35:0x0064, B:37:0x0072, B:39:0x0075, B:41:0x0079, B:45:0x007f, B:9:0x0012), top: B:50:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:43:0x007d  */
        /* JADX WARN: Code duplicated, block: B:44:0x007e  */
        /* JADX WARN: Instruction removed from duplicated block: B:23:0x002e, please report this as an issue */
        public final synchronized void a(int i) {
            int length;
            byte[] bArr;
            int i2;
            int i3;
            int length2;
            int length3;
            int i4;
            byte[] bArr2;
            int i5;
            int i6;
            try {
                int length4 = ((PipedInputStream) this).out;
                int i7 = ((PipedInputStream) this).in;
                if (length4 >= i7) {
                    if (i7 >= length4) {
                        length = 0;
                    } else if (i7 == -1) {
                        length = ((PipedInputStream) this).buffer.length;
                    }
                    bArr = ((PipedInputStream) this).buffer;
                    if (length < i) {
                        length2 = bArr.length - length;
                        length3 = bArr.length;
                        while (length3 - length2 < i) {
                            length3 *= 2;
                        }
                        i4 = this.b;
                        if (length3 > i4) {
                            length3 = i4;
                        }
                        if (length3 - length2 < i) {
                            return;
                        }
                        bArr2 = new byte[length3];
                        i5 = ((PipedInputStream) this).out;
                        i6 = ((PipedInputStream) this).in;
                        if (i5 < i6) {
                            byte[] bArr3 = ((PipedInputStream) this).buffer;
                            System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
                        } else if (i6 < i5) {
                            if (i6 == -1) {
                                System.arraycopy(((PipedInputStream) this).buffer, 0, bArr2, 0, i6);
                                byte[] bArr4 = ((PipedInputStream) this).buffer;
                                int i8 = ((PipedInputStream) this).out;
                                System.arraycopy(bArr4, i8, bArr2, length3 - (bArr4.length - i8), bArr4.length - i8);
                                ((PipedInputStream) this).out = length3 - (((PipedInputStream) this).buffer.length - ((PipedInputStream) this).out);
                            }
                        } else if (i6 == i5) {
                            byte[] bArr5 = ((PipedInputStream) this).buffer;
                            System.arraycopy(bArr5, 0, bArr2, 0, bArr5.length);
                            ((PipedInputStream) this).in = ((PipedInputStream) this).buffer.length;
                        }
                        ((PipedInputStream) this).buffer = bArr2;
                    } else if (bArr.length == length && length > (i2 = this.a)) {
                        i3 = length / 2;
                        if (i3 < i2) {
                            i2 = i3;
                        }
                        ((PipedInputStream) this).buffer = new byte[i2];
                    }
                }
                length4 = ((PipedInputStream) this).buffer.length;
                length = length4 - i7;
                bArr = ((PipedInputStream) this).buffer;
                if (length < i) {
                    length2 = bArr.length - length;
                    length3 = bArr.length;
                    while (length3 - length2 < i) {
                        length3 *= 2;
                    }
                    i4 = this.b;
                    if (length3 > i4) {
                        length3 = i4;
                    }
                    if (length3 - length2 < i) {
                        return;
                    }
                    bArr2 = new byte[length3];
                    i5 = ((PipedInputStream) this).out;
                    i6 = ((PipedInputStream) this).in;
                    if (i5 < i6) {
                        byte[] bArr6 = ((PipedInputStream) this).buffer;
                        System.arraycopy(bArr6, 0, bArr2, 0, bArr6.length);
                    } else if (i6 < i5) {
                        if (i6 == -1) {
                            System.arraycopy(((PipedInputStream) this).buffer, 0, bArr2, 0, i6);
                            byte[] bArr7 = ((PipedInputStream) this).buffer;
                            int i9 = ((PipedInputStream) this).out;
                            System.arraycopy(bArr7, i9, bArr2, length3 - (bArr7.length - i9), bArr7.length - i9);
                            ((PipedInputStream) this).out = length3 - (((PipedInputStream) this).buffer.length - ((PipedInputStream) this).out);
                        }
                    } else if (i6 == i5) {
                        byte[] bArr8 = ((PipedInputStream) this).buffer;
                        System.arraycopy(bArr8, 0, bArr2, 0, bArr8.length);
                        ((PipedInputStream) this).in = ((PipedInputStream) this).buffer.length;
                    }
                    ((PipedInputStream) this).buffer = bArr2;
                } else if (bArr.length == length) {
                    i3 = length / 2;
                    if (i3 < i2) {
                        i2 = i3;
                    }
                    ((PipedInputStream) this).buffer = new byte[i2];
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public final synchronized void updateReadSide() throws IOException {
            if (available() != 0) {
                return;
            }
            ((PipedInputStream) this).out = 0;
            byte[] bArr = ((PipedInputStream) this).buffer;
            ((PipedInputStream) this).in = 1;
            bArr[0] = 0;
            read();
        }

        public MyPipedInputStream() throws IOException {
            this.a = 1024;
            this.b = 1024;
        }

        public MyPipedInputStream(int i, int i2) throws IOException {
            this(i);
            this.b = i2;
        }

        public MyPipedInputStream(PipedOutputStream pipedOutputStream) throws IOException {
            super(pipedOutputStream);
            this.a = 1024;
            this.b = 1024;
        }

        public MyPipedInputStream(PipedOutputStream pipedOutputStream, int i) throws IOException {
            super(pipedOutputStream);
            this.a = 1024;
            this.b = 1024;
            ((PipedInputStream) this).buffer = new byte[i];
            this.a = i;
        }
    }

    public void g() {
    }

    public void start() throws JSchException {
    }

    public void setXForwarding(boolean z) {
    }

    public final void connect() throws JSchException {
        connect(0);
    }
}
