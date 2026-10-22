package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iu2 implements Runnable {
    public final ArrayList a;
    public final int b;

    public iu2(List list, int i, Throwable th) {
        yc9.f(list, "initCallbacks cannot be null");
        this.a = new ArrayList(list);
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        if (this.b != 1) {
            while (i < size) {
                ((hu2) arrayList.get(i)).a();
                i++;
            }
        } else {
            while (i < size) {
                ((hu2) arrayList.get(i)).b();
                i++;
            }
        }
    }
}
