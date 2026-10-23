package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x39 extends BroadcastReceiver {
    public boolean a;
    public final boolean b;
    public final /* synthetic */ c49 c;

    public x39(c49 c49Var, boolean z) {
        this.c = c49Var;
        this.b = z;
    }

    public final synchronized void a(Context context, IntentFilter intentFilter) {
        try {
            if (this.a) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, true != this.b ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.a = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(Bundle bundle, yq0 yq0Var, int i, wo9 wo9Var, long j, boolean z) {
        try {
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            c49 c49Var = this.c;
            if (byteArray != null) {
                ((l39) c49Var.c).r(do9.t(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD")), j, z);
            } else {
                ((l39) c49Var.c).r(zd9.b(23, i, yq0Var, null, wo9Var), j, z);
            }
        } catch (Throwable unused) {
            ta9.h("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        wo9 wo9Var;
        yq0 yq0VarE;
        long j;
        yq0 yq0Var;
        int iIntValue;
        String action = intent.getAction();
        int iHashCode = action.hashCode();
        wo9 wo9Var2 = wo9.LOCAL_PURCHASES_UPDATED_ACTION;
        wo9 wo9Var3 = wo9.PURCHASES_UPDATED_ACTION;
        wo9 wo9Var4 = wo9.ALTERNATIVE_BILLING_ACTION;
        if (iHashCode != -1484087650) {
            if (iHashCode != -337612916) {
                if (iHashCode == 345207161 && action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                    wo9Var = wo9Var4;
                } else {
                    wo9Var = wo9.BROADCAST_ACTION_UNSPECIFIED;
                }
            } else if (action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
                wo9Var = wo9Var2;
            } else {
                wo9Var = wo9.BROADCAST_ACTION_UNSPECIFIED;
            }
        } else if (action.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
            wo9Var = wo9Var3;
        } else {
            wo9Var = wo9.BROADCAST_ACTION_UNSPECIFIED;
        }
        int i = (wo9Var.equals(wo9Var2) || wo9Var.equals(wo9Var4)) ? 2 : wo9Var.equals(wo9Var3) ? 32 : 1;
        Bundle extras = intent.getExtras();
        c49 c49Var = this.c;
        if (extras == null) {
            ta9.h("BillingBroadcastManager", "Bundle is null.");
            be9 be9Var = c49Var.c;
            yq0 yq0Var2 = le9.h;
            ((l39) be9Var).p(zd9.b(11, i, yq0Var2, null, wo9Var));
            if (c49Var.b != null) {
                c6.o(yq0Var2, null);
                return;
            }
            return;
        }
        if (i == 2) {
            int i2 = ta9.a;
            xq0 xq0VarA = yq0.a();
            xq0VarA.a = ta9.a(intent.getExtras(), "BillingBroadcastManager");
            Bundle extras2 = intent.getExtras();
            if (extras2 == null) {
                ta9.h("BillingBroadcastManager", "Unexpected null bundle received!");
            } else {
                Object obj = extras2.get("SUB_RESPONSE_CODE");
                if (obj == null) {
                    ta9.g("BillingBroadcastManager", "getOnPurchasesUpdatedSubResponseCodeFromBundle() got null response code, assuming OK");
                } else {
                    if (obj instanceof Integer) {
                        iIntValue = ((Integer) obj).intValue();
                    } else {
                        ta9.h("BillingBroadcastManager", "Unexpected type for bundle sub response code: ".concat(obj.getClass().getName()));
                    }
                    xq0VarA.b = iIntValue;
                    xq0VarA.c = ta9.f(intent.getExtras(), "BillingBroadcastManager");
                    yq0VarE = xq0VarA.a();
                }
            }
            iIntValue = 0;
            xq0VarA.b = iIntValue;
            xq0VarA.c = ta9.f(intent.getExtras(), "BillingBroadcastManager");
            yq0VarE = xq0VarA.a();
        } else {
            yq0VarE = ta9.e(intent, "BillingBroadcastManager");
        }
        long j2 = extras.getLong("billingClientTransactionId", 0L);
        boolean z = extras.getBoolean("wasServiceAutoReconnected", false);
        if (!wo9Var.equals(wo9Var3) && !wo9Var.equals(wo9Var2)) {
            if (wo9Var.equals(wo9Var4)) {
                if (yq0VarE.a != 0) {
                    b(extras, yq0VarE, i, wo9Var, j2, z);
                    c6 c6Var = c49Var.b;
                    ga9 ga9Var = ma9.b;
                    mb9 mb9Var = mb9.e;
                    c6Var.getClass();
                    c6.o(yq0VarE, mb9Var);
                    return;
                }
                c49Var.getClass();
                ta9.h("BillingBroadcastManager", "No valid alternative billing listener is registered.");
                be9 be9Var2 = c49Var.c;
                yq0 yq0Var3 = le9.h;
                ((l39) be9Var2).r(zd9.b(141, i, yq0Var3, null, wo9Var), j2, z);
                c6 c6Var2 = c49Var.b;
                ga9 ga9Var2 = ma9.b;
                mb9 mb9Var2 = mb9.e;
                c6Var2.getClass();
                c6.o(yq0Var3, mb9Var2);
                return;
            }
            return;
        }
        ArrayList<String> stringArrayList = extras.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = extras.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            j = 0;
            Purchase purchaseJ = ta9.j(extras.getString("INAPP_PURCHASE_DATA"), extras.getString("INAPP_DATA_SIGNATURE"));
            if (purchaseJ == null) {
                ta9.g("BillingHelper", "Couldn't find single purchase data as well.");
                arrayList = null;
            } else {
                arrayList.add(purchaseJ);
            }
        } else {
            j = 0;
            ta9.g("BillingHelper", "Found purchase list of " + stringArrayList.size() + " items");
            for (int i3 = 0; i3 < stringArrayList.size() && i3 < stringArrayList2.size(); i3++) {
                Purchase purchaseJ2 = ta9.j(stringArrayList.get(i3), stringArrayList2.get(i3));
                if (purchaseJ2 != null) {
                    arrayList.add(purchaseJ2);
                }
            }
        }
        if (yq0VarE.a == 0) {
            be9 be9Var3 = c49Var.c;
            no9 no9VarC = zd9.c(i, wo9Var);
            l39 l39Var = (l39) be9Var3;
            l39Var.getClass();
            try {
                ho9 ho9Var = (ho9) no9VarC.l();
                op9 op9Var = (op9) no9VarC.r().l();
                op9Var.b();
                vp9.q((vp9) op9Var.b, z);
                ho9Var.b();
                no9.t((no9) ho9Var.b, (vp9) op9Var.a());
                no9 no9Var = (no9) ho9Var.a();
                hp9 hp9Var = (hp9) l39Var.b;
                if (j2 != j) {
                    fp9 fp9Var = (fp9) hp9Var.l();
                    fp9Var.b();
                    hp9.E((hp9) fp9Var.b, j2);
                    hp9Var = (hp9) fp9Var.a();
                }
                l39Var.x(no9Var, hp9Var);
            } catch (Throwable th) {
                ta9.i("BillingLogger", "Unable to log.", th);
            }
            yq0Var = yq0VarE;
        } else {
            yq0Var = yq0VarE;
            b(extras, yq0Var, i, wo9Var, j2, z);
        }
        c49Var.b.getClass();
        c6.o(yq0Var, arrayList);
    }
}
