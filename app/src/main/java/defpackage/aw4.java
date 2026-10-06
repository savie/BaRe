package defpackage;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class aw4 implements Iterator {
    public int b;
    public Map.Entry c;
    public final /* synthetic */ AbstractMap e;
    public final /* synthetic */ int a = 0;
    public Map.Entry d = null;

    public aw4(iw4 iw4Var) {
        this.e = iw4Var;
        this.c = iw4Var.f.d;
        this.b = iw4Var.e;
    }

    public bw4 a() {
        bw4 bw4Var = (bw4) this.c;
        cw4 cw4Var = (cw4) this.e;
        if (bw4Var == cw4Var.c) {
            m0.d();
            return null;
        }
        if (cw4Var.e != this.b) {
            q.a();
            return null;
        }
        this.c = bw4Var.d;
        this.d = bw4Var;
        return bw4Var;
    }

    public hw4 b() {
        hw4 hw4Var = (hw4) this.c;
        iw4 iw4Var = (iw4) this.e;
        if (hw4Var == iw4Var.f) {
            m0.d();
            return null;
        }
        if (iw4Var.e != this.b) {
            q.a();
            return null;
        }
        this.c = hw4Var.d;
        this.d = hw4Var;
        return hw4Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        AbstractMap abstractMap = this.e;
        switch (i) {
            case 0:
                return ((bw4) this.c) != ((cw4) abstractMap).c;
            default:
                return ((hw4) this.c) != ((iw4) abstractMap).f;
        }
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.a) {
            case 0:
                return a();
            default:
                return b();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.a;
        AbstractMap abstractMap = this.e;
        switch (i) {
            case 0:
                cw4 cw4Var = (cw4) abstractMap;
                bw4 bw4Var = (bw4) this.d;
                if (bw4Var == null) {
                    g84.c();
                } else {
                    cw4Var.d(bw4Var, true);
                    this.d = null;
                    this.b = cw4Var.e;
                }
                break;
            default:
                iw4 iw4Var = (iw4) abstractMap;
                hw4 hw4Var = (hw4) this.d;
                if (hw4Var == null) {
                    g84.c();
                } else {
                    iw4Var.d(hw4Var, true);
                    this.d = null;
                    this.b = iw4Var.e;
                }
                break;
        }
    }

    public aw4(cw4 cw4Var) {
        this.e = cw4Var;
        this.c = cw4Var.c.d;
        this.b = cw4Var.e;
    }
}
