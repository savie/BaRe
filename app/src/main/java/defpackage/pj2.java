package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pj2 {
    public final DetailActivity a;
    public final mk2 b;
    public final TextView c;
    public final TextView d;
    public final w00 e;
    public final gm1 f;
    public final zx2 g;
    public final CircularProgressIndicator h;
    public final ConstraintLayout i;
    public final tj2 j;
    public final MaterialButton k;
    public final ImageView l;

    public pj2(DetailActivity detailActivity, ej2 ej2Var, mk2 mk2Var) {
        mk2Var.getClass();
        this.a = detailActivity;
        this.b = mk2Var;
        this.c = ej2Var.r;
        this.d = ej2Var.q;
        this.e = new w00(ej2Var.f, (byte) 0);
        this.f = new gm1(ej2Var.p);
        this.g = ej2Var.c;
        this.h = ej2Var.k;
        this.i = ej2Var.e;
        this.j = DetailActivity.a0(ej2Var.n);
        this.k = ej2Var.b;
        this.l = ej2Var.d;
    }

    public final void a(yj2 yj2Var, String str) {
        Object next;
        int i = oj2.a[yj2Var.a.ordinal()];
        ConstraintLayout constraintLayout = this.i;
        CircularProgressIndicator circularProgressIndicator = this.h;
        final int i2 = 0;
        zx2 zx2Var = this.g;
        final int i3 = 1;
        if (i == 1) {
            sz8.c0(circularProgressIndicator);
            sz8.W(constraintLayout);
            zx2Var.a.setVisibility(0);
            return;
        }
        if (i == 2) {
            sz8.W(circularProgressIndicator);
            sz8.W(constraintLayout);
            zx2Var.a.setVisibility(0);
            zx2Var.d.setImageResource(R.drawable.ic_cloud);
            zx2Var.e.setText(R.string.no_backup_in_cloud);
            zx2Var.b.setVisibility(8);
            return;
        }
        int i4 = 3;
        int i5 = 4;
        if (i == 3) {
            sz8.W(circularProgressIndicator);
            sz8.W(constraintLayout);
            LinearLayout linearLayout = zx2Var.a;
            MaterialButton materialButton = zx2Var.b;
            linearLayout.setVisibility(0);
            zx2Var.d.setImageResource(R.drawable.ic_cloud_off);
            zx2Var.e.setText(R.string.cloud_not_connected_summary);
            materialButton.setVisibility(0);
            materialButton.setText(R.string.connect_cloud_account);
            materialButton.setOnClickListener(new xd1(this, i5));
            return;
        }
        if (i == 4) {
            sz8.W(circularProgressIndicator);
            sz8.W(constraintLayout);
            LinearLayout linearLayout2 = zx2Var.a;
            MaterialButton materialButton2 = zx2Var.b;
            linearLayout2.setVisibility(0);
            zx2Var.d.setImageResource(R.drawable.ic_wifi_off);
            zx2Var.e.setText(R.string.no_internet_connection_summary);
            materialButton2.setVisibility(0);
            materialButton2.setText(R.string.retry);
            materialButton2.setOnClickListener(new gs(this, i5));
            return;
        }
        if (i != 5) {
            q.j();
            return;
        }
        sz8.W(circularProgressIndicator);
        sz8.c0(constraintLayout);
        zx2Var.a.setVisibility(8);
        Iterator it = yj2Var.b.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((wj2) next).a.getBackupId(), str));
        final wj2 wj2Var = (wj2) next;
        if (wj2Var == null) {
            return;
        }
        this.d.setText(wj2Var.p);
        String note = wj2Var.a.getMetadata().getNote();
        w00 w00Var = this.e;
        if (note == null || note.length() == 0) {
            w00Var.w(false);
        } else {
            w00Var.w(true);
            ((TextView) w00Var.c).setText(note);
            ((MaterialCardView) ((oe) w00Var.b).b).setOnClickListener(new mj2(i2, this, note, wj2Var));
        }
        ArrayList arrayList = new ArrayList();
        String str2 = wj2Var.b;
        if (str2 != null) {
            arrayList.add(new uj2(iu.APP.getIconRes(), (wj2Var.c || wj2Var.d) ? "APKs" : "APK", str2, new eh2(i3, this, wj2Var)));
        }
        CharSequence charSequence = wj2Var.e;
        DetailActivity detailActivity = this.a;
        if (charSequence != null) {
            int iconRes = iu.DATA.getIconRes();
            String string = detailActivity.getString(R.string.data);
            string.getClass();
            arrayList.add(new uj2(iconRes, string, charSequence, new nj2(i2, this, wj2Var)));
        }
        String str3 = wj2Var.h;
        if (str3 != null) {
            int iconRes2 = iu.EXTDATA.getIconRes();
            String string2 = detailActivity.getString(R.string.external_data);
            string2.getClass();
            arrayList.add(new uj2(iconRes2, string2, str3, new jj2(i3, this, wj2Var)));
        }
        String str4 = wj2Var.n;
        if (str4 != null) {
            int iconRes3 = iu.EXPANSION.getIconRes();
            String string3 = detailActivity.getString(R.string.expansion);
            string3.getClass();
            arrayList.add(new uj2(iconRes3, string3, str4, new mt3(this) { // from class: kj2
                public final /* synthetic */ pj2 b;

                {
                    this.b = this;
                }

                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    int i6 = i3;
                    be8 be8Var = be8.a;
                    wj2 wj2Var2 = wj2Var;
                    pj2 pj2Var = this.b;
                    switch (i6) {
                        case 0:
                            View view = (View) obj;
                            view.getClass();
                            DetailActivity detailActivity2 = pj2Var.a;
                            iu iuVar = iu.MEDIA;
                            AppCloudBackup appCloudBackup = wj2Var2.a;
                            boolean z = wj2Var2.l;
                            String str5 = wj2Var2.m;
                            if (!z) {
                                str5 = null;
                            }
                            detailActivity2.c0(view, iuVar, null, appCloudBackup, str5);
                            break;
                        default:
                            View view2 = (View) obj;
                            view2.getClass();
                            pj2Var.a.c0(view2, iu.EXPANSION, null, wj2Var2.a, null);
                            break;
                    }
                    return be8Var;
                }
            }));
        }
        String str5 = wj2Var.k;
        if (str5 != null) {
            int iconRes4 = iu.MEDIA.getIconRes();
            String string4 = detailActivity.getString(R.string.media);
            string4.getClass();
            arrayList.add(new uj2(iconRes4, string4, str5, new mt3(this) { // from class: kj2
                public final /* synthetic */ pj2 b;

                {
                    this.b = this;
                }

                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    int i6 = i2;
                    be8 be8Var = be8.a;
                    wj2 wj2Var2 = wj2Var;
                    pj2 pj2Var = this.b;
                    switch (i6) {
                        case 0:
                            View view = (View) obj;
                            view.getClass();
                            DetailActivity detailActivity2 = pj2Var.a;
                            iu iuVar = iu.MEDIA;
                            AppCloudBackup appCloudBackup = wj2Var2.a;
                            boolean z = wj2Var2.l;
                            String str6 = wj2Var2.m;
                            if (!z) {
                                str6 = null;
                            }
                            detailActivity2.c0(view, iuVar, null, appCloudBackup, str6);
                            break;
                        default:
                            View view2 = (View) obj;
                            view2.getClass();
                            pj2Var.a.c0(view2, iu.EXPANSION, null, wj2Var2.a, null);
                            break;
                    }
                    return be8Var;
                }
            }));
        }
        this.j.w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), true);
        this.k.setOnClickListener(new t20(i4, this, wj2Var));
        this.l.setOnClickListener(new uf1(i5, this, wj2Var));
    }
}
