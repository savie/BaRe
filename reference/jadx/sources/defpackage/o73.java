package defpackage;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o73 implements ij7 {
    public final on4 a;
    public long b;
    public boolean c;

    public o73(on4 on4Var, long j) {
        this.a = on4Var;
        this.b = j;
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) {
        long j2;
        long j3;
        int i;
        nw0Var.getClass();
        if (this.c) {
            l0.e("closed");
            return 0L;
        }
        on4 on4Var = this.a;
        long j4 = this.b;
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        long j5 = j + j4;
        long j6 = j4;
        while (true) {
            if (j6 < j5) {
                m67 m67VarA = nw0Var.A(1);
                byte[] bArr = m67VarA.a;
                int i2 = m67VarA.c;
                j2 = -1;
                int iMin = (int) Math.min(j5 - j6, 8192 - i2);
                synchronized (on4Var) {
                    bArr.getClass();
                    on4Var.d.seek(j6);
                    i = 0;
                    while (true) {
                        if (i < iMin) {
                            int i3 = on4Var.d.read(bArr, i2, iMin - i);
                            if (i3 != -1) {
                                i += i3;
                            } else if (i == 0) {
                                i = -1;
                                break;
                            }
                        }
                        break;
                    }
                }
                if (i == -1) {
                    if (m67VarA.b == m67VarA.c) {
                        nw0Var.a = m67VarA.a();
                        o67.a(m67VarA);
                    }
                    if (j4 == j6) {
                        j3 = -1;
                        break;
                    }
                } else {
                    m67VarA.c += i;
                    long j7 = i;
                    j6 += j7;
                    nw0Var.b += j7;
                }
            } else {
                j2 = -1;
            }
            j3 = j6 - j4;
            break;
        }
        if (j3 != j2) {
            this.b += j3;
        }
        return j3;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        on4 on4Var = this.a;
        if (this.c) {
            return;
        }
        this.c = true;
        ReentrantLock reentrantLock = on4Var.c;
        reentrantLock.lock();
        try {
            int i = on4Var.b - 1;
            on4Var.b = i;
            if (i == 0 && on4Var.a) {
                reentrantLock.unlock();
                synchronized (on4Var) {
                    on4Var.d.close();
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return f48.d;
    }
}
