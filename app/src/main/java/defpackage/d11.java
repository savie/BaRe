package defpackage;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.StyleSpan;
import android.util.Log;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.fragment.app.u;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.io.InputStream;
import java.util.ArrayList;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.a;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d11 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d11(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x03b3  */
    @Override // defpackage.bt3
    public final Object invoke() {
        String string;
        String string2;
        tc4 tc4Var;
        boolean z = true;
        switch (this.a) {
            case 0:
                CallsDashActivity callsDashActivity = (CallsDashActivity) this.b;
                ArrayList arrayList = (ArrayList) this.c;
                int i = CallsDashActivity.T;
                callsDashActivity.V().j(arrayList, true);
                return be8.a;
            case 1:
                b82 b82Var = (b82) this.b;
                String str = (String) this.c;
                b82Var.getClass();
                br2 br2Var = b82Var.h;
                br2Var.getClass();
                Response responseG = br2Var.g(str);
                return new ve1(responseG, responseG.k.a());
            case 2:
                fw6 fw6VarOpen = ((cd) this.b).open((String) this.c);
                ly8.t("PRAGMA query_only = 1", fw6VarOpen);
                return fw6VarOpen;
            case 3:
                eu1 eu1Var = (eu1) this.b;
                Intent intent = (Intent) this.c;
                be8 be8Var = be8.a;
                if (!eu1Var.isDetached()) {
                    u activity = eu1Var.getActivity();
                    activity.getClass();
                    ((SettingsDetailActivity) activity).startActivity(Intent.createChooser(intent, "Send email"));
                }
                return be8Var;
            case 4:
                return CreateDigitalCredentialController.handleResponse$lambda$3((CreateDigitalCredentialController) this.b, (c12) this.c);
            case 5:
                return CreatePasswordCredentialController.handleResponse$lambda$4((CreatePasswordCredentialController) this.b, (c12) this.c);
            case 6:
                return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$0((CredentialProviderGetSignInIntentController) this.b, (dw3) this.c);
            case 7:
                DetailActivity detailActivity = (DetailActivity) this.b;
                kk kkVar = (kk) this.c;
                int i2 = DetailActivity.b0;
                s35 s35Var = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), Float.valueOf(13.5f));
                s35Var.v(R.string.backup_details);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                Long l = kkVar.a;
                String str2 = kkVar.c;
                Long l2 = l.longValue() > 0 ? l : null;
                if (l2 != null) {
                    long jLongValue = l2.longValue();
                    String string3 = detailActivity.getString(R.string.created);
                    string3.getClass();
                    DetailActivity.U(spannableStringBuilder, string3, DetailActivity.W(jLongValue));
                }
                Long l3 = kkVar.b;
                if (l3 != null) {
                    long jLongValue2 = l3.longValue();
                    if (jLongValue2 <= 0 || jLongValue2 == l.longValue()) {
                        l3 = null;
                    }
                    if (l3 != null) {
                        long jLongValue3 = l3.longValue();
                        String string4 = detailActivity.getString(R.string.updated);
                        string4.getClass();
                        DetailActivity.U(spannableStringBuilder, string4, DetailActivity.W(jLongValue3));
                    }
                }
                if (str2 != null && str2.length() != 0) {
                    String string5 = detailActivity.getString(R.string.backup_tag);
                    string5.getClass();
                    DetailActivity.U(spannableStringBuilder, string5, str2);
                }
                if (kkVar.d) {
                    String string6 = detailActivity.getString(R.string.protected_backup);
                    string6.getClass();
                    String string7 = detailActivity.getString(R.string.yes);
                    string7.getClass();
                    DetailActivity.U(spannableStringBuilder, string6, string7);
                }
                for (gk0 gk0Var : kkVar.e) {
                    hk0 hk0Var = gk0Var.a;
                    Long l4 = gk0Var.b;
                    Long l5 = gk0Var.c;
                    switch (zi2.c[hk0Var.ordinal()]) {
                        case 1:
                            string = "APK";
                            break;
                        case 2:
                            string = detailActivity.getString(R.string.split_apks);
                            string.getClass();
                            break;
                        case 3:
                            string = detailActivity.getString(R.string.shared_libraries);
                            string.getClass();
                            break;
                        case 4:
                            string = detailActivity.getString(R.string.data);
                            string.getClass();
                            break;
                        case 5:
                            string = detailActivity.getString(R.string.external_data);
                            string.getClass();
                            break;
                        case 6:
                            string = detailActivity.getString(R.string.media);
                            string.getClass();
                            break;
                        case 7:
                            string = detailActivity.getString(R.string.expansion);
                            string.getClass();
                            break;
                        case 8:
                            string = detailActivity.getString(R.string.special_data);
                            string.getClass();
                            break;
                        default:
                            q.j();
                            return null;
                    }
                    if (spannableStringBuilder.length() > 0) {
                        spannableStringBuilder.append('\n');
                        spannableStringBuilder.append('\n');
                    }
                    StyleSpan styleSpan = new StyleSpan(1);
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) string);
                    spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                    String strValueOf = gk0Var.f;
                    if (strValueOf == null || nq7.j0(strValueOf)) {
                        strValueOf = null;
                    }
                    Long l6 = gk0Var.g;
                    if (l6 == null || l6.longValue() <= 0) {
                        l6 = null;
                    }
                    if (strValueOf != null && l6 != null) {
                        strValueOf = strValueOf + " (" + l6 + ")";
                    } else if (strValueOf == null) {
                        strValueOf = l6 != null ? String.valueOf(l6.longValue()) : null;
                    }
                    if (strValueOf != null) {
                        String string8 = detailActivity.getString(R.string.version);
                        string8.getClass();
                        DetailActivity.U(spannableStringBuilder, string8, strValueOf);
                    }
                    if (l5 != null) {
                        long jLongValue4 = l5.longValue();
                        String string9 = detailActivity.getString(R.string.original_size);
                        string9.getClass();
                        p93 p93Var = p93.a;
                        DetailActivity.U(spannableStringBuilder, string9, p93.c(Long.valueOf(jLongValue4)));
                    }
                    String string10 = detailActivity.getString(R.string.backup_size);
                    string10.getClass();
                    p93 p93Var2 = p93.a;
                    DetailActivity.U(spannableStringBuilder, string10, p93.c(l4));
                    Double dA = p93.a(l5, l4);
                    if (dA != null) {
                        double dDoubleValue = dA.doubleValue();
                        String string11 = detailActivity.getString(R.string.compression_saved);
                        string11.getClass();
                        DetailActivity.U(spannableStringBuilder, string11, p93.b(dDoubleValue));
                    }
                    Long l7 = gk0Var.h;
                    if (l7 != null) {
                        long jLongValue5 = l7.longValue();
                        String string12 = detailActivity.getString(R.string.files);
                        string12.getClass();
                        DetailActivity.U(spannableStringBuilder, string12, DetailActivity.V(jLongValue5));
                    }
                    Long l8 = gk0Var.i;
                    if (l8 != null) {
                        long jLongValue6 = l8.longValue();
                        String string13 = detailActivity.getString(R.string.folders);
                        string13.getClass();
                        DetailActivity.U(spannableStringBuilder, string13, DetailActivity.V(jLongValue6));
                    }
                    if (gk0Var.d) {
                        String str3 = gk0Var.e;
                        if (str3 == null) {
                            string2 = detailActivity.getString(R.string.yes);
                            string2.getClass();
                        } else {
                            if (nq7.j0(str3)) {
                                str3 = null;
                            }
                            if (str3 == null || (string2 = detailActivity.getString(R.string.encrypted_with_x, str3)) == null) {
                                string2 = detailActivity.getString(R.string.yes);
                                string2.getClass();
                            }
                        }
                        String string14 = detailActivity.getString(R.string.encrypted);
                        string14.getClass();
                        DetailActivity.U(spannableStringBuilder, string14, string2);
                    }
                }
                ((ra) s35Var.b).f = nq7.H0(new SpannedString(spannableStringBuilder));
                s35Var.s(R.string.got_it, null);
                s35Var.m();
                return be8.a;
            case 8:
                DetailActivity detailActivity2 = (DetailActivity) this.b;
                h80 h80Var = (h80) this.c;
                int i3 = DetailActivity.b0;
                detailActivity2.a0().j(h80Var);
                return be8.a;
            case XmlPullParser.COMMENT /* 9 */:
                o23 o23Var = (o23) this.b;
                String str4 = (String) this.c;
                o23.F(str4);
                synchronized (o23Var) {
                    d23 d23VarZ = o23Var.z(false);
                    o23.F(str4);
                    String strG = o23Var.G(str4);
                    zi7 zi7VarW = d23VarZ.w(strG);
                    if (zi7VarW == null) {
                        throw new IllegalStateException(("getInputStream: InputStream null at path=" + strG + ". Reply=" + d23VarZ.i()).toString());
                    }
                    tc4Var = new tc4((InputStream) zi7VarW, (bt3) new j32(2, d23VarZ, o23Var, strG), false);
                }
                return tc4Var;
            case 10:
                kk3 kk3Var = (kk3) this.b;
                FolderItem folderItem = (FolderItem) this.c;
                vr6.i$default(vr6.INSTANCE, kk3Var.b, "Deleting local folder setup for: " + folderItem, null, 4, null);
                kj3 kj3VarA = a.a(folderItem, false, false);
                if (kj3VarA.f()) {
                    f6.h(kj3VarA.b(), "!", "Unable to delete folder setup. Folder is backed up at ");
                    return null;
                }
                al3.b(folderItem, true);
                return be8.a;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                zn7 zn7Var = (zn7) this.b;
                in3 in3Var = (in3) this.c;
                be8 be8Var2 = be8.a;
                if (!zn7Var.equals(in3Var.k().a)) {
                    in3Var.m.clear();
                    in3Var.m(zn7Var.n(), new g52(4, zn7Var, in3Var));
                }
                return be8Var2;
            case 12:
                Intent intent2 = (Intent) this.b;
                d dVar = (d) this.c;
                int i4 = DetailActivity.b0;
                boolean booleanExtra = intent2.getBooleanExtra("detail_launched_from_shortcut", false);
                String str5 = dVar.b;
                if (booleanExtra) {
                    Log.i(str5, "Launching detail screen for package " + intent2.getPackage());
                    String str6 = intent2.getPackage();
                    str6.getClass();
                    dVar.e().k(new mo0(str6));
                } else {
                    Log.i(str5, "Signed in and storage granted! Starting HomeActivity");
                    dVar.e().k(new io0());
                }
                dVar.d();
                return be8.a;
            case 13:
                NoticeListActivity noticeListActivity = (NoticeListActivity) this.b;
                NoticeItem noticeItem = (NoticeItem) this.c;
                int i5 = NoticeListActivity.N;
                return Boolean.valueOf(Const.B(noticeListActivity, noticeItem.getMessage()));
            case 14:
                ((Context) this.b).startActivity((Intent) this.c);
                return be8.a;
            default:
                cs8 cs8Var = (cs8) this.b;
                et8 et8Var = (et8) this.c;
                iu8 iu8Var = cs8Var.b;
                bz7 bz7Var = new bz7(nc8.I(et8Var), nc8.I(q05.CLOUD), true);
                iu8Var.getClass();
                zn4.c(new ut8(bz7Var, R.string.uploading, iu8Var, z));
                return be8.a;
        }
    }
}
