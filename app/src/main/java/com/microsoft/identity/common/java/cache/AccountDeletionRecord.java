package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.java.dto.AccountRecord;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AccountDeletionRecord implements List<AccountRecord> {
    private final List<AccountRecord> mAccountRecordList;

    public AccountDeletionRecord(ArrayList arrayList) {
        if (arrayList == null) {
            this.mAccountRecordList = new ArrayList();
        } else {
            this.mAccountRecordList = arrayList;
        }
    }

    @Override // java.util.List
    public final void add(int i, AccountRecord accountRecord) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends AccountRecord> collection) {
        if (collection == null) {
            throw new NullPointerException("c is marked non-null but is null");
        }
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return this.mAccountRecordList.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return this.mAccountRecordList.containsAll(collection);
    }

    @Override // java.util.List
    public final AccountRecord get(int i) {
        return this.mAccountRecordList.get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.mAccountRecordList.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.mAccountRecordList.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator<AccountRecord> iterator() {
        return this.mAccountRecordList.iterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.mAccountRecordList.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator<AccountRecord> listIterator() {
        return this.mAccountRecordList.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List
    public final AccountRecord set(int i, AccountRecord accountRecord) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.mAccountRecordList.size();
    }

    @Override // java.util.List
    public final List<AccountRecord> subList(int i, int i2) {
        return this.mAccountRecordList.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return this.mAccountRecordList.toArray();
    }

    @Override // java.util.List
    public final ListIterator<AccountRecord> listIterator(int i) {
        return this.mAccountRecordList.listIterator(i);
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.mAccountRecordList.toArray(tArr);
    }

    @Override // java.util.List
    public final AccountRecord remove(int i) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Result is read-only");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection<? extends AccountRecord> collection) {
        throw new UnsupportedOperationException("Result is read-only");
    }
}
