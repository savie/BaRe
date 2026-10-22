package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wm extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ wm(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        switch (this.a) {
            case 0:
                return new wm((q63) this.b, jv1Var, 0);
            case 1:
                return new wm((rs0) this.b, jv1Var, 1);
            case 2:
                wm wmVar = new wm(2, jv1Var);
                wmVar.b = obj;
                return wmVar;
            default:
                return new wm((m87) this.b, jv1Var, 3);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((wm) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            case 1:
                ((wm) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            case 2:
                return ((wm) create((em7) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((wm) create((m87) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                q63 q63Var = (q63) this.b;
                if (!q63Var.h()) {
                    Log.w("AppCloudCacheCleaner", "Unable to fully delete deferred cloud cache at ".concat(q63Var.v()));
                }
                return be8Var;
            case 1:
                lg7.H(obj);
                rs0 rs0Var = (rs0) this.b;
                rs0Var.e.getClass();
                BlacklistData blacklistData = gs0.c;
                List<BlacklistApp> items = blacklistData != null ? blacklistData.getItems() : null;
                if (items == null) {
                    items = ov2.a;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(items);
                g00 g00Var = g00.a;
                int i2 = 0;
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("show_system_apps", false);
                    List listM = g00.m(z);
                    String.CASE_INSENSITIVE_ORDER.getClass();
                    List<ji> listN1 = el1.n1(listM, new qs0(i2));
                    ArrayList arrayList = new ArrayList(hl1.G0(listN1, 10));
                    Iterator it = listN1.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((ji) it.next()).getName());
                    }
                    CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
                    ArrayList arrayList2 = new ArrayList(hl1.G0(listN1, 10));
                    for (ji jiVar : listN1) {
                        z2 = !linkedHashSet.isEmpty();
                        Iterator it2 = linkedHashSet.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                            }
                            if (pe4.d(((BlacklistApp) it2.next()).getPackageName(), jiVar.getPackageName())) {
                            }
                            break;
                            break;
                        }
                        break;
                        arrayList2.add(Boolean.valueOf(z2));
                    }
                    boolean[] zArrR1 = el1.r1(arrayList2);
                    rs0Var.f();
                    rs0Var.g.k(new os0(charSequenceArr, zArrR1, listN1, linkedHashSet));
                    return be8Var;
                } catch (ClassCastException unused) {
                    z = false;
                }
                break;
            case 2:
                lg7.H(obj);
                return Boolean.valueOf(!(((em7) this.b) instanceof ne3));
            default:
                lg7.H(obj);
                return (m87) this.b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ wm(int i, jv1 jv1Var) {
        super(i, jv1Var);
        this.a = 2;
    }
}
