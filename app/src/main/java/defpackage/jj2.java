package defpackage;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.credentials.playservices.controllers.ResponseUtils;
import com.swiftapps.sba.SbaSwiftTarNative;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jj2 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jj2(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws IOException {
        SbaTarEntryInfo[] sbaTarEntryInfoArrE;
        int i = this.a;
        boolean z = false;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                pj2 pj2Var = (pj2) obj3;
                yj2 yj2Var = (yj2) obj2;
                cw7 cw7Var = (cw7) obj;
                cw7Var.getClass();
                String str = cw7Var.a;
                pj2Var.a(yj2Var, str != null ? str : null);
                return be8Var;
            case 1:
                wj2 wj2Var = (wj2) obj2;
                View view = (View) obj;
                view.getClass();
                ((pj2) obj3).a.c0(view, iu.EXTDATA, null, wj2Var.a, wj2Var.i ? wj2Var.j : null);
                return be8Var;
            case 2:
                TreeMap treeMap = (TreeMap) obj3;
                ArrayList arrayList = (ArrayList) obj2;
                za5 za5Var = (za5) obj;
                za5Var.getClass();
                for (bb5 bb5Var : za5Var.c) {
                    arrayList.set(bb5Var.a, bb5Var.b);
                }
                treeMap.put(Integer.valueOf(za5Var.a), za5Var.b);
                return be8Var;
            case 3:
                ff5 ff5Var = (ff5) obj3;
                rf8 rf8Var = (rf8) obj2;
                Long l = (Long) obj;
                if (l == null) {
                    ff5Var.o(null);
                } else {
                    long jLongValue = l.longValue();
                    long jA = rf8Var.a();
                    if (!ff5Var.e().isComplete() && jLongValue >= 0) {
                        if (jLongValue > jA) {
                            jLongValue = jA;
                        }
                        SwiftApp.Companion companion = SwiftApp.d;
                        String string = SwiftApp.Companion.c().getString(R.string.uploading);
                        p93 p93Var = p93.a;
                        ff5Var.o(String.format("%s: %s / %s", Arrays.copyOf(new Object[]{string, p93.c(Long.valueOf(jLongValue)), p93.c(Long.valueOf(jA))}, 3)));
                    }
                }
                return be8Var;
            case 4:
                MultipleBackupStrategy.NewBackupCondition newBackupCondition = (MultipleBackupStrategy.NewBackupCondition) obj;
                int i2 = MultipleBackupsActivity.T;
                newBackupCondition.getClass();
                ((MultipleBackupsActivity) obj2).a0().k(MultipleBackupStrategy.copy$default((MultipleBackupStrategy) obj3, null, null, Integer.valueOf(newBackupCondition.ordinal()), 3, null));
                return be8Var;
            case 5:
                return ResponseUtils.Companion.handleGetCredentialResponse$lambda$1((Executor) obj3, (t22) obj2, (wv3) obj);
            case 6:
                oz6 oz6Var = (oz6) obj2;
                long j = oz6Var.e;
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                parcelFileDescriptor.getClass();
                cy0 cy0Var = ((s07) obj3).e;
                if (cy0Var.equals(oy6.j)) {
                    SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
                    FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                    fileDescriptor.getClass();
                    sbaTarEntryInfoArrE = SbaSwiftTarNative.d(fileDescriptor, j);
                } else {
                    if (!(cy0Var instanceof py6)) {
                        q.j();
                        return null;
                    }
                    SbaSwiftTarNative sbaSwiftTarNative2 = SbaSwiftTarNative.a;
                    FileDescriptor fileDescriptor2 = parcelFileDescriptor.getFileDescriptor();
                    fileDescriptor2.getClass();
                    sbaTarEntryInfoArrE = SbaSwiftTarNative.e(fileDescriptor2, j, oz6Var.f);
                }
                return x50.z0(sbaTarEntryInfoArrE);
            case 7:
                j57 j57Var = (j57) obj3;
                String str2 = (String) obj2;
                if (((Boolean) obj).booleanValue()) {
                    HomeActivity homeActivity = j57Var.l;
                    String strL = dj7.l("id '", str2, "' ", homeActivity.getString(R.string.copied_to_clipboard));
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, homeActivity, strL));
                }
                return be8Var;
            case 8:
                ji7 ji7Var = (ji7) obj3;
                String str3 = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str3);
                    if (wm2Var.h(strC, EnumSet.of(ps6.FILE_NON_DIRECTORY_FILE), wm2.I) || wm2Var.h(strC, EnumSet.of(ps6.FILE_DIRECTORY_FILE), wm2.J)) {
                        z = true;
                    }
                } catch (Exception e) {
                    Log.e("SmbService", "exists", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "exists: ".concat(io4.b(e)), null, 4, null);
                }
                return Boolean.valueOf(z);
            case XmlPullParser.COMMENT /* 9 */:
                ((yo7) obj3).f.k(new uo7(((Integer) obj).intValue(), ((uo7) obj2).a, false));
                return be8Var;
            default:
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                ((h08) obj3).getClass();
                HttpUrl.Builder builderG = h08.a(apiDomain, "/openapi/api/filemanager", accessToken).g();
                builderG.d("opera", "delete");
                builderG.d("async", "0");
                builder.a = builderG.e();
                FormBody.Builder builder2 = new FormBody.Builder(0);
                builder2.a("filelist", (String) obj2);
                builder.c("POST", builder2.c());
                return new Request(builder);
        }
    }
}
