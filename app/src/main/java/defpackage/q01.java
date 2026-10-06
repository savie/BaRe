package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q01 extends gm7 {
    public final qt3 l;

    public q01(qt3 qt3Var) {
        super(null);
        this.l = qt3Var;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        p01 p01Var = (p01) fh6Var;
        rz0 rz0Var = (rz0) m(i);
        q01 q01Var = p01Var.A;
        rz0Var.getClass();
        Context context = p01Var.a.getContext();
        p01Var.v.setImageResource(rz0Var.isCloudItem() ? R.drawable.ic_cloud : R.drawable.ic_device);
        context.getClass();
        String string = null;
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
            long backupTime = rz0Var.getBackupTime();
            DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 3, localeA);
            dateTimeInstance.setTimeZone(timeZone);
            String str = dateTimeInstance.format(new Date(backupTime));
            str.getClass();
            String string2 = context.getString(R.string.x_calls, String.valueOf(rz0Var.getTotalCalls()));
            string2.getClass();
            String strS = Const.s(rz0Var.getBackupTime());
            p01Var.w.setText(str);
            p01Var.x.setText(string2);
            p01Var.y.setText(strS);
            p01Var.u.setOnClickListener(new ri(q01Var, i, 2, rz0Var));
            p01Var.z.setOnClickListener(new fr(1, q01Var, rz0Var));
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.smscalls_backups_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new p01(this, yz0.a(view));
    }
}
