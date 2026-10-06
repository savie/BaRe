package com.nimbusds.jose;

import defpackage.fz5;
import java.security.Key;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyTypeException extends KeyException {
    public KeyTypeException(Class<? extends Key> cls, Class<?>... clsArr) {
        super("Invalid key: Must be an instance of " + cls + " and implement all of the following interfaces " + Arrays.toString(clsArr));
    }

    public KeyTypeException(Class<? extends Key> cls) {
        super(fz5.k(cls, "Invalid key: Must be an instance of "));
    }
}
