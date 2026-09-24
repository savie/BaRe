package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class un1 {
    public final String a;
    public final Set b;
    public final Set c;
    public final int d;
    public final int e;
    public final mo1 f;
    public final Set g;

    public un1(String str, Set set, Set set2, int i, int i2, mo1 mo1Var, Set set3) {
        this.a = str;
        this.b = Collections.unmodifiableSet(set);
        this.c = Collections.unmodifiableSet(set2);
        this.d = i;
        this.e = i2;
        this.f = mo1Var;
        this.g = Collections.unmodifiableSet(set3);
    }

    public static tn1 a(nc6 nc6Var) {
        return new tn1(nc6Var, new nc6[0]);
    }

    public static tn1 b(Class cls) {
        return new tn1(cls, new Class[0]);
    }

    public static un1 c(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(nc6.a(cls));
        for (Class cls2 : clsArr) {
            bb9.m(cls2, "Null interface");
            hashSet.add(nc6.a(cls2));
        }
        return new un1(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new sn1(obj, 0), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.b.toArray()) + ">{" + this.d + ", type=" + this.e + ", deps=" + Arrays.toString(this.c.toArray()) + "}";
    }
}
