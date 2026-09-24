package com.nimbusds.jose.jwk;

import com.nimbusds.jose.JOSEException;
import java.security.Key;
import java.security.KeyPair;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyConverter {
    public static List<Key> toJavaKeys(List<JWK> list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        LinkedList linkedList = new LinkedList();
        for (Object obj : list) {
            try {
                if (obj instanceof AsymmetricJWK) {
                    KeyPair keyPair = ((AsymmetricJWK) obj).toKeyPair();
                    linkedList.add(keyPair.getPublic());
                    if (keyPair.getPrivate() != null) {
                        linkedList.add(keyPair.getPrivate());
                    }
                } else if (obj instanceof SecretJWK) {
                    linkedList.add(((SecretJWK) obj).toSecretKey());
                }
            } catch (JOSEException unused) {
            }
        }
        return linkedList;
    }
}
