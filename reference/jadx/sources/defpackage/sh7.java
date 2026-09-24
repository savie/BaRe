package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sh7 extends an6 implements qt3 {
    public Object b;
    public Iterator c;
    public int d;
    public int e;
    public int f;
    public /* synthetic */ Object k;
    public final /* synthetic */ int n;
    public final /* synthetic */ int p;
    public final /* synthetic */ Iterator q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sh7(int i, int i2, Iterator it, jv1 jv1Var) {
        super(2, jv1Var);
        this.n = i;
        this.p = i2;
        this.q = it;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        sh7 sh7Var = new sh7(this.n, this.p, this.q, jv1Var);
        sh7Var.k = obj;
        return sh7Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((sh7) create((g77) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008c  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:44:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:46:0x0100  */
    /* JADX WARN: Code duplicated, block: B:48:0x0107  */
    /* JADX WARN: Code duplicated, block: B:51:0x010c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0111  */
    /* JADX WARN: Code duplicated, block: B:62:0x0146  */
    /* JADX WARN: Code duplicated, block: B:64:0x015b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0161  */
    /* JADX WARN: Code duplicated, block: B:70:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x013a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0123 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x011f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x009e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0086 A[SYNTHETIC] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i;
        int i2;
        int i3;
        Iterator it;
        vn6 vn6Var;
        ArrayList arrayList;
        int i4;
        Iterator it2;
        int i5;
        Object next;
        int i6;
        Object[] objArr;
        int i7;
        vn6 vn6Var2;
        Object next2;
        boolean z;
        int i8;
        Object[] array;
        g77 g77Var = (g77) this.k;
        int i9 = this.f;
        int i10 = this.p;
        boolean z2 = true;
        int i11 = this.n;
        yx1 yx1Var = yx1.a;
        if (i9 == 0) {
            lg7.H(obj);
            int i12 = i11 <= 1024 ? i11 : 1024;
            i = i10 - i11;
            Iterator it3 = this.q;
            if (i >= 0) {
                arrayList = new ArrayList(i12);
                i4 = i12;
                it2 = it3;
                i5 = 0;
                while (it2.hasNext()) {
                    next = it2.next();
                    if (i5 > 0) {
                        i5--;
                    } else {
                        arrayList.add(next);
                        if (arrayList.size() == i11) {
                            this.k = g77Var;
                            this.b = arrayList;
                            this.c = it2;
                            this.d = i4;
                            this.e = i;
                            this.f = 1;
                            g77Var.d(arrayList, this);
                            return yx1Var;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.k = null;
                    this.b = null;
                    this.c = null;
                    this.d = i4;
                    this.e = i;
                    this.f = 2;
                    g77Var.d(arrayList, this);
                    return yx1Var;
                }
            } else {
                vn6 vn6Var3 = new vn6(0, new Object[i12]);
                i2 = i12;
                i3 = i;
                it = it3;
                vn6Var = vn6Var3;
                while (true) {
                    i6 = vn6Var.b;
                    objArr = vn6Var.a;
                    if (it.hasNext()) {
                        i7 = i2;
                        vn6Var2 = vn6Var;
                        break;
                    }
                    next2 = it.next();
                    z = z2;
                    if (vn6Var.d() != i6) {
                        l0.e("ring buffer is full");
                        return null;
                    }
                    int i13 = vn6Var.c;
                    int i14 = vn6Var.d;
                    objArr[(i13 + i14) % i6] = next2;
                    vn6Var.d = i14 + 1;
                    if (vn6Var.d() != i6) {
                        if (vn6Var.d < i11) {
                            ArrayList arrayList2 = new ArrayList(vn6Var);
                            this.k = g77Var;
                            this.b = vn6Var;
                            this.c = it;
                            this.d = i2;
                            this.e = i3;
                            this.f = 3;
                            g77Var.d(arrayList2, this);
                            return yx1Var;
                        }
                        i8 = i6 + (i6 >> 1) + 1;
                        if (i8 > i11) {
                            i8 = i11;
                        }
                        if (vn6Var.c == 0) {
                            array = Arrays.copyOf(objArr, i8);
                        } else {
                            array = vn6Var.toArray(new Object[i8]);
                        }
                        vn6Var = new vn6(vn6Var.d, array);
                    }
                    z2 = z;
                }
                if (vn6Var2.d > i10) {
                    ArrayList arrayList3 = new ArrayList(vn6Var2);
                    this.k = g77Var;
                    this.b = vn6Var2;
                    this.c = null;
                    this.d = i7;
                    this.e = i3;
                    this.f = 4;
                    g77Var.d(arrayList3, this);
                    return yx1Var;
                }
                if (!vn6Var2.isEmpty()) {
                    this.k = null;
                    this.b = null;
                    this.c = null;
                    this.d = i7;
                    this.e = i3;
                    this.f = 5;
                    g77Var.d(vn6Var2, this);
                    return yx1Var;
                }
            }
        } else if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    i3 = this.e;
                    i2 = this.d;
                    it = this.c;
                    vn6Var = (vn6) this.b;
                    lg7.H(obj);
                    vn6Var.e(i10);
                    while (true) {
                        i6 = vn6Var.b;
                        objArr = vn6Var.a;
                        if (it.hasNext()) {
                            i7 = i2;
                            vn6Var2 = vn6Var;
                            break;
                        }
                        next2 = it.next();
                        z = z2;
                        if (vn6Var.d() != i6) {
                            l0.e("ring buffer is full");
                            return null;
                        }
                        int i15 = vn6Var.c;
                        int i16 = vn6Var.d;
                        objArr[(i15 + i16) % i6] = next2;
                        vn6Var.d = i16 + 1;
                        if (vn6Var.d() != i6) {
                            if (vn6Var.d < i11) {
                                ArrayList arrayList4 = new ArrayList(vn6Var);
                                this.k = g77Var;
                                this.b = vn6Var;
                                this.c = it;
                                this.d = i2;
                                this.e = i3;
                                this.f = 3;
                                g77Var.d(arrayList4, this);
                                return yx1Var;
                            }
                            i8 = i6 + (i6 >> 1) + 1;
                            if (i8 > i11) {
                                i8 = i11;
                            }
                            if (vn6Var.c == 0) {
                                array = Arrays.copyOf(objArr, i8);
                            } else {
                                array = vn6Var.toArray(new Object[i8]);
                            }
                            vn6Var = new vn6(vn6Var.d, array);
                        }
                        z2 = z;
                    }
                } else if (i9 == 4) {
                    i3 = this.e;
                    i7 = this.d;
                    vn6Var2 = (vn6) this.b;
                    lg7.H(obj);
                    vn6Var2.e(i10);
                } else {
                    if (i9 != 5) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                }
                if (vn6Var2.d > i10) {
                    ArrayList arrayList5 = new ArrayList(vn6Var2);
                    this.k = g77Var;
                    this.b = vn6Var2;
                    this.c = null;
                    this.d = i7;
                    this.e = i3;
                    this.f = 4;
                    g77Var.d(arrayList5, this);
                    return yx1Var;
                }
                if (!vn6Var2.isEmpty()) {
                    this.k = null;
                    this.b = null;
                    this.c = null;
                    this.d = i7;
                    this.e = i3;
                    this.f = 5;
                    g77Var.d(vn6Var2, this);
                    return yx1Var;
                }
            }
            lg7.H(obj);
        } else {
            i5 = this.e;
            i4 = this.d;
            it2 = this.c;
            lg7.H(obj);
            arrayList = new ArrayList(i11);
            i = i5;
            while (it2.hasNext()) {
                next = it2.next();
                if (i5 > 0) {
                    i5--;
                } else {
                    arrayList.add(next);
                    if (arrayList.size() == i11) {
                        this.k = g77Var;
                        this.b = arrayList;
                        this.c = it2;
                        this.d = i4;
                        this.e = i;
                        this.f = 1;
                        g77Var.d(arrayList, this);
                        return yx1Var;
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                this.k = null;
                this.b = null;
                this.c = null;
                this.d = i4;
                this.e = i;
                this.f = 2;
                g77Var.d(arrayList, this);
                return yx1Var;
            }
        }
        return be8.a;
    }
}
