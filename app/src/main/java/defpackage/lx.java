package defpackage;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lx implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lx(wb6.b bVar, v76 v76Var) {
        this.a = 2;
        wq0 wq0Var = wq0.a;
        this.b = bVar;
        this.c = v76Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        Object bn6Var;
        long jA;
        Http2Stream[] http2StreamArr;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        int i = 3;
        int i2 = 2;
        final int i3 = 0;
        final int i4 = 1;
        switch (this.a) {
            case 0:
                ji jiVar = (ji) this.b;
                String str = (String) this.c;
                String name = jiVar.getName();
                StringBuilder sb = new StringBuilder();
                int length = name.length();
                for (int i5 = 0; i5 < length; i5++) {
                    char cCharAt = name.charAt(i5);
                    if (Character.isUpperCase(cCharAt)) {
                        sb.append(cCharAt);
                    }
                }
                return Boolean.valueOf(uq7.V(sb.toString(), str, true));
            case 1:
                jx jxVar = (jx) this.b;
                q63 q63Var = (q63) this.c;
                if (((Boolean) jxVar.invoke()).booleanValue() && q63Var.j()) {
                    try {
                        cy0.e(q63Var);
                        bn6Var = Boolean.TRUE;
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    Throwable thA = en6.a(bn6Var);
                    if (thA != null) {
                        boolean z = q63.d;
                        String strConcat = "Unable to fully clean atomic delete trash at ".concat(q63Var.v());
                        Exception runtimeException = thA instanceof Exception ? (Exception) thA : null;
                        if (runtimeException == null) {
                            runtimeException = new RuntimeException(thA);
                        }
                        cy0.b.a("AtomicFileDelete", strConcat, runtimeException);
                        bn6Var = Boolean.FALSE;
                    }
                    break;
                }
                return be8.a;
            case 2:
                wb6.b bVar = (wb6.b) this.b;
                wq0 wq0Var = wq0.a;
                v76 v76Var = (v76) this.c;
                int i6 = sq0.a[bVar.ordinal()];
                if (i6 == 1) {
                    wq0.d.k(v76Var);
                } else if (i6 != 2 && i6 != 3) {
                    q.j();
                    return null;
                }
                return be8.a;
            case 3:
                return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$1((CredentialProviderCreatePublicKeyCredentialController) this.b, (Throwable) this.c);
            case 4:
                final mk2 mk2Var = (mk2) this.c;
                ji jiVar2 = (ji) this.b;
                be8 be8Var = be8.a;
                boolean z2 = mk2Var.e != null;
                ex6 ex6Var = mk2Var.j;
                mk2Var.e = jiVar2;
                jiVar2.refresh();
                g00 g00Var = g00.a;
                String packageName = jiVar2.getPackageName();
                packageName.getClass();
                mk2Var.f = g00.y(g00.q(0, packageName));
                if (jiVar2.isUninstalledWithoutBackup()) {
                    Log.e(mk2Var.b, "Uninstalled and has no backup, finishing");
                    mk2Var.d();
                } else {
                    boolean zIsInstalled = jiVar2.isInstalled();
                    boolean enabled = jiVar2.getEnabled();
                    mk2Var.i.k(new vj2(zIsInstalled, zIsInstalled && !enabled, jiVar2.getPackageName(), jiVar2.getName(), zIsInstalled ? jiVar2.getVersionName() + " (" + jiVar2.getVersionCode() + ")" : "-", zIsInstalled && enabled && jiVar2.isLaunchable()));
                    if (!jiVar2.isInstalled()) {
                        ex6Var.k(ck2.a);
                    } else if (!z2) {
                        ex6Var.k(bk2.a);
                    }
                    if (!z2) {
                        mk2Var.l.k(new yj2(xj2.Loading));
                    }
                    final boolean z3 = mk2Var.k.d() == null;
                    zn4 zn4Var = zn4.a;
                    zn4.c(new bt3() { // from class: jk2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // defpackage.bt3
                        public final Object invoke() {
                            String strN;
                            String string;
                            String string2;
                            String string3;
                            String string4;
                            String string5;
                            zj2 zj2Var;
                            mk2 mk2Var2 = mk2Var;
                            ji jiVar3 = mk2Var2.e;
                            ArrayList arrayList9 = null;
                            zj2 zj2Var2 = null;
                            if (jiVar3 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            String packageName2 = jiVar3.getPackageName();
                            long jIncrementAndGet = mk2Var2.h.incrementAndGet();
                            if (z3) {
                                mk2.n(mk2Var2, jIncrementAndGet, packageName2, new ak2(2, null));
                            }
                            List<gm> localBackups = jiVar3.getLocalBackups();
                            if (localBackups != null) {
                                ArrayList arrayList10 = new ArrayList();
                                Iterator<T> it = localBackups.iterator();
                                while (it.hasNext()) {
                                    iz4 iz4VarInit = iz4.Companion.init((gm) it.next());
                                    if (iz4VarInit.hasBackups()) {
                                        long totalSize = iz4VarInit.getTotalSize();
                                        p93 p93Var = p93.a;
                                        String strC = p93.c(Long.valueOf(totalSize));
                                        String dateBackupUpdatedString = iz4VarInit.getDateBackupUpdatedString();
                                        if (dateBackupUpdatedString == null || dateBackupUpdatedString.length() == 0) {
                                            strN = u48.n(iz4VarInit.getDateBackupString(), " (", strC, ")");
                                        } else {
                                            SwiftApp.Companion companion = SwiftApp.d;
                                            strN = SwiftApp.Companion.c().getString(R.string.updated) + ": " + iz4VarInit.getDateBackupUpdatedString() + " (" + strC + ")";
                                        }
                                        String str2 = strN;
                                        String backupVersion = iz4VarInit.getBackupVersion();
                                        if (backupVersion == null || backupVersion.length() == 0) {
                                            SwiftApp.Companion companion2 = SwiftApp.d;
                                            string = SwiftApp.Companion.c().getString(R.string.no_apk_backup);
                                        } else {
                                            SwiftApp.Companion companion3 = SwiftApp.d;
                                            String string6 = SwiftApp.Companion.c().getString(R.string.version);
                                            String backupVersion2 = iz4VarInit.getBackupVersion();
                                            long backupVersionCode = iz4VarInit.getBackupVersionCode();
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(string6);
                                            sb2.append(": ");
                                            sb2.append(backupVersion2);
                                            sb2.append(" (");
                                            string = dj7.h(backupVersionCode, ")", sb2);
                                        }
                                        String str3 = string;
                                        str3.getClass();
                                        String backupVersion3 = iz4VarInit.getBackupVersion();
                                        if (backupVersion3 == null || backupVersion3.length() == 0) {
                                            SwiftApp.Companion companion4 = SwiftApp.d;
                                            string2 = SwiftApp.Companion.c().getString(R.string.no_apk_backup);
                                        } else {
                                            SwiftApp.Companion companion5 = SwiftApp.d;
                                            string2 = dj7.k(SwiftApp.Companion.c().getString(R.string.version), ": ", iz4VarInit.getBackupVersion());
                                        }
                                        String str4 = string2;
                                        str4.getClass();
                                        long totalApkSize = iz4VarInit.getTotalApkSize();
                                        Long lValueOf = Long.valueOf(totalApkSize);
                                        if (totalApkSize <= 0) {
                                            lValueOf = zj2Var2;
                                        }
                                        String strC2 = lValueOf != 0 ? p93.c(lValueOf) : zj2Var2;
                                        boolean zHasSplitApks = iz4VarInit.hasSplitApks();
                                        boolean zHasSharedLibs = iz4VarInit.hasSharedLibs();
                                        long dataSize = iz4VarInit.getDataSize();
                                        Long lValueOf2 = Long.valueOf(dataSize);
                                        if (dataSize <= 0) {
                                            lValueOf2 = zj2Var2;
                                        }
                                        if (lValueOf2 != 0) {
                                            StringBuilder sbS = dj7.s(p93.c(lValueOf2));
                                            if (iz4VarInit.isDataEncrypted()) {
                                                sbS.append(" 🔒");
                                            }
                                            string3 = sbS.toString();
                                        } else {
                                            string3 = zj2Var2;
                                        }
                                        boolean zIsDataEncrypted = iz4VarInit.isDataEncrypted();
                                        String dataEncryptionInfo = iz4VarInit.getDataEncryptionInfo();
                                        long extDataSize = iz4VarInit.getExtDataSize();
                                        Long lValueOf3 = Long.valueOf(extDataSize);
                                        if (extDataSize <= 0) {
                                            lValueOf3 = zj2Var2;
                                        }
                                        if (lValueOf3 != 0) {
                                            StringBuilder sbS2 = dj7.s(p93.c(lValueOf3));
                                            if (iz4VarInit.isExtDataEncrypted()) {
                                                sbS2.append(" 🔒");
                                            }
                                            string4 = sbS2.toString();
                                        } else {
                                            string4 = zj2Var2;
                                        }
                                        boolean zIsExtDataEncrypted = iz4VarInit.isExtDataEncrypted();
                                        String extDataEncryptionInfo = iz4VarInit.getExtDataEncryptionInfo();
                                        long mediaSize = iz4VarInit.getMediaSize();
                                        Long lValueOf4 = Long.valueOf(mediaSize);
                                        if (mediaSize <= 0) {
                                            lValueOf4 = zj2Var2;
                                        }
                                        if (lValueOf4 != 0) {
                                            StringBuilder sbS3 = dj7.s(p93.c(lValueOf4));
                                            if (iz4VarInit.isMediaEncrypted()) {
                                                sbS3.append(" 🔒");
                                            }
                                            string5 = sbS3.toString();
                                        } else {
                                            string5 = zj2Var2;
                                        }
                                        boolean zIsMediaEncrypted = iz4VarInit.isMediaEncrypted();
                                        String mediaEncryptionInfo = iz4VarInit.getMediaEncryptionInfo();
                                        long expansionSize = iz4VarInit.getExpansionSize();
                                        Long lValueOf5 = Long.valueOf(expansionSize);
                                        if (expansionSize <= 0) {
                                            lValueOf5 = zj2Var2;
                                        }
                                        String strC3 = lValueOf5 != 0 ? p93.c(lValueOf5) : zj2Var2;
                                        LocalMetadata metadata = iz4VarInit.getMetadata();
                                        zj2Var = new zj2(iz4VarInit, strC2, zHasSplitApks, zHasSharedLibs, string3, zIsDataEncrypted, dataEncryptionInfo, string4, zIsExtDataEncrypted, extDataEncryptionInfo, string5, zIsMediaEncrypted, mediaEncryptionInfo, strC3, str2, str4, str3, metadata != null && metadata.isProtectedBackup());
                                    } else {
                                        zj2Var = zj2Var2;
                                        zj2Var2 = zj2Var;
                                        packageName2 = packageName2;
                                    }
                                    if (zj2Var != null) {
                                        arrayList10.add(zj2Var);
                                    }
                                    zj2Var2 = zj2Var2;
                                    packageName2 = packageName2;
                                }
                                arrayList9 = arrayList10;
                            }
                            String str5 = packageName2;
                            List list = arrayList9;
                            if (arrayList9 == null) {
                                list = ov2.a;
                            }
                            mk2.n(mk2Var2, jIncrementAndGet, str5, new ak2(1, list));
                            return be8.a;
                        }
                    });
                    zn4.b(null, new qj(mk2Var, null, i4));
                    zn4.c(new ek(mk2Var, 22));
                    hx0.b.i(mk2Var);
                }
                return be8Var;
            case 5:
                qk3 qk3Var = (qk3) this.b;
                List list = (List) this.c;
                if (!qk3Var.Q.isFinishing()) {
                    ((ok3) qk3Var.S.getValue()).w(new fm7(list, (Set) null, false, (String) null, 30), true);
                    if (!qk3Var.isShowing()) {
                        qk3Var.show();
                    }
                }
                return be8.a;
            case 6:
                in3 in3Var = (in3) this.b;
                q63 q63Var2 = (q63) this.c;
                zn7 zn7VarJ = in3Var.j(q63Var2);
                zn7VarJ.getClass();
                return new hn3(zn7VarJ, in3Var.l(), q63Var2);
            case 7:
                zx3 zx3Var = (zx3) this.b;
                kh0 kh0Var = (kh0) this.c;
                SwiftApp.Companion companion = SwiftApp.d;
                File file = new File(SwiftApp.Companion.c().getCacheDir(), "walls_thumb_cache");
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str2 = zx3Var.a.e;
                str2.getClass();
                File file2 = new File(file, str2);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    kh0Var.p(zx3Var.a.e, fileOutputStream);
                    fileOutputStream.close();
                    return new FileInputStream(file2);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        rs9.c(fileOutputStream, th2);
                        throw th3;
                    }
                }
            case 8:
                Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.b;
                Settings settings = (Settings) this.c;
                lh6 lh6Var = new lh6();
                Http2Connection http2Connection = Http2Connection.this;
                synchronized (http2Connection.P) {
                    synchronized (http2Connection) {
                        try {
                            Settings settings2 = http2Connection.K;
                            Settings settings3 = new Settings();
                            settings2.getClass();
                            for (int i7 = 0; i7 < 10; i7++) {
                                if (((1 << i7) & settings2.a) != 0) {
                                    settings3.b(i7, settings2.b[i7]);
                                }
                            }
                            for (int i8 = 0; i8 < 10; i8++) {
                                if (((1 << i8) & settings.a) != 0) {
                                    settings3.b(i8, settings.b[i8]);
                                }
                            }
                            lh6Var.a = settings3;
                            jA = ((long) settings3.a()) - ((long) settings2.a());
                            http2StreamArr = (jA == 0 || http2Connection.b.isEmpty()) ? null : (Http2Stream[]) http2Connection.b.values().toArray(new Http2Stream[0]);
                            Settings settings4 = (Settings) lh6Var.a;
                            settings4.getClass();
                            http2Connection.K = settings4;
                            TaskQueue.c(http2Connection.q, http2Connection.c + " onSettings", new rm(12, http2Connection, lh6Var), 6);
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    try {
                        http2Connection.P.a((Settings) lh6Var.a);
                    } catch (IOException e) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection.a(errorCode, errorCode, e);
                    }
                    break;
                }
                if (http2StreamArr != null) {
                    int length2 = http2StreamArr.length;
                    while (i3 < length2) {
                        Http2Stream http2Stream = http2StreamArr[i3];
                        synchronized (http2Stream) {
                            http2Stream.e += jA;
                            if (jA > 0) {
                                http2Stream.notifyAll();
                            }
                            break;
                        }
                        i3++;
                    }
                }
                return be8.a;
            case XmlPullParser.COMMENT /* 9 */:
                final MegaSignInActivity megaSignInActivity = (MegaSignInActivity) this.b;
                MegaClient$Credentials megaClient$Credentials = (MegaClient$Credentials) this.c;
                int i9 = MegaSignInActivity.S;
                ImageView imageView = megaSignInActivity.N().c;
                dd1 dd1Var = megaSignInActivity.M;
                imageView.setImageResource(dd1Var.getBrandingIconRes());
                megaSignInActivity.N().n.setText(dd1Var.getDisplayName());
                megaSignInActivity.N().d.setOnClickListener(new es(megaSignInActivity, 11));
                ((TextInputLayout) megaSignInActivity.N.getValue()).setHint(megaSignInActivity.getString(R.string.email));
                gv7 gv7Var = megaSignInActivity.O;
                ((TextInputEditText) gv7Var.getValue()).addTextChangedListener(new jq1(megaSignInActivity, i2));
                ((TextInputEditText) gv7Var.getValue()).setText(megaClient$Credentials.getEmail());
                ((TextInputEditText) gv7Var.getValue()).setInputType(33);
                TextInputLayout textInputLayout = (TextInputLayout) megaSignInActivity.P.getValue();
                textInputLayout.setHint(megaSignInActivity.getString(R.string.password));
                textInputLayout.setEndIconMode(1);
                gv7 gv7Var2 = megaSignInActivity.Q;
                ((TextInputEditText) gv7Var2.getValue()).setInputType(129);
                sz8.V((TextInputEditText) gv7Var2.getValue());
                ((TextInputEditText) gv7Var2.getValue()).setText(megaClient$Credentials.getPassword());
                ((TextInputEditText) gv7Var2.getValue()).addTextChangedListener(new mv1(megaSignInActivity, i));
                megaSignInActivity.a0().k(megaSignInActivity.P());
                ((MaterialButton) megaSignInActivity.R.getValue()).setOnClickListener(new xd1(megaSignInActivity, 9));
                int i10 = 5;
                megaSignInActivity.a0().j.e(megaSignInActivity, new wb1(i10, new mt3() { // from class: ob5
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj) {
                        int i11 = i4;
                        be8 be8Var2 = be8.a;
                        MegaSignInActivity megaSignInActivity2 = megaSignInActivity;
                        Boolean bool = (Boolean) obj;
                        switch (i11) {
                            case 0:
                                int i12 = MegaSignInActivity.S;
                                k3 k3Var = new k3(megaSignInActivity2, 15);
                                View viewInflate = View.inflate(megaSignInActivity2, R.layout.mega_signin_activity_multi_factor_auth_dialog, null);
                                TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et);
                                if (textInputEditText == null) {
                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.et)));
                                    return null;
                                }
                                s35 s35Var = new s35(megaSignInActivity2, R.style.M3AlertDialogTheme, new hv1(megaSignInActivity2, R.style.M3AlertDialogTheme), null);
                                ra raVar = (ra) s35Var.b;
                                raVar.m = false;
                                s35Var.n(R.string.multi_factor_authentication_code_required);
                                s35Var.s(R.string.ok, new wm3(textInputEditText, k3Var));
                                s35Var.q(R.string.cancel, null);
                                raVar.s = (FrameLayout) viewInflate;
                                wa waVarM = s35Var.m();
                                waVarM.getClass();
                                Button buttonF = waVarM.f(-1);
                                buttonF.setEnabled(false);
                                textInputEditText.addTextChangedListener(new vb3(buttonF, 1));
                                return be8Var2;
                            default:
                                boolean zBooleanValue = bool.booleanValue();
                                if (zBooleanValue) {
                                    dd1 dd1Var2 = megaSignInActivity2.M;
                                    dd1Var2.getClass();
                                    Intent intentPutExtra = new Intent().putExtra("org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT", dd1Var2.getConstant());
                                    intentPutExtra.getClass();
                                    megaSignInActivity2.setResult(-1, intentPutExtra);
                                } else {
                                    int i13 = MegaSignInActivity.S;
                                    megaSignInActivity2.setResult(0);
                                }
                                if (zBooleanValue) {
                                    megaSignInActivity2.finish();
                                }
                                return be8Var2;
                        }
                    }
                }));
                megaSignInActivity.a0().h.e(megaSignInActivity, new wb1(i10, new mt3() { // from class: pb5
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj) {
                        int i11 = i4;
                        be8 be8Var2 = be8.a;
                        MegaSignInActivity megaSignInActivity2 = megaSignInActivity;
                        switch (i11) {
                            case 0:
                                int i12 = MegaSignInActivity.S;
                                vr6.i$default(vr6.INSTANCE, megaSignInActivity2.r(), xs1.j("Showing folder creation failed dialog (folder name = ", (String) obj), null, 4, null);
                                s35 s35Var = new s35(megaSignInActivity2, R.style.M3AlertDialogTheme, new hv1(megaSignInActivity2, R.style.M3AlertDialogTheme), null);
                                s35Var.v(R.string.cloud_folder_creation_failed);
                                s35Var.n(R.string.cloud_folder_creation_error_message);
                                s35Var.s(R.string.ok, null);
                                s35Var.m();
                                break;
                            default:
                                gv7 gv7Var3 = megaSignInActivity2.N;
                                String str3 = (String) obj;
                                int i13 = MegaSignInActivity.S;
                                boolean z4 = true ^ (str3 == null || str3.length() == 0);
                                if (((TextInputLayout) gv7Var3.getValue()).r.q != z4) {
                                    megaSignInActivity2.x(io4.a(megaSignInActivity2), new Class[0]);
                                }
                                ((TextInputLayout) gv7Var3.getValue()).setErrorEnabled(z4);
                                ((TextInputLayout) gv7Var3.getValue()).setErrorIconDrawable((Drawable) null);
                                ((TextInputLayout) gv7Var3.getValue()).setError(str3);
                                break;
                        }
                        return be8Var2;
                    }
                }));
                megaSignInActivity.a0().i.e(megaSignInActivity, new wb1(i10, new lm(megaSignInActivity, 14)));
                megaSignInActivity.a0().k.e(megaSignInActivity, new wb1(i10, new mt3() { // from class: ob5
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj) {
                        int i11 = i3;
                        be8 be8Var2 = be8.a;
                        MegaSignInActivity megaSignInActivity2 = megaSignInActivity;
                        Boolean bool = (Boolean) obj;
                        switch (i11) {
                            case 0:
                                int i12 = MegaSignInActivity.S;
                                k3 k3Var = new k3(megaSignInActivity2, 15);
                                View viewInflate = View.inflate(megaSignInActivity2, R.layout.mega_signin_activity_multi_factor_auth_dialog, null);
                                TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et);
                                if (textInputEditText == null) {
                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.et)));
                                    return null;
                                }
                                s35 s35Var = new s35(megaSignInActivity2, R.style.M3AlertDialogTheme, new hv1(megaSignInActivity2, R.style.M3AlertDialogTheme), null);
                                ra raVar = (ra) s35Var.b;
                                raVar.m = false;
                                s35Var.n(R.string.multi_factor_authentication_code_required);
                                s35Var.s(R.string.ok, new wm3(textInputEditText, k3Var));
                                s35Var.q(R.string.cancel, null);
                                raVar.s = (FrameLayout) viewInflate;
                                wa waVarM = s35Var.m();
                                waVarM.getClass();
                                Button buttonF = waVarM.f(-1);
                                buttonF.setEnabled(false);
                                textInputEditText.addTextChangedListener(new vb3(buttonF, 1));
                                return be8Var2;
                            default:
                                boolean zBooleanValue = bool.booleanValue();
                                if (zBooleanValue) {
                                    dd1 dd1Var2 = megaSignInActivity2.M;
                                    dd1Var2.getClass();
                                    Intent intentPutExtra = new Intent().putExtra("org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT", dd1Var2.getConstant());
                                    intentPutExtra.getClass();
                                    megaSignInActivity2.setResult(-1, intentPutExtra);
                                } else {
                                    int i13 = MegaSignInActivity.S;
                                    megaSignInActivity2.setResult(0);
                                }
                                if (zBooleanValue) {
                                    megaSignInActivity2.finish();
                                }
                                return be8Var2;
                        }
                    }
                }));
                megaSignInActivity.a0().m.e(megaSignInActivity, new wb1(i10, new mt3() { // from class: pb5
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj) {
                        int i11 = i3;
                        be8 be8Var2 = be8.a;
                        MegaSignInActivity megaSignInActivity2 = megaSignInActivity;
                        switch (i11) {
                            case 0:
                                int i12 = MegaSignInActivity.S;
                                vr6.i$default(vr6.INSTANCE, megaSignInActivity2.r(), xs1.j("Showing folder creation failed dialog (folder name = ", (String) obj), null, 4, null);
                                s35 s35Var = new s35(megaSignInActivity2, R.style.M3AlertDialogTheme, new hv1(megaSignInActivity2, R.style.M3AlertDialogTheme), null);
                                s35Var.v(R.string.cloud_folder_creation_failed);
                                s35Var.n(R.string.cloud_folder_creation_error_message);
                                s35Var.s(R.string.ok, null);
                                s35Var.m();
                                break;
                            default:
                                gv7 gv7Var3 = megaSignInActivity2.N;
                                String str3 = (String) obj;
                                int i13 = MegaSignInActivity.S;
                                boolean z4 = true ^ (str3 == null || str3.length() == 0);
                                if (((TextInputLayout) gv7Var3.getValue()).r.q != z4) {
                                    megaSignInActivity2.x(io4.a(megaSignInActivity2), new Class[0]);
                                }
                                ((TextInputLayout) gv7Var3.getValue()).setErrorEnabled(z4);
                                ((TextInputLayout) gv7Var3.getValue()).setErrorIconDrawable((Drawable) null);
                                ((TextInputLayout) gv7Var3.getValue()).setError(str3);
                                break;
                        }
                        return be8Var2;
                    }
                }));
                megaSignInActivity.a0().l.e(megaSignInActivity, new wb1(i10, new d7(megaSignInActivity, 17)));
                return be8.a;
            case 10:
                q47 q47Var = (q47) this.b;
                String str3 = (String) this.c;
                ScheduleData scheduleDataC = c47.a.c();
                List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules = scheduleDataC.getAppsQuickActionSchedules();
                if (appsQuickActionSchedules != null) {
                    ArrayList arrayList9 = new ArrayList(hl1.G0(appsQuickActionSchedules, 10));
                    for (ScheduleItem.AppsQuickActions appsQuickActionsCopy$default : appsQuickActionSchedules) {
                        if (pe4.d(appsQuickActionsCopy$default.getItemId(), str3)) {
                            appsQuickActionsCopy$default = ScheduleItem.AppsQuickActions.copy$default(appsQuickActionsCopy$default, null, null, null, null, null, null, null, null, !appsQuickActionsCopy$default.isEnabled(), 255, null);
                        }
                        arrayList9.add(appsQuickActionsCopy$default);
                    }
                    arrayList = arrayList9;
                } else {
                    arrayList = null;
                }
                List<ScheduleItem.AppsLabels> appsLabelSchedules = scheduleDataC.getAppsLabelSchedules();
                if (appsLabelSchedules != null) {
                    ArrayList arrayList10 = new ArrayList(hl1.G0(appsLabelSchedules, 10));
                    for (ScheduleItem.AppsLabels appsLabelsCopy$default : appsLabelSchedules) {
                        if (pe4.d(appsLabelsCopy$default.getItemId(), str3)) {
                            appsLabelsCopy$default = ScheduleItem.AppsLabels.copy$default(appsLabelsCopy$default, null, null, null, null, null, null, null, !appsLabelsCopy$default.isEnabled(), 127, null);
                        }
                        arrayList10.add(appsLabelsCopy$default);
                    }
                    arrayList2 = arrayList10;
                } else {
                    arrayList2 = null;
                }
                List<ScheduleItem.AppConfig> appConfigSchedules = scheduleDataC.getAppConfigSchedules();
                if (appConfigSchedules != null) {
                    ArrayList arrayList11 = new ArrayList(hl1.G0(appConfigSchedules, 10));
                    for (ScheduleItem.AppConfig appConfigCopy$default : appConfigSchedules) {
                        if (pe4.d(appConfigCopy$default.getItemId(), str3)) {
                            appConfigCopy$default = ScheduleItem.AppConfig.copy$default(appConfigCopy$default, null, null, null, null, !appConfigCopy$default.isEnabled(), 15, null);
                        }
                        arrayList11.add(appConfigCopy$default);
                    }
                    arrayList3 = arrayList11;
                } else {
                    arrayList3 = null;
                }
                List<ScheduleItem.Messages> messagesSchedules = scheduleDataC.getMessagesSchedules();
                if (messagesSchedules != null) {
                    ArrayList arrayList12 = new ArrayList(hl1.G0(messagesSchedules, 10));
                    for (ScheduleItem.Messages messagesCopy$default : messagesSchedules) {
                        if (pe4.d(messagesCopy$default.getItemId(), str3)) {
                            messagesCopy$default = ScheduleItem.Messages.copy$default(messagesCopy$default, null, null, null, null, null, !messagesCopy$default.isEnabled(), 31, null);
                        }
                        arrayList12.add(messagesCopy$default);
                    }
                    arrayList4 = arrayList12;
                } else {
                    arrayList4 = null;
                }
                List<ScheduleItem.CallLogs> callLogsSchedules = scheduleDataC.getCallLogsSchedules();
                if (callLogsSchedules != null) {
                    ArrayList arrayList13 = new ArrayList(hl1.G0(callLogsSchedules, 10));
                    for (ScheduleItem.CallLogs callLogsCopy$default : callLogsSchedules) {
                        if (pe4.d(callLogsCopy$default.getItemId(), str3)) {
                            callLogsCopy$default = ScheduleItem.CallLogs.copy$default(callLogsCopy$default, null, null, null, null, null, !callLogsCopy$default.isEnabled(), 31, null);
                        }
                        arrayList13.add(callLogsCopy$default);
                    }
                    arrayList5 = arrayList13;
                } else {
                    arrayList5 = null;
                }
                List<ScheduleItem.Wallpapers> wallsSchedules = scheduleDataC.getWallsSchedules();
                if (wallsSchedules != null) {
                    ArrayList arrayList14 = new ArrayList(hl1.G0(wallsSchedules, 10));
                    for (ScheduleItem.Wallpapers wallpapersCopy$default : wallsSchedules) {
                        if (pe4.d(wallpapersCopy$default.getItemId(), str3)) {
                            wallpapersCopy$default = ScheduleItem.Wallpapers.copy$default(wallpapersCopy$default, null, null, null, null, null, !wallpapersCopy$default.isEnabled(), 31, null);
                        }
                        arrayList14.add(wallpapersCopy$default);
                    }
                    arrayList6 = arrayList14;
                } else {
                    arrayList6 = null;
                }
                List<ScheduleItem.Wifi> wifiSchedules = scheduleDataC.getWifiSchedules();
                if (wifiSchedules != null) {
                    ArrayList arrayList15 = new ArrayList(hl1.G0(wifiSchedules, 10));
                    for (ScheduleItem.Wifi wifiCopy$default : wifiSchedules) {
                        if (pe4.d(wifiCopy$default.getItemId(), str3)) {
                            wifiCopy$default = ScheduleItem.Wifi.copy$default(wifiCopy$default, null, null, null, null, null, !wifiCopy$default.isEnabled(), 31, null);
                        }
                        arrayList15.add(wifiCopy$default);
                    }
                    arrayList7 = arrayList15;
                } else {
                    arrayList7 = null;
                }
                List<ScheduleItem.Folders> foldersSchedules = scheduleDataC.getFoldersSchedules();
                if (foldersSchedules != null) {
                    ArrayList arrayList16 = new ArrayList(hl1.G0(foldersSchedules, 10));
                    for (ScheduleItem.Folders foldersCopy$default : foldersSchedules) {
                        if (pe4.d(foldersCopy$default.getItemId(), str3)) {
                            foldersCopy$default = ScheduleItem.Folders.copy$default(foldersCopy$default, null, null, false, null, null, null, null, null, !foldersCopy$default.isEnabled(), 255, null);
                        }
                        arrayList16.add(foldersCopy$default);
                    }
                    arrayList8 = arrayList16;
                } else {
                    arrayList8 = null;
                }
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, null, 4111, null));
                return be8.a;
            default:
                iu8 iu8Var = (iu8) this.b;
                et8 et8Var = (et8) this.c;
                us8 us8VarJ = iu8Var.j();
                us8VarJ.getClass();
                us8VarJ.b.a(et8Var);
                return be8.a;
        }
    }

    public /* synthetic */ lx(mk2 mk2Var, ji jiVar) {
        this.a = 4;
        this.c = mk2Var;
        this.b = jiVar;
    }

    public /* synthetic */ lx(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
