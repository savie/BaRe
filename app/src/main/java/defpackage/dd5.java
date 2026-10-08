package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd5 implements hy5, n14 {
    public final Path a = new Path();
    public final Path b = new Path();
    public final Path c = new Path();
    public final ArrayList d = new ArrayList();
    public final cd5 e;

    public dd5(cd5 cd5Var) {
        this.e = cd5Var;
    }

    @Override // defpackage.hy5
    public final Path a() {
        Path path = this.c;
        path.reset();
        cd5 cd5Var = this.e;
        if (!cd5Var.b) {
            int iA = dj7.A(cd5Var.a);
            if (iA == 0) {
                int i = 0;
                while (true) {
                    ArrayList arrayList = this.d;
                    if (i >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((hy5) arrayList.get(i)).a());
                    i++;
                }
            } else {
                if (iA == 1) {
                    b(Path.Op.UNION);
                    return path;
                }
                if (iA == 2) {
                    b(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (iA == 3) {
                    b(Path.Op.INTERSECT);
                    return path;
                }
                if (iA == 4) {
                    b(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }

    public final void b(Path.Op op) {
        Path path = this.b;
        path.reset();
        Path path2 = this.a;
        path2.reset();
        ArrayList arrayList = this.d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            hy5 hy5Var = (hy5) arrayList.get(size);
            if (hy5Var instanceof iu1) {
                iu1 iu1Var = (iu1) hy5Var;
                ArrayList arrayList2 = (ArrayList) iu1Var.g();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path pathA = ((hy5) arrayList2.get(size2)).a();
                    Matrix matrixE = iu1Var.c;
                    k98 k98Var = iu1Var.k;
                    if (k98Var != null) {
                        matrixE = k98Var.e();
                    } else {
                        matrixE.reset();
                    }
                    pathA.transform(matrixE);
                    path.addPath(pathA);
                }
            } else {
                path.addPath(hy5Var.a());
            }
        }
        int i = 0;
        hy5 hy5Var2 = (hy5) arrayList.get(0);
        if (hy5Var2 instanceof iu1) {
            iu1 iu1Var2 = (iu1) hy5Var2;
            List listG = iu1Var2.g();
            while (true) {
                ArrayList arrayList3 = (ArrayList) listG;
                if (i >= arrayList3.size()) {
                    break;
                }
                Path pathA2 = ((hy5) arrayList3.get(i)).a();
                Matrix matrixE2 = iu1Var2.c;
                k98 k98Var2 = iu1Var2.k;
                if (k98Var2 != null) {
                    matrixE2 = k98Var2.e();
                } else {
                    matrixE2.reset();
                }
                pathA2.transform(matrixE2);
                path2.addPath(pathA2);
                i++;
            }
        } else {
            path2.set(hy5Var2.a());
        }
        this.c.op(path2, path, op);
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.d;
            if (i >= arrayList.size()) {
                return;
            }
            ((hy5) arrayList.get(i)).c(list, list2);
            i++;
        }
    }

    @Override // defpackage.n14
    public final void g(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            gu1 gu1Var = (gu1) listIterator.previous();
            if (gu1Var instanceof hy5) {
                this.d.add((hy5) gu1Var);
                listIterator.remove();
            }
        }
    }
}
