package defpackage;

import android.util.Log;
import androidx.preference.Preference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.pcloud.sdk.internal.a;
import okhttp3.HttpUrl;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pr4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ pr4(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        HttpUrl httpUrlB;
        int i = this.a;
        int i2 = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i3 = LabelsActivity.Z;
                return ((LabelsActivity) obj).Q().e;
            case 1:
                Preference preferenceJ = ((fs4) obj).j("skip_disk_space_checks");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 2:
                is4 is4Var = (is4) obj;
                return is4Var.a().getDisplayLanguage(is4Var.a());
            case 3:
                int i4 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).X().d;
            case 4:
                Preference preferenceJ2 = ((cf5) obj).j("messages_backup_mms");
                preferenceJ2.getClass();
                return (MSwitchPreference) preferenceJ2;
            case 5:
                oi5 oi5Var = (oi5) obj;
                boolean z = oi5Var.f;
                String str = oi5Var.k;
                int i5 = 1;
                i2 = (oi5Var.e || z) ? 1 : 0;
                if (oi5Var.d) {
                    if (ho6.A() || i2 != 0) {
                        long j = oi5Var.c;
                        if (j < 104857600 && i2 == 0) {
                            Long lValueOf = Long.valueOf(j);
                            p93 p93Var = p93.a;
                            String strC = p93.c(lValueOf);
                            Log.i(str, "Multithreaded download disabled below " + p93.c(104857600L) + ". Current file: " + strC);
                        } else if (((Boolean) oi5Var.G.getValue()).booleanValue()) {
                            i5 = i2 != 0 ? 2 : 1;
                            int iT = ho6.t();
                            if (iT >= i5) {
                                i5 = iT;
                            }
                        } else {
                            if (z) {
                                l0.e("Random writes are unavailable for the output path.");
                                return null;
                            }
                            Log.i(str, "Random writes are unavailable for the output path. Using a single download stream.");
                        }
                    } else {
                        Log.i(str, "Multithreaded downloads disabled");
                    }
                } else {
                    if (z) {
                        l0.e("Ranged downloads are not available for this cloud provider.");
                        return null;
                    }
                    Log.i(str, "Ranged downloads are not available for this cloud provider. Using a single download stream.");
                }
                return Integer.valueOf(i5);
            case 6:
                int i6 = MultipleBackupsActivity.T;
                return ((MultipleBackupsActivity) obj).O().c;
            case 7:
                mv5 mv5Var = (mv5) obj;
                String str2 = mv5Var.a;
                if (str2.length() == 0) {
                    vr6.w$default(vr6.INSTANCE, "PCloudClientProvider", "Empty token", null, 4, null);
                }
                of6 of6Var = new of6();
                of6Var.b = of6.c;
                of6Var.a = new t5(new q80(str2, i2));
                String str3 = mv5Var.b;
                try {
                    httpUrlB = HttpUrl.Companion.b("https://".concat(str3));
                    break;
                } catch (IllegalArgumentException unused) {
                    httpUrlB = null;
                }
                if (httpUrlB != null) {
                    of6Var.b = httpUrlB;
                    return new a(of6Var);
                }
                c6.f(eq3.k("'", str3, "' is not a valid API host."));
                return null;
            case 8:
                int i7 = PreconditionsActivity.P;
                return ((PreconditionsActivity) obj).O().f;
            case XmlPullParser.COMMENT /* 9 */:
                int i8 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().q;
            case 10:
                int i9 = SettingsActivity.Z;
                return ga7.a(((SettingsActivity) obj).getLayoutInflater());
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Preference preferenceJ3 = ((pa7) obj).j("cloud_backups");
                preferenceJ3.getClass();
                return preferenceJ3;
            case 12:
                rf8 rf8Var = (rf8) obj;
                tb1 tb1Var = tb1.a;
                String strE = qb1.e();
                q63 q63Var = rf8Var.a;
                String str4 = rf8Var.d;
                StringBuilder sb = new StringBuilder(q63Var.p());
                if (rf8Var.c) {
                    sb.append(" (" + strE + ")");
                }
                if (str4 != null && str4.length() != 0) {
                    sb.append(" (id-" + str4 + ")");
                }
                if (q63Var.m().equals("wal")) {
                    sb.append(".png");
                }
                return sb.toString();
            case 13:
                int i10 = UserPasswordActivity.O;
                ((UserPasswordActivity) obj).O();
                return be8.a;
            default:
                return new us8(((iu8) obj).k());
        }
    }
}
