package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yr4 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ zr4 b;
    public final /* synthetic */ Set c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yr4(zr4 zr4Var, Set set, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = zr4Var;
        this.c = set;
        this.d = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new yr4(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((yr4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            lr4 lr4Var = lr4.a;
            boolean z = lr4.b;
            final zr4 zr4Var = this.b;
            if (!z) {
                zr4Var.i.k(Boolean.TRUE);
                lr4Var.a();
            }
            zn4 zn4Var = zn4.a;
            final Set set = this.c;
            final int i2 = this.d;
            bt3 bt3Var = new bt3() { // from class: xr4
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v1 */
                /* JADX WARN: Type inference failed for: r2v11, types: [ov2] */
                /* JADX WARN: Type inference failed for: r2v12, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r2v2 */
                /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Iterable] */
                @Override // defpackage.bt3
                public final Object invoke() {
                    ?? arrayList;
                    Map<String, LabelParams> labelParamsMap;
                    zr4 zr4Var2 = zr4Var;
                    Set setZ1 = el1.z1(zr4Var2.j());
                    Integer numValueOf = null;
                    if (setZ1.isEmpty()) {
                        setZ1 = null;
                    }
                    if (setZ1 == null) {
                        Set<String> set2 = set;
                        if (set2 != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (String str : set2) {
                                lr4 lr4Var2 = lr4.a;
                                LabelParams labelParamsC = lr4.c(str);
                                if (labelParamsC != null) {
                                    arrayList2.add(labelParamsC);
                                }
                            }
                            setZ1 = el1.z1(arrayList2);
                        } else {
                            setZ1 = null;
                        }
                    }
                    if (setZ1 != null) {
                        arrayList = new ArrayList();
                        Iterator it = setZ1.iterator();
                        while (it.hasNext()) {
                            String id = ((LabelParams) it.next()).getId();
                            if (id != null) {
                                arrayList.add(id);
                            }
                        }
                    } else {
                        arrayList = 0;
                    }
                    if (arrayList == 0) {
                        arrayList = ov2.a;
                    }
                    zr4Var2.h = el1.z1(arrayList);
                    u95 u95Var = zr4Var2.j;
                    lr4 lr4Var3 = lr4.a;
                    u95Var.l((ex6) lr4.f.getValue(), new wr4(0, new u10(zr4Var2, 13)));
                    zr4Var2.i.k(Boolean.FALSE);
                    if (!V.INSTANCE.getVp()) {
                        String strJ = fz5.j(i2, "mode=");
                        LabelsData labelsData = lr4.e;
                        if (labelsData != null && (labelParamsMap = labelsData.getLabelParamsMap()) != null) {
                            numValueOf = Integer.valueOf(labelParamsMap.size());
                        }
                        List listA0 = fl1.A0(strJ, "numLabels=" + numValueOf);
                        zc2 zc2Var = re3.a;
                        try {
                            new qe3(zr4Var2.b, el1.Y0(listA0, null, null, null, null, 63)).invoke();
                        } catch (Exception unused) {
                        }
                    }
                    return be8.a;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
