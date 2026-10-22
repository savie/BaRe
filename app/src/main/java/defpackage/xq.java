package defpackage;

import android.content.SharedPreferences;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.StyleSpan;
import android.util.Log;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import java.security.cert.X509Certificate;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xq implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xq(WallsManageActivity wallsManageActivity, List list) {
        this.a = 10;
        this.c = wallsManageActivity;
        this.b = list;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws Throwable {
        String string;
        String string2;
        int i = this.a;
        int i2 = 0;
        jv1 jv1Var = null;
        be8 be8Var = be8.a;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                List list = (List) obj;
                il0 il0Var = (il0) obj2;
                try {
                    SwiftApp.Companion companion = SwiftApp.d;
                    g67.u(new ud4(SwiftApp.Companion.c(), list));
                    break;
                } catch (Exception e) {
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.e$default(vr6Var, "AppInstallHelper", xs1.l("Error when trying to install APKs=", list), null, 4, null);
                    vr6.e$default(vr6Var, "AppInstallHelper", "install", e, null, 8, null);
                    zn4 zn4Var = zn4.a;
                    zn4.e(new yq(i2, il0Var, e));
                }
                return be8Var;
            case 1:
                ws wsVar = (ws) obj;
                ji jiVar = (ji) obj2;
                Iterator it = wsVar.e.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i2 = -1;
                    } else if (!pe4.d(((ji) it.next()).getPackageName(), jiVar.getPackageName())) {
                        i2++;
                    }
                }
                if (i2 >= 0) {
                    wsVar.f(i2);
                }
                return be8Var;
            case 2:
                X509Certificate x509Certificate = (X509Certificate) obj;
                return ((SpannableStringBuilder) obj2).append((CharSequence) (Const.h(x509Certificate.getNotBefore().getTime()) + " - " + Const.h(x509Certificate.getNotAfter().getTime())));
            case 3:
                return CredentialProviderController.Companion.maybeReportErrorResultCodeCreate$lambda$0((mt3) obj, (lh6) obj2);
            case 4:
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$6((CredentialProviderCreatePublicKeyCredentialController) obj, (Throwable) obj2);
            case 5:
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$5((CredentialProviderGetSignInIntentController) obj, (cw3) obj2);
            case 6:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                mj3 mj3Var = (mj3) obj2;
                int i3 = FolderDetailActivity.Z;
                s35 s35Var = new s35(folderDetailActivity, R.style.M3AlertDialogTheme, new hv1(folderDetailActivity, R.style.M3AlertDialogTheme), Float.valueOf(13.5f));
                s35Var.v(R.string.backup_details);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                String str = mj3Var.a;
                Long l = mj3Var.b;
                if (str != null) {
                    if (nq7.j0(str)) {
                        str = null;
                    }
                    if (str != null) {
                        String string3 = folderDetailActivity.getString(R.string.folder_path);
                        string3.getClass();
                        FolderDetailActivity.U(spannableStringBuilder, string3, str);
                    }
                }
                if (l != null) {
                    Long l2 = l.longValue() > 0 ? l : null;
                    if (l2 != null) {
                        long jLongValue = l2.longValue();
                        String string4 = folderDetailActivity.getString(R.string.created);
                        string4.getClass();
                        FolderDetailActivity.U(spannableStringBuilder, string4, FolderDetailActivity.V(jLongValue));
                    }
                }
                Long l3 = mj3Var.c;
                if (l3 != null) {
                    long jLongValue2 = l3.longValue();
                    if (jLongValue2 <= 0 || (l != null && jLongValue2 == l.longValue())) {
                        l3 = null;
                    }
                    if (l3 != null) {
                        long jLongValue3 = l3.longValue();
                        String string5 = folderDetailActivity.getString(R.string.updated);
                        string5.getClass();
                        FolderDetailActivity.U(spannableStringBuilder, string5, FolderDetailActivity.V(jLongValue3));
                    }
                }
                for (oj3 oj3Var : mj3Var.d) {
                    pj3 pj3Var = oj3Var.a;
                    Long l4 = oj3Var.c;
                    Long l5 = oj3Var.b;
                    Integer num = oj3Var.e;
                    int i4 = gl3.a[pj3Var.ordinal()];
                    if (i4 == 1) {
                        string = folderDetailActivity.getString(R.string.base_backup);
                        string.getClass();
                    } else {
                        if (i4 != 2) {
                            q.j();
                            return null;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(folderDetailActivity.getString(R.string.incremental_backups));
                        if (num != null) {
                            sb.append(" (");
                            try {
                                SharedPreferences sharedPreferences = cz4.f;
                                if (sharedPreferences == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                string2 = sharedPreferences.getString("app_locale", null);
                            } catch (ClassCastException unused) {
                                string2 = null;
                            }
                            sb.append(NumberFormat.getNumberInstance((string2 == null || string2.length() == 0) ? xx3.h().a() : xx3.g(string2).a()).format(num));
                            sb.append(")");
                        }
                        string = sb.toString();
                    }
                    if (spannableStringBuilder.length() > 0) {
                        spannableStringBuilder.append('\n');
                        spannableStringBuilder.append('\n');
                    }
                    StyleSpan styleSpan = new StyleSpan(1);
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) string);
                    spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                    if (l5 != null) {
                        long jLongValue4 = l5.longValue();
                        String string6 = folderDetailActivity.getString(R.string.original_size);
                        string6.getClass();
                        p93 p93Var = p93.a;
                        FolderDetailActivity.U(spannableStringBuilder, string6, p93.c(Long.valueOf(jLongValue4)));
                    }
                    if (l4 != null) {
                        long jLongValue5 = l4.longValue();
                        String string7 = folderDetailActivity.getString(R.string.backup_size);
                        string7.getClass();
                        p93 p93Var2 = p93.a;
                        FolderDetailActivity.U(spannableStringBuilder, string7, p93.c(Long.valueOf(jLongValue5)));
                    }
                    p93 p93Var3 = p93.a;
                    Double dA = p93.a(l5, l4);
                    if (dA != null) {
                        double dDoubleValue = dA.doubleValue();
                        String string8 = folderDetailActivity.getString(R.string.compression_saved);
                        string8.getClass();
                        FolderDetailActivity.U(spannableStringBuilder, string8, p93.b(dDoubleValue));
                    }
                    Long l6 = oj3Var.d;
                    if (l6 != null) {
                        long jLongValue6 = l6.longValue();
                        String string9 = folderDetailActivity.getString(R.string.manifest_size);
                        string9.getClass();
                        FolderDetailActivity.U(spannableStringBuilder, string9, p93.c(Long.valueOf(jLongValue6)));
                    }
                }
                ((ra) s35Var.b).f = nq7.H0(new SpannedString(spannableStringBuilder));
                s35Var.s(R.string.got_it, null);
                s35Var.m();
                return be8Var;
            case 7:
                q63 q63Var = (q63) obj;
                in3 in3Var = (in3) obj2;
                gv7 gv7Var = in3Var.f;
                if (q63Var == null) {
                    return (hn3) gv7Var.getValue();
                }
                zn7 zn7VarJ = in3Var.j(q63Var);
                return (zn7VarJ == null || !pe4.d(io4.j("FolderPickerHelper", null, false, new cv(9, q63Var, zn7VarJ), 14), Boolean.TRUE)) ? (hn3) gv7Var.getValue() : new hn3(zn7VarJ, in3Var.l(), q63Var);
            case 8:
                np3 np3Var = (np3) obj;
                ik6 ik6Var = (ik6) obj2;
                Log.d(np3Var.b, "RepositoryListener.onResult: " + ((hk6) ik6Var.d));
                zn4 zn4Var2 = zn4.a;
                zn4.c(new o20(11, np3Var, ik6Var));
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                ScheduleItem scheduleItem = (ScheduleItem) obj2;
                v10 v10Var = ((j57) obj).p;
                if (v10Var != null) {
                    v10Var.invoke(scheduleItem.getItemId());
                }
                return be8Var;
            default:
                int i5 = WallsManageActivity.S;
                tp8 tp8VarA0 = ((WallsManageActivity) obj2).a0();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new ig1(tp8VarA0, (List) obj, jv1Var, 3));
                return be8Var;
        }
    }

    public /* synthetic */ xq(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
