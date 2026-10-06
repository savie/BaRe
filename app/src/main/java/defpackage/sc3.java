package defpackage;

import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sc3 extends u35 {
    public final dt Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;

    /* JADX WARN: Illegal instructions before constructor call */
    public sc3(dt dtVar) {
        View viewInflate = dtVar.getLayoutInflater().inflate(R.layout.filter_bottom_dialog, (ViewGroup) null, false);
        int i = R.id.btn_apply;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_apply);
        if (materialButton != null) {
            i = R.id.btn_clear;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_clear);
            if (materialButton2 != null) {
                i = R.id.btn_close;
                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.btn_close);
                if (imageView != null) {
                    i = R.id.container_app_type;
                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_app_type);
                    if (linearLayoutCompat != null) {
                        i = R.id.container_backup;
                        LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_backup);
                        if (linearLayoutCompat2 != null) {
                            i = R.id.container_enabled_status;
                            LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_enabled_status);
                            if (linearLayoutCompat3 != null) {
                                i = R.id.container_favorites;
                                LinearLayoutCompat linearLayoutCompat4 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_favorites);
                                if (linearLayoutCompat4 != null) {
                                    i = R.id.container_install_status;
                                    LinearLayoutCompat linearLayoutCompat5 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_install_status);
                                    if (linearLayoutCompat5 != null) {
                                        i = R.id.container_labels;
                                        LinearLayoutCompat linearLayoutCompat6 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_labels);
                                        if (linearLayoutCompat6 != null) {
                                            i = R.id.container_miscellaneous;
                                            LinearLayoutCompat linearLayoutCompat7 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_miscellaneous);
                                            if (linearLayoutCompat7 != null) {
                                                i = R.id.container_sync_states;
                                                LinearLayoutCompat linearLayoutCompat8 = (LinearLayoutCompat) ms8.u(viewInflate, R.id.container_sync_states);
                                                if (linearLayoutCompat8 != null) {
                                                    i = R.id.container_system_apps;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ms8.u(viewInflate, R.id.container_system_apps);
                                                    if (relativeLayout != null) {
                                                        i = R.id.divider1;
                                                        if (ms8.u(viewInflate, R.id.divider1) != null) {
                                                            i = R.id.filter_dialog_rv_backup_status;
                                                            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_backup_status);
                                                            if (quickRecyclerView != null) {
                                                                i = R.id.filter_dialog_rv_favorites;
                                                                QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_favorites);
                                                                if (quickRecyclerView2 != null) {
                                                                    i = R.id.filter_dialog_rv_install_status;
                                                                    QuickRecyclerView quickRecyclerView3 = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_install_status);
                                                                    if (quickRecyclerView3 != null) {
                                                                        i = R.id.filter_dialog_rv_labels;
                                                                        QuickRecyclerView quickRecyclerView4 = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_labels);
                                                                        if (quickRecyclerView4 != null) {
                                                                            i = R.id.filter_dialog_rv_miscellaneous;
                                                                            QuickRecyclerView quickRecyclerView5 = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_miscellaneous);
                                                                            if (quickRecyclerView5 != null) {
                                                                                i = R.id.filter_dialog_rv_sync_status;
                                                                                QuickRecyclerView quickRecyclerView6 = (QuickRecyclerView) ms8.u(viewInflate, R.id.filter_dialog_rv_sync_status);
                                                                                if (quickRecyclerView6 != null) {
                                                                                    i = R.id.iv_circle;
                                                                                    if (ms8.u(viewInflate, R.id.iv_circle) != null) {
                                                                                        i = R.id.rv_app_type;
                                                                                        QuickRecyclerView quickRecyclerView7 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_app_type);
                                                                                        if (quickRecyclerView7 != null) {
                                                                                            i = R.id.rv_enabled_status;
                                                                                            QuickRecyclerView quickRecyclerView8 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_enabled_status);
                                                                                            if (quickRecyclerView8 != null) {
                                                                                                i = R.id.rv_sort;
                                                                                                QuickRecyclerView quickRecyclerView9 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_sort);
                                                                                                if (quickRecyclerView9 != null) {
                                                                                                    i = R.id.rv_system_apps;
                                                                                                    QuickRecyclerView quickRecyclerView10 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_system_apps);
                                                                                                    if (quickRecyclerView10 != null) {
                                                                                                        i = R.id.sv;
                                                                                                        if (((NestedScrollView) ms8.u(viewInflate, R.id.sv)) != null) {
                                                                                                            i = R.id.tv_apps;
                                                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_apps)) != null) {
                                                                                                                i = R.id.tv_enabled;
                                                                                                                if (((TextView) ms8.u(viewInflate, R.id.tv_enabled)) != null) {
                                                                                                                    i = R.id.tv_filter;
                                                                                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_filter)) != null) {
                                                                                                                        i = R.id.tv_sort;
                                                                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_sort)) != null) {
                                                                                                                            i = R.id.tv_system_apps;
                                                                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_system_apps)) != null) {
                                                                                                                                i = R.id.tv_title_backup;
                                                                                                                                if (((TextView) ms8.u(viewInflate, R.id.tv_title_backup)) != null) {
                                                                                                                                    i = R.id.tv_title_favorites;
                                                                                                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_title_favorites)) != null) {
                                                                                                                                        i = R.id.tv_title_install;
                                                                                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_title_install)) != null) {
                                                                                                                                            i = R.id.tv_title_labels;
                                                                                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_title_labels)) != null) {
                                                                                                                                                i = R.id.tv_title_miscellaneous;
                                                                                                                                                if (((TextView) ms8.u(viewInflate, R.id.tv_title_miscellaneous)) != null) {
                                                                                                                                                    i = R.id.tv_title_sync;
                                                                                                                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_title_sync)) != null) {
                                                                                                                                                        super(dtVar, new tc3((CoordinatorLayout) viewInflate, materialButton, materialButton2, imageView, linearLayoutCompat, linearLayoutCompat2, linearLayoutCompat3, linearLayoutCompat4, linearLayoutCompat5, linearLayoutCompat6, linearLayoutCompat7, linearLayoutCompat8, relativeLayout, quickRecyclerView, quickRecyclerView2, quickRecyclerView3, quickRecyclerView4, quickRecyclerView5, quickRecyclerView6, quickRecyclerView7, quickRecyclerView8, quickRecyclerView9, quickRecyclerView10), 12);
                                                                                                                                                        this.Q = dtVar;
                                                                                                                                                        this.R = true;
                                                                                                                                                        this.S = true;
                                                                                                                                                        this.T = true;
                                                                                                                                                        this.U = true;
                                                                                                                                                        this.V = true;
                                                                                                                                                        this.W = true;
                                                                                                                                                        this.X = true;
                                                                                                                                                        this.Y = true;
                                                                                                                                                        return;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public final fj7 j() {
        Object next;
        hg6 adapter = ((tc3) this.K).N.getAdapter();
        adapter.getClass();
        Iterator it = ((hj7) adapter).e.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((fj7) next).d);
        fj7 fj7Var = (fj7) next;
        if (fj7Var != null) {
            return fj7Var;
        }
        sx sxVar = sx.Name;
        String string = getContext().getString(R.string.name);
        string.getClass();
        return new fj7(sxVar, string, R.drawable.ic_sort_name, true, true);
    }

    public final void k(final boolean z, final boolean z2) {
        tc3 tc3Var = (tc3) this.K;
        final RelativeLayout relativeLayout = tc3Var.x;
        if (sz8.I(relativeLayout) == z) {
            return;
        }
        tc3Var.a.postDelayed(new Runnable() { // from class: rc3
            @Override // java.lang.Runnable
            public final void run() {
                if (z2) {
                    sc3 sc3Var = this;
                    CoordinatorLayout coordinatorLayout = ((tc3) sc3Var.K).a;
                    if (coordinatorLayout == null) {
                        coordinatorLayout = null;
                    }
                    if (coordinatorLayout != null) {
                        sc3Var.Q.getClass();
                        il0.w(coordinatorLayout, new t35(), new Class[0]);
                    }
                }
                sz8.d0(relativeLayout, z);
            }
        }, z2 ? 100L : 0L);
    }

    public final void l(QuickRecyclerView quickRecyclerView, ArrayList arrayList) {
        dt dtVar = this.Q;
        quickRecyclerView.setLayoutManager(new FlexboxLayoutManager(dtVar));
        quickRecyclerView.setItemAnimator(null);
        quickRecyclerView.setAdapter(new xc3(dtVar, arrayList, new ej(this, 19), new fj(this, 22)));
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0268  */
    /* JADX WARN: Code duplicated, block: B:161:0x0307  */
    /* JADX WARN: Code duplicated, block: B:193:0x039f  */
    /* JADX WARN: Code duplicated, block: B:225:0x0436  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:59:0x012d  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c8  */
    public final void m(boolean z) {
        Throwable th;
        zd3 zd3Var;
        Object next;
        id3 id3Var;
        Object next2;
        qd3 qd3Var;
        Object next3;
        ce3 ce3Var;
        Object next4;
        fd3 fd3Var;
        Object next5;
        ld3 ld3Var;
        Object next6;
        boolean z2;
        boolean z3 = this.R;
        Throwable th2 = null;
        jk8 jk8Var = this.K;
        if (z3) {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences.getBoolean("show_system_apps", false);
                if (z2) {
                    tc3 tc3Var = (tc3) jk8Var;
                    tc3Var.e.setVisibility(0);
                    cd3 cd3VarE = !z ? dd3.e() : cd3.All;
                    QuickRecyclerView quickRecyclerView = tc3Var.L;
                    List entries = cd3.getEntries();
                    ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                    w3 w3Var = new w3((z3) entries);
                    while (w3Var.hasNext()) {
                        cd3 cd3Var = (cd3) w3Var.next();
                        Throwable th3 = th2;
                        arrayList.add(new uc3(dd3.a, cd3Var, cd3VarE == cd3Var, false));
                        th2 = th3;
                    }
                    th = th2;
                    l(quickRecyclerView, new ArrayList(arrayList));
                    hg6 adapter = tc3Var.L.getAdapter();
                    adapter.getClass();
                    ((xc3) adapter).l = new pf(this, 5);
                    k(cd3VarE.hasSystem(), false);
                    fe3 fe3VarE = !z ? ge3.e() : fe3.All;
                    QuickRecyclerView quickRecyclerView2 = tc3Var.O;
                    List entries2 = fe3.getEntries();
                    ArrayList arrayList2 = new ArrayList(hl1.G0(entries2, 10));
                    w3 w3Var2 = new w3((z3) entries2);
                    while (w3Var2.hasNext()) {
                        fe3 fe3Var = (fe3) w3Var2.next();
                        arrayList2.add(new uc3(ge3.a, fe3Var, fe3VarE == fe3Var, false));
                    }
                    l(quickRecyclerView2, new ArrayList(arrayList2));
                } else {
                    th = null;
                    ((tc3) jk8Var).e.setVisibility(8);
                }
            } catch (ClassCastException unused) {
                z2 = false;
            }
        } else {
            th = null;
            ((tc3) jk8Var).e.setVisibility(8);
        }
        if (this.U) {
            tc3 tc3Var2 = (tc3) jk8Var;
            tc3Var2.n.setVisibility(0);
            if (z) {
                ld3Var = ld3.All;
            } else {
                String string = ld3.All.toString();
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw th;
                    }
                    string = sharedPreferences2.getString("key_filter_favorites", string);
                    if (string != null) {
                        Iterator it = ((z3) ld3.getEntries()).iterator();
                        do {
                            w3 w3Var3 = (w3) it;
                            if (!w3Var3.hasNext()) {
                                next6 = th;
                                break;
                            }
                            next6 = w3Var3.next();
                        } while (!pe4.d(((ld3) next6).toString(), string));
                        ld3Var = (ld3) next6;
                        if (ld3Var == null) {
                            ld3Var = ld3.All;
                        }
                    } else {
                        ld3Var = ld3.All;
                    }
                } catch (ClassCastException unused2) {
                }
            }
            QuickRecyclerView quickRecyclerView3 = tc3Var2.G;
            List entries3 = ld3.getEntries();
            ArrayList arrayList3 = new ArrayList(hl1.G0(entries3, 10));
            w3 w3Var4 = new w3((z3) entries3);
            while (w3Var4.hasNext()) {
                ld3 ld3Var2 = (ld3) w3Var4.next();
                arrayList3.add(new uc3(md3.a, ld3Var2, ld3Var == ld3Var2, false));
            }
            l(quickRecyclerView3, new ArrayList(arrayList3));
        } else {
            ((tc3) jk8Var).n.setVisibility(8);
        }
        n(z);
        if (this.T) {
            tc3 tc3Var3 = (tc3) jk8Var;
            tc3Var3.f.setVisibility(0);
            if (z) {
                fd3Var = fd3.All;
            } else {
                String string2 = fd3.All.toString();
                try {
                    SharedPreferences sharedPreferences3 = cz4.f;
                    if (sharedPreferences3 == null) {
                        pe4.F("prefs");
                        throw th;
                    }
                    string2 = sharedPreferences3.getString("key_filter_app_backup", string2);
                    if (string2 != null) {
                        Iterator it2 = ((z3) fd3.getEntries()).iterator();
                        do {
                            w3 w3Var5 = (w3) it2;
                            if (!w3Var5.hasNext()) {
                                next5 = th;
                                break;
                            }
                            next5 = w3Var5.next();
                        } while (!pe4.d(((fd3) next5).toString(), string2));
                        fd3Var = (fd3) next5;
                        if (fd3Var == null) {
                            fd3Var = fd3.All;
                        }
                    } else {
                        fd3Var = fd3.All;
                    }
                } catch (ClassCastException unused3) {
                }
            }
            QuickRecyclerView quickRecyclerView4 = tc3Var3.y;
            List entries4 = fd3.getEntries();
            ArrayList arrayList4 = new ArrayList(hl1.G0(entries4, 10));
            w3 w3Var6 = new w3((z3) entries4);
            while (w3Var6.hasNext()) {
                fd3 fd3Var2 = (fd3) w3Var6.next();
                arrayList4.add(new uc3(gd3.a, fd3Var2, fd3Var == fd3Var2, false));
            }
            l(quickRecyclerView4, new ArrayList(arrayList4));
        } else {
            ((tc3) jk8Var).f.setVisibility(8);
        }
        if (this.Q.b0() || !this.W) {
            ((tc3) jk8Var).t.setVisibility(8);
        } else {
            tc3 tc3Var4 = (tc3) jk8Var;
            tc3Var4.t.setVisibility(0);
            if (z) {
                ce3Var = ce3.All;
            } else {
                String string3 = ce3.All.toString();
                try {
                    SharedPreferences sharedPreferences4 = cz4.f;
                    if (sharedPreferences4 == null) {
                        pe4.F("prefs");
                        throw th;
                    }
                    string3 = sharedPreferences4.getString("key_filter_app_synced", string3);
                    if (string3 != null) {
                        Iterator it3 = ((z3) ce3.getEntries()).iterator();
                        do {
                            w3 w3Var7 = (w3) it3;
                            if (!w3Var7.hasNext()) {
                                next4 = th;
                                break;
                            }
                            next4 = w3Var7.next();
                        } while (!pe4.d(((ce3) next4).toString(), string3));
                        ce3Var = (ce3) next4;
                        if (ce3Var == null) {
                            ce3Var = ce3.All;
                        }
                    } else {
                        ce3Var = ce3.All;
                    }
                } catch (ClassCastException unused4) {
                }
            }
            QuickRecyclerView quickRecyclerView5 = tc3Var4.K;
            List entries5 = ce3.getEntries();
            ArrayList arrayList5 = new ArrayList(hl1.G0(entries5, 10));
            w3 w3Var8 = new w3((z3) entries5);
            while (w3Var8.hasNext()) {
                ce3 ce3Var2 = (ce3) w3Var8.next();
                arrayList5.add(new uc3(de3.a, ce3Var2, ce3Var == ce3Var2, ce3Var2 == ce3.Synced));
            }
            l(quickRecyclerView5, new ArrayList(arrayList5));
        }
        if (this.V) {
            tc3 tc3Var5 = (tc3) jk8Var;
            tc3Var5.p.setVisibility(0);
            if (z) {
                qd3Var = qd3.All;
            } else {
                String string4 = qd3.All.toString();
                try {
                    SharedPreferences sharedPreferences5 = cz4.f;
                    if (sharedPreferences5 == null) {
                        pe4.F("prefs");
                        throw th;
                    }
                    string4 = sharedPreferences5.getString("key_filter_app_install", string4);
                    if (string4 != null) {
                        Iterator it4 = ((z3) qd3.getEntries()).iterator();
                        do {
                            w3 w3Var9 = (w3) it4;
                            if (!w3Var9.hasNext()) {
                                next3 = th;
                                break;
                            }
                            next3 = w3Var9.next();
                        } while (!pe4.d(((qd3) next3).toString(), string4));
                        qd3Var = (qd3) next3;
                        if (qd3Var == null) {
                            qd3Var = qd3.All;
                        }
                    } else {
                        qd3Var = qd3.All;
                    }
                } catch (ClassCastException unused5) {
                }
            }
            QuickRecyclerView quickRecyclerView6 = tc3Var5.H;
            List entries6 = qd3.getEntries();
            ArrayList arrayList6 = new ArrayList(hl1.G0(entries6, 10));
            w3 w3Var10 = new w3((z3) entries6);
            while (w3Var10.hasNext()) {
                qd3 qd3Var2 = (qd3) w3Var10.next();
                arrayList6.add(new uc3(rd3.a, qd3Var2, qd3Var == qd3Var2, false));
            }
            l(quickRecyclerView6, new ArrayList(arrayList6));
        } else {
            ((tc3) jk8Var).p.setVisibility(8);
        }
        if (this.X) {
            tc3 tc3Var6 = (tc3) jk8Var;
            tc3Var6.k.setVisibility(0);
            if (z) {
                id3Var = id3.All;
            } else {
                String string5 = id3.All.toString();
                try {
                    SharedPreferences sharedPreferences6 = cz4.f;
                    if (sharedPreferences6 == null) {
                        pe4.F("prefs");
                        throw th;
                    }
                    string5 = sharedPreferences6.getString("key_filter_app_enabled", string5);
                    if (string5 != null) {
                        Iterator it5 = ((z3) id3.getEntries()).iterator();
                        do {
                            w3 w3Var11 = (w3) it5;
                            if (!w3Var11.hasNext()) {
                                next2 = th;
                                break;
                            }
                            next2 = w3Var11.next();
                        } while (!pe4.d(((id3) next2).toString(), string5));
                        id3Var = (id3) next2;
                        if (id3Var == null) {
                            id3Var = id3.All;
                        }
                    } else {
                        id3Var = id3.All;
                    }
                } catch (ClassCastException unused6) {
                }
            }
            QuickRecyclerView quickRecyclerView7 = tc3Var6.M;
            List entries7 = id3.getEntries();
            ArrayList arrayList7 = new ArrayList(hl1.G0(entries7, 10));
            w3 w3Var12 = new w3((z3) entries7);
            while (w3Var12.hasNext()) {
                id3 id3Var2 = (id3) w3Var12.next();
                arrayList7.add(new uc3(jd3.a, id3Var2, id3Var == id3Var2, false));
            }
            l(quickRecyclerView7, new ArrayList(arrayList7));
        } else {
            ((tc3) jk8Var).k.setVisibility(8);
        }
        if (!this.Y) {
            ((tc3) jk8Var).r.setVisibility(8);
            return;
        }
        tc3 tc3Var7 = (tc3) jk8Var;
        tc3Var7.r.setVisibility(0);
        if (z) {
            zd3Var = zd3.All;
        } else {
            String string6 = zd3.All.toString();
            try {
                SharedPreferences sharedPreferences7 = cz4.f;
                if (sharedPreferences7 == null) {
                    pe4.F("prefs");
                    throw th;
                }
                string6 = sharedPreferences7.getString("key_filter_app_backup_age", string6);
                if (string6 != null) {
                    Iterator it6 = ((z3) zd3.getEntries()).iterator();
                    do {
                        w3 w3Var13 = (w3) it6;
                        if (!w3Var13.hasNext()) {
                            next = th;
                            break;
                        }
                        next = w3Var13.next();
                    } while (!pe4.d(((zd3) next).toString(), string6));
                    zd3Var = (zd3) next;
                    if (zd3Var == null) {
                        zd3Var = zd3.All;
                    }
                } else {
                    zd3Var = zd3.All;
                }
            } catch (ClassCastException unused7) {
            }
        }
        QuickRecyclerView quickRecyclerView8 = tc3Var7.J;
        List entries8 = zd3.getEntries();
        ArrayList arrayList8 = new ArrayList(hl1.G0(entries8, 10));
        w3 w3Var14 = new w3((z3) entries8);
        while (w3Var14.hasNext()) {
            zd3 zd3Var2 = (zd3) w3Var14.next();
            arrayList8.add(new uc3(ae3.a, zd3Var2, zd3Var == zd3Var2, false));
        }
        l(quickRecyclerView8, new ArrayList(arrayList8));
    }

    public final void n(boolean z) {
        boolean z2 = this.S;
        jk8 jk8Var = this.K;
        if (!z2) {
            ((tc3) jk8Var).q.setVisibility(8);
            return;
        }
        tc3 tc3Var = (tc3) jk8Var;
        tc3Var.q.setVisibility(0);
        xd3 xd3Var = xd3.a;
        wd3 wd3VarA = !z ? xd3Var.a() : wd3.All;
        QuickRecyclerView quickRecyclerView = tc3Var.I;
        List entries = wd3.getEntries();
        ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
        w3 w3Var = new w3((z3) entries);
        while (w3Var.hasNext()) {
            wd3 wd3Var = (wd3) w3Var.next();
            arrayList.add(new uc3(xd3Var, wd3Var, wd3VarA == wd3Var, false));
        }
        l(quickRecyclerView, new ArrayList(arrayList));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.u35, android.app.Dialog
    public final void show() {
        Object obj;
        Set setZ1;
        ud3 ud3Var = ud3.a;
        td3 td3VarA = ud3Var.a();
        td3 td3Var = td3.Selected;
        xd3 xd3Var = xd3.a;
        if (td3VarA == td3Var) {
            Set setG = ud3Var.g();
            if (setG != null) {
                ArrayList arrayList = new ArrayList();
                Iterator it = setG.iterator();
                while (it.hasNext()) {
                    String id = ((LabelParams) it.next()).getId();
                    if (id != null) {
                        arrayList.add(id);
                    }
                }
                setZ1 = el1.z1(arrayList);
            } else {
                setZ1 = null;
            }
            if (setZ1 == null) {
                setZ1 = sv2.a;
            }
            xd3Var.g(setZ1);
        } else {
            xd3Var.b(ud3Var.a());
        }
        tc3 tc3Var = (tc3) this.K;
        QuickRecyclerView quickRecyclerView = tc3Var.N;
        dt dtVar = this.Q;
        quickRecyclerView.setLayoutManager(new PreCachingLinearLayoutManager(dtVar, 0));
        quickRecyclerView.setItemAnimator(null);
        boolean zB0 = dtVar.b0();
        sx sxVar = sx.Name;
        String string = dtVar.getString(R.string.name);
        string.getClass();
        fj7 fj7Var = new fj7(sxVar, string, R.drawable.ic_sort_name);
        sx sxVar2 = sx.InstallDate;
        String string2 = dtVar.getString(R.string.install_date);
        string2.getClass();
        fj7 fj7Var2 = new fj7(sxVar2, string2, R.drawable.ic_installed_apps);
        sx sxVar3 = sx.UpdateDate;
        String string3 = dtVar.getString(R.string.update_date);
        string3.getClass();
        fj7 fj7Var3 = new fj7(sxVar3, string3, R.drawable.ic_updated_apps);
        sx sxVar4 = sx.BackupDate;
        String string4 = dtVar.getString(zB0 ? R.string.synced_date : R.string.backup_date);
        string4.getClass();
        fj7 fj7Var4 = new fj7(sxVar4, string4, zB0 ? R.drawable.ic_cloud : R.drawable.ic_backup);
        sx sxVar5 = sx.BackupSize;
        String string5 = dtVar.getString(R.string.backup_size);
        string5.getClass();
        fj7 fj7Var5 = new fj7(sxVar5, string5, R.drawable.ic_disk);
        sx sxVar6 = sx.DateUsed;
        String string6 = dtVar.getString(R.string.date_used);
        string6.getClass();
        fj7 fj7Var6 = new fj7(sxVar6, string6, R.drawable.ic_touch_hand);
        sx sxVar7 = sx.AppSize;
        String string7 = dtVar.getString(R.string.app_size);
        string7.getClass();
        ArrayList arrayListC0 = fl1.C0(fj7Var, fj7Var2, fj7Var3, fj7Var4, fj7Var5, fj7Var6, new fj7(sxVar7, string7, R.drawable.ic_app));
        Iterator it2 = arrayListC0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            Object next = it2.next();
            sx sxVar8 = ((fj7) next).a;
            iy iyVar = iy.a;
            if (sxVar8 == iy.b()) {
                obj = next;
                break;
            }
        }
        fj7 fj7Var7 = (fj7) obj;
        if (fj7Var7 != null) {
            fj7Var7.d = true;
            iy iyVar2 = iy.a;
            fj7Var7.e = iy.c();
        }
        hj7 hj7Var = new hj7(dtVar, new fm7((List) arrayListC0, (Set) null, false, (String) null, 30));
        quickRecyclerView.setAdapter(hj7Var);
        Iterator it3 = hj7Var.e.a.iterator();
        int i = 0;
        while (true) {
            if (!it3.hasNext()) {
                i = -1;
                break;
            } else if (((fj7) it3.next()).d) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            quickRecyclerView.f0(i);
        }
        m(false);
        tc3Var.d.setOnClickListener(new nf(this, 6));
        tc3Var.b.setOnClickListener(new g7(this, 10));
        tc3Var.c.setOnClickListener(new h7(this, 8));
        super.show();
    }
}
