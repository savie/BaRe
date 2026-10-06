package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ij5 {
    public final LinkedHashMap a;
    public final rb b;

    public ij5(LinkedHashMap linkedHashMap, boolean z) {
        this.a = linkedHashMap;
        this.b = new rb(z);
    }

    public final Map a() {
        pw5 pw5Var;
        Set<Map.Entry> setEntrySet = this.a.entrySet();
        int iQ0 = x65.q0(hl1.G0(setEntrySet, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (Map.Entry entry : setEntrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                pw5Var = new pw5(entry.getKey(), Arrays.copyOf(bArr, bArr.length));
            } else {
                pw5Var = new pw5(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(pw5Var.a, pw5Var.b);
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        return mapUnmodifiableMap;
    }

    public final void b() {
        if (((AtomicBoolean) this.b.b).get()) {
            l0.e("Do mutate preferences once returned to DataStore.");
        }
    }

    public final void c(l46 l46Var, Object obj) {
        l46Var.getClass();
        d(l46Var, obj);
    }

    public final void d(l46 l46Var, Object obj) {
        l46Var.getClass();
        b();
        LinkedHashMap linkedHashMap = this.a;
        if (obj == null) {
            b();
            linkedHashMap.remove(l46Var);
        } else if (obj instanceof Set) {
            Set setUnmodifiableSet = Collections.unmodifiableSet(el1.z1((Set) obj));
            setUnmodifiableSet.getClass();
            linkedHashMap.put(l46Var, setUnmodifiableSet);
        } else if (!(obj instanceof byte[])) {
            linkedHashMap.put(l46Var, obj);
        } else {
            byte[] bArr = (byte[]) obj;
            linkedHashMap.put(l46Var, Arrays.copyOf(bArr, bArr.length));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    public final boolean equals(Object obj) {
        boolean zD;
        if (obj instanceof ij5) {
            LinkedHashMap linkedHashMap = ((ij5) obj).a;
            LinkedHashMap linkedHashMap2 = this.a;
            if (linkedHashMap != linkedHashMap2) {
                if (linkedHashMap.size() == linkedHashMap2.size()) {
                    if (!linkedHashMap.isEmpty()) {
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            Object obj2 = linkedHashMap2.get(entry.getKey());
                            if (obj2 != null) {
                                Object value = entry.getValue();
                                if (!(value instanceof byte[])) {
                                    zD = pe4.d(value, obj2);
                                } else if ((obj2 instanceof byte[]) && Arrays.equals((byte[]) value, (byte[]) obj2)) {
                                    zD = true;
                                } else {
                                    zD = false;
                                }
                            } else {
                                zD = false;
                            }
                            if (!zD) {
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        Iterator it = this.a.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        return el1.Y0(this.a.entrySet(), ",\n", "{\n", "\n}", hj5.a, 24);
    }

    public /* synthetic */ ij5(boolean z) {
        this(new LinkedHashMap(), z);
    }
}
