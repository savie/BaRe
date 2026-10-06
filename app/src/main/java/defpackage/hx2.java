package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hx2 {
    public abstract void bind(nw6 nw6Var, Object obj);

    public abstract String createQuery();

    public final void insert(fw6 fw6Var, Object[] objArr) {
        fw6Var.getClass();
        if (objArr == null) {
            return;
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        int i = 0;
        while (i < objArr.length) {
            try {
                int i2 = i + 1;
                try {
                    Object obj = objArr[i];
                    if (obj != null) {
                        bind(nw6VarP0, obj);
                        nw6VarP0.i0();
                        nw6VarP0.reset();
                    }
                    i = i2;
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw new NoSuchElementException(e.getMessage());
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(nw6VarP0, th);
                    throw th2;
                }
            }
        }
        k55.d(nw6VarP0, null);
    }

    public final long insertAndReturnId(fw6 fw6Var, Object obj) {
        fw6Var.getClass();
        if (obj == null) {
            return -1L;
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            bind(nw6VarP0, obj);
            nw6VarP0.i0();
            k55.d(nw6VarP0, null);
            return sz8.t(fw6Var);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final long[] insertAndReturnIdsArray(fw6 fw6Var, Collection<Object> collection) {
        long jT;
        fw6Var.getClass();
        if (collection == null) {
            return new long[0];
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            int size = collection.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                Object objP0 = el1.P0(i, collection);
                if (objP0 != null) {
                    bind(nw6VarP0, objP0);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    jT = sz8.t(fw6Var);
                } else {
                    jT = -1;
                }
                jArr[i] = jT;
            }
            k55.d(nw6VarP0, null);
            return jArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(fw6 fw6Var, Collection<Object> collection) {
        long jT;
        fw6Var.getClass();
        if (collection == null) {
            return new Long[0];
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            int size = collection.size();
            Long[] lArr = new Long[size];
            for (int i = 0; i < size; i++) {
                Object objP0 = el1.P0(i, collection);
                if (objP0 != null) {
                    bind(nw6VarP0, objP0);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    jT = sz8.t(fw6Var);
                } else {
                    jT = -1;
                }
                lArr[i] = Long.valueOf(jT);
            }
            k55.d(nw6VarP0, null);
            return lArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final List<Long> insertAndReturnIdsList(fw6 fw6Var, Collection<Object> collection) {
        fw6Var.getClass();
        if (collection == null) {
            return ov2.a;
        }
        ww4 ww4VarP = nc8.p();
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            for (Object obj : collection) {
                if (obj != null) {
                    bind(nw6VarP0, obj);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    ww4VarP.add(Long.valueOf(sz8.t(fw6Var)));
                } else {
                    ww4VarP.add(-1L);
                }
            }
            k55.d(nw6VarP0, null);
            return nc8.h(ww4VarP);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final void insert(fw6 fw6Var, Object obj) {
        fw6Var.getClass();
        if (obj == null) {
            return;
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            bind(nw6VarP0, obj);
            nw6VarP0.i0();
            k55.d(nw6VarP0, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final void insert(fw6 fw6Var, Iterable<Object> iterable) {
        fw6Var.getClass();
        if (iterable == null) {
            return;
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    bind(nw6VarP0, obj);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                }
            }
            k55.d(nw6VarP0, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final long[] insertAndReturnIdsArray(fw6 fw6Var, Object[] objArr) {
        long jT;
        fw6Var.getClass();
        if (objArr == null) {
            return new long[0];
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            int length = objArr.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj != null) {
                    bind(nw6VarP0, obj);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    jT = sz8.t(fw6Var);
                } else {
                    jT = -1;
                }
                jArr[i] = jT;
            }
            k55.d(nw6VarP0, null);
            return jArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(fw6 fw6Var, Object[] objArr) {
        long jT;
        fw6Var.getClass();
        if (objArr == null) {
            return new Long[0];
        }
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            int length = objArr.length;
            Long[] lArr = new Long[length];
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj != null) {
                    bind(nw6VarP0, obj);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    jT = sz8.t(fw6Var);
                } else {
                    jT = -1;
                }
                lArr[i] = Long.valueOf(jT);
            }
            k55.d(nw6VarP0, null);
            return lArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public final List<Long> insertAndReturnIdsList(fw6 fw6Var, Object[] objArr) {
        fw6Var.getClass();
        if (objArr == null) {
            return ov2.a;
        }
        ww4 ww4VarP = nc8.p();
        nw6 nw6VarP0 = fw6Var.p0(createQuery());
        try {
            for (Object obj : objArr) {
                if (obj != null) {
                    bind(nw6VarP0, obj);
                    nw6VarP0.i0();
                    nw6VarP0.reset();
                    ww4VarP.add(Long.valueOf(sz8.t(fw6Var)));
                } else {
                    ww4VarP.add(-1L);
                }
            }
            k55.d(nw6VarP0, null);
            return nc8.h(ww4VarP);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }
}
