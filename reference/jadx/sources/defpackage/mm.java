package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import java.util.Set;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mm implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mm(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00df  */
    /* JADX WARN: Code duplicated, block: B:38:0x0104  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.a) {
            case 0:
                om omVar = (om) this.b;
                pm pmVar = (pm) this.c;
                fw6 fw6Var = (fw6) obj;
                fw6Var.getClass();
                omVar.b.insert(fw6Var, pmVar);
                return be8.a;
            case 1:
                c40 c40Var = (c40) this.b;
                fz fzVar = (fz) this.c;
                ji jiVar = (ji) obj;
                be8 be8Var = be8.a;
                if (c40Var.g()) {
                    hy7 hy7Var = hy7.a;
                    gz7 gz7Var = TaskService.b;
                    if (!TaskService.b.isComplete()) {
                        fzVar.f.setText(jiVar.getName());
                        Set set = j94.a;
                        j94.g(new sx3(jiVar.getPackageName(), jiVar.isInstalled()), fzVar.g, !jiVar.isInstalled(), true);
                    }
                } else {
                    fzVar.f.setText(jiVar.getName());
                    Set set2 = j94.a;
                    j94.g(new sx3(jiVar.getPackageName(), jiVar.isInstalled()), fzVar.g, !jiVar.isInstalled(), true);
                }
                return be8Var;
            case 2:
                n92 n92Var = (n92) this.b;
                kh6 kh6Var = (kh6) this.c;
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                be8 be8Var2 = be8.a;
                if (n92Var.c.isRunning()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jLongValue < n92Var.a.a()) {
                        long j = n92Var.j;
                        if (j > 0) {
                            long j2 = kh6Var.a;
                            if (j2 == 0 || jCurrentTimeMillis - j2 >= j) {
                                kh6Var.a = jCurrentTimeMillis;
                                ag8.g(n92Var, l);
                            }
                        } else {
                            kh6Var.a = jCurrentTimeMillis;
                            ag8.g(n92Var, l);
                        }
                    } else {
                        kh6Var.a = jCurrentTimeMillis;
                        ag8.g(n92Var, l);
                    }
                }
                return be8Var2;
            case 3:
                qj2 qj2Var = (qj2) this.b;
                zj2 zj2Var = (zj2) this.c;
                View view = (View) obj;
                view.getClass();
                DetailActivity detailActivity = qj2Var.a;
                iu iuVar = iu.DATA;
                hk hkVar = zj2Var.a.getBackup().a;
                boolean z = zj2Var.f;
                String str = zj2Var.g;
                if (!z) {
                    str = null;
                }
                detailActivity.c0(view, iuVar, hkVar, null, str);
                return be8.a;
            case 4:
                SLogActivity sLogActivity = (SLogActivity) this.b;
                Bundle bundle = (Bundle) this.c;
                fm7 fm7Var = (fm7) obj;
                int i = SLogActivity.R;
                sz8.d0((ExtendedFloatingActionButton) sLogActivity.P.getValue(), !fm7Var.a.isEmpty());
                ((FastScroller) sLogActivity.N.getValue()).setEnabled(!fm7Var.a.isEmpty());
                gv7 gv7Var = sLogActivity.O;
                ((bs6) gv7Var.getValue()).w(fm7Var, false);
                int iB = ((bs6) gv7Var.getValue()).b();
                if (bundle == null && iB > 0) {
                    sLogActivity.N().f0(iB - 1);
                }
                return be8.a;
            default:
                kh6 kh6Var2 = (kh6) this.b;
                mt3 mt3Var = (mt3) this.c;
                long jLongValue2 = kh6Var2.a + ((Long) obj).longValue();
                kh6Var2.a = jLongValue2;
                if (mt3Var != null) {
                    mt3Var.invoke(Long.valueOf(jLongValue2));
                }
                return be8.a;
        }
    }
}
