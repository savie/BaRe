package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aq2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ aq2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0188  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.a) {
            case 0:
                bq2 bq2Var = (bq2) this.b;
                bq2Var.t = null;
                bq2Var.drawableStateChanged();
                break;
            case 1:
                ky4 ky4Var = (ky4) this.b;
                bq2 bq2Var2 = ky4Var.c;
                if (bq2Var2 != null && bq2Var2.isAttachedToWindow() && ky4Var.c.getCount() > ky4Var.c.getChildCount() && ky4Var.c.getChildCount() <= ky4Var.x) {
                    ky4Var.R.setInputMethodMode(2);
                    ky4Var.b();
                    break;
                }
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) this.b;
                ng6 ng6Var = recyclerView.g0;
                if (ng6Var != null) {
                    cf2 cf2Var = (cf2) ng6Var;
                    long j = cf2Var.d;
                    ArrayList<fh6> arrayList = cf2Var.h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = cf2Var.j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = cf2Var.k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = cf2Var.i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
                        z = false;
                    } else {
                        for (fh6 fh6Var : arrayList) {
                            View view = fh6Var.a;
                            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                            cf2Var.q.add(fh6Var);
                            viewPropertyAnimatorAnimate.setDuration(j).alpha(0.0f).setListener(new ve2(cf2Var, fh6Var, view, viewPropertyAnimatorAnimate)).start();
                            arrayList = arrayList;
                            zIsEmpty = zIsEmpty;
                        }
                        boolean z2 = zIsEmpty;
                        arrayList.clear();
                        if (!zIsEmpty2) {
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.addAll(arrayList2);
                            cf2Var.m.add(arrayList5);
                            arrayList2.clear();
                            te2 te2Var = new te2(0, cf2Var, arrayList5);
                            if (z2) {
                                te2Var.run();
                            } else {
                                View view2 = ((bf2) arrayList5.get(0)).a.a;
                                WeakHashMap weakHashMap = dl8.a;
                                view2.postOnAnimationDelayed(te2Var, j);
                            }
                        }
                        if (!zIsEmpty3) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList3);
                            cf2Var.n.add(arrayList6);
                            arrayList3.clear();
                            ue2 ue2Var = new ue2(0, cf2Var, arrayList6);
                            if (z2) {
                                ue2Var.run();
                            } else {
                                View view3 = ((af2) arrayList6.get(0)).a.a;
                                WeakHashMap weakHashMap2 = dl8.a;
                                view3.postOnAnimationDelayed(ue2Var, j);
                            }
                        }
                        if (zIsEmpty4) {
                            z = false;
                        } else {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList4);
                            cf2Var.l.add(arrayList7);
                            arrayList4.clear();
                            i8 i8Var = new i8(3, cf2Var, arrayList7);
                            if (z2 && zIsEmpty2 && zIsEmpty3) {
                                i8Var.run();
                                z = false;
                            } else {
                                if (z2) {
                                    j = 0;
                                }
                                long jMax = Math.max(!zIsEmpty2 ? cf2Var.e : 0L, zIsEmpty3 ? 0L : cf2Var.f) + j;
                                z = false;
                                View view4 = ((fh6) arrayList7.get(0)).a;
                                WeakHashMap weakHashMap3 = dl8.a;
                                view4.postOnAnimationDelayed(i8Var, jMax);
                            }
                        }
                    }
                } else {
                    z = false;
                }
                recyclerView.D0 = z;
                break;
            case 3:
                ((StaggeredGridLayoutManager) this.b).Q0();
                break;
            case 4:
                dr8 dr8Var = (dr8) this.b;
                while (!dr8Var.c && !Thread.interrupted()) {
                    try {
                        dr8Var.f.write((ByteBuffer) dr8Var.a.take());
                    } catch (IOException e) {
                        br8 br8Var = new br8("IO Exception", e);
                        ar8 ar8Var = dr8Var.e;
                        ar8Var.c.n(br8Var);
                        if (ar8Var.a == 3) {
                            ar8Var.a();
                        }
                        ar8Var.b();
                        return;
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
                for (int i = 0; i < dr8Var.a.size(); i++) {
                    dr8Var.f.write((ByteBuffer) dr8Var.a.take());
                    break;
                }
                break;
            default:
                oa9 oa9Var = (oa9) this.b;
                dq0 dq0Var = oa9Var.d;
                dq0Var.r(0);
                yq0 yq0Var = le9.k;
                dq0Var.q(24, yq0Var);
                oa9Var.c(yq0Var);
                break;
        }
    }
}
