package defpackage;

import android.net.NetworkInfo;
import android.util.Log;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rx implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ rx(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i;
        switch (this.a) {
            case 0:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                return Long.valueOf(io4.h((Long) iy.d.get(jiVar.getPackageName())));
            case 1:
                q63 q63Var = (q63) obj;
                q63Var.getClass();
                return q63Var.p();
            case 2:
                iu iuVar = (iu) obj;
                iuVar.getClass();
                return iu.toDisplayString$default(iuVar, false, 1, null);
            case 3:
                NetworkInfo networkInfo = (NetworkInfo) obj;
                if (rs9.n || !pe4.d(rs9.o, networkInfo)) {
                    Log.i("ConnectivityTracker", "Network change: " + networkInfo + ". isWifiOrEthernetConnected: " + Const.z());
                    rs9.n = false;
                    rs9.o = networkInfo;
                }
                return be8.a;
            case 4:
                Exception exc = (Exception) obj;
                exc.getClass();
                return Boolean.valueOf((exc instanceof vz3) && 400 <= (i = ((vz3) exc).b) && i < 500);
            case 5:
                hk hkVar = (hk) obj;
                hkVar.getClass();
                return hkVar.a;
            default:
                nw6 nw6Var = (nw6) obj;
                nw6Var.getClass();
                return Boolean.valueOf(nw6Var.i0());
        }
    }
}
