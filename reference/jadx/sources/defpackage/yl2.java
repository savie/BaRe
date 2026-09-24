package defpackage;

import android.util.StateSet;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.Socket;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yl2 {
    public int a;
    public Object b;
    public Object c;
    public Serializable d;
    public Object e;
    public Object f;
    public Object g;
    public Object h;

    public yl2(tb7 tb7Var) {
        d();
        a(StateSet.WILD_CARD, tb7Var);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Serializable, java.lang.Object, tb7[]] */
    public void a(int[] iArr, tb7 tb7Var) {
        int i = this.a;
        if (i == 0 || iArr.length == 0) {
            this.b = tb7Var;
        }
        int[][] iArr2 = (int[][]) this.c;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2][];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.c = iArr3;
            ?? r1 = new tb7[i2];
            System.arraycopy((tb7[]) this.d, 0, r1, 0, i);
            this.d = r1;
        }
        int[][] iArr4 = (int[][]) this.c;
        int i3 = this.a;
        iArr4[i3] = iArr;
        ((tb7[]) this.d)[i3] = tb7Var;
        this.a = i3 + 1;
    }

    public nm7 b() {
        if (this.a == 0) {
            return null;
        }
        return new nm7(this);
    }

    public void c() {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.d;
        if (e()) {
            reentrantReadWriteLock.writeLock().lock();
            try {
                if (e()) {
                    xl2 xl2Var = (xl2) this.h;
                    xl2Var.a.k("Stopping PacketReader...");
                    xl2Var.d.set(true);
                    xl2Var.e.interrupt();
                    if (((Socket) this.f).getInputStream() != null) {
                        ((Socket) this.f).getInputStream().close();
                    }
                    BufferedOutputStream bufferedOutputStream = (BufferedOutputStream) this.g;
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                        this.g = null;
                    }
                    Socket socket = (Socket) this.f;
                    if (socket != null) {
                        socket.close();
                        this.f = null;
                    }
                }
            } finally {
                reentrantReadWriteLock.writeLock().unlock();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, tb7[]] */
    public void d() {
        this.b = new tb7();
        this.c = new int[10][];
        this.d = new tb7[10];
    }

    public boolean e() {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.d;
        reentrantReadWriteLock.readLock().lock();
        try {
            Socket socket = (Socket) this.f;
            return (socket == null || !socket.isConnected() || ((Socket) this.f).isClosed()) ? false : true;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public void f(ev6 ev6Var) {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.d;
        l15 l15Var = (l15) this.b;
        l15Var.g(ev6Var, "Acquiring write lock to send packet << {} >>");
        if (!e()) {
            throw new va8(String.format("Cannot write %s as transport is disconnected", ev6Var));
        }
        reentrantReadWriteLock.writeLock().lock();
        try {
            try {
                if (!e()) {
                    throw new va8(String.format("Cannot write %s as transport got disconnected", ev6Var));
                }
                l15Var.D(ev6Var, "Writing packet {}");
                Object obj = ((u00) this.c).b;
                zu6 zu6Var = new zu6();
                ev6Var.a(zu6Var);
                g(zu6Var.a());
                ((BufferedOutputStream) this.g).write(zu6Var.a, zu6Var.c, zu6Var.a());
                ((BufferedOutputStream) this.g).flush();
                l15Var.g(ev6Var, "Packet {} sent, lock released.");
                reentrantReadWriteLock.writeLock().unlock();
            } catch (IOException e) {
                throw new va8(e);
            }
        } catch (Throwable th) {
            reentrantReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    public void g(int i) throws IOException {
        ((BufferedOutputStream) this.g).write(0);
        ((BufferedOutputStream) this.g).write((byte) (i >> 16));
        ((BufferedOutputStream) this.g).write((byte) (i >> 8));
        ((BufferedOutputStream) this.g).write((byte) (i & 255));
    }
}
