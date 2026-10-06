package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.preference.Preference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.intro.IntroPermissionCardView;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;
import org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload;
import org.swiftapps.swiftbackup.settings.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ej implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ej(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:112:0x02d5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String[]] */
    @Override // defpackage.bt3
    public final Object invoke() {
        qx sizeInfo;
        String string;
        dd1 dd1Var;
        Object bn6Var;
        int i = this.a;
        be8 be8Var = be8.a;
        String[] strArr = 0;
        Object obj = null;
        boolean z = false;
        Object[] objArr = 0;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                zn4 zn4Var = zn4.a;
                zn4.b(null, new qj((rj) obj2, strArr, objArr == true ? 1 : 0));
                return be8Var;
            case 1:
                hk hkVar = (hk) obj2;
                return hkVar.e().J(hkVar.b + ".extra");
            case 2:
                return (g55) ((gl) obj2).h.getValue();
            case 3:
                Iterator it = ((List) ((cm) obj2).e.getValue()).iterator();
                long jA = 0;
                while (it.hasNext()) {
                    jA += ((q63) it.next()).A();
                }
                return Long.valueOf(jA);
            case 4:
                wv wvVar = (wv) obj2;
                return new tv(wvVar.a, wvVar.b, (String) wvVar.c.getValue());
            case 5:
                return AppSpecialDataPayload.Companion.read(((xw) obj2).k.B());
            case 6:
                Preference preferenceJ = ((a) obj2).j("restore_special_permissions");
                preferenceJ.getClass();
                return preferenceJ;
            case 7:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                int i2 = AppsBatchActivity.s0;
                sc3 sc3Var = new sc3(appsBatchActivity);
                appsBatchActivity.Z = sc3Var;
                return sc3Var;
            case 8:
                qk0 qk0Var = (qk0) obj2;
                ji jiVar = qk0Var.h;
                return Boolean.valueOf(jiVar.hasExternalData(qk0Var.a.g) && (sizeInfo = jiVar.getSizeInfo()) != null && sizeInfo.getHasExternalData());
            case XmlPullParser.COMMENT /* 9 */:
                w45 w45Var = new w45((il0) obj2);
                w45Var.setTitle("Migrating local app backups...");
                w45Var.setCancelable(false);
                w45Var.r = 1;
                w45Var.n("%1d/%2d backups");
                return w45Var;
            case 10:
                int i3 = BlacklistActivity.P;
                return ((BlacklistActivity) obj2).N().f;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Preference preferenceJ2 = ((v11) obj2).j("max_call_backups");
                preferenceJ2.getClass();
                return preferenceJ2;
            case 12:
                int i4 = ConfigListActivity.R;
                return ((ConfigListActivity) obj2).O().d;
            case 13:
                int i5 = ContributorRegActivity.S;
                return ((ContributorRegActivity) obj2).N().d;
            case 14:
                int i6 = ConversationsActivity.O;
                return ((sv1) ((ConversationsActivity) obj2).L.getValue()).c;
            case 15:
                return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1$0((CredentialProviderGetSignInIntentController) obj2);
            case Argon2.V10 /* 16 */:
                Const.E(((x92) obj2).a + ": Firebase connection error");
                return be8Var;
            case 17:
                ex6 ex6Var = ((fa2) obj2).c;
                StorageInfoLocal storageInfoLocal = (StorageInfoLocal) ex6Var.d();
                StorageInfoLocal.a aVar = StorageInfoLocal.Companion;
                String str = ry5.u;
                StorageInfoLocal storageInfoLocalCreate$default = StorageInfoLocal.a.create$default(aVar, new q63(qy5.f(false, null).a, 2), false, 2, null);
                if (!pe4.d(storageInfoLocal, storageInfoLocalCreate$default)) {
                    if (storageInfoLocalCreate$default instanceof StorageInfoLocal.Success) {
                        aVar.setSavedStorageInfo((StorageInfoLocal.Success) storageInfoLocalCreate$default);
                    }
                    try {
                        Thread.sleep(1000L);
                        break;
                    } catch (Exception unused) {
                    }
                    ex6Var.k(storageInfoLocalCreate$default);
                }
                return be8Var;
            case 18:
                DetailActivity detailActivity = (DetailActivity) obj2;
                int i7 = DetailActivity.b0;
                return new pj2(detailActivity, detailActivity.X().c, detailActivity.a0());
            case Argon2.V13 /* 19 */:
                sc3 sc3Var2 = (sc3) obj2;
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                Set<String> set = sv2.a;
                Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter_temp", set);
                if (stringSet != null) {
                    set = stringSet;
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : set) {
                    lr4 lr4Var = lr4.a;
                    LabelParams labelParamsC = lr4.c(str2);
                    if (labelParamsC != null) {
                        arrayList.add(labelParamsC);
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                Set setZ1 = arrayList != null ? el1.z1(arrayList) : null;
                if (setZ1 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = setZ1.iterator();
                    while (it2.hasNext()) {
                        String id = ((LabelParams) it2.next()).getId();
                        if (id != null) {
                            arrayList2.add(id);
                        }
                    }
                    strArr = (String[]) arrayList2.toArray(new String[0]);
                }
                dt dtVar = sc3Var2.Q;
                dtVar.getClass();
                us2.E(dtVar, 102, strArr, false, 18);
                return be8Var;
            case 20:
                return FolderBackup$FolderLocalSnapshot.backupFile_delegate$lambda$0((FolderBackup$FolderLocalSnapshot) obj2);
            case 21:
                dm3 dm3Var = (dm3) obj2;
                ex6 ex6Var2 = dm3Var.j;
                FolderItem folderItemK = dm3Var.k();
                long jIncrementAndGet = dm3Var.l.incrementAndGet();
                ex6 ex6Var3 = dm3Var.h;
                if (ex6Var3.d() == null && dm3.l(jIncrementAndGet, dm3Var, folderItemK)) {
                    ex6Var3.k(vl3.a);
                }
                kj3 kj3VarA = org.swiftapps.swiftbackup.folders.data.a.a(folderItemK, false, false);
                boolean zK = kj3VarA.d().k();
                if (kj3VarA.f()) {
                    if (dm3.l(jIncrementAndGet, dm3Var, folderItemK)) {
                        ex6Var2.k(Boolean.FALSE);
                    }
                    ul3 ul3Var = new ul3(kj3VarA);
                    if (dm3.l(jIncrementAndGet, dm3Var, folderItemK)) {
                        ex6Var3.k(ul3Var);
                    }
                } else {
                    if (dm3.l(jIncrementAndGet, dm3Var, folderItemK)) {
                        ex6Var2.k(Boolean.valueOf(zK));
                    }
                    if (dm3.l(jIncrementAndGet, dm3Var, folderItemK)) {
                        ex6Var3.k(wl3.a);
                    }
                }
                return be8Var;
            case 22:
                c64 c64Var = (c64) obj2;
                ix6 ix6Var = c64.l;
                tb1 tb1Var = tb1.a;
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences2.getString("setup_cloud_first_startup", null);
                    if (string != null && string.length() != 0) {
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor.putString("setup_cloud_first_startup", null).apply();
                        c64.l.k(Boolean.FALSE);
                        Log.d(c64Var.b, "checkCloudConnectPromptNeeded=".concat(string));
                        if (qb1.m()) {
                            Log.d(c64Var.b, "Cloud already connected");
                        } else {
                            jx2 entries = dd1.getEntries();
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it3 = ((z3) entries).iterator();
                            while (true) {
                                w3 w3Var = (w3) it3;
                                if (w3Var.hasNext()) {
                                    Object next = w3Var.next();
                                    if (((dd1) next).getSupportsCurrentAndroidSdk()) {
                                        arrayList3.add(next);
                                    }
                                } else {
                                    le3 le3Var = new le3(new me3(new ll1(arrayList3), true, new dq(7)));
                                    while (le3Var.hasNext()) {
                                        Object next2 = le3Var.next();
                                        if (pe4.d(((dd1) next2).getConstant(), string)) {
                                            obj = next2;
                                            dd1Var = (dd1) obj;
                                            if (dd1Var != null) {
                                                c64Var.k.k(dd1Var);
                                            } else {
                                                vr6.i$default(vr6.INSTANCE, c64Var.b, eq3.k("Not showing previous cloud connect dialog. Cloud type not available in the app or not meant for production use [", string, "]"), null, 4, null);
                                            }
                                        }
                                    }
                                    dd1Var = (dd1) obj;
                                    if (dd1Var != null) {
                                        c64Var.k.k(dd1Var);
                                    } else {
                                        vr6.i$default(vr6.INSTANCE, c64Var.b, eq3.k("Not showing previous cloud connect dialog. Cloud type not available in the app or not meant for production use [", string, "]"), null, 4, null);
                                    }
                                }
                            }
                        }
                    }
                    return be8Var;
                } catch (ClassCastException unused2) {
                    string = null;
                }
                break;
            case 23:
                int i8 = IntroActivity.V;
                View viewInflate = ((IntroActivity) obj2).getLayoutInflater().inflate(R.layout.intro_activity, (ViewGroup) null, false);
                int i9 = R.id.btn_anonymous;
                View viewU = ms8.u(viewInflate, R.id.btn_anonymous);
                if (viewU != null) {
                    MaterialButton materialButton = (MaterialButton) viewU;
                    h80 h80Var = new h80(materialButton, materialButton, 9, z);
                    i9 = R.id.btn_google;
                    View viewU2 = ms8.u(viewInflate, R.id.btn_google);
                    if (viewU2 != null) {
                        MaterialButton materialButton2 = (MaterialButton) viewU2;
                        v04 v04Var = new v04(materialButton2, materialButton2);
                        i9 = R.id.container_sign_in_actions;
                        if (((LinearLayout) ms8.u(viewInflate, R.id.container_sign_in_actions)) != null) {
                            i9 = R.id.firebase_connection_error_view;
                            View viewU3 = ms8.u(viewInflate, R.id.firebase_connection_error_view);
                            if (viewU3 != null) {
                                uf3 uf3VarA = uf3.a(viewU3);
                                i9 = R.id.intro_activity_permissions;
                                View viewU4 = ms8.u(viewInflate, R.id.intro_activity_permissions);
                                if (viewU4 != null) {
                                    int i10 = R.id.btn_root_permissions;
                                    MaterialButton materialButton3 = (MaterialButton) ms8.u(viewU4, R.id.btn_root_permissions);
                                    if (materialButton3 != null) {
                                        i10 = R.id.container_notifications_perm;
                                        IntroPermissionCardView introPermissionCardView = (IntroPermissionCardView) ms8.u(viewU4, R.id.container_notifications_perm);
                                        if (introPermissionCardView != null) {
                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) viewU4;
                                            i10 = R.id.container_root_permissions;
                                            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ms8.u(viewU4, R.id.container_root_permissions);
                                            if (linearLayoutCompat2 != null) {
                                                i10 = R.id.container_storage_perm;
                                                IntroPermissionCardView introPermissionCardView2 = (IntroPermissionCardView) ms8.u(viewU4, R.id.container_storage_perm);
                                                if (introPermissionCardView2 != null) {
                                                    i10 = R.id.container_xiaomi_installed_apps_perm;
                                                    IntroPermissionCardView introPermissionCardView3 = (IntroPermissionCardView) ms8.u(viewU4, R.id.container_xiaomi_installed_apps_perm);
                                                    if (introPermissionCardView3 != null) {
                                                        i10 = R.id.tv_header;
                                                        if (((TextView) ms8.u(viewU4, R.id.tv_header)) != null) {
                                                            jf4 jf4Var = new jf4(linearLayoutCompat, materialButton3, introPermissionCardView, linearLayoutCompat2, introPermissionCardView2, introPermissionCardView3);
                                                            i9 = R.id.intro_activity_sign_in;
                                                            View viewU5 = ms8.u(viewInflate, R.id.intro_activity_sign_in);
                                                            if (viewU5 != null) {
                                                                int i11 = R.id.tv_sign_in_subtitle;
                                                                TextView textView = (TextView) ms8.u(viewU5, R.id.tv_sign_in_subtitle);
                                                                if (textView != null) {
                                                                    i11 = R.id.tv_sign_in_title;
                                                                    if (((TextView) ms8.u(viewU5, R.id.tv_sign_in_title)) != null) {
                                                                        kf4 kf4Var = new kf4((LinearLayoutCompat) viewU5, textView);
                                                                        i9 = R.id.intro_bottom_actions;
                                                                        LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.intro_bottom_actions);
                                                                        if (linearLayout != null) {
                                                                            i9 = R.id.intro_header;
                                                                            if (((ConstraintLayout) ms8.u(viewInflate, R.id.intro_header)) != null) {
                                                                                i9 = R.id.intro_logo;
                                                                                if (((ImageView) ms8.u(viewInflate, R.id.intro_logo)) != null) {
                                                                                    i9 = R.id.iv_menu;
                                                                                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_menu);
                                                                                    if (imageView != null) {
                                                                                        i9 = R.id.tv_privacy_policy;
                                                                                        TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_privacy_policy);
                                                                                        if (textView2 != null) {
                                                                                            i9 = R.id.tv_sign_in_subtitle2;
                                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_sign_in_subtitle2)) != null) {
                                                                                                return new if4((LinearLayout) viewInflate, h80Var, v04Var, uf3VarA, jf4Var, kf4Var, linearLayout, imageView, textView2);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(i11)));
                                                                return null;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(i10)));
                                    return null;
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i9)));
                return null;
            case 24:
                final nf4 nf4Var = (nf4) obj2;
                try {
                    bn6Var = nf4Var.c.invoke();
                    break;
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                Boolean bool = Boolean.FALSE;
                if (bn6Var instanceof bn6) {
                    bn6Var = bool;
                }
                final boolean zBooleanValue = ((Boolean) bn6Var).booleanValue();
                nf4Var.b.invoke(new bt3() { // from class: lf4
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        nf4 nf4Var2 = nf4Var;
                        boolean z2 = zBooleanValue;
                        synchronized (nf4Var2) {
                            try {
                                if (!nf4Var2.h && nf4Var2.g == mf4.CHECKING_ROOT) {
                                    if (z2) {
                                        nf4Var2.a(mf4.GRANTING_PERMISSIONS);
                                        nf4Var2.f.invoke();
                                    } else {
                                        nf4Var2.a(mf4.AWAITING_SHIZUKU);
                                        nf4Var2.e.invoke();
                                    }
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        return be8.a;
                    }
                });
                return be8Var;
            case 25:
                int i12 = LabelEditActivity.U;
                return ((LabelEditActivity) obj2).N().d;
            case 26:
                Preference preferenceJ3 = ((fs4) obj2).j("delete_gms_files");
                preferenceJ3.getClass();
                return preferenceJ3;
            case 27:
                is4 is4Var = (is4) obj2;
                String str3 = is4Var.a;
                if (pe4.d(str3, "en")) {
                    return is4Var.a().getDisplayLanguage(Locale.US);
                }
                if (pe4.d(str3, "zh")) {
                    return pe4.d(is4Var.b, "CN") ? "简体中文" : "繁體中文";
                }
                Object value = is4Var.k.getValue();
                value.getClass();
                StringBuilder sb = new StringBuilder((String) value);
                if (is4Var.c) {
                    sb.append(", " + is4Var.a().getDisplayCountry(is4Var.a()));
                }
                return sb.toString();
            case 28:
                return (FrameLayout) ((u35) obj2).findViewById(R.id.design_bottom_sheet);
            default:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj2;
                int i13 = MessagesBackupRestoreActivity.c0;
                w45 w45Var2 = new w45(messagesBackupRestoreActivity);
                w45Var2.setTitle(messagesBackupRestoreActivity.getString(R.string.reading_mms_data));
                w45Var2.setCancelable(false);
                w45Var2.r = 1;
                w45Var2.n(null);
                return w45Var2;
        }
    }
}
