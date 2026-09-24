package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bz5 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ zm c;

    public /* synthetic */ bz5(boolean z, zm zmVar, int i) {
        this.a = i;
        this.b = z;
        this.c = zmVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        zm zmVar = this.c;
        boolean z = this.b;
        switch (i2) {
            case 0:
                if (z) {
                    zmVar.finish();
                }
                break;
            default:
                WifiActivity wifiActivity = (WifiActivity) zmVar;
                et8 et8Var = WifiActivity.Y;
                if (!z) {
                    zn4.c(new no5(wifiActivity.a0(), 12));
                } else {
                    zn4.c(new us5(wifiActivity.a0(), 14));
                }
                break;
        }
    }
}
