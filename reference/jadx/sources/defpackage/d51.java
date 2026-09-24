package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d51 implements i98 {
    public final Class a;

    public d51(Class cls) {
        this.a = cls;
    }

    @Override // defpackage.i98
    public final Object a(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        Class cls = Character.TYPE;
        Class cls2 = this.a;
        if (cls2 == cls) {
            return charArray;
        }
        Object objNewInstance = Array.newInstance((Class<?>) cls2, length);
        for (int i = 0; i < length; i++) {
            Array.set(objNewInstance, i, Character.valueOf(charArray[i]));
        }
        return objNewInstance;
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        int length = Array.getLength(obj);
        if (this.a == Character.TYPE) {
            return new String((char[]) obj);
        }
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                sb.append(obj2);
            }
        }
        return sb.toString();
    }
}
