package com.nimbusds.jose;

import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyLengthException extends KeyException {
    private final Algorithm alg;
    private final int expectedLength;

    /* JADX WARN: Illegal instructions before constructor call */
    public KeyLengthException(int i, Algorithm algorithm) {
        String str;
        String strH = i > 0 ? xs1.h(i, "The expected key length is ", " bits") : "Unexpected key length";
        if (algorithm != null) {
            str = " (for " + algorithm + " algorithm)";
        } else {
            str = "";
        }
        super(strH.concat(str));
        this.expectedLength = i;
        this.alg = algorithm;
    }

    public Algorithm getAlgorithm() {
        return this.alg;
    }

    public int getExpectedKeyLength() {
        return this.expectedLength;
    }

    public KeyLengthException(Algorithm algorithm) {
        this(0, algorithm);
    }

    public KeyLengthException(String str) {
        super(str);
        this.expectedLength = 0;
        this.alg = null;
    }
}
