package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class CipherHelper {
    public static Cipher getInstance(String str, Provider provider) throws NoSuchPaddingException, NoSuchAlgorithmException {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
