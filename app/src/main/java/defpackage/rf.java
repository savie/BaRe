package defpackage;

import android.widget.TextView;
import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipEntry;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rf implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rf(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws IOException {
        int i = this.a;
        boolean z = true;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj3;
                zf zfVar = (zf) obj2;
                if (((Boolean) obj).booleanValue()) {
                    apkImportActivity.U().m(zfVar);
                } else {
                    int i2 = ApkImportActivity.Q;
                    apkImportActivity.R(zfVar);
                }
                return be8Var;
            case 1:
                z11 z11Var = (z11) obj3;
                b21 b21Var = (b21) obj2;
                TextView textView = b21Var.i;
                String str = (String) obj;
                z = (str == null || str.length() == 0 || z11Var.e().isComplete()) ? false : true;
                sz8.d0(textView, z);
                sz8.d0(b21Var.j, z);
                sz8.d0(b21Var.k, z);
                if (z) {
                    textView.setText(str);
                }
                return be8Var;
            case 2:
                em2 em2Var = (em2) obj3;
                jj2 jj2Var = (jj2) obj2;
                int iR = Const.r(((Long) obj).longValue(), em2Var.d);
                if (((double) iR) % 1.0d == 0.0d && iR != em2Var.e) {
                    em2Var.e = iR;
                    jj2Var.invoke(Integer.valueOf(iR));
                }
                return be8Var;
            case 3:
                String str2 = (String) obj3;
                String str3 = (String) obj2;
                ZipEntry zipEntry = (ZipEntry) obj;
                zipEntry.getClass();
                String name = zipEntry.getName();
                if (name == null || name.length() == 0 || (!uq7.V(name, str2, false) && !uq7.V(name, str3, false))) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                Set set = (Set) obj;
                set.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((mt3) obj3).invoke(set);
                u10 u10Var = ((j57) obj2).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                return be8Var;
        }
    }
}
