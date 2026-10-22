package defpackage;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.HashSet;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jf implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jf(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        final dy7 dy7Var;
        TaskActivity taskActivity;
        qt3 qt3Var;
        int i = this.a;
        int i2 = 1;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                zf zfVar = (zf) obj2;
                int i3 = ApkImportActivity.Q;
                ((ar) obj).getClass();
                mg mgVarO = ((ApkImportActivity) obj3).U();
                zfVar.getClass();
                mgVarO.j(zfVar);
                mgVarO.o(new hg(mgVarO.l(), zfVar.d));
                return be8Var;
            case 1:
                final fz fzVar = (fz) obj3;
                qw6 qw6Var = (qw6) obj;
                TextView textView = fzVar.j;
                CircularProgressIndicator circularProgressIndicator = fzVar.i;
                ShapeableImageView shapeableImageView = fzVar.g;
                TextView textView2 = fzVar.l;
                TextView textView3 = fzVar.f;
                QuickRecyclerView quickRecyclerView = fzVar.e;
                TextView textView4 = fzVar.d;
                fzVar.b.a.setVisibility(0);
                TaskActivity taskActivity2 = fzVar.a;
                dy7 dy7Var2 = new dy7(taskActivity2, fzVar.k);
                vq vqVar = ((rw6) obj2).d;
                final ih6 ih6Var = new ih6();
                final ih6 ih6Var2 = new ih6();
                String str = vqVar != null ? (String) vqVar.c : null;
                boolean z = !(str == null || str.length() == 0);
                TextView textView5 = fzVar.c;
                if (vqVar != null) {
                    textView5.setText((String) vqVar.b);
                    String str2 = (String) vqVar.c;
                    sz8.d0(textView4, z);
                    textView4.setText(str2);
                    Set set = (Set) vqVar.d;
                    if (set == null || set.isEmpty()) {
                        dy7Var = dy7Var2;
                        taskActivity = taskActivity2;
                    } else {
                        qr qrVar = tr.n0;
                        taskActivity = taskActivity2;
                        dy7Var = dy7Var2;
                        qr.f(quickRecyclerView, new PreCachingLinearLayoutManager(taskActivity2, 0), taskActivity2.v(), 1.0f, set, false, null, 4032);
                    }
                    quickRecyclerView.setVisibility(8);
                } else {
                    dy7Var = dy7Var2;
                    taskActivity = taskActivity2;
                    textView5.setText(R.string.apps);
                    textView4.setVisibility(8);
                    quickRecyclerView.setVisibility(8);
                }
                fz.b(ih6Var, ih6Var2, fzVar);
                final c40 c40Var = (c40) (qw6Var != null ? qw6Var.a : null);
                if (c40Var == null) {
                    String string = (qw6Var == null || !qw6Var.a()) ? taskActivity.getString(R.string.waiting) : taskActivity.getString(R.string.x_apps, "0");
                    string.getClass();
                    textView3.setText(string);
                    sz8.W(textView2);
                    shapeableImageView.setVisibility(8);
                    sz8.W(circularProgressIndicator);
                    sz8.W(textView);
                } else {
                    sz8.c0(textView2);
                    shapeableImageView.setVisibility(0);
                    sz8.X(circularProgressIndicator);
                    sz8.X(textView);
                    if (c40Var.g()) {
                        textView3.setText(taskActivity.getString(R.string.x_apps, String.valueOf(c40Var.m.size())));
                    }
                    int i4 = 0;
                    c40Var.o.e(taskActivity, new ez(i4, new mm(1, c40Var, fzVar)));
                    c40Var.g.e(taskActivity, new ez(i4, new yy(c40Var, fzVar, ih6Var, ih6Var2, 0)));
                    c40Var.h.e(taskActivity, new ez(i4, new mt3() { // from class: zy
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj4) {
                            fz fzVar2 = fzVar;
                            TextView textView6 = fzVar2.m;
                            String str3 = (String) obj4;
                            boolean z2 = (str3 == null || str3.length() == 0 || c40Var.e().isComplete()) ? false : true;
                            sz8.d0(textView6, z2);
                            ih6 ih6Var3 = ih6Var2;
                            ih6Var3.a = z2;
                            fz.b(ih6Var, ih6Var3, fzVar2);
                            if (z2) {
                                textView6.setText(str3);
                            }
                            return be8.a;
                        }
                    }));
                    final lh6 lh6Var = new lh6();
                    c40Var.d.e(taskActivity, new ez(i4, new e7(dy7Var, 1)));
                    c40Var.i.e(taskActivity, new ez(i4, new k3(fzVar, 3)));
                    c40Var.e.e(taskActivity, new ez(i4, new mt3() { // from class: az
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj4) {
                            km5 km5Var = fzVar.h;
                            Integer num = (Integer) obj4;
                            be8 be8Var2 = be8.a;
                            if (num != null) {
                                lh6 lh6Var2 = lh6Var;
                                Integer num2 = (Integer) lh6Var2.a;
                                int iIntValue = num.intValue();
                                if (num2 == null || num2.intValue() != iIntValue) {
                                    int iIntValue2 = num.intValue();
                                    c40 c40Var2 = c40Var;
                                    int iQ = Const.q(iIntValue2, c40Var2.d());
                                    lh6Var2.a = num;
                                    dy7Var.b(iQ);
                                    km5Var.u(c40Var2.d());
                                    km5Var.v(num.intValue(), num2 != null);
                                    return be8Var2;
                                }
                            }
                            return be8Var2;
                        }
                    }));
                    c40Var.f.e(taskActivity, new ez(i4, new bz(i4, new lh6(), fzVar)));
                    c40Var.j.e(taskActivity, new ez(i4, new cz(fzVar, i4)));
                    c40Var.c.e(taskActivity, new ez(i4, new dz(i4, fzVar, c40Var, dy7Var)));
                }
                return be8Var;
            case 2:
                zn4 zn4Var = zn4.a;
                zn4.b(null, new c20((AppsBatchActivity) obj3, (tn2) obj, (q63) obj2, null));
                return be8Var;
            case 3:
                ge1 ge1Var = (ge1) obj2;
                md1 md1Var = (md1) obj;
                md1Var.getClass();
                int iB = ((fe1) obj3).b();
                if (iB != -1 && (qt3Var = ge1Var.j) != null) {
                    qt3Var.invoke(md1Var, Integer.valueOf(iB));
                }
                return be8Var;
            case 4:
                qo5 qo5Var = (qo5) obj3;
                x92 x92Var = (x92) obj2;
                NoticeItem noticeItem = (NoticeItem) obj;
                noticeItem.getClass();
                if (noticeItem.isLinkOnly()) {
                    io4.j(qo5Var.d, null, true, new g52(i2, x92Var, noticeItem), 10);
                } else {
                    int i5 = NoticeViewActivity.O;
                    HomeActivity homeActivityL = x92Var.l();
                    String title = noticeItem.getTitle();
                    String message = noticeItem.getMessage();
                    title.getClass();
                    if (message != null && message.length() != 0) {
                        Intent intentPutExtra = new Intent(homeActivityL, (Class<?>) NoticeViewActivity.class).putExtra("extra_title", title).putExtra("extra_message", message);
                        intentPutExtra.getClass();
                        homeActivityL.startActivity(intentPutExtra);
                    }
                }
                return be8Var;
            case 5:
                View view = (View) obj;
                view.getClass();
                ((qj2) obj3).a.c0(view, iu.APP, ((zj2) obj2).a.getBackup().a, null, null);
                return be8Var;
            case 6:
                lh6 lh6Var2 = (lh6) obj3;
                tp3 tp3Var = (tp3) obj2;
                TextView textView6 = tp3Var.i;
                CircularProgressIndicator circularProgressIndicator2 = tp3Var.h;
                r62 r62Var = (r62) obj;
                Integer num = r62Var != null ? r62Var.b : null;
                String str3 = r62Var != null ? r62Var.a : null;
                boolean zD = pe4.d(str3, lh6Var2.a);
                lh6Var2.a = str3;
                if (num != null) {
                    sz8.c0(circularProgressIndicator2);
                    sz8.c0(textView6);
                    if (!zD) {
                        circularProgressIndicator2.setProgress(0);
                    }
                    sz8.b0(circularProgressIndicator2, num.intValue(), zD);
                    tp3.a(tp3Var, num.intValue());
                } else {
                    sz8.X(circularProgressIndicator2);
                    sz8.X(textView6);
                    circularProgressIndicator2.setProgress(0);
                    tp3.a(tp3Var, 0);
                }
                return be8Var;
            default:
                z84 z84Var = (z84) obj;
                z84Var.getClass();
                HashSet hashSet = mz6.a;
                return mz6.d((op3) obj3, (iz6) obj2, z84Var);
        }
    }
}
