package defpackage;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.bumptech.glide.a;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import okhttp3.FormBody;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apptasks.AppsWorkingDir;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bz implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bz(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0243  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = 1;
        switch (this.a) {
            case 0:
                lh6 lh6Var = (lh6) this.b;
                fz fzVar = (fz) this.c;
                TextView textView = fzVar.j;
                CircularProgressIndicator circularProgressIndicator = fzVar.i;
                r62 r62Var = (r62) obj;
                Integer num = r62Var != null ? r62Var.b : null;
                String str = r62Var != null ? r62Var.a : null;
                boolean zD = pe4.d(str, lh6Var.a);
                lh6Var.a = str;
                if (num != null) {
                    sz8.c0(circularProgressIndicator);
                    sz8.c0(textView);
                    if (!zD) {
                        circularProgressIndicator.setProgress(0);
                    }
                    sz8.b0(circularProgressIndicator, num.intValue(), zD);
                    fz.a(fzVar, num.intValue());
                } else {
                    sz8.X(circularProgressIndicator);
                    sz8.X(textView);
                    circularProgressIndicator.setProgress(0);
                    fz.a(fzVar, 0);
                }
                return be8.a;
            case 1:
                z11 z11Var = (z11) this.b;
                rf8 rf8Var = (rf8) this.c;
                Long l = (Long) obj;
                if (l == null) {
                    z11Var.o(null);
                } else {
                    long jLongValue = l.longValue();
                    long jA = rf8Var.a();
                    if (!z11Var.e().isComplete() && jLongValue >= 0) {
                        if (jLongValue > jA) {
                            jLongValue = jA;
                        }
                        SwiftApp.Companion companion = SwiftApp.d;
                        String string = SwiftApp.Companion.c().getString(R.string.uploading);
                        p93 p93Var = p93.a;
                        z11Var.o(String.format("%s: %s / %s", Arrays.copyOf(new Object[]{string, p93.c(Long.valueOf(jLongValue)), p93.c(Long.valueOf(jA))}, 3)));
                    }
                }
                return be8.a;
            case 2:
                sd1 sd1Var = (sd1) this.b;
                mt3 mt3Var = (mt3) this.c;
                ef1 ef1Var = (ef1) obj;
                ef1Var.getClass();
                List<md1> list = ef1Var.g;
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                for (md1 md1Var : list) {
                    if (md1Var.a.a == sd1Var) {
                        md1Var = (md1) mt3Var.invoke(md1Var);
                    }
                    arrayList.add(md1Var);
                }
                return ef1.a(ef1Var, arrayList, false, false, 959);
            case 3:
                qj2 qj2Var = (qj2) this.b;
                ak2 ak2Var = (ak2) this.c;
                cw7 cw7Var = (cw7) obj;
                cw7Var.getClass();
                String str2 = cw7Var.a;
                qj2Var.a(ak2Var, str2 != null ? str2 : null);
                return be8.a;
            case 4:
                qp3 qp3Var = (qp3) this.b;
                tp3 tp3Var = (tp3) this.c;
                FolderItem folderItem = (FolderItem) obj;
                be8 be8Var = be8.a;
                if (qp3Var.g()) {
                    hy7 hy7Var = hy7.a;
                    gz7 gz7Var = TaskService.b;
                    if (!TaskService.b.isComplete()) {
                        tp3Var.e.setText(folderItem.getDisplayName());
                    }
                } else {
                    tp3Var.e.setText(folderItem.getDisplayName());
                }
                return be8Var;
            case 5:
                HomeActivity homeActivity = (HomeActivity) this.b;
                Bundle bundle = (Bundle) this.c;
                Boolean bool = (Boolean) obj;
                Map map = HomeActivity.b0;
                TextView textView2 = (TextView) homeActivity.Z().c.k;
                if (!pe4.d(bool, Boolean.valueOf(sz8.I(textView2)))) {
                    if (bundle != null) {
                        bool.getClass();
                        sz8.d0(textView2, bool.booleanValue());
                    } else {
                        textView2.postOnAnimation(new nu2(i, homeActivity, textView2, bool));
                    }
                }
                return be8.a;
            case 6:
                d dVar = (d) this.b;
                Intent intent = (Intent) this.c;
                ((zn7) obj).getClass();
                AppsWorkingDir.INSTANCE.cleanupAppTasksDir();
                try {
                    q63 q63Var = (q63) oi5.L.getValue();
                    q63Var.getClass();
                    cy0.e(q63Var);
                    break;
                } catch (Exception unused) {
                }
                zn4 zn4Var = zn4.a;
                zn4.e(new d11(12, intent, dVar));
                return be8.a;
            case 7:
                w63 w63Var = w63.FILE_ATTRIBUTE_DIRECTORY;
                s5 s5Var = s5.FILE_ADD_SUBDIRECTORY;
                s5 s5Var2 = s5.FILE_LIST_DIRECTORY;
                ps6 ps6Var = ps6.FILE_DIRECTORY_FILE;
                ji7 ji7Var = (ji7) this.b;
                String str3 = (String) this.c;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str3);
                    if (!wm2Var.h(strC, EnumSet.of(ps6Var), wm2.J)) {
                        String strReplace = str3.replace('/', '\\');
                        strReplace.getClass();
                        List listW0 = nq7.w0(strReplace, new char[]{'\\'}, 6);
                        if (listW0.size() > 1) {
                            String str4 = "";
                            Iterator it = listW0.iterator();
                            while (it.hasNext()) {
                                str4 = str4 + "\\" + ((String) it.next());
                                if (!ji7Var.r(str4)) {
                                    wm2Var.r(ji7Var.C(str4), EnumSet.of(s5Var2, s5Var), EnumSet.of(w63Var), ju6.e, 3, EnumSet.of(ps6Var)).close();
                                }
                            }
                        } else {
                            wm2Var.r(strC, EnumSet.of(s5Var2, s5Var), EnumSet.of(w63Var), ju6.e, 3, EnumSet.of(ps6Var)).close();
                        }
                    }
                } catch (Exception e) {
                    Log.e("SmbService", "createDirectory", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "createDirectory: ".concat(io4.b(e)), null, 4, null);
                }
                return be8.a;
            case 8:
                h08 h08Var = (h08) this.b;
                String str5 = (String) this.c;
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                h08Var.getClass();
                builder.a = h08.a(apiDomain, "/openapi/api/create", accessToken);
                FormBody.Builder builder2 = new FormBody.Builder(0);
                builder2.a("path", str5);
                builder2.a("size", "0");
                builder2.a("isdir", "1");
                builder2.a("rtype", "3");
                builder.c("POST", builder2.c());
                return new Request(builder);
            case XmlPullParser.COMMENT /* 9 */:
                WallApplyActivity wallApplyActivity = (WallApplyActivity) this.b;
                ao8 ao8Var = (ao8) this.c;
                q63 q63Var2 = (q63) obj;
                ao8 ao8Var2 = WallApplyActivity.O;
                q63Var2.getClass();
                pk6 pk6Var = (pk6) a.a(wallApplyActivity).e.d(wallApplyActivity).f(Drawable.class).D(new oy3(new yn8(q63Var2, q63Var2.z(), q63Var2.A(), String.valueOf(Long.hashCode(q63Var2.A())), 48))).l(new BitmapDrawable(wallApplyActivity.getResources(), ao8Var.b));
                pk6Var.getClass();
                ((pk6) pk6Var.p(px3.b, Boolean.TRUE)).C(new zn8(wallApplyActivity)).B(wallApplyActivity.N().d);
                return be8.a;
            default:
                lh6 lh6Var2 = (lh6) this.b;
                CountDownLatch countDownLatch = (CountDownLatch) this.c;
                X509Certificate x509Certificate = (X509Certificate) obj;
                x509Certificate.getClass();
                if (lh6Var2.a == null) {
                    lh6Var2.a = x509Certificate;
                    vr6.i$default(vr6.INSTANCE, "WebDavHttp", "Certificate found", null, 4, null);
                    countDownLatch.countDown();
                }
                return be8.a;
        }
    }
}
