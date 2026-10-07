package defpackage;

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

public final class m27 implements SbaNativeProgressListener {
    public final sn1 a;
    public m27(sn1 sn1Var) { this.a = sn1Var; }

    @Override
    public final void onProgress(long j, long j2) {
        sh5 sh5Var = (sh5) this.a.b;
        long total = sh5Var.a;
        if (j2 == 0) return;
        long now = System.currentTimeMillis();
        long elapsed = now - sh5Var.d;
        boolean done = j2 >= total;
        if (elapsed < 1000 && !done) return;
        sh5Var.d = now;
        long remaining = 0;
        if (!done) {
            long delta = j2 - sh5Var.c;
            long seconds = elapsed / 1000;
            float rate = ((float) delta) / ((float) seconds);
            remaining = tu0.w((double) rate);
        }
        sh5Var.b.a(Long.valueOf(j2), Long.valueOf(total), Long.valueOf(remaining));
        sh5Var.c = j2;
    }
}
