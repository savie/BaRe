package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.jcip.NotThreadSafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class Container<T> {
    private T item;

    public Container(T t) {
        this.item = t;
    }

    public T get() {
        return this.item;
    }

    public void set(T t) {
        this.item = t;
    }

    public Container() {
    }
}
