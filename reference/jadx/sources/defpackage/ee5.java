package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.card.MaterialCardView;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ee5 extends gm7 {
    public final /* synthetic */ int l = 1;
    public final Object m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee5(HomeActivity homeActivity) {
        super(null);
        homeActivity.getClass();
        this.m = homeActivity;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        String string = null;
        int i2 = 1;
        switch (this.l) {
            case 0:
                de5 de5Var = (de5) fh6Var;
                final vd5 vd5Var = (vd5) m(i);
                final ee5 ee5Var = de5Var.A;
                vd5Var.getClass();
                Context context = de5Var.a.getContext();
                de5Var.v.setImageResource(vd5Var.isCloudItem() ? R.drawable.ic_cloud : R.drawable.ic_device);
                context.getClass();
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences.getString("app_locale", null);
                    Locale localeA = (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
                    TimeZone timeZone = TimeZone.getDefault();
                    timeZone.getClass();
                    long backupTime = vd5Var.getBackupTime();
                    DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 3, localeA);
                    dateTimeInstance.setTimeZone(timeZone);
                    String str = dateTimeInstance.format(new Date(backupTime));
                    str.getClass();
                    String string2 = context.getString(R.string.x_conversations, String.valueOf(vd5Var.getTotalConversations()));
                    string2.getClass();
                    String string3 = context.getString(R.string.x_messages, String.valueOf(vd5Var.getTotalSms()));
                    string3.getClass();
                    String strY0 = el1.Y0(fl1.A0(string2, string3), " • ", null, null, null, 62);
                    String strS = Const.s(vd5Var.getBackupTime());
                    de5Var.w.setText(str);
                    de5Var.x.setText(strY0);
                    de5Var.y.setText(strS);
                    de5Var.u.setOnClickListener(new View.OnClickListener() { // from class: ce5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            qt3 qt3Var = this.a.j;
                            if (qt3Var != null) {
                                qt3Var.invoke(vd5Var, Integer.valueOf(i));
                            }
                        }
                    });
                    de5Var.z.setOnClickListener(new ll3(i2, ee5Var, vd5Var));
                    return;
                } catch (ClassCastException unused) {
                }
                break;
            default:
                z37 z37Var = (z37) fh6Var;
                y37 y37Var = (y37) m(i);
                ee5 ee5Var2 = z37Var.z;
                il0 il0Var = (il0) ee5Var2.m;
                y37Var.getClass();
                Set set = y37Var.n;
                List list = y37Var.k;
                gm1 gm1Var = z37Var.u;
                fm1 fm1Var = new fm1(gm1Var);
                if (y37Var.d) {
                    fm1Var.a();
                } else {
                    fm1Var.b();
                }
                z37Var.a.setAlpha(y37Var.c ? 1.0f : 0.5f);
                z37Var.v.setImageResource(y37Var.e);
                z37Var.w.setText(y37Var.f);
                TextView textView = z37Var.x;
                sz8.d0(textView, !list.isEmpty());
                if (sz8.I(textView)) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String str2 = ((x37) it.next()).a;
                        if (str2 == null || str2.length() == 0) {
                            str2 = null;
                        }
                        if (str2 != null) {
                            arrayList.add(str2);
                        }
                    }
                    textView.setText(el1.Y0(arrayList, null, null, null, null, 63));
                }
                QuickRecyclerView quickRecyclerView = z37Var.y;
                sz8.d0(quickRecyclerView, !set.isEmpty());
                if (sz8.I(quickRecyclerView)) {
                    quickRecyclerView.b1 = true;
                    qr qrVar = tr.n0;
                    qr.f(z37Var.y, new FlexboxLayoutManager(il0Var), il0Var.v(), 1.0f, el1.z1(set), false, null, 4064);
                }
                ((MaterialCardView) gm1Var.a).setOnClickListener(new mj2(i2, ee5Var2, y37Var, z37Var));
                return;
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        switch (this.l) {
            case 0:
                return R.layout.smscalls_backups_item;
            default:
                return R.layout.schedule_prop_item;
        }
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        switch (this.l) {
            case 0:
                return new de5(this, yz0.a(view));
            default:
                return new z37(this, view);
        }
    }

    public ee5(qt3 qt3Var) {
        super(null);
        this.m = qt3Var;
    }
}
