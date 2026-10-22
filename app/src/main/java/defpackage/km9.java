package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km9 extends rm9 {
    public final int a;
    public final dc9 b;

    public km9(dc9 dc9Var) throws rl9 {
        dc9Var.getClass();
        this.b = dc9Var;
        ne8 ne8VarS = dc9Var.entrySet().s();
        int i = 0;
        while (ne8VarS.hasNext()) {
            Map.Entry entry = (Map.Entry) ne8VarS.next();
            int iA = ((rm9) entry.getKey()).a();
            i = i < iA ? iA : i;
            int iA2 = ((rm9) entry.getValue()).a();
            if (i < iA2) {
                i = iA2;
            }
        }
        int i2 = i + 1;
        this.a = i2;
        if (i2 > 8) {
            throw new rl9("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // defpackage.rm9
    public final int a() {
        return this.a;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int iCompareTo;
        rm9 rm9Var = (rm9) obj;
        int iZza = rm9Var.zza();
        int iC = rm9.c((byte) -96);
        if (iC != iZza) {
            return iC - rm9Var.zza();
        }
        dc9 dc9Var = ((km9) rm9Var).b;
        dc9 dc9Var2 = this.b;
        if (dc9Var2.d.size() != dc9Var.d.size()) {
            return dc9Var2.d.size() - dc9Var.d.size();
        }
        ne8 ne8VarS = dc9Var2.entrySet().s();
        ne8 ne8VarS2 = dc9Var.entrySet().s();
        do {
            if (!ne8VarS.hasNext() && !ne8VarS2.hasNext()) {
                return 0;
            }
            Map.Entry entry = (Map.Entry) ne8VarS.next();
            Map.Entry entry2 = (Map.Entry) ne8VarS2.next();
            int iCompareTo2 = ((rm9) entry.getKey()).compareTo((rm9) entry2.getKey());
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
            iCompareTo = ((rm9) entry.getValue()).compareTo((rm9) entry2.getValue());
        } while (iCompareTo == 0);
        return iCompareTo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && km9.class == obj.getClass()) {
            return this.b.equals(((km9) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(rm9.c((byte) -96)), this.b});
    }

    public final String toString() {
        dc9 dc9Var = this.b;
        if (dc9Var.isEmpty()) {
            return "{}";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ne8 ne8VarS = dc9Var.entrySet().s();
        while (ne8VarS.hasNext()) {
            Map.Entry entry = (Map.Entry) ne8VarS.next();
            linkedHashMap.put(((rm9) entry.getKey()).toString().replace("\n", "\n  "), ((rm9) entry.getValue()).toString().replace("\n", "\n  "));
        }
        lk lkVar = new lk();
        StringBuilder sb = new StringBuilder("{\n  ");
        try {
            iz1.E(sb, linkedHashMap.entrySet().iterator(), lkVar);
            sb.append("\n}");
            return sb.toString();
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c((byte) -96);
    }
}
