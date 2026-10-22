package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ns8 extends cu3 implements bt3 {
    public static final ns8 a = new ns8(0, ms8.class, "currentWifiAccessSnapshot", "currentWifiAccessSnapshot()Lorg/swiftapps/swiftbackup/wifi/device/WifiAccessSnapshot;", 1);

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = Build.VERSION.SDK_INT;
        boolean z = mp6.g;
        gv7 gv7Var = qe7.a;
        return new qr8(i, z, le7.f(), qe7.b());
    }
}
