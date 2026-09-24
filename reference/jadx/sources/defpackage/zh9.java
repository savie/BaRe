package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zh9 extends lf9 implements RandomAccess, ai9 {
    public final List b;

    static {
        new zh9();
    }

    public zh9(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.b = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        c();
        this.b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.lf9, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        c();
        if (collection instanceof ai9) {
            collection = ((ai9) collection).zzg();
        }
        boolean zAddAll = this.b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // defpackage.lf9, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        List list = this.b;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof hg9) {
            hg9 hg9Var = (hg9) obj;
            String str = hg9Var.e() == 0 ? "" : new String(hg9Var.b, 0, hg9Var.e(), vh9.a);
            byte[] bArr = hg9Var.b;
            int iE = hg9Var.e();
            om9.a.getClass();
            if (nh4.t(bArr, 0, iE)) {
                list.set(i, str);
            }
            return str;
        }
        byte[] bArr2 = (byte[]) obj;
        String str2 = new String(bArr2, vh9.a);
        nh4 nh4Var = om9.a;
        int length = bArr2.length;
        nh4Var.getClass();
        if (nh4.t(bArr2, 0, length)) {
            list.set(i, str2);
        }
        return str2;
    }

    @Override // defpackage.lf9, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        c();
        Object objRemove = this.b.remove(i);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof hg9)) {
            return new String((byte[]) objRemove, vh9.a);
        }
        hg9 hg9Var = (hg9) objRemove;
        return hg9Var.e() == 0 ? "" : new String(hg9Var.b, 0, hg9Var.e(), vh9.a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        c();
        Object obj2 = this.b.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof hg9)) {
            return new String((byte[]) obj2, vh9.a);
        }
        hg9 hg9Var = (hg9) obj2;
        return hg9Var.e() == 0 ? "" : new String(hg9Var.b, 0, hg9Var.e(), vh9.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b.size();
    }

    @Override // defpackage.oh9
    public final oh9 zzd(int i) {
        List list = this.b;
        if (i < list.size()) {
            c6.b();
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(list);
        return new zh9(arrayList);
    }

    @Override // defpackage.ai9
    public final ai9 zze() {
        return this.a ? new ql9(this) : this;
    }

    @Override // defpackage.ai9
    public final List zzg() {
        return Collections.unmodifiableList(this.b);
    }

    public zh9(ArrayList arrayList) {
        super(true);
        this.b = arrayList;
    }

    public zh9() {
        super(false);
        this.b = Collections.EMPTY_LIST;
    }

    @Override // defpackage.lf9, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.b.size(), collection);
    }
}
