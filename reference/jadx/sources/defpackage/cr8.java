package defpackage;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cr8 {
    public DataInputStream a;
    public ar8 b;
    public c00 c;
    public byte[] d;
    public gd5 e;
    public volatile boolean f;

    public static long b(byte[] bArr) {
        return (((long) bArr[2]) << 56) + (((long) (bArr[3] & 255)) << 48) + (((long) (bArr[4] & 255)) << 40) + (((long) (bArr[5] & 255)) << 32) + (((long) (bArr[6] & 255)) << 24) + ((long) ((bArr[7] & 255) << 16)) + ((long) ((bArr[8] & 255) << 8)) + ((long) (bArr[9] & 255));
    }

    public final void a(boolean z, byte b, byte[] bArr) {
        gd5 gd5Var;
        if (b == 9) {
            if (!z) {
                throw new br8("PING must not fragment across frames");
            }
            if (bArr.length > 125) {
                throw new br8("PING frame too long");
            }
            ar8 ar8Var = this.b;
            synchronized (ar8Var) {
                ar8Var.e((byte) 10, bArr);
            }
            return;
        }
        gd5 gd5Var2 = this.e;
        if (gd5Var2 != null && b != 0) {
            throw new br8("Failed to continue outstanding frame");
        }
        if (gd5Var2 == null && b == 0) {
            throw new br8("Received continuing frame, but there's nothing to continue");
        }
        if (gd5Var2 == null) {
            if (b == 2) {
                eo2 eo2Var = new eo2();
                eo2Var.a = 0;
                eo2Var.b = new ArrayList();
                gd5Var = eo2Var;
            } else {
                jd5 jd5Var = new jd5();
                jd5Var.a = new StringBuilder();
                gd5Var = jd5Var;
            }
            this.e = gd5Var;
        }
        if (!this.e.a(bArr)) {
            throw new br8("Failed to decode frame");
        }
        if (z) {
            ut1 ut1VarB = this.e.b();
            this.e = null;
            c00 c00Var = this.c;
            c00Var.getClass();
            String str = ut1VarB.a;
            nr8 nr8Var = (nr8) c00Var.c;
            if (nr8Var.j.e()) {
                nr8Var.j.c(xs1.j("ws message: ", str), null, new Object[0]);
            }
            nr8Var.i.execute(new v66(c00Var, str, 1));
        }
    }

    public final void c() {
        long jB;
        this.c = this.b.c;
        while (!this.f) {
            try {
                this.a.readFully(this.d, 0, 1);
                byte[] bArr = this.d;
                byte b = bArr[0];
                boolean z = (b & 128) != 0;
                if ((b & 112) != 0) {
                    throw new br8("Invalid frame received");
                }
                byte b2 = (byte) (b & 15);
                this.a.readFully(bArr, 1, 1);
                byte[] bArr2 = this.d;
                byte b3 = bArr2[1];
                if (b3 < 126) {
                    jB = b3;
                } else if (b3 == 126) {
                    this.a.readFully(bArr2, 2, 2);
                    byte[] bArr3 = this.d;
                    jB = (((long) (bArr3[2] & 255)) << 8) | ((long) (bArr3[3] & 255));
                } else if (b3 == 127) {
                    this.a.readFully(bArr2, 2, 8);
                    jB = b(this.d);
                } else {
                    jB = 0;
                }
                int i = (int) jB;
                byte[] bArr4 = new byte[i];
                this.a.readFully(bArr4, 0, i);
                if (b2 == 8) {
                    this.b.b();
                } else if (b2 != 10) {
                    if (b2 != 1 && b2 != 2 && b2 != 9 && b2 != 0) {
                        throw new br8("Unsupported opcode: " + ((int) b2));
                    }
                    a(z, b2, bArr4);
                }
            } catch (br8 e) {
                this.f = true;
                ar8 ar8Var = this.b;
                ar8Var.c.n(e);
                if (ar8Var.a == 3) {
                    ar8Var.a();
                }
                ar8Var.b();
            } catch (SocketTimeoutException unused) {
            } catch (IOException e2) {
                br8 br8Var = new br8("IO Error", e2);
                this.f = true;
                ar8 ar8Var2 = this.b;
                ar8Var2.c.n(br8Var);
                if (ar8Var2.a == 3) {
                    ar8Var2.a();
                }
                ar8Var2.b();
            }
        }
    }
}
