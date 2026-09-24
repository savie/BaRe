package defpackage;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class el1 extends jl1 {
    public static ArrayList A1(List list, int i, int i2) {
        Iterator it;
        list.getClass();
        if (i <= 0 || i2 <= 0) {
            f6.g(i != i2 ? dj7.j("Both size ", i, " and step ", " must be greater than zero.", i2) : xs1.h(i, "size ", " must be greater than zero."));
            return null;
        }
        if (!(list instanceof RandomAccess)) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            it2.getClass();
            if (it2.hasNext()) {
                sh7 sh7Var = new sh7(i, i2, it2, null);
                g77 g77Var = new g77();
                g77Var.d = nc8.o(g77Var, g77Var, sh7Var);
                it = g77Var;
            } else {
                it = nv2.a;
            }
            while (it.hasNext()) {
                arrayList.add((List) it.next());
            }
            return arrayList;
        }
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i2) + (size % i2 == 0 ? 0 : 1));
        int i3 = 0;
        while (i3 >= 0 && i3 < size) {
            int i4 = size - i3;
            if (i <= i4) {
                i4 = i;
            }
            ArrayList arrayList3 = new ArrayList(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList3.add(list.get(i5 + i3));
            }
            arrayList2.add(arrayList3);
            i3 += i2;
        }
        return arrayList2;
    }

    public static final int I0(int i, List list) {
        if (i >= 0 && i <= list.size() - 1) {
            return (list.size() - 1) - i;
        }
        StringBuilder sbR = dj7.r(i, "Element index ", " must be in range [");
        sbR.append(new nd4(0, list.size() - 1, 1));
        sbR.append("].");
        throw new IndexOutOfBoundsException(sbR.toString());
    }

    public static final int J0(int i, List list) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder sbR = dj7.r(i, "Position index ", " must be in range [");
        sbR.append(new nd4(0, list.size(), 1));
        sbR.append("].");
        throw new IndexOutOfBoundsException(sbR.toString());
    }

    public static void K0(Iterable iterable, AbstractCollection abstractCollection) {
        abstractCollection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            abstractCollection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static void L0(Collection collection, Object[] objArr) {
        collection.getClass();
        objArr.getClass();
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        collection.addAll(listAsList);
    }

    public static boolean M0(Iterable iterable, Object obj) {
        int iIndexOf;
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (iterable instanceof List) {
            iIndexOf = ((List) iterable).indexOf(obj);
        } else {
            int i = 0;
            for (Object obj2 : iterable) {
                if (i < 0) {
                    fl1.F0();
                    throw null;
                }
                if (pe4.d(obj, obj2)) {
                    iIndexOf = i;
                } else {
                    i++;
                }
            }
            iIndexOf = -1;
        }
        return iIndexOf >= 0;
    }

    public static List N0(int i, List list) {
        if (i < 0) {
            f6.g(xs1.h(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return v1(list);
        }
        int size = list.size() - i;
        if (size <= 0) {
            return ov2.a;
        }
        if (size == 1) {
            return nc8.I(Z0(list));
        }
        ArrayList arrayList = new ArrayList(size);
        if (list instanceof RandomAccess) {
            int size2 = list.size();
            while (i < size2) {
                arrayList.add(list.get(i));
                i++;
            }
        } else {
            ListIterator listIterator = list.listIterator(i);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static List O0(int i, List list) {
        if (i < 0) {
            f6.g(xs1.h(i, "Requested element count ", " is less than zero."));
            return null;
        }
        int size = list.size() - i;
        if (size < 0) {
            size = 0;
        }
        return p1(list, size);
    }

    public static Object P0(final int i, Collection collection) {
        collection.getClass();
        boolean z = collection instanceof List;
        if (z) {
            return ((List) collection).get(i);
        }
        mt3 mt3Var = new mt3() { // from class: kl1
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                ((Integer) obj).intValue();
                throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i + '.');
            }
        };
        if (z) {
            List list = (List) collection;
            if (i >= 0 && i < list.size()) {
                return list.get(i);
            }
            mt3Var.invoke(Integer.valueOf(i));
            throw null;
        }
        if (i < 0) {
            mt3Var.invoke(Integer.valueOf(i));
            throw null;
        }
        int i2 = 0;
        for (Object obj : collection) {
            int i3 = i2 + 1;
            if (i == i2) {
                return obj;
            }
            i2 = i3;
        }
        mt3Var.invoke(Integer.valueOf(i));
        throw null;
    }

    public static ArrayList Q0(Iterable iterable) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object R0(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return S0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object S0(List list) {
        list.getClass();
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object T0(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object U0(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object V0(int i, List list) {
        list.getClass();
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static final void W0(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, mt3 mt3Var) {
        iterable.getClass();
        sb.append(charSequence2);
        int i = 0;
        for (Object obj : iterable) {
            i++;
            if (i > 1) {
                sb.append(charSequence);
            }
            wx3.a(sb, obj, mt3Var);
        }
        sb.append(charSequence3);
    }

    public static String Y0(Iterable iterable, String str, String str2, String str3, mt3 mt3Var, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i & 2) != 0 ? "" : str2;
        String str6 = (i & 4) != 0 ? "" : str3;
        if ((i & 32) != 0) {
            mt3Var = null;
        }
        iterable.getClass();
        StringBuilder sb = new StringBuilder();
        W0(iterable, sb, str4, str5, str6, "...", mt3Var);
        return sb.toString();
    }

    public static Object Z0(Collection collection) {
        collection.getClass();
        if (collection instanceof List) {
            return a1((List) collection);
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object a1(List list) {
        list.getClass();
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(list.size() - 1);
    }

    public static Object b1(ArrayList arrayList) {
        arrayList.getClass();
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.get(arrayList.size() - 1);
    }

    public static Comparable c1(List list) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static Comparable d1(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static ArrayList e1(Iterable iterable, Object obj) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList(hl1.G0(iterable, 10));
        boolean z = false;
        for (Object obj2 : iterable) {
            boolean z2 = true;
            if (!z && pe4.d(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public static ArrayList f1(Object obj, Collection collection) {
        collection.getClass();
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static ArrayList g1(Collection collection, List list) {
        collection.getClass();
        list.getClass();
        ArrayList arrayList = new ArrayList(list.size() + collection.size());
        arrayList.addAll(collection);
        arrayList.addAll(list);
        return arrayList;
    }

    public static void h1(ArrayList arrayList, mt3 mt3Var) {
        int size;
        int size2 = arrayList.size() - 1;
        int i = 0;
        if (size2 >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = arrayList.get(i);
                if (!((Boolean) mt3Var.invoke(obj)).booleanValue()) {
                    if (i2 != i) {
                        arrayList.set(i2, obj);
                    }
                    i2++;
                }
                if (i == size2) {
                    break;
                } else {
                    i++;
                }
            }
            i = i2;
        }
        if (i >= arrayList.size() || i > (size = arrayList.size() - 1)) {
            return;
        }
        while (true) {
            arrayList.remove(size);
            if (size == i) {
                return;
            } else {
                size--;
            }
        }
    }

    public static Object i1(List list) {
        list.getClass();
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(list.size() - 1);
    }

    public static List j1(List list) {
        if (list.size() <= 1) {
            return v1(list);
        }
        List listY1 = y1(list);
        Collections.reverse(listY1);
        return listY1;
    }

    public static Object k1(List list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        c6.f("List has more than one element.");
        return null;
    }

    public static Object l1(List list) {
        list.getClass();
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List m1(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List listY1 = y1(iterable);
            if (((ArrayList) listY1).size() > 1) {
                Collections.sort(listY1);
            }
            return listY1;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return v1(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        comparableArr.getClass();
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        array.getClass();
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        return listAsList;
    }

    public static List n1(Iterable iterable, Comparator comparator) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List listY1 = y1(iterable);
            jl1.H0(listY1, comparator);
            return listY1;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return v1(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        array.getClass();
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        return listAsList;
    }

    public static long o1(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue += ((Number) it.next()).longValue();
        }
        return jLongValue;
    }

    public static List p1(Iterable iterable, int i) {
        iterable.getClass();
        if (i < 0) {
            f6.g(xs1.h(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return ov2.a;
        }
        if (iterable instanceof Collection) {
            if (i >= ((Collection) iterable).size()) {
                return v1(iterable);
            }
            if (i == 1) {
                return nc8.I(R0(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i);
        Iterator it = iterable.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return fl1.D0(arrayList);
    }

    public static List q1(int i, List list) {
        list.getClass();
        if (i < 0) {
            f6.g(xs1.h(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return ov2.a;
        }
        int size = list.size();
        if (i >= size) {
            return v1(list);
        }
        if (i == 1) {
            return nc8.I(a1(list));
        }
        ArrayList arrayList = new ArrayList(i);
        if (list instanceof RandomAccess) {
            for (int i2 = size - i; i2 < size; i2++) {
                arrayList.add(list.get(i2));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static boolean[] r1(ArrayList arrayList) {
        arrayList.getClass();
        boolean[] zArr = new boolean[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = ((Boolean) it.next()).booleanValue();
            i++;
        }
        return zArr;
    }

    public static byte[] s1(List list) {
        byte[] bArr = new byte[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            bArr[i] = ((Number) it.next()).byteValue();
            i++;
        }
        return bArr;
    }

    public static void t1(Iterable iterable, AbstractCollection abstractCollection) {
        iterable.getClass();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static int[] u1(ArrayList arrayList) {
        int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static List v1(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            return fl1.D0(y1(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return ov2.a;
        }
        if (size != 1) {
            return new ArrayList(collection);
        }
        return nc8.I(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static long[] w1(List list) {
        list.getClass();
        long[] jArr = new long[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = ((Number) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public static ArrayList x1(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }

    public static final List y1(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        t1(iterable, arrayList);
        return arrayList;
    }

    public static Set z1(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size == 1) {
                    return sz8.Y(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(collection.size()));
                t1(iterable, linkedHashSet);
                return linkedHashSet;
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            t1(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                return size2 != 1 ? linkedHashSet2 : sz8.Y(linkedHashSet2.iterator().next());
            }
        }
        return sv2.a;
    }
}
