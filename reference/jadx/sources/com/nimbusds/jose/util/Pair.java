package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.jcip.Immutable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class Pair<L, R> {
    private final L left;
    private final R right;

    public Pair(L l, R r) {
        this.left = l;
        this.right = r;
    }

    public static <L, R> Pair<L, R> of(L l, R r) {
        return new Pair<>(l, r);
    }

    public L getLeft() {
        return this.left;
    }

    public R getRight() {
        return this.right;
    }
}
