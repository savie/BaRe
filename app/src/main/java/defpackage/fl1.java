package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fl1 extends nc8 {
    public static List A0(Object... objArr) {
        if (objArr.length <= 0) {
            return ov2.a;
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static List B0(Object obj) {
        return obj != null ? nc8.I(obj) : ov2.a;
    }

    public static ArrayList C0(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new p40(objArr, true));
    }

    public static final List D0(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : nc8.I(list.get(0));
        }
        return ov2.a;
    }

    public static void E0() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void F0() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static ArrayList x0(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new p40(objArr, true));
    }

    public static nd4 y0(Collection collection) {
        collection.getClass();
        return new nd4(0, collection.size() - 1, 1);
    }

    public static int z0(List list) {
        list.getClass();
        return list.size() - 1;
    }
}
