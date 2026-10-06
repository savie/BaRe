package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gm1 implements jk8, n59 {
    public final Object a;
    public final Object b;
    public Object c;
    public Object d;
    public Object e;
    public final Object f;

    public gm1(TabLayout tabLayout) {
        this.a = tabLayout;
        this.b = tabLayout.getContext();
        Drawable tabSelectedIndicator = tabLayout.getTabSelectedIndicator();
        tabSelectedIndicator.getClass();
        this.f = tabSelectedIndicator;
    }

    public static gm1 a(View view) {
        int i = R.id.container_values;
        if (((FrameLayout) ms8.u(view, R.id.container_values)) != null) {
            i = R.id.iv_dropdown;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_dropdown);
            if (imageView != null) {
                i = R.id.iv_icon;
                ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_icon);
                if (imageView2 != null) {
                    i = R.id.rv_values;
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_values);
                    if (quickRecyclerView != null) {
                        i = R.id.tv_header;
                        TextView textView = (TextView) ms8.u(view, R.id.tv_header);
                        if (textView != null) {
                            i = R.id.tv_value;
                            TextView textView2 = (TextView) ms8.u(view, R.id.tv_value);
                            if (textView2 != null) {
                                return new gm1((MaterialCardView) view, imageView, imageView2, quickRecyclerView, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ba  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v5, types: [ov2] */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.util.ArrayList] */
    public void b(ArrayList arrayList, mt3 mt3Var, qt3 qt3Var, bt3 bt3Var) {
        ?? arrayList2;
        cw7 cw7VarG;
        cw7 cw7VarG2;
        boolean z;
        TabLayout tabLayout = (TabLayout) this.a;
        tabLayout.j();
        hk2 hk2Var = (hk2) this.d;
        if (hk2Var != null) {
            tabLayout.g0.remove(hk2Var);
        }
        Iterator it = el1.Q0(arrayList).iterator();
        while (true) {
            if (it.hasNext()) {
                gk2 gk2Var = (gk2) it.next();
                View viewInflate = View.inflate((Context) this.b, R.layout.detail_card_custom_tab, null);
                int i = R.id.iv_protected_backup;
                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_protected_backup);
                if (imageView != null) {
                    i = R.id.tv_subtitle;
                    TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_subtitle);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                        if (textView2 != null) {
                            LinearLayout linearLayout = (LinearLayout) viewInflate;
                            Context context = linearLayout.getContext();
                            context.getClass();
                            vl1 vl1VarP = z85.p(context, io4.c(context, Color.parseColor("#FBC02D")));
                            imageView.setBackgroundTintList(sz8.h0(vl1VarP.b));
                            imageView.setImageTintList(sz8.h0(vl1VarP.c));
                            textView2.setText(gk2Var.a);
                            textView.setText(gk2Var.b);
                            imageView.setVisibility(gk2Var.c ? 0 : 8);
                            cw7 cw7VarH = tabLayout.h();
                            cw7VarH.d = linearLayout;
                            fw7 fw7Var = cw7VarH.f;
                            if (fw7Var != null) {
                                fw7Var.e();
                                cw7 cw7Var = fw7Var.a;
                                if (cw7Var != null) {
                                    TabLayout tabLayout2 = cw7Var.e;
                                    if (tabLayout2 == null) {
                                        c6.f("Tab not attached to a TabLayout");
                                        return;
                                    } else {
                                        int selectedTabPosition = tabLayout2.getSelectedTabPosition();
                                        z = selectedTabPosition != -1 && selectedTabPosition == cw7Var.c;
                                    }
                                }
                                fw7Var.setSelected(z);
                            }
                            cw7VarH.a = gk2Var.d;
                            tabLayout.b(cw7VarH, false);
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
                return;
            }
            if (tabLayout.getTabCount() <= 1) {
                tabLayout.setSelectedTabIndicator((Drawable) null);
            } else {
                tabLayout.setSelectedTabIndicator((Drawable) this.f);
            }
            hk2 hk2Var2 = new hk2(arrayList, qt3Var, this, mt3Var);
            this.d = hk2Var2;
            tabLayout.a(hk2Var2);
            if (tabLayout.getTabCount() > 0) {
                ArrayList arrayList3 = (ArrayList) this.c;
                if (arrayList3 != null) {
                    arrayList2 = new ArrayList(hl1.G0(arrayList3, 10));
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((gk2) it2.next()).d);
                    }
                } else {
                    arrayList2 = 0;
                }
                if (arrayList2 == 0) {
                    arrayList2 = ov2.a;
                }
                ArrayList arrayList4 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    gk2 gk2Var2 = (gk2) it3.next();
                    String str = gk2Var2 != null ? gk2Var2.d : null;
                    if (str != null) {
                        arrayList4.add(str);
                    }
                }
                if (arrayList2.equals(arrayList4)) {
                    String str2 = (String) this.e;
                    if (str2 != null) {
                        if (tabLayout.getTabCount() == 0) {
                            cw7VarG2 = null;
                            break;
                        }
                        int tabCount = tabLayout.getTabCount();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= tabCount) {
                                cw7VarG2 = null;
                                break;
                            }
                            cw7VarG2 = tabLayout.g(i2);
                            if (pe4.d(cw7VarG2 != null ? cw7VarG2.a : null, str2)) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                        cw7VarG = cw7VarG2;
                    } else {
                        cw7VarG = null;
                    }
                    if (cw7VarG == null && (cw7VarG = tabLayout.g(0)) == null) {
                        c6.f("Required value was null.");
                        return;
                    }
                } else {
                    cw7VarG = tabLayout.g(0);
                    if (cw7VarG == null) {
                        c6.f("Required value was null.");
                        return;
                    }
                }
                tabLayout.k(null, true);
                tabLayout.k(cw7VarG, true);
            } else {
                bt3Var.invoke();
            }
            this.c = el1.Q0(arrayList);
            return;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        String str = (String) this.a;
        String str2 = (String) this.b;
        String str3 = (String) this.c;
        String str4 = (String) this.d;
        String str5 = ((b69) f59Var).b;
        t54 t54Var = new t54();
        ly8.e(str);
        t54Var.a = str;
        ly8.e(str2);
        t54Var.b = str2;
        t54Var.c = str3;
        t54Var.d = str4;
        t54Var.e = str5;
        ke keVar = (ke) this.f;
        yf1 yf1Var = (yf1) this.e;
        g59 g59Var = (g59) keVar.b;
        gd gdVar = new gd(keVar, yf1Var, this);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/signupNewUser", g59Var.f), t54Var, gdVar, new g69(), (xt1) d59Var.b);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.e).a(zv1.t(str));
    }

    public gm1(ke keVar, String str, String str2, String str3, String str4, yf1 yf1Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = yf1Var;
        Objects.requireNonNull(keVar);
        this.f = keVar;
    }

    public gm1(MaterialCardView materialCardView, ImageView imageView, ImageView imageView2, QuickRecyclerView quickRecyclerView, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = imageView;
        this.c = imageView2;
        this.d = quickRecyclerView;
        this.e = textView;
        this.f = textView2;
    }
}
