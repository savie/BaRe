package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.animation.PathInterpolator;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hj implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hj(pe4 pe4Var, a aVar) {
        this.a = 7;
        this.b = pe4Var;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0300  */
    /* JADX WARN: Code duplicated, block: B:63:0x0267  */
    /* JADX WARN: Code duplicated, block: B:92:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:98:0x02e6  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        String packageName;
        String name;
        int i;
        int i2 = this.a;
        int i3 = 12;
        String str = "";
        int i4 = 4;
        int i5 = 2;
        int i6 = 0;
        i6 = 0;
        i6 = 0;
        i6 = 0;
        int i7 = 1;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                rj rjVar = (rj) obj2;
                k28 k28Var = rjVar.e;
                pi piVar = (pi) obj;
                piVar.getClass();
                int iA = piVar.a();
                if (iA != 11) {
                    if (iA == 12) {
                        lr4.h = null;
                        rjVar.I();
                    } else if (iA != 21) {
                        vr6.e$default(vr6.INSTANCE, "AppActionsDialog", fz5.j(piVar.a(), "onHelpIconClick not implemented for item id="), null, 4, null);
                    } else {
                        String string = k28Var.getString(R.string.blacklist_apps);
                        string.getClass();
                        String string2 = k28Var.getString(R.string.blacklist_apps_msg);
                        string2.getClass();
                        s35 s35Var = new s35(k28Var, R.style.M3AlertDialogTheme, new hv1(k28Var, R.style.M3AlertDialogTheme), null);
                        ra raVar = (ra) s35Var.b;
                        if (string.length() != 0) {
                            raVar.d = string;
                        }
                        raVar.f = string2;
                        String string3 = k28Var.getString(R.string.ok);
                        string3.getClass();
                        s35Var.t(string3, null);
                        s35Var.m();
                    }
                } else if (!V.INSTANCE.getA()) {
                    int i8 = PremiumActivity.V;
                    rs9.u(k28Var);
                }
                return be8Var;
            case 1:
                String str2 = (String) obj;
                str2.getClass();
                vr6.e$default(vr6.INSTANCE, "AppDownloadTask", str2, null, 4, null);
                kq kqVar = ((mq) obj2).j;
                kqVar.getClass();
                String str3 = kqVar.c;
                if (str3 == null || str3.length() == 0) {
                    kqVar.c = dj7.k(kqVar.d.e.getName(), ": ", str2);
                } else {
                    kqVar.c = dj7.k(kqVar.c, ", ", str2);
                }
                return be8Var;
            case 2:
                String str4 = (String) obj;
                str4.getClass();
                vr6.e$default(vr6.INSTANCE, "AppRestoreTask", str4, null, 4, null);
                ((xw) obj2).u.c(str4);
                return be8Var;
            case 3:
                gv7 gv7Var = ((il0) obj2).q;
                String str5 = (String) obj;
                if (str5 == null || str5.length() == 0) {
                    sz8.m((w45) gv7Var.getValue());
                } else {
                    if (!((w45) gv7Var.getValue()).isShowing()) {
                        ((w45) gv7Var.getValue()).show();
                    }
                    ((w45) gv7Var.getValue()).i(str5);
                }
                return be8Var;
            case 4:
                BlacklistActivity blacklistActivity = (BlacklistActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i9 = BlacklistActivity.P;
                fm7Var.getClass();
                ((bs0) blacklistActivity.M.getValue()).w(fm7Var, false);
                List list = fm7Var.a;
                boolean zIsEmpty = list.isEmpty();
                blacklistActivity.invalidateOptionsMenu();
                gv7 gv7Var2 = blacklistActivity.N;
                if (zIsEmpty) {
                    sz8.W((RecyclerView) gv7Var2.getValue());
                    blacklistActivity.N().d.setVisibility(8);
                    blacklistActivity.N().e.setVisibility(8);
                    blacklistActivity.N().c.a.setVisibility(0);
                } else {
                    sz8.c0((RecyclerView) gv7Var2.getValue());
                    blacklistActivity.N().d.setVisibility(0);
                    blacklistActivity.N().e.setVisibility(8);
                    blacklistActivity.N().c.a.setVisibility(8);
                }
                nc8 supportActionBar = blacklistActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.d0(Const.p(blacklistActivity, list.size(), 100, false));
                }
                return be8Var;
            case 5:
                CallsBackupsActivity callsBackupsActivity = (CallsBackupsActivity) obj2;
                s01 s01Var = (s01) obj;
                Object value = callsBackupsActivity.R.getValue();
                value.getClass();
                sz8.d0((ProgressBar) value, s01Var.a);
                gv7 gv7Var3 = callsBackupsActivity.S;
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) gv7Var3.getValue();
                boolean z = s01Var.a;
                sz8.d0(quickRecyclerView, !z);
                if (!z) {
                    ArrayList arrayList = s01Var.b;
                    ((QuickRecyclerView) gv7Var3.getValue()).setLinearLayoutManager(1);
                    q01 q01Var = new q01(new n01(2, callsBackupsActivity, CallsBackupsActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V", 0));
                    q01Var.w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), false);
                    q01Var.j = new rs(callsBackupsActivity, i5);
                    ((QuickRecyclerView) gv7Var3.getValue()).setAdapter(q01Var);
                }
                return be8Var;
            case 6:
                Set set = (Set) obj2;
                ef1 ef1Var = (ef1) obj;
                ef1Var.getClass();
                List<md1> list2 = ef1Var.g;
                ArrayList arrayList2 = new ArrayList(hl1.G0(list2, 10));
                for (md1 md1VarA : list2) {
                    if (set.contains(md1VarA.a.a)) {
                        md1VarA = md1.a(md1VarA, false, rd1.NOT_RUN, null, null, null, 3);
                    }
                    arrayList2.add(md1VarA);
                }
                return ef1.a(ef1Var, arrayList2, true, false, 191);
            case 7:
                b bVar = (b) obj;
                bVar.getClass();
                a.EnumC0013a enumC0013a = a.EnumC0013a.ERROR;
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String message = ((hi1) ((pe4) obj2)).m.getMessage();
                return b.a(bVar, enumC0013a, ov2.a, sv2.a, contextC.getString(R.string.cloud_orphan_scan_failed, message != null ? message : ""), 0, 0, 6271);
            case 8:
                lr1 lr1Var = (lr1) obj2;
                SyncOption syncOption = (SyncOption) obj;
                syncOption.getClass();
                lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, syncOption.toString(), null, null, null, null, null, null, null, null, null, null, 65503, null));
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                return CreatePasswordCredentialController.handleResponse$lambda$1((CreatePasswordCredentialController) obj2, (c12) obj);
            case 10:
                return CredentialProviderCreatePasswordController.handleResponse$lambda$1((CredentialProviderCreatePasswordController) obj2, (c12) obj);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                final CsActivity csActivity = (CsActivity) obj2;
                j62 j62Var = (j62) obj;
                int i10 = CsActivity.P0;
                j62Var.getClass();
                X509Certificate x509Certificate = j62Var.a;
                final boolean z2 = j62Var.b;
                x509Certificate.getClass();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) csActivity.getString(R.string.untrusted_certificate_msg));
                spannableStringBuilder.append((CharSequence) "\n\n");
                StyleSpan styleSpan = new StyleSpan(1);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) "Issued to\n");
                spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                io4.j("Const", "showUntrustedDialog", true, new y2(i4, spannableStringBuilder, x509Certificate), 8);
                spannableStringBuilder.append((CharSequence) "\n\n");
                StyleSpan styleSpan2 = new StyleSpan(1);
                int length2 = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) "Issued by\n");
                spannableStringBuilder.setSpan(styleSpan2, length2, spannableStringBuilder.length(), 17);
                io4.j("Const", "showUntrustedDialog", true, new o20(i7, spannableStringBuilder, x509Certificate), 8);
                spannableStringBuilder.append((CharSequence) "\n\n");
                StyleSpan styleSpan3 = new StyleSpan(1);
                int length3 = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) "Validity\n");
                spannableStringBuilder.setSpan(styleSpan3, length3, spannableStringBuilder.length(), 17);
                io4.j("Const", "showUntrustedDialog", true, new xq(i5, x509Certificate, spannableStringBuilder), 8);
                s35 s35Var2 = new s35(csActivity, R.style.M3AlertDialogTheme, new hv1(csActivity, R.style.M3AlertDialogTheme), Float.valueOf(13.5f));
                String string4 = csActivity.getString(R.string.untrusted_certificate_title);
                ra raVar2 = (ra) s35Var2.b;
                raVar2.d = string4;
                raVar2.f = spannableStringBuilder;
                s35Var2.s(z2 ? R.string.test_anyway : R.string.connect_anyway, new DialogInterface.OnClickListener() { // from class: d52
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i11) {
                        int i12 = CsActivity.P0;
                        csActivity.t0(z2, true);
                    }
                });
                s35Var2.q(R.string.back, null);
                s35Var2.m();
                return be8Var;
            case 12:
                String str6 = (String) obj;
                str6.getClass();
                hh1 hh1VarQ = ((v52) obj2).o().q(str6);
                if (hh1VarQ instanceof gh1) {
                    return new ab1(((gh1) hh1VarQ).a);
                }
                if (pe4.d(hh1VarQ, fh1.a)) {
                    return new za1(new IllegalStateException(eq3.k("Failed listing cloud directory '", str6, "'")));
                }
                q.j();
                return null;
            case 13:
                ((x92) obj2).m().c();
                return be8Var;
            case 14:
                DetailActivity detailActivity = (DetailActivity) obj2;
                ek2 ek2Var = (ek2) obj;
                int i11 = DetailActivity.b0;
                if (detailActivity.a0().g && (ek2Var instanceof dk2)) {
                    detailActivity.a0().g = false;
                    l30 l30Var = new l30(6, detailActivity, ek2Var);
                    zn4 zn4Var = zn4.a;
                    zn4.f(500L, new kg(i3, detailActivity, l30Var));
                } else {
                    rj2 rj2Var = (rj2) detailActivity.U.getValue();
                    ek2Var.getClass();
                    rj2Var.b(ek2Var);
                }
                return be8Var;
            case 15:
                fj5 fj5Var = (fj5) obj;
                fj5Var.getClass();
                nh nhVar = fj5Var.a;
                gy5 gy5Var = fj5Var.b;
                if (!pe4.d(((qn5) nhVar.b).U(gy5Var).getValue(), obj2)) {
                    return new b98(false, null);
                }
                new rd2(gy5Var).e(null);
                Object objF = t62.f(null);
                ui8.c(objF);
                nhVar.b = ((qn5) nhVar.b).h0(gy5Var, xh8.a(objF, qv2.e));
                return new b98(true, ((qn5) nhVar.b).U(gy5Var));
            case Argon2.V10 /* 16 */:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj2;
                q63 q63Var = (q63) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (q63Var == null || !q63Var.j()) {
                    String string5 = homeSearchActivity.getString(R.string.no_backup_on_device);
                    string5.getClass();
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new cv(14, homeSearchActivity, string5));
                } else {
                    g00 g00Var = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra = new Intent(homeSearchActivity, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
                        intentPutExtra.getClass();
                        homeSearchActivity.startActivity(intentPutExtra);
                    } else {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        Context contextC2 = SwiftApp.Companion.c();
                        zn4 zn4Var3 = zn4.a;
                        dj7.y(contextC2, "Feature not supported on this device");
                    }
                    homeSearchActivity.V();
                }
                return be8Var;
            case 17:
                String str7 = (String) obj2;
                s54 s54Var = (s54) obj;
                s54Var.getClass();
                ai6 ai6Var = o54.a;
                ArrayList arrayListD = o54.d(str7);
                u54 u54Var = s54Var.b;
                ji jiVar = s54Var.n;
                String str8 = s54Var.d;
                String str9 = s54Var.c;
                int i12 = k54.a[u54Var.ordinal()];
                if (i12 == 1) {
                    if (jiVar != null && (name = jiVar.getName()) != null) {
                        str9 = name;
                    }
                    if (jiVar != null && (packageName = jiVar.getPackageName()) != null) {
                        str = packageName;
                    } else if (str8 != null) {
                        str = str8;
                    }
                    ArrayList arrayListD2 = o54.d(str9);
                    ArrayList arrayListD3 = o54.d(str);
                    String strC = o54.c(str9);
                    String strC2 = o54.c(str);
                    String strB = o54.b(str7);
                    String strB2 = o54.b(str9);
                    String str10 = (String) el1.U0(arrayListD);
                    String str11 = (str10 == null || str10.length() <= 1) ? null : str10;
                    if (strC.equals(str7)) {
                        i6 = 900;
                    } else if (strC2.equals(str7)) {
                        i6 = 850;
                    } else if (o54.e(arrayListD2, arrayListD)) {
                        i6 = 800;
                    } else if (uq7.V(strC, str7, false)) {
                        i6 = 750;
                    } else {
                        if (str11 != null) {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it = arrayListD2.iterator();
                            while (it.hasNext()) {
                                Character chC0 = nq7.c0((String) it.next());
                                if (chC0 != null) {
                                    arrayList3.add(chC0);
                                }
                            }
                            String strY0 = el1.Y0(arrayList3, "", null, null, null, 62);
                            StringBuilder sb = new StringBuilder();
                            int length4 = str9.length();
                            for (int i13 = 0; i13 < length4; i13++) {
                                char cCharAt = str9.charAt(i13);
                                if (Character.isUpperCase(cCharAt)) {
                                    sb.append(cCharAt);
                                }
                            }
                            String strC3 = o54.c(sb.toString());
                            if (uq7.V(strY0, str11, false) || uq7.V(strC3, str11, false)) {
                                i6 = 650;
                            }
                        }
                        if (o54.e(arrayListD3, arrayListD)) {
                            i6 = 550;
                        } else if (uq7.V(strC2, str7, false)) {
                            i6 = 500;
                        } else if (strB.length() >= 3 && nq7.Z(strB2, strB, false)) {
                            i6 = 150;
                        }
                    }
                } else if (i12 == 2) {
                    ArrayList arrayListD4 = o54.d(str9);
                    ArrayList arrayListD5 = o54.d(str8);
                    String strC4 = o54.c(str9);
                    String strB3 = o54.b(str7);
                    String strB4 = o54.b(str9);
                    if (strC4.equals(str7)) {
                        i6 = 800;
                    } else if (o54.e(arrayListD4, arrayListD)) {
                        i6 = 700;
                    } else if (uq7.V(strC4, str7, false)) {
                        i6 = 650;
                    } else if (o54.e(arrayListD5, arrayListD)) {
                        i6 = 450;
                    } else if (strB3.length() >= 3 && nq7.Z(strB4, strB3, false)) {
                        i6 = 150;
                    }
                } else {
                    if (i12 != 3 && i12 != 4) {
                        q.j();
                        return null;
                    }
                    int i14 = 0;
                    int i15 = 0;
                    for (Object obj3 : s54Var.t) {
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            fl1.F0();
                            throw null;
                        }
                        String str12 = (String) obj3;
                        String strC5 = o54.c(str12);
                        if (strC5.length() == 0) {
                            i = 0;
                        } else {
                            String strB5 = o54.b(str7);
                            String strB6 = o54.b(str12);
                            if (strC5.equals(str7)) {
                                i = 700;
                            } else if (uq7.V(strC5, str7, false)) {
                                i = 600;
                            } else if (o54.e(o54.d(str12), arrayListD)) {
                                i = 500;
                            } else if (str7.length() >= 3 && nq7.Z(strC5, str7, false)) {
                                i = 150;
                            } else if (strB5.length() < 3 || !nq7.Z(strB6, strB5, false)) {
                                i = 0;
                            } else {
                                i = 120;
                            }
                        }
                        int i17 = i - i15;
                        if (i17 > i14) {
                            i14 = i17;
                        }
                        i15 = i16;
                    }
                    i6 = i14;
                }
                if (i6 <= 0) {
                    s54Var = null;
                }
                if (s54Var != null) {
                    return new pw5(Integer.valueOf(i6), s54Var);
                }
                return null;
            case 18:
                LabelEditActivity labelEditActivity = (LabelEditActivity) obj2;
                String str13 = (String) obj;
                int i18 = LabelEditActivity.U;
                boolean z3 = str13 == null || str13.length() == 0;
                boolean z4 = !z3;
                TextInputLayout textInputLayout = (TextInputLayout) labelEditActivity.N.getValue();
                if (textInputLayout.r.q != z4) {
                    labelEditActivity.y(TextView.class);
                }
                textInputLayout.setErrorEnabled(z4);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                textInputLayout.setError(str13);
                MaterialButton materialButton = (MaterialButton) labelEditActivity.P.getValue();
                materialButton.setEnabled(z3);
                materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
                MaterialCardView materialCardView = ((zq4) labelEditActivity.S.getValue()).a;
                materialCardView.setEnabled(z3);
                materialCardView.setAlpha(materialCardView.isEnabled() ? 1.0f : 0.5f);
                return be8Var;
            case Argon2.V13 /* 19 */:
                je5 je5Var = (je5) obj2;
                ke5 ke5Var = (ke5) obj;
                if (ke5Var != null) {
                    q63 q63Var2 = ke5Var.a;
                    q63Var2.getClass();
                    g00 g00Var2 = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra2 = new Intent(je5Var, (Class<?>) MessagesBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var2.v());
                        intentPutExtra2.getClass();
                        je5Var.startActivity(intentPutExtra2);
                    } else {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        Context contextC3 = SwiftApp.Companion.c();
                        zn4 zn4Var4 = zn4.a;
                        dj7.y(contextC3, "Feature not supported on this device");
                    }
                }
                return be8Var;
            case 20:
                fq5 fq5Var = (fq5) obj2;
                s35 s35Var3 = new s35(fq5Var, R.style.M3AlertDialogTheme, new hv1(fq5Var, R.style.M3AlertDialogTheme), null);
                ra raVar3 = (ra) s35Var3.b;
                raVar3.d = fq5Var.getString(R.string.auth_failed);
                raVar3.f = (String) obj;
                s35Var3.r(R.string.ok, null);
                raVar3.n = new ub3(fq5Var, i7);
                s35Var3.m();
                return be8Var;
            case 21:
                final PCloudSignInActivity pCloudSignInActivity = (PCloudSignInActivity) obj2;
                int i19 = PCloudSignInActivity.M;
                s35 s35Var4 = new s35(pCloudSignInActivity, R.style.M3AlertDialogTheme, new hv1(pCloudSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar4 = (ra) s35Var4.b;
                raVar4.d = pCloudSignInActivity.getString(R.string.auth_failed);
                raVar4.f = (String) obj;
                s35Var4.r(R.string.ok, null);
                raVar4.n = new DialogInterface.OnDismissListener() { // from class: pv5
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i20 = PCloudSignInActivity.M;
                        PCloudSignInActivity pCloudSignInActivity2 = pCloudSignInActivity;
                        pCloudSignInActivity2.setResult(0);
                        pCloudSignInActivity2.finish();
                    }
                };
                s35Var4.m();
                return be8Var;
            case 22:
                PasswordStrategyActivity passwordStrategyActivity = (PasswordStrategyActivity) obj2;
                int i20 = PasswordStrategyActivity.O;
                Intent intentPutExtra3 = new Intent(passwordStrategyActivity, (Class<?>) UserPasswordActivity.class).putExtra("extra_is_restoring", false);
                intentPutExtra3.getClass();
                passwordStrategyActivity.startActivityForResult(intentPutExtra3, 1981811);
                return be8Var;
            case 23:
                ly6 ly6Var = (ly6) obj;
                ly6Var.getClass();
                ((mt3) obj2).invoke(new dz6(ly6Var.a, ly6Var.b, ly6Var.c, ly6Var.d));
                return be8Var;
            case 24:
                x27 x27Var = (x27) obj;
                x27Var.getClass();
                q47 q47VarP = ((m37) obj2).p();
                zn4 zn4Var5 = zn4.a;
                zn4.c(new l30(13, x27Var, q47VarP));
                return be8Var;
            case 25:
                h28 h28Var = (h28) obj;
                h28Var.getClass();
                ((Preference) ((pa7) obj2).q.getValue()).B(h28Var.asString());
                return be8Var;
            case 26:
                tn2 tn2Var = (tn2) obj;
                tn2Var.getClass();
                zn4 zn4Var6 = zn4.a;
                zn4.b(null, new ct7(tn2Var, (SettingsActivity) obj2, null));
                return be8Var;
            case 27:
                TaskActivity taskActivity = (TaskActivity) obj2;
                List list3 = (List) obj;
                int i21 = TaskActivity.c0;
                list3.getClass();
                gv7 gv7Var4 = taskActivity.U;
                boolean zCanScrollVertically = ((QuickRecyclerView) gv7Var4.getValue()).canScrollVertically(1);
                List listFilterLogs$default = vr6.filterLogs$default(vr6.INSTANCE, list3, false, false, false, 14, null);
                ((bs6) taskActivity.V.getValue()).w(new fm7(listFilterLogs$default, (Set) null, false, (String) null, 30), true);
                if (!zCanScrollVertically) {
                    ((QuickRecyclerView) gv7Var4.getValue()).f0(fl1.z0(listFilterLogs$default));
                }
                return be8Var;
            default:
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                ((h08) obj2).getClass();
                builder.a = h08.a(apiDomain, "/openapi/api/quota", accessToken);
                builder.b();
                return new Request(builder);
        }
    }

    public /* synthetic */ hj(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
