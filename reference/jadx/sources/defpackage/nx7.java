package defpackage;

import java.io.File;
import java.util.Iterator;
import java.util.TimerTask;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nx7 extends TimerTask {
    public final File a;
    public final String b;
    public long c;
    public long d;
    public final /* synthetic */ cw e;

    public nx7(String str, q63 q63Var, cw cwVar) {
        this.e = cwVar;
        File file = new File(str, q63Var.q());
        this.a = file;
        this.b = xs1.j("toybox du -sk ", file.getPath());
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        Object next;
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        mp6 mp6Var = mp6.a;
        boolean zG = mp6.g();
        String str2 = this.b;
        Iterator it = (zG ? qe7.c(new String[]{str2}).a : mp6.l(str2)).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            String str3 = (String) next;
            if (str3 != null) {
                String path = this.a.getPath();
                path.getClass();
                if (uq7.O(str3, path, false)) {
                    break;
                }
            }
        }
        String str4 = (String) next;
        String string = (str4 == null || (str = (String) el1.U0(nq7.x0(str4, new String[]{"\t"}, 6))) == null) ? null : nq7.H0(str).toString();
        long jH = io4.h(string != null ? Long.valueOf(Long.parseLong(string)) : null) * 1024;
        this.e.invoke(Long.valueOf(jH), Long.valueOf((long) ((jH - this.c) / ((jCurrentTimeMillis - this.d) / 1000.0f))));
        this.c = jH;
        this.d = jCurrentTimeMillis;
    }
}
