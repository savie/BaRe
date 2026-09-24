package defpackage;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a72 extends j72 {
    public final /* synthetic */ gh a;

    public a72(gh ghVar) {
        this.a = ghVar;
    }

    @Override // defpackage.j72
    public final void onCustomTabsServiceConnected(i72 i72Var) {
        try {
            ((p74) i72Var.a).g();
        } catch (RemoteException unused) {
        }
        ka kaVarB = i72Var.b();
        gh ghVar = this.a;
        ghVar.c = kaVarB;
        if (kaVarB != null) {
            Uri uri = (Uri) ghVar.a;
            Bundle bundle = new Bundle();
            try {
                ((p74) ((r74) kaVarB.a)).a((d72) kaVarB.b, uri, bundle, null);
            } catch (RemoteException unused2) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
