package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dz implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ dz(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                fz fzVar = (fz) obj4;
                c40 c40Var = (c40) obj3;
                dy7 dy7Var = (dy7) obj2;
                gz7 gz7Var = (gz7) obj;
                TaskActivity taskActivity = fzVar.a;
                if (taskActivity.L) {
                    gz7Var = gz7.COMPLETE;
                }
                if (gz7Var != null) {
                    if (gz7Var.isComplete()) {
                        c40Var.o(null);
                    }
                    if (gz7Var.isComplete() && c40Var.g()) {
                        fzVar.f.setText(taskActivity.getString(R.string.x_apps, String.valueOf(c40Var.m.size())));
                        fzVar.g.setImageResource(R.drawable.ic_app_raster);
                    }
                    dy7Var.c(!gz7Var.isComplete());
                    if (gz7Var.isComplete()) {
                        fzVar.h.w();
                        sz8.X(fzVar.i);
                        sz8.X(fzVar.j);
                    }
                }
                return be8Var;
            case 1:
                a62 a62Var = (a62) obj4;
                kh6 kh6Var = (kh6) obj3;
                kh6 kh6Var2 = (kh6) obj2;
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                if (a62Var.d.isRunning()) {
                    no2.h(a62Var, l);
                    float fCurrentTimeMillis = (System.currentTimeMillis() - kh6Var.a) / 1000.0f;
                    kh6Var.a = System.currentTimeMillis();
                    long j = jLongValue - kh6Var2.a;
                    kh6Var2.a = jLongValue;
                    int i2 = (int) (j / fCurrentTimeMillis);
                    if (i2 > 0) {
                        p93 p93Var = p93.a;
                        p93.c(Long.valueOf(i2)).concat("/s");
                    }
                }
                return be8Var;
            case 2:
                kh6 kh6Var3 = (kh6) obj4;
                lh6 lh6Var = (lh6) obj2;
                ib5 ib5Var = (ib5) obj;
                ib5Var.getClass();
                long j2 = kh6Var3.a + ((long) ib5Var.a);
                kh6Var3.a = j2;
                ((z95) obj3).a(j2);
                String str = ib5Var.b;
                if (!nq7.j0(str)) {
                    lh6Var.a = str;
                }
                return Boolean.valueOf(lh6Var.a != null);
            default:
                qq5 qq5Var = (qq5) obj4;
                kh6 kh6Var4 = (kh6) obj3;
                kh6 kh6Var5 = (kh6) obj2;
                Long l2 = (Long) obj;
                long jLongValue2 = l2.longValue();
                if (qq5Var.d.isRunning()) {
                    no2.h(qq5Var, l2);
                    float fCurrentTimeMillis2 = (System.currentTimeMillis() - kh6Var4.a) / 1000.0f;
                    kh6Var4.a = System.currentTimeMillis();
                    long j3 = jLongValue2 - kh6Var5.a;
                    kh6Var5.a = jLongValue2;
                    int i3 = (int) (j3 / fCurrentTimeMillis2);
                    if (i3 > 0) {
                        p93 p93Var2 = p93.a;
                        p93.c(Long.valueOf(i3)).concat("/s");
                    }
                }
                return be8Var;
        }
    }
}
