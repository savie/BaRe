package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ni2 implements ki2 {
    public final pr8 d;
    public int f;
    public int g;
    public pr8 a = null;
    public boolean b = false;
    public boolean c = false;
    public int e = 1;
    public int h = 1;
    public rl2 i = null;
    public boolean j = false;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    public ni2(pr8 pr8Var) {
        this.d = pr8Var;
    }

    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        ArrayList<ni2> arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((ni2) it.next()).j) {
                return;
            }
        }
        this.c = true;
        pr8 pr8Var = this.a;
        if (pr8Var != null) {
            pr8Var.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        ni2 ni2Var = null;
        int i = 0;
        for (ni2 ni2Var2 : arrayList) {
            if (!(ni2Var2 instanceof rl2)) {
                i++;
                ni2Var = ni2Var2;
            }
        }
        if (ni2Var != null && i == 1 && ni2Var.j) {
            rl2 rl2Var = this.i;
            if (rl2Var != null) {
                if (!rl2Var.j) {
                    return;
                } else {
                    this.f = this.h * rl2Var.g;
                }
            }
            d(ni2Var.g + this.f);
        }
        pr8 pr8Var2 = this.a;
        if (pr8Var2 != null) {
            pr8Var2.a(this);
        }
    }

    public final void b(pr8 pr8Var) {
        this.k.add(pr8Var);
        if (this.j) {
            pr8Var.a(pr8Var);
        }
    }

    public final void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (ki2 ki2Var : this.k) {
            ki2Var.a(ki2Var);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.h0);
        sb.append(":");
        switch (this.e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
