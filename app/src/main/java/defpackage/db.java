package defpackage;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class db {
    public volatile Object a;
    public final Object b;
    public volatile Object c;

    public db(lu5 lu5Var) {
        fo8 fo8Var = new fo8(3);
        q34 q34Var = new q34(15);
        this.c = fo8Var;
        this.b = new ArrayList();
        this.a = q34Var;
        lu5Var.a(new x5());
    }

    public boolean a() {
        try {
            Context context = (Context) this.b;
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
        } catch (Exception e) {
            ta9.i("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
            return false;
        }
    }

    public /* synthetic */ db(Context context) {
        this.b = context;
    }
}
