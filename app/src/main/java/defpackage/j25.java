package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j25 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j25(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.d = obj;
        this.b = obj2;
        this.c = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundleC;
        w89 w89Var;
        wb9 wb9Var;
        w89 w89Var2;
        boolean z;
        int i = 107;
        switch (this.a) {
            case 0:
                return n25.b((Context) this.d, (String) this.b, (String) this.c);
            case 1:
                dq0 dq0Var = (dq0) this.d;
                String str = (String) this.b;
                String str2 = (String) this.c;
                try {
                    synchronized (dq0Var.a) {
                        w89Var = dq0Var.i;
                        break;
                    }
                    if (w89Var == null) {
                        return ta9.c(107, le9.j);
                    }
                    return ((g89) w89Var).p(dq0Var.g.getPackageName(), str, str2);
                } catch (DeadObjectException e) {
                    yq0 yq0Var = le9.j;
                    String strA = zd9.a(e);
                    bundleC = ta9.c(5, yq0Var);
                    if (strA != null) {
                        bundleC.putString("ADDITIONAL_LOG_DETAILS", strA);
                    }
                    return bundleC;
                } catch (Exception e2) {
                    yq0 yq0Var2 = le9.h;
                    String strA2 = zd9.a(e2);
                    bundleC = ta9.c(5, yq0Var2);
                    if (strA2 != null) {
                        bundleC.putString("ADDITIONAL_LOG_DETAILS", strA2);
                    }
                    return bundleC;
                }
            default:
                dq0 dq0Var2 = (dq0) this.d;
                w76 w76Var = (w76) this.b;
                jq6 jq6Var = (jq6) this.c;
                int i2 = 10;
                Exception exc = null;
                if (!dq0Var2.u()) {
                    yq0 yq0Var3 = le9.j;
                    dq0Var2.y(2, 7, yq0Var3);
                    ga9 ga9Var = ma9.b;
                    mb9 mb9Var = mb9.e;
                    w76Var.a(yq0Var3, new ib(i2, mb9Var, mb9Var));
                } else {
                    if (dq0Var2.r) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int i3 = 0;
                        String str3 = ((pc6) ((ma9) jq6Var.b).get(0)).b;
                        ma9 ma9Var = (ma9) jq6Var.b;
                        int size = ma9Var.size();
                        int i4 = 0;
                        while (i4 < size) {
                            int i5 = i4 + 20;
                            ArrayList<pc6> arrayList3 = new ArrayList(ma9Var.subList(i4, i5 > size ? size : i5));
                            ArrayList<String> arrayList4 = new ArrayList<>();
                            int size2 = arrayList3.size();
                            for (int i6 = i3; i6 < size2; i6++) {
                                arrayList4.add(((pc6) arrayList3.get(i6)).a);
                            }
                            Bundle bundle = new Bundle();
                            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
                            String str4 = dq0Var2.c;
                            bundle.putString("playBillingLibraryVersion", str4);
                            try {
                                synchronized (dq0Var2.a) {
                                    w89Var2 = dq0Var2.i;
                                    break;
                                }
                                if (w89Var2 == null) {
                                    wb9Var = dq0Var2.l(le9.j, i, "Service has been reset to null.", exc);
                                } else {
                                    if (dq0Var2.s) {
                                        dq0Var2.x.getClass();
                                        z = 1;
                                    } else {
                                        z = i3;
                                    }
                                    dq0Var2.g();
                                    dq0Var2.g();
                                    dq0Var2.g();
                                    dq0Var2.g();
                                    Bundle bundleT = ((g89) w89Var2).t(true != dq0Var2.t ? 17 : 20, dq0Var2.g.getPackageName(), str3, bundle, ta9.d(str4, dq0Var2.d, arrayList3, new p39(z), dq0Var2.A.longValue()));
                                    if (bundleT == null) {
                                        wb9Var = dq0Var2.l(le9.p, 44, "queryProductDetailsAsync got empty product details response.", null);
                                    } else if (bundleT.containsKey("DETAILS_LIST")) {
                                        ArrayList<String> stringArrayList = bundleT.getStringArrayList("DETAILS_LIST");
                                        if (stringArrayList == null) {
                                            wb9Var = dq0Var2.l(le9.p, 46, "queryProductDetailsAsync got null response list", null);
                                        } else {
                                            ArrayList arrayList5 = new ArrayList();
                                            int size3 = stringArrayList.size();
                                            for (int i7 = 0; i7 < size3; i7++) {
                                                try {
                                                    v76 v76Var = new v76(stringArrayList.get(i7));
                                                    ta9.g("BillingClient", "Got product details: ".concat(v76Var.toString()));
                                                    arrayList5.add(v76Var);
                                                } catch (JSONException e3) {
                                                    wb9Var = dq0Var2.l(le9.a(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e3);
                                                }
                                            }
                                            ArrayList<String> stringArrayList2 = bundleT.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                                            new ArrayList();
                                            try {
                                                ArrayList arrayList6 = new ArrayList();
                                                if (stringArrayList2 == null) {
                                                    for (pc6 pc6Var : arrayList3) {
                                                        Iterator it = arrayList5.iterator();
                                                        while (true) {
                                                            if (!it.hasNext()) {
                                                                arrayList6.add(new xd8(new JSONObject().put("productId", pc6Var.a).put("type", pc6Var.b).put("statusCode", 0).toString()));
                                                            }
                                                            v76 v76Var2 = (v76) it.next();
                                                            if (pc6Var.a.equals(v76Var2.c) && pc6Var.b.equals(v76Var2.d)) {
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    Iterator<String> it2 = stringArrayList2.iterator();
                                                    while (it2.hasNext()) {
                                                        xd8 xd8Var = new xd8(it2.next());
                                                        ta9.g("BillingClient", "Got unfetchedProduct: ".concat(xd8Var.toString()));
                                                        arrayList6.add(xd8Var);
                                                    }
                                                }
                                                arrayList.addAll(arrayList5);
                                                arrayList2.addAll(arrayList6);
                                                i4 = i5;
                                                i = 107;
                                                exc = null;
                                                i3 = 0;
                                            } catch (JSONException e4) {
                                                wb9Var = dq0Var2.l(le9.a(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e4);
                                            }
                                        }
                                    } else {
                                        int iA = ta9.a(bundleT, "BillingClient");
                                        String strF = ta9.f(bundleT, "BillingClient");
                                        wb9Var = iA != 0 ? dq0Var2.l(le9.a(iA, strF), 23, fz5.j(iA, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "), null) : dq0Var2.l(le9.a(6, strF), 45, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                                    }
                                }
                                break;
                            } catch (DeadObjectException e5) {
                                wb9Var = dq0Var2.l(le9.j, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e5);
                            } catch (Exception e6) {
                                wb9Var = dq0Var2.l(le9.h, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e6);
                            }
                            w76Var.a(le9.a(wb9Var.c, wb9Var.d), new ib(10, wb9Var.a, wb9Var.b));
                            return null;
                        }
                        wb9Var = new wb9(0, "", arrayList, arrayList2);
                        w76Var.a(le9.a(wb9Var.c, wb9Var.d), new ib(10, wb9Var.a, wb9Var.b));
                        return null;
                    }
                    ta9.h("BillingClient", "Querying product details is not supported.");
                    yq0 yq0Var4 = le9.o;
                    dq0Var2.y(20, 7, yq0Var4);
                    ga9 ga9Var2 = ma9.b;
                    mb9 mb9Var2 = mb9.e;
                    w76Var.a(yq0Var4, new ib(i2, mb9Var2, mb9Var2));
                }
                return null;
        }
    }
}
