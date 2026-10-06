package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class po9 {
    public static final Logger a = Logger.getLogger(po9.class.getName());
    public static final AtomicBoolean b = new AtomicBoolean(false);

    public static boolean a() {
        return b.get();
    }
}
