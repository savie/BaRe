package com.nimbusds.jose.crypto.opts;

import com.nimbusds.jose.JWSSignerOption;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OptionUtils {
    public static <T extends JWSSignerOption> boolean optionIsPresent(Set<JWSSignerOption> set, Class<T> cls) {
        if (set != null && !set.isEmpty()) {
            Iterator<JWSSignerOption> it = set.iterator();
            while (it.hasNext()) {
                if (it.next().getClass().isAssignableFrom(cls)) {
                    return true;
                }
            }
        }
        return false;
    }
}
