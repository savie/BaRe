package com.google.android.recaptcha.internal;

import defpackage.g84;
import defpackage.hl1;
import defpackage.nc8;
import defpackage.ov2;
import defpackage.x50;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgy implements zzgx {
    public static final zzgy zza = new zzgy();

    private zzgy() {
    }

    private static final List zzc(Object obj) {
        if (obj instanceof byte[]) {
            return x50.x0((byte[]) obj);
        }
        boolean z = obj instanceof short[];
        ov2 ov2Var = ov2.a;
        int i = 0;
        if (z) {
            short[] sArr = (short[]) obj;
            int length = sArr.length;
            if (length == 0) {
                return ov2Var;
            }
            if (length == 1) {
                return nc8.I(Short.valueOf(sArr[0]));
            }
            ArrayList arrayList = new ArrayList(sArr.length);
            int length2 = sArr.length;
            while (i < length2) {
                arrayList.add(Short.valueOf(sArr[i]));
                i++;
            }
            return arrayList;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length;
            if (length3 == 0) {
                return ov2Var;
            }
            if (length3 == 1) {
                return nc8.I(Integer.valueOf(iArr[0]));
            }
            ArrayList arrayList2 = new ArrayList(iArr.length);
            int length4 = iArr.length;
            while (i < length4) {
                arrayList2.add(Integer.valueOf(iArr[i]));
                i++;
            }
            return arrayList2;
        }
        if (obj instanceof long[]) {
            return x50.y0((long[]) obj);
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int length5 = fArr.length;
            if (length5 == 0) {
                return ov2Var;
            }
            if (length5 == 1) {
                return nc8.I(Float.valueOf(fArr[0]));
            }
            ArrayList arrayList3 = new ArrayList(fArr.length);
            int length6 = fArr.length;
            while (i < length6) {
                arrayList3.add(Float.valueOf(fArr[i]));
                i++;
            }
            return arrayList3;
        }
        if (!(obj instanceof double[])) {
            return null;
        }
        double[] dArr = (double[]) obj;
        int length7 = dArr.length;
        if (length7 == 0) {
            return ov2Var;
        }
        if (length7 == 1) {
            return nc8.I(Double.valueOf(dArr[0]));
        }
        ArrayList arrayList4 = new ArrayList(dArr.length);
        int length8 = dArr.length;
        while (i < length8) {
            arrayList4.add(Double.valueOf(dArr[i]));
            i++;
        }
        return arrayList4;
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length != 2) {
            g84.d(4, 3, null);
            return;
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != Objects.nonNull(objZza)) {
            objZza = null;
        }
        if (objZza == null) {
            g84.d(4, 5, null);
            return;
        }
        Object objZza2 = zzgdVar.zzc().zza(zzueVarArr[1]);
        if (true != Objects.nonNull(objZza2)) {
            objZza2 = null;
        }
        if (objZza2 != null) {
            zzgdVar.zzc().zze(i, zzb(objZza, objZza2));
        } else {
            g84.d(4, 5, null);
        }
    }

    public final Object zzb(Object obj, Object obj2) throws zzce {
        List listZzc = zzc(obj);
        List listZzc2 = zzc(obj2);
        if (obj instanceof Number) {
            if (obj2 instanceof Number) {
                return Double.valueOf(Math.pow(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()));
            }
            if (listZzc2 != null) {
                ArrayList arrayList = new ArrayList(hl1.G0(listZzc2, 10));
                Iterator it = listZzc2.iterator();
                while (it.hasNext()) {
                    arrayList.add(Double.valueOf(Math.pow(((Number) it.next()).doubleValue(), ((Number) obj).doubleValue())));
                }
                return arrayList.toArray(new Double[0]);
            }
        }
        if (listZzc != null && (obj2 instanceof Number)) {
            ArrayList arrayList2 = new ArrayList(hl1.G0(listZzc, 10));
            Iterator it2 = listZzc.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Double.valueOf(Math.pow(((Number) it2.next()).doubleValue(), ((Number) obj2).doubleValue())));
            }
            return arrayList2.toArray(new Double[0]);
        }
        if (listZzc == null || listZzc2 == null) {
            g84.d(4, 5, null);
            return null;
        }
        zzgw.zza(this, listZzc.size(), listZzc2.size());
        int size = listZzc.size();
        Double[] dArr = new Double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = Double.valueOf(Math.pow(((Number) listZzc.get(i)).doubleValue(), ((Number) listZzc2.get(i)).doubleValue()));
        }
        return dArr;
    }
}
