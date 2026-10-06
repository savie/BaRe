package defpackage;

import android.content.Context;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u34 {
    public static final l46 b = new l46("fire-global");
    public static final l46 c = new l46("fire-count");
    public static final l46 d = new l46("last-used-date");
    public final ih4 a;

    public u34(Context context, String str) {
        this.a = new ih4(context, xs1.j("FirebaseHeartBeat", str));
    }

    public final synchronized ArrayList a() {
        try {
            ArrayList arrayList = new ArrayList();
            String strB = b(System.currentTimeMillis());
            ih4 ih4Var = this.a;
            ih4Var.getClass();
            for (Map.Entry entry : ((Map) l73.B(lv2.a, new kc1(ih4Var, null, 1))).entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strB);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new pd0(((l46) entry.getKey()).a, new ArrayList(hashSet)));
                    }
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                ih4 ih4Var2 = this.a;
                t34 t34Var = new t34(0, jCurrentTimeMillis);
                ih4Var2.getClass();
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized String b(long j) {
        return new Date(j).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public final synchronized l46 c(ij5 ij5Var, String str) {
        for (Map.Entry entry : ij5Var.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        String str2 = ((l46) entry.getKey()).a;
                        str2.getClass();
                        return new l46(str2);
                    }
                }
            }
        }
        return null;
    }

    public final synchronized void d(ij5 ij5Var, String str) {
        l46 l46VarC = c(ij5Var, str);
        if (l46VarC == null) {
            return;
        }
        HashSet hashSet = new HashSet((Collection) ly8.w(ij5Var, l46VarC, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            ij5Var.b();
            ij5Var.a.remove(l46VarC);
        } else {
            ij5Var.d(l46VarC, hashSet);
        }
    }
}
