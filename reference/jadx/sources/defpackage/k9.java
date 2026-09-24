package defpackage;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k9 extends j9 {
    public final /* synthetic */ int a;

    public /* synthetic */ k9(int i) {
        this.a = i;
    }

    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        switch (this.a) {
            case 0:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                intentPutExtra.getClass();
                return intentPutExtra;
            default:
                Intent intentPutExtra2 = new Intent(context, (Class<?>) MultipleBackupsActivity.class).putExtra("extra_mbs_strategy", (MultipleBackupStrategy) obj);
                intentPutExtra2.getClass();
                return intentPutExtra2;
        }
    }

    @Override // defpackage.j9
    public i9 getSynchronousResult(Context context, Object obj) {
        switch (this.a) {
            case 0:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                if (strArr.length == 0) {
                    return new i9(pv2.a);
                }
                for (String str : strArr) {
                    if (zh8.e(context, str) != 0) {
                        return null;
                    }
                }
                int iQ0 = x65.q0(strArr.length);
                if (iQ0 < 16) {
                    iQ0 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new i9(linkedHashMap);
            default:
                return super.getSynchronousResult(context, obj);
        }
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        switch (this.a) {
            case 0:
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i2 == 0));
                        }
                        List listP0 = x50.p0(stringArrayExtra);
                        Iterator it = ((ArrayList) listP0).iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList2 = new ArrayList(Math.min(hl1.G0(listP0, 10), hl1.G0(arrayList, 10)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList2.add(new pw5(it.next(), it2.next()));
                        }
                        return x65.t0(arrayList2);
                    }
                }
                return pv2.a;
            default:
                if (intent != null) {
                    return (MultipleBackupStrategy) intent.getParcelableExtra("extra_mbs_strategy");
                }
                return null;
        }
    }
}
