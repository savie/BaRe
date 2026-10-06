package defpackage;

import android.content.Intent;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.TreeMap;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nj2 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nj2(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                wj2 wj2Var = (wj2) obj2;
                View view = (View) obj;
                view.getClass();
                ((pj2) obj3).a.c0(view, iu.DATA, null, wj2Var.a, wj2Var.f ? wj2Var.g : null);
                return be8Var;
            case 1:
                zj2 zj2Var = (zj2) obj2;
                View view2 = (View) obj;
                view2.getClass();
                ((qj2) obj3).a.c0(view2, iu.MEDIA, zj2Var.a.getBackup().a, null, zj2Var.l ? zj2Var.m : null);
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
                MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj3;
                Integer num = (Integer) obj;
                num.getClass();
                int i2 = MultipleBackupsActivity.T;
                MultipleBackupStrategy.Companion.getClass();
                ((MultipleBackupsActivity) obj2).a0().k(MultipleBackupStrategy.copy$default(multipleBackupStrategy, null, Integer.valueOf(b.d(num)), null, 5, null));
                return be8Var;
            case 4:
                qo5 qo5Var = (qo5) obj3;
                NoticeListActivity noticeListActivity = (NoticeListActivity) obj2;
                NoticeItem noticeItem = (NoticeItem) obj;
                int i3 = NoticeListActivity.N;
                noticeItem.getClass();
                if (noticeItem.isLinkOnly()) {
                    io4.j(qo5Var.d, null, true, new d11(13, noticeListActivity, noticeItem), 10);
                } else {
                    String title = noticeItem.getTitle();
                    String message = noticeItem.getMessage();
                    title.getClass();
                    if (message != null && message.length() != 0) {
                        Intent intentPutExtra = new Intent(noticeListActivity, (Class<?>) NoticeViewActivity.class).putExtra("extra_title", title).putExtra("extra_message", message);
                        intentPutExtra.getClass();
                        noticeListActivity.startActivity(intentPutExtra);
                    }
                }
                return be8Var;
            case 5:
                z84 z84Var = (z84) obj;
                z84Var.getClass();
                HashSet hashSet = mz6.a;
                return mz6.i((jd0) obj3, (iz6) obj2, z84Var);
            default:
                ji7 ji7Var = (ji7) obj3;
                String str = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str);
                    return (wm2Var.h(strC, EnumSet.of(ps6.FILE_NON_DIRECTORY_FILE), wm2.I) || wm2Var.h(strC, EnumSet.of(ps6.FILE_DIRECTORY_FILE), wm2.J)) ? ih1.Exists : ih1.Missing;
                } catch (Exception e) {
                    Log.e("SmbService", "getMetadataPathExistence", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "getMetadataPathExistence: ".concat(io4.b(e)), null, 4, null);
                    return ih1.Unknown;
                }
        }
    }
}
