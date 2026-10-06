package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apkreader.ApkManifestParser;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bh implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ bh(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        int i2 = R.id.appbar_layout;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ApkManifestParser.parsedApkInfo_delegate$lambda$0((ApkManifestParser) obj);
            case 1:
                return ((rj) obj).H().n;
            case 2:
                hk hkVar = (hk) obj;
                return hkVar.e().J(hkVar.b + ".dat");
            case 3:
                return Boolean.valueOf(((vl) obj).i());
            case 4:
                qx sizeInfo = ((zl) obj).b.getSizeInfo();
                return Long.valueOf(io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getExternalObbSize()) : null));
            case 5:
                return Boolean.valueOf(((xw) obj).w());
            case 6:
                Preference preferenceJ = ((a) obj).j("show_system_apps");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 7:
                return Boolean.valueOf(qx.hasExternalData_delegate$lambda$0((qx) obj));
            case 8:
                int i3 = AppsBatchActivity.s0;
                return (SimpleSearchView) ((AppsBatchActivity) obj).k0().b.c;
            case XmlPullParser.COMMENT /* 9 */:
                int i4 = AppsConfigRunActivity.m0;
                return ((AppsConfigRunActivity) obj).h0().c;
            case 10:
                List list = (List) ((qk0) obj).x.getValue();
                if (list != null) {
                    return (AppCloudBackup) el1.U0(list);
                }
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i5 = CloudDiagnosticsActivity.Z;
                return new ge1((CloudDiagnosticsActivity) obj);
            case 12:
                int i6 = ConfigEditActivity.V;
                return new j30((ConfigEditActivity) obj);
            case 13:
                int i7 = ConfigListActivity.R;
                View viewInflate = ((ConfigListActivity) obj).getLayoutInflater().inflate(R.layout.configs_list_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i2 = R.id.btn_create;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_create);
                    if (extendedFloatingActionButton != null) {
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                        i2 = R.id.error_layout;
                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                        if (viewU2 != null) {
                            zx2 zx2VarA = zx2.a(viewU2);
                            i2 = R.id.progress_bar;
                            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                            if (circularProgressIndicator != null) {
                                i2 = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                                if (recyclerView != null) {
                                    return new nr1(coordinatorLayout, w00VarB, extendedFloatingActionButton, zx2VarA, circularProgressIndicator, recyclerView);
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 14:
                ConfigsData configsData = (ConfigsData) obj;
                synchronized (br1.a) {
                    try {
                        if (configsData == null) {
                            ((q63) br1.g.getValue()).h();
                        } else {
                            gv7 gv7Var = br1.g;
                            io4.g((q63) gv7Var.getValue());
                            gv7 gv7Var2 = w14.a;
                            w14.g(configsData, (q63) gv7Var.getValue(), false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return be8.a;
            case 15:
                int i8 = ConfigSettingsActivity.V;
                Intent intent = ((ConfigSettingsActivity) obj).getIntent();
                if (intent != null) {
                    return intent.getParcelableArrayListExtra("extra_other_apply_data");
                }
                return null;
            case Argon2.V10 /* 16 */:
                return ((cd) obj).open(":memory:");
            case 17:
                int i9 = ContributorRegActivity.S;
                return ((ContributorRegActivity) obj).N().p;
            case 18:
                org.swiftapps.swiftbackup.contributor.a aVar = (org.swiftapps.swiftbackup.contributor.a) obj;
                aVar.h(R.string.processing);
                af3 af3VarC = cf3.c(aVar.e, aVar.g);
                if (pe4.d(af3VarC, ze3.b)) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    zn4 zn4Var = zn4.a;
                    dj7.y(contextC, "Synced");
                } else {
                    if (!(af3VarC instanceof ye3)) {
                        q.j();
                        return null;
                    }
                    String strJ = xs1.j("Error while saving details: ", ((ye3) af3VarC).b.b);
                    vr6.e$default(vr6.INSTANCE, aVar.b, strJ, null, 4, null);
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    Context contextC2 = SwiftApp.Companion.c();
                    zn4 zn4Var2 = zn4.a;
                    dj7.y(contextC2, strJ);
                }
                aVar.f();
                return be8.a;
            case Argon2.V13 /* 19 */:
                return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$1((CreatePublicKeyCredentialController) obj);
            case 20:
                int i10 = AppsQuickActionsActivity.S;
                HomeActivity homeActivityL = ((x92) obj).l();
                homeActivityL.startActivity(new Intent(homeActivityL, (Class<?>) AppsQuickActionsActivity.class));
                return be8.a;
            case 21:
                return ((kj3) obj).b().J("metadata.json");
            case 22:
                return ((sj3) ((rj3) obj).K).b;
            case 23:
                return ((rk3) ((qk3) obj).K).b;
            case 24:
                dm3 dm3Var = ((kl3) obj).c;
                dm3Var.getClass();
                zn4.c(new fj(dm3Var, 25));
                return be8.a;
            case 25:
                int i11 = FolderEditActivity.h0;
                View viewInflate2 = ((FolderEditActivity) obj).getLayoutInflater().inflate(R.layout.folder_edit_activity, (ViewGroup) null, false);
                View viewU3 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU3 != null) {
                    w00 w00VarB2 = w00.b(viewU3);
                    i2 = R.id.btn_cancel;
                    MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate2, R.id.btn_cancel);
                    if (materialButton != null) {
                        i2 = R.id.btn_save;
                        MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate2, R.id.btn_save);
                        if (materialButton2 != null) {
                            i2 = R.id.et_display_name;
                            TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate2, R.id.et_display_name);
                            if (textInputEditText != null) {
                                i2 = R.id.et_folder_path;
                                TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewInflate2, R.id.et_folder_path);
                                if (textInputEditText2 != null) {
                                    i2 = R.id.til_display_name;
                                    TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate2, R.id.til_display_name);
                                    if (textInputLayout != null) {
                                        i2 = R.id.til_folder_path;
                                        TextInputLayout textInputLayout2 = (TextInputLayout) ms8.u(viewInflate2, R.id.til_folder_path);
                                        if (textInputLayout2 != null) {
                                            i2 = R.id.til_folder_path_overlay;
                                            View viewU4 = ms8.u(viewInflate2, R.id.til_folder_path_overlay);
                                            if (viewU4 != null) {
                                                return new km3((CoordinatorLayout) viewInflate2, w00VarB2, materialButton, materialButton2, textInputEditText, textInputEditText2, textInputLayout, textInputLayout2, viewU4);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
                return null;
            case 26:
                return ((mn3) ((ln3) obj).K).b;
            case 27:
                int i12 = FoldersBatchActivity.Y;
                return ((FoldersBatchActivity) obj).X().e;
            case 28:
                return ((b14) ((a14) obj).p.getValue()).b;
            default:
                Http2Connection http2Connection = (Http2Connection) obj;
                Settings settings = Http2Connection.S;
                http2Connection.getClass();
                try {
                    http2Connection.P.m(2, 0, false);
                    break;
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.a(errorCode, errorCode, e);
                }
                return be8.a;
        }
    }
}
