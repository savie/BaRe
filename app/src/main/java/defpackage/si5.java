package defpackage;

import android.os.FileObserver;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class si5 extends FileObserver {
    public static final Object b = new Object();
    public static final LinkedHashMap c = new LinkedHashMap();
    public final CopyOnWriteArrayList a;

    public si5(String str) {
        super(str, 128);
        this.a = new CopyOnWriteArrayList();
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((mt3) it.next()).invoke(str);
        }
    }
}
