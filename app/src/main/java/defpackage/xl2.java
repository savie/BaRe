package defpackage;

import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xl2 implements Runnable {
    public final BufferedInputStream b;
    public final ur1 c;
    public final Thread e;
    public final kw5 f;
    public final l15 a = o15.b(xl2.class);
    public final AtomicBoolean d = new AtomicBoolean(false);

    public xl2(String str, InputStream inputStream, kw5 kw5Var, ur1 ur1Var) {
        if (inputStream instanceof BufferedInputStream) {
            this.b = (BufferedInputStream) inputStream;
        } else {
            this.b = new BufferedInputStream(inputStream);
        }
        this.c = ur1Var;
        Thread thread = new Thread(this, xs1.j("Packet Reader for ", str));
        this.e = thread;
        thread.setDaemon(true);
        this.f = kw5Var;
    }

    public final void a(byte[] bArr) throws IOException {
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            int i2 = this.b.read(bArr, i, length);
            if (i2 == -1) {
                throw new va8(new EOFException("EOF while reading packet"));
            }
            length -= i2;
            i += i2;
        }
    }

    public final void b() throws va8 {
        try {
            try {
                byte[] bArr = new byte[c()];
                a(bArr);
                ev6 ev6Var = this.f.read(bArr);
                this.a.D(ev6Var, "Received packet {}");
                this.c.b.t(ev6Var);
            } catch (iw0 e) {
                e = e;
                throw new va8(e);
            }
        } catch (iw0 | IOException e2) {
            e = e2;
        } catch (va8 e3) {
            throw e3;
        }
    }

    public final int c() throws iw0, IOException {
        byte[] bArr = new byte[4];
        a(bArr);
        jw0 jw0Var = new jw0(bArr, true, vw2.c);
        jw0Var.n();
        byte[] bArr2 = new byte[3];
        jw0Var.o(bArr2, 3);
        return ((bArr2[0] << 16) & 16711680) | ((bArr2[1] << 8) & 65280) | (bArr2[2] & 255);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0084 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
        L0:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r0 = r0.isInterrupted()
            l15 r1 = r8.a
            java.util.concurrent.atomic.AtomicBoolean r2 = r8.d
            if (r0 != 0) goto Laf
            boolean r0 = r2.get()
            if (r0 != 0) goto Laf
            r8.b()     // Catch: defpackage.va8 -> L18
            goto L0
        L18:
            r0 = move-exception
            boolean r3 = r2.get()
            if (r3 == 0) goto L21
            goto Laf
        L21:
            java.lang.String r2 = "PacketReader error, got exception."
            r1.p(r2, r0)
            ur1 r8 = r8.c
            gd r1 = r8.f
            java.lang.Object r2 = r1.c
            java.util.HashMap r2 = (java.util.HashMap) r2
            java.lang.Object r3 = r1.b
            java.util.concurrent.locks.ReentrantReadWriteLock r3 = (java.util.concurrent.locks.ReentrantReadWriteLock) r3
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r4 = r3.writeLock()
            r4.lock()
            java.util.HashSet r4 = new java.util.HashSet     // Catch: java.lang.Throwable -> L84
            java.util.Set r5 = r2.keySet()     // Catch: java.lang.Throwable -> L84
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L84
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L84
        L46:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L84
            if (r5 == 0) goto L86
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L84
            java.lang.Long r5 = (java.lang.Long) r5     // Catch: java.lang.Throwable -> L84
            java.lang.Object r5 = r2.remove(r5)     // Catch: java.lang.Throwable -> L84
            jk6 r5 = (defpackage.jk6) r5     // Catch: java.lang.Throwable -> L84
            java.lang.Object r6 = r1.d     // Catch: java.lang.Throwable -> L84
            java.util.HashMap r6 = (java.util.HashMap) r6     // Catch: java.lang.Throwable -> L84
            java.util.UUID r7 = r5.d     // Catch: java.lang.Throwable -> L84
            r6.remove(r7)     // Catch: java.lang.Throwable -> L84
            m86 r5 = r5.a     // Catch: java.lang.Throwable -> L84
            java.lang.Object r6 = r5.e     // Catch: java.lang.Throwable -> L84
            java.util.concurrent.locks.ReentrantLock r6 = (java.util.concurrent.locks.ReentrantLock) r6     // Catch: java.lang.Throwable -> L84
            r6.lock()     // Catch: java.lang.Throwable -> L84
            java.lang.Object r7 = r5.d     // Catch: java.lang.Throwable -> L7f
            nh4 r7 = (defpackage.nh4) r7     // Catch: java.lang.Throwable -> L7f
            java.lang.Throwable r7 = r7.r(r0)     // Catch: java.lang.Throwable -> L7f
            r5.n = r7     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r5 = r5.f     // Catch: java.lang.Throwable -> L7f
            java.util.concurrent.locks.Condition r5 = (java.util.concurrent.locks.Condition) r5     // Catch: java.lang.Throwable -> L7f
            r5.signalAll()     // Catch: java.lang.Throwable -> L7f
            r6.unlock()     // Catch: java.lang.Throwable -> L84
            goto L46
        L7f:
            r8 = move-exception
            r6.unlock()     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L84:
            r8 = move-exception
            goto La7
        L86:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r3.writeLock()
            r0.unlock()
            r0 = 0
            r8.b(r0)     // Catch: java.lang.Exception -> L92
            goto Lbc
        L92:
            r8 = move-exception
            java.lang.Class r0 = r8.getClass()
            java.lang.String r0 = r0.getSimpleName()
            l15 r1 = defpackage.ur1.I
            java.lang.String r2 = "{} while closing connection on error, ignoring: {}"
            java.lang.String r8 = r8.getMessage()
            r1.m(r0, r8, r2)
            goto Lbc
        La7:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r3.writeLock()
            r0.unlock()
            throw r8
        Laf:
            boolean r0 = r2.get()
            if (r0 == 0) goto Lbc
            java.lang.String r0 = "{} stopped."
            java.lang.Thread r8 = r8.e
            r1.a(r8, r0)
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xl2.run():void");
    }
}
