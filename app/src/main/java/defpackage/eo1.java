package defpackage;

import android.content.ComponentName;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eo1 implements Runnable {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ eo1(go1 go1Var, int i, i9 i9Var) {
        this.c = go1Var;
        this.b = i;
        this.d = i9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                go1 go1Var = (go1) obj2;
                Serializable serializable = ((i9) obj).a;
                String str = (String) go1Var.a.get(Integer.valueOf(i2));
                if (str != null) {
                    r9 r9Var = (r9) go1Var.e.get(str);
                    if ((r9Var != null ? r9Var.a : null) != null) {
                        h9 h9Var = r9Var.a;
                        if (go1Var.d.remove(str)) {
                            h9Var.h(serializable);
                        }
                    } else {
                        go1Var.g.remove(str);
                        go1Var.f.put(str, serializable);
                    }
                    break;
                }
                break;
            default:
                iq6 iq6Var = (iq6) obj2;
                ComponentName componentName = (ComponentName) obj;
                componentName.getClassName();
                iq6Var.j(-1, componentName);
                iq6Var.f(i2);
                break;
        }
    }

    public /* synthetic */ eo1(iq6 iq6Var, ComponentName componentName, int i) {
        this.c = iq6Var;
        this.d = componentName;
        this.b = i;
    }
}
