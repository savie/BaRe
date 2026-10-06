package defpackage;

import android.os.SystemClock;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n19 implements OnCompleteListener {
    public final pz3 a;
    public final int b;
    public final df c;
    public final long d;
    public final long e;

    public n19(pz3 pz3Var, int i, df dfVar, long j, long j2) {
        this.a = pz3Var;
        this.b = i;
        this.c = dfVar;
        this.d = j;
        this.e = j2;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0031 A[RETURN] */
    public static is1 a(g19 g19Var, az3 az3Var, int i) {
        jo9 jo9Var = az3Var.u;
        is1 is1Var = jo9Var == null ? null : jo9Var.d;
        if (is1Var != null && is1Var.b) {
            int[] iArr = is1Var.d;
            int i2 = 0;
            if (iArr == null) {
                int[] iArr2 = is1Var.f;
                if (iArr2 != null) {
                    while (i2 < iArr2.length) {
                        if (iArr2[i2] != i) {
                            i2++;
                        }
                    }
                    if (g19Var.t < is1Var.e) {
                        return is1Var;
                    }
                } else if (g19Var.t < is1Var.e) {
                    return is1Var;
                }
            } else {
                while (i2 < iArr.length) {
                    if (iArr[i2] != i) {
                        i2++;
                    } else if (g19Var.t < is1Var.e) {
                        return is1Var;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        long j;
        long j2;
        long j3 = this.d;
        pz3 pz3Var = this.a;
        if (pz3Var.c()) {
            kq6 kq6Var = (kq6) jq6.i().b;
            if (kq6Var == null || kq6Var.b) {
                g19 g19Var = (g19) pz3Var.j.get(this.c);
                if (g19Var != null) {
                    ne neVar = g19Var.b;
                    if (neVar instanceof az3) {
                        az3 az3Var = (az3) neVar;
                        int i6 = 0;
                        boolean z = j3 > 0;
                        int i7 = az3Var.p;
                        if (kq6Var != null) {
                            z &= kq6Var.c;
                            i = kq6Var.d;
                            int i8 = kq6Var.e;
                            int i9 = kq6Var.a;
                            if (az3Var.u == null || az3Var.c()) {
                                i2 = i9;
                                i3 = i8;
                            } else {
                                is1 is1VarA = a(g19Var, az3Var, this.b);
                                if (is1VarA == null) {
                                    return;
                                }
                                boolean z2 = is1VarA.c && j3 > 0;
                                i2 = i9;
                                i3 = is1VarA.e;
                                z = z2;
                            }
                        } else {
                            i = 5000;
                            i2 = 0;
                            i3 = 100;
                        }
                        int i10 = i;
                        int iElapsedRealtime = -1;
                        if (task.isSuccessful()) {
                            i5 = 0;
                        } else if (task.isCanceled()) {
                            i6 = -1;
                            i5 = 100;
                        } else {
                            Exception exception = task.getException();
                            if (exception instanceof re) {
                                Status status = ((re) exception).getStatus();
                                i4 = status.a;
                                hs1 hs1Var = status.d;
                                if (hs1Var != null) {
                                    i5 = i4;
                                    i6 = hs1Var.b;
                                }
                            } else {
                                i4 = 101;
                            }
                            i5 = i4;
                            i6 = -1;
                        }
                        if (z) {
                            long j4 = this.e;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - j4);
                            j2 = jCurrentTimeMillis;
                            j = j3;
                        } else {
                            j = 0;
                            j2 = 0;
                        }
                        o19 o19Var = new o19(new tf5(this.b, i5, i6, j, j2, null, null, i7, iElapsedRealtime), i2, i10, i3);
                        n29 n29Var = pz3Var.n;
                        n29Var.sendMessage(n29Var.obtainMessage(18, o19Var));
                    }
                }
            }
        }
    }
}
