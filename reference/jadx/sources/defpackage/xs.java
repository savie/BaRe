package defpackage;

import android.util.Log;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.folders.data.FileEntry;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xs implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xs(yn3 yn3Var, LinkedHashMap linkedHashMap, ArrayList arrayList) {
        this.a = 4;
        this.b = linkedHashMap;
        this.c = arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:? A[LOOP:2: B:71:0x0178->B:104:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0174  */
    /* JADX WARN: Code duplicated, block: B:73:0x017e  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        String strSubstring;
        int iK0;
        int i = this.a;
        boolean z = false;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                dt dtVar = (dt) obj3;
                List list = (List) obj;
                il0.w((ViewGroup) obj2, new t35(), RecyclerView.class);
                boolean z2 = (list == null || list.isEmpty() || dtVar.Y) ? false : true;
                Object value = dtVar.a0.getValue();
                value.getClass();
                sz8.d0((QuickRecyclerView) value, z2);
                if (list != null) {
                    ((k10) dtVar.b0.getValue()).w(new fm7(list, (Set) null, false, (String) null, 30), false);
                }
                return be8Var;
            case 1:
                vg vgVar = (vg) obj;
                vgVar.getClass();
                ((mv) obj3).d(((kh6) obj2).a + vgVar.b);
                return be8Var;
            case 2:
                ArrayList<String> arrayList = (ArrayList) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                ji jiVar = (ji) obj;
                jiVar.getClass();
                Set<LabelParams> labels = jiVar.getLabels();
                if (labels != null && !labels.isEmpty()) {
                    Iterator<T> it = labels.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (el1.M0(arrayList2, ((LabelParams) it.next()).getId())) {
                            }
                        } else if (!arrayList.isEmpty()) {
                            for (String str : arrayList) {
                                LabelParams.Companion.getClass();
                                if (hr4.b(jiVar, str)) {
                                }
                            }
                        }
                        z = true;
                    }
                } else if (!arrayList.isEmpty()) {
                    while (r12.hasNext()) {
                        LabelParams.Companion.getClass();
                        if (hr4.b(jiVar, str)) {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            case 3:
                ((qj2) obj3).b.o(((zj2) obj2).a.getBackup(), (String) obj);
                return be8Var;
            case 4:
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj3;
                ArrayList arrayList3 = (ArrayList) obj2;
                String str2 = (String) obj;
                str2.getClass();
                if (uq7.V(str2, "F\t", false)) {
                    String strSubstring2 = str2.substring(2);
                    int iK1 = nq7.k0('\t', 0, 6, strSubstring2);
                    pw5 pw5Var = null;
                    dValueOf = null;
                    Double dValueOf = null;
                    pw5Var = null;
                    if (iK1 > 0 && (iK0 = nq7.k0('\t', 0, 6, (strSubstring = strSubstring2.substring(0, iK1)))) > 0) {
                        String strSubstring3 = strSubstring.substring(0, iK0);
                        Long lY = uq7.Y(strSubstring.substring(iK0 + 1));
                        long jLongValue = lY != null ? lY.longValue() : 0L;
                        String strSubstring4 = strSubstring2.substring(iK1 + 1);
                        try {
                            if (tq7.N(strSubstring4)) {
                                dValueOf = Double.valueOf(Double.parseDouble(strSubstring4));
                            }
                            break;
                        } catch (NumberFormatException unused) {
                        }
                        pw5Var = new pw5(strSubstring3, new FileEntry(jLongValue, (dValueOf != null ? (long) dValueOf.doubleValue() : 0L) * 1000));
                    }
                    if (pw5Var != null) {
                        String str3 = (String) pw5Var.a;
                        FileEntry fileEntry = (FileEntry) pw5Var.b;
                        if (str3.length() > 0) {
                            linkedHashMap.put(str3, fileEntry);
                        }
                    }
                } else if (uq7.V(str2, "D\t", false)) {
                    String strSubstring5 = str2.substring(2);
                    if (strSubstring5.length() > 0) {
                        arrayList3.add(strSubstring5);
                    }
                }
                return be8Var;
            default:
                ji7 ji7Var = (ji7) obj3;
                String str4 = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str4);
                    List<p73> listN0 = el1.N0(2, wm2Var.n(strC));
                    ArrayList arrayList4 = new ArrayList();
                    for (p73 p73Var : listN0) {
                        p73Var.getClass();
                        arrayList4.add(og1.h(p73Var, strC));
                    }
                    return new gh1(arrayList4);
                } catch (Exception e) {
                    String strB = io4.b(e);
                    if (nq7.Z(strB, "STATUS_OBJECT_NAME_NOT_FOUND", true) || nq7.Z(strB, "STATUS_OBJECT_PATH_NOT_FOUND", true) || nq7.Z(strB, "STATUS_NO_SUCH_FILE", true) || nq7.Z(strB, "does not exist", true)) {
                        return new gh1(ov2.a);
                    }
                    Log.e("SmbService", "listMetadataDirectory", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "listMetadataDirectory: ".concat(io4.b(e)), null, 4, null);
                    return fh1.a;
                }
        }
    }

    public /* synthetic */ xs(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
