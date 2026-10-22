package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y94 {
    public final ArrayList a;

    public y94(int i) {
        switch (i) {
            case 1:
                this.a = new ArrayList();
                break;
            default:
                this.a = new ArrayList();
                break;
        }
    }

    public synchronized tl6 a(Class cls) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            ul6 ul6Var = (ul6) this.a.get(i);
            if (ul6Var.a.isAssignableFrom(cls)) {
                return ul6Var.b;
            }
        }
        return null;
    }
}
