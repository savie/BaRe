package defpackage;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ga4 extends AbstractCollection implements Serializable {
    public static final Object[] b = new Object[0];
    public static final Object[] c = new Object[0];
    public static final Object[] d = new Object[0];
    public static final Object[] e = new Object[0];
    public final /* synthetic */ int a;

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public abstract int c(Object[] objArr);

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public Object[] d() {
        return null;
    }

    public int e() {
        throw new UnsupportedOperationException();
    }

    public int f() {
        throw new UnsupportedOperationException();
    }

    public abstract int g();

    public int i(Object[] objArr) {
        ne8 ne8VarS = s();
        int i = 0;
        while (ne8VarS.hasNext()) {
            objArr[i] = ne8VarS.next();
            i++;
        }
        return i;
    }

    public int k() {
        throw new UnsupportedOperationException();
    }

    public Object[] l() {
        return null;
    }

    public int o() {
        switch (this.a) {
            case 1:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public int p() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public abstract ne8 s();

    @Override // java.util.Collection, java.lang.Iterable
    public final Spliterator spliterator() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return Spliterators.spliterator(this, 1296);
    }

    public Object[] t() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.a) {
            case 0:
                objArr.getClass();
                int size = size();
                if (objArr.length < size) {
                    Object[] objArrD = d();
                    if (objArrD != null) {
                        return Arrays.copyOfRange(objArrD, f(), e(), objArr.getClass());
                    }
                    if (objArr.length != 0) {
                        objArr = Arrays.copyOf(objArr, 0);
                    }
                    objArr = Arrays.copyOf(objArr, size);
                } else if (objArr.length > size) {
                    objArr[size] = null;
                }
                c(objArr);
                return objArr;
            case 1:
                objArr.getClass();
                int size2 = size();
                int length = objArr.length;
                if (length < size2) {
                    Object[] objArrL = l();
                    if (objArrL != null) {
                        return Arrays.copyOfRange(objArrL, o(), p(), objArr.getClass());
                    }
                    if (length != 0) {
                        objArr = Arrays.copyOf(objArr, 0);
                    }
                    objArr = Arrays.copyOf(objArr, size2);
                } else if (length > size2) {
                    objArr[size2] = null;
                }
                w(objArr);
                return objArr;
            case 2:
                objArr.getClass();
                int size3 = size();
                if (objArr.length < size3) {
                    Object[] objArrT = t();
                    if (objArrT != null) {
                        return Arrays.copyOfRange(objArrT, k(), g(), objArr.getClass());
                    }
                    if (objArr.length != 0) {
                        objArr = Arrays.copyOf(objArr, 0);
                    }
                    objArr = Arrays.copyOf(objArr, size3);
                } else if (objArr.length > size3) {
                    objArr[size3] = null;
                }
                i(objArr);
                return objArr;
            default:
                objArr.getClass();
                int size4 = size();
                int length2 = objArr.length;
                if (length2 < size4) {
                    Object[] objArrT2 = t();
                    if (objArrT2 != null) {
                        return Arrays.copyOfRange(objArrT2, o(), k(), objArr.getClass());
                    }
                    if (length2 != 0) {
                        objArr = Arrays.copyOf(objArr, 0);
                    }
                    objArr = Arrays.copyOf(objArr, size4);
                } else if (length2 > size4) {
                    objArr[size4] = null;
                }
                i(objArr);
                return objArr;
        }
    }

    public abstract int w(Object[] objArr);

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        switch (this.a) {
            case 0:
                return toArray(b);
            case 1:
                return toArray(c);
            case 2:
                return toArray(d);
            default:
                return toArray(e);
        }
    }
}
