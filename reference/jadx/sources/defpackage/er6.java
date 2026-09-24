package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class er6 extends sa1 {
    public boolean P;
    public final int Q = 1261;
    public final int R = 8198;
    public final int S = 1485;
    public zn7 T;
    public hq0 U;
    public mt3 V;
    public mt3 W;

    public static final void X(zn7 zn7Var, er6 er6Var) {
        try {
            er6Var.startActivityForResult(zn7Var.c(), er6Var.Q);
        } catch (ActivityNotFoundException e) {
            vr6.e$default(vr6.INSTANCE, er6Var.r(), "requestStorageAccess", e, null, 8, null);
            b05.l(er6Var, null, io4.b(e), 10);
        }
    }

    public final void U(int i, Intent intent, String str) {
        try {
            startActivityForResult(intent, i);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, r(), str, e, null, 8, null);
            String strB = e instanceof ActivityNotFoundException ? "System file picker not found." : io4.b(e);
            G().e().k(new go0(strB));
        }
    }

    public final void V(String str, String str2, mt3 mt3Var) {
        this.V = mt3Var;
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType(str);
        intent.putExtra("android.intent.extra.TITLE", str2);
        U(this.R, intent, "requestCreateFile");
    }

    public final void W(String str, mt3 mt3Var) {
        this.W = mt3Var;
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType(str);
        U(this.S, intent, "requestPickFile");
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        Uri data2;
        zn7 zn7Var;
        Uri data3;
        if (i == this.Q) {
            if (i2 != -1 || (zn7Var = this.T) == null || intent == null || (data3 = intent.getData()) == null) {
                return;
            }
            vr6.i$default(vr6.INSTANCE, r(), "Uri for requestCodeStorageAccess: " + data3, null, 4, null);
            if (!zn7Var.g()) {
                String string = getString(R.string.storage_select_root_path_request, (String) zn7Var.f.getValue());
                string.getClass();
                zn4.e(new l30(15, this, string));
                return;
            }
            try {
                getContentResolver().takePersistableUriPermission(data3, 3);
            } catch (SecurityException e) {
                vr6.e$default(vr6.INSTANCE, r(), "saveUriPermission", e, null, 8, null);
            }
            hq0 hq0Var = this.U;
            if (hq0Var != null) {
                hq0Var.invoke(data3);
                return;
            }
            return;
        }
        if (i == this.S) {
            if (i2 != -1 || intent == null || (data2 = intent.getData()) == null) {
                return;
            }
            vr6.i$default(vr6.INSTANCE, r(), "Uri for requestCodePickFile: " + data2, null, 4, null);
            zg7 zg7Var = new zg7();
            zg7Var.a = this;
            zg7Var.b = data2;
            mt3 mt3Var = this.W;
            if (mt3Var != null) {
                mt3Var.invoke(zg7Var);
                return;
            }
            return;
        }
        if (i != this.R) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        if (i2 != -1 || intent == null || (data = intent.getData()) == null) {
            return;
        }
        vr6.i$default(vr6.INSTANCE, r(), "Uri for requestCodeCreateFile: " + data, null, 4, null);
        zg7 zg7Var2 = new zg7();
        zg7Var2.a = this;
        zg7Var2.b = data;
        mt3 mt3Var2 = this.V;
        if (mt3Var2 != null) {
            mt3Var2.invoke(zg7Var2);
        }
    }
}
