package defpackage;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class lp9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;
    public static final Map e;
    public static final Map f;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.AesSivKey");
        a = new ht9(dp9.class, new lk());
        b = new ft9(d2aVarC, new hi9(4));
        int i = 26;
        c = new fs9(to9.class, new ma2(i));
        d = new ds9(d2aVarC, new cz4(i));
        HashMap map = new HashMap();
        cp9 cp9Var = cp9.d;
        r0a r0aVar = r0a.RAW;
        map.put(cp9Var, r0aVar);
        cp9 cp9Var2 = cp9.b;
        r0a r0aVar2 = r0a.TINK;
        map.put(cp9Var2, r0aVar2);
        cp9 cp9Var3 = cp9.c;
        r0a r0aVar3 = r0a.CRUNCHY;
        map.put(cp9Var3, r0aVar3);
        e = Collections.unmodifiableMap(map);
        EnumMap enumMap = new EnumMap(r0a.class);
        enumMap.put(r0aVar, cp9Var);
        enumMap.put(r0aVar2, cp9Var2);
        enumMap.put(r0aVar3, cp9Var3);
        enumMap.put(r0a.LEGACY, cp9Var3);
        f = Collections.unmodifiableMap(enumMap);
    }

    public static cp9 a(r0a r0aVar) throws GeneralSecurityException {
        Map map = f;
        if (map.containsKey(r0aVar)) {
            return (cp9) map.get(r0aVar);
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }
}
