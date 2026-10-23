package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s50 implements i98 {
    public final zp7 a = new zp7();
    public final i98 b;
    public final Class c;

    public s50(i98 i98Var, Class cls) {
        this.b = i98Var;
        this.c = cls;
    }

    @Override // defpackage.i98
    public final Object a(String str) {
        String[] strArrSplit = this.a.a.split(str);
        for (int i = 0; i < strArrSplit.length; i++) {
            String str2 = strArrSplit[i];
            if (str2 != null) {
                strArrSplit[i] = str2.trim();
            }
        }
        int length = strArrSplit.length;
        Object objNewInstance = Array.newInstance((Class<?>) this.c, length);
        for (int i2 = 0; i2 < length; i2++) {
            Object objA = this.b.a(strArrSplit[i2]);
            if (objA != null) {
                Array.set(objNewInstance, i2, objA);
            }
        }
        return objNewInstance;
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        int length = Array.getLength(obj);
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                strArr[i] = this.b.b(obj2);
            }
        }
        return this.a.b(strArr);
    }
}
