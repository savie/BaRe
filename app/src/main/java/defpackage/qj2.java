package defpackage;

import android.widget.ImageView;
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
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qj2 {
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

    public qj2(DetailActivity detailActivity, ej2 ej2Var, mk2 mk2Var) {
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

    public final void a(ak2 ak2Var, String str) {
        Object next;
        zx2 zx2Var = this.g;
        ConstraintLayout constraintLayout = this.i;
        if (ak2Var != null) {
            List list = ak2Var.b;
            if (!list.isEmpty()) {
                sz8.c0(constraintLayout);
                zx2Var.a.setVisibility(8);
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!pe4.d(((zj2) next).a.getBackupId(), str));
                zj2 zj2Var = (zj2) next;
                if (zj2Var == null) {
                    return;
                }
                this.d.setText(zj2Var.o);
                LocalMetadata metadata = zj2Var.a.getMetadata();
                String note = metadata != null ? metadata.getNote() : null;
                int i = 1;
                w00 w00Var = this.e;
                if (note == null || note.length() == 0) {
                    w00Var.w(false);
                } else {
                    w00Var.w(true);
                    ((TextView) w00Var.c).setText(note);
                    ((MaterialCardView) ((oe) w00Var.b).b).setOnClickListener(new nq1(i, this, note, zj2Var));
                }
                ArrayList arrayList = new ArrayList();
                String str2 = zj2Var.b;
                int i2 = 5;
                if (str2 != null) {
                    arrayList.add(new uj2(iu.APP.getIconRes(), zj2Var.c ? "APKs" : "APK", str2, new jf(i2, this, zj2Var)));
                }
                String str3 = zj2Var.e;
                DetailActivity detailActivity = this.a;
                if (str3 != null) {
                    int iconRes = iu.DATA.getIconRes();
                    String string = detailActivity.getString(R.string.data);
                    string.getClass();
                    arrayList.add(new uj2(iconRes, string, str3, new mm(3, this, zj2Var)));
                }
                String str4 = zj2Var.h;
                int i3 = 2;
                if (str4 != null) {
                    int iconRes2 = iu.EXTDATA.getIconRes();
                    String string2 = detailActivity.getString(R.string.external_data);
                    string2.getClass();
                    arrayList.add(new uj2(iconRes2, string2, str4, new jh(i3, this, zj2Var)));
                }
                String str5 = zj2Var.n;
                if (str5 != null) {
                    int iconRes3 = iu.EXPANSION.getIconRes();
                    String string3 = detailActivity.getString(R.string.expansion);
                    string3.getClass();
                    arrayList.add(new uj2(iconRes3, string3, str5, new eh2(i3, this, zj2Var)));
                }
                String str6 = zj2Var.k;
                if (str6 != null) {
                    int iconRes4 = iu.MEDIA.getIconRes();
                    String string4 = detailActivity.getString(R.string.media);
                    string4.getClass();
                    arrayList.add(new uj2(iconRes4, string4, str6, new nj2(i, this, zj2Var)));
                }
                this.j.w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), true);
                this.k.setOnClickListener(new fr(i2, this, zj2Var));
                this.l.setOnClickListener(new uf1(i2, this, zj2Var));
                return;
            }
        }
        sz8.W(constraintLayout);
        zx2Var.a.setVisibility(0);
        zx2Var.d.setImageResource(R.drawable.ic_no_backup);
        zx2Var.b.setVisibility(8);
        zx2Var.e.setText(R.string.no_backup_on_device);
    }
}
