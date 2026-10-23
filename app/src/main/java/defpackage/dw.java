package defpackage;

import android.util.Log;
import com.google.android.material.card.MaterialCardView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dw implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ dw(ax axVar, ex exVar, lw lwVar, xw xwVar, String str) {
        this.a = 0;
        this.b = axVar;
        this.c = exVar;
        this.d = lwVar;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e  */
    /* JADX WARN: Code duplicated, block: B:77:0x019d  */
    /* JADX WARN: Code duplicated, block: B:79:0x01a5  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jLongValue;
        Object[] objArr;
        String string;
        String str;
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = 8;
        boolean z = false;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                ax axVar = (ax) obj4;
                ex exVar = (ex) obj3;
                lw lwVar = (lw) obj2;
                dz6 dz6Var = (dz6) obj;
                dz6Var.getClass();
                Long l = dz6Var.b;
                if (l == null) {
                    jLongValue = axVar.h;
                    if (jLongValue < 1) {
                        jLongValue = 1;
                    }
                } else {
                    Long l2 = l.longValue() > 0 ? l : null;
                    if (l2 != null) {
                        jLongValue = l2.longValue();
                    } else {
                        jLongValue = axVar.h;
                        if (jLongValue < 1) {
                            jLongValue = 1;
                        }
                    }
                }
                long j = dz6Var.a;
                long j2 = j >= 0 ? j : 0L;
                if (j2 > jLongValue) {
                    j2 = jLongValue;
                }
                lwVar.invoke(Long.valueOf(axVar.b() + tu0.w((j2 / jLongValue) * axVar.c(exVar))));
                return be8Var;
            case 1:
                IntroActivity introActivity = (IntroActivity) obj4;
                IntroActivity introActivity2 = ((af4) obj3).b;
                MaterialCardView materialCardView = ((uf3) obj2).a;
                xf3 xf3Var = (xf3) obj;
                xf3Var.getClass();
                Log.d("FCW", "IntroActivity.Observer:" + xf3Var);
                gg3 gg3Var = gg3.a;
                if (gg3.f()) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    if (ai8.i(SwiftApp.Companion.c())) {
                        if (xf3Var == xf3.CONNECTED) {
                            sz8.m(introActivity2.S);
                        }
                        boolean z2 = xf3Var == xf3.DISCONNECTED;
                        if (z2 != sz8.I(materialCardView)) {
                            il0.w(io4.a(introActivity), new t35(), new Class[0]);
                            sz8.d0(materialCardView, z2);
                        }
                    } else {
                        Log.d("FCW", "Firebase backend warning not applicable");
                        sz8.m(introActivity2.S);
                        materialCardView.setVisibility(8);
                    }
                } else {
                    Log.d("FCW", "Firebase backend warning not applicable");
                    sz8.m(introActivity2.S);
                    materialCardView.setVisibility(8);
                }
                return be8Var;
            default:
                String str2 = (String) obj4;
                String str3 = (String) obj3;
                fu3 fu3Var = (fu3) obj2;
                obj.getClass();
                Set set = uz3.a;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                uz3.a(linkedHashSet, obj);
                List listC0 = h77.C0(h77.x0(new me3(new q98(new ll1(el1.v1(linkedHashSet)), new sh(i2)), true, new zi1(4))));
                if (!listC0.isEmpty()) {
                    if (!listC0.isEmpty()) {
                        Iterator it = listC0.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String str4 = (String) it.next();
                                tb1 tb1Var = tb1.a;
                                String strJ = qb1.j();
                                if (strJ != null) {
                                    try {
                                        yz3 yz3VarI = fu3Var.h.i(str4, "id, parents, trashed");
                                        Set set2 = uz3.a;
                                        if (pe4.d(yz3VarI.a, str4) && !yz3VarI.h && yz3VarI.g.contains(strJ)) {
                                            objArr = true;
                                        }
                                    } catch (Exception e) {
                                        if (e instanceof vz3) {
                                            vz3 vz3Var = (vz3) e;
                                            if (vz3Var.b != 404) {
                                                vr6 vr6Var = vr6.INSTANCE;
                                                vr6.e$default(vr6Var, "GClient", "Google Drive metadata migration file check failed", e, null, 8, null);
                                                vr6.e$default(vr6Var, "GClient", rs9.w(vz3Var), null, 4, null);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    str3.getClass();
                    string = nq7.H0(str2).toString();
                    if (string != null) {
                        if (string.length() <= 0) {
                            string = null;
                        }
                        if (string != null) {
                            String string2 = nq7.H0(str3).toString();
                            str = string2.length() > 0 ? string2 : null;
                            if (str != null && !string.equalsIgnoreCase(str) && objArr != false) {
                                z = true;
                            }
                        }
                    }
                    return Boolean.valueOf(z);
                }
                vr6.w$default(vr6.INSTANCE, "GClient", "Google Drive metadata migration skipped: no file ids found", null, 4, null);
                objArr = false;
                str3.getClass();
                string = nq7.H0(str2).toString();
                if (string != null) {
                    if (string.length() <= 0) {
                        string = null;
                    }
                    if (string != null) {
                        String string3 = nq7.H0(str3).toString();
                        if (string3.length() > 0) {
                        }
                        if (str != null) {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
        }
    }

    public /* synthetic */ dw(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
