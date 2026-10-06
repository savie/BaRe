package com.nimbusds.jose.jwk;

import defpackage.c6;
import defpackage.y5;
import java.text.ParseException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum KeyOperation {
    SIGN("sign"),
    VERIFY("verify"),
    ENCRYPT("encrypt"),
    DECRYPT("decrypt"),
    WRAP_KEY("wrapKey"),
    UNWRAP_KEY("unwrapKey"),
    DERIVE_KEY("deriveKey"),
    DERIVE_BITS("deriveBits");

    private final String identifier;

    KeyOperation(String str) {
        if (str != null) {
            this.identifier = str;
        } else {
            c6.f("The key operation identifier must not be null");
            throw null;
        }
    }

    public static Set<KeyOperation> parse(List<String> list) throws ParseException {
        KeyOperation keyOperation;
        if (list == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : list) {
            if (str != null) {
                KeyOperation[] keyOperationArrValues = values();
                int length = keyOperationArrValues.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        keyOperation = null;
                        break;
                    }
                    keyOperation = keyOperationArrValues[i];
                    if (str.equals(keyOperation.identifier())) {
                        break;
                    }
                    i++;
                }
                if (keyOperation == null) {
                    y5.e(0, "Invalid JWK operation: ".concat(str));
                    return null;
                }
                linkedHashSet.add(keyOperation);
            }
        }
        return linkedHashSet;
    }

    public String identifier() {
        return this.identifier;
    }

    @Override // java.lang.Enum
    public String toString() {
        return identifier();
    }
}
