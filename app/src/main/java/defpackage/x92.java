package defpackage;

import android.app.WallpaperManager;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.f0;
import androidx.fragment.app.u;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.card.MaterialCardView;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x92 extends nd6<y92> {
    public final l90 d;
    public boolean e;
    public boolean f;
    public final gv7 k;

    public x92() {
        os4 os4VarX = jd4.x(ys4.c, new t30(new t92(this, x92.class, "ctx", "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;", 0), 2));
        this.d = new l90(ph6.a(fa2.class), new u30(os4VarX, 1), new v92(this, os4VarX), new v30(os4VarX, 1));
        this.e = true;
        this.f = true;
        this.k = new gv7(new ah(this, 22));
    }

    public final HomeActivity l() {
        u activity = getActivity();
        activity.getClass();
        return (HomeActivity) activity;
    }

    public final fa2 m() {
        return (fa2) this.d.getValue();
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.dash_fragment, viewGroup, false);
        int i = R.id.dash_card_quick_actions_apps;
        View viewU = ms8.u(viewInflate, R.id.dash_card_quick_actions_apps);
        if (viewU != null) {
            xc6 xc6VarA = xc6.a(viewU);
            i = R.id.dash_card_quick_actions_calls;
            View viewU2 = ms8.u(viewInflate, R.id.dash_card_quick_actions_calls);
            if (viewU2 != null) {
                xc6 xc6VarA2 = xc6.a(viewU2);
                i = R.id.dash_card_quick_actions_folders;
                View viewU3 = ms8.u(viewInflate, R.id.dash_card_quick_actions_folders);
                if (viewU3 != null) {
                    xc6 xc6VarA3 = xc6.a(viewU3);
                    i = R.id.dash_card_quick_actions_messages;
                    View viewU4 = ms8.u(viewInflate, R.id.dash_card_quick_actions_messages);
                    if (viewU4 != null) {
                        xc6 xc6VarA4 = xc6.a(viewU4);
                        i = R.id.dash_card_summary;
                        View viewU5 = ms8.u(viewInflate, R.id.dash_card_summary);
                        if (viewU5 != null) {
                            int i2 = R.id.iv_refresh_root_access;
                            ImageView imageView = (ImageView) ms8.u(viewU5, R.id.iv_refresh_root_access);
                            if (imageView != null) {
                                i2 = R.id.root_status_container;
                                if (((ConstraintLayout) ms8.u(viewU5, R.id.root_status_container)) != null) {
                                    i2 = R.id.rvDashShortcutsCompact;
                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewU5, R.id.rvDashShortcutsCompact);
                                    if (recyclerView != null) {
                                        i2 = R.id.rvDashShortcutsDefault;
                                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewU5, R.id.rvDashShortcutsDefault);
                                        if (quickRecyclerView != null) {
                                            i2 = R.id.storage_view;
                                            View viewU6 = ms8.u(viewU5, R.id.storage_view);
                                            if (viewU6 != null) {
                                                ca2 ca2VarA = ca2.a(viewU6);
                                                i2 = R.id.summary_shortcuts_segment;
                                                if (((LinearLayout) ms8.u(viewU5, R.id.summary_shortcuts_segment)) != null) {
                                                    i2 = R.id.tvRootAccess;
                                                    TextView textView = (TextView) ms8.u(viewU5, R.id.tvRootAccess);
                                                    if (textView != null) {
                                                        i2 = R.id.tvRootProvider;
                                                        TextView textView2 = (TextView) ms8.u(viewU5, R.id.tvRootProvider);
                                                        if (textView2 != null) {
                                                            i2 = R.id.tv_root_title;
                                                            if (((TextView) ms8.u(viewU5, R.id.tv_root_title)) != null) {
                                                                pp0 pp0Var = new pp0((SwiftSegmentedCardGroup) viewU5, imageView, recyclerView, quickRecyclerView, ca2VarA, textView, textView2);
                                                                NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
                                                                i = R.id.dash_secondary_user_warning;
                                                                View viewU7 = ms8.u(viewInflate, R.id.dash_secondary_user_warning);
                                                                if (viewU7 != null) {
                                                                    MaterialCardView materialCardView = (MaterialCardView) viewU7;
                                                                    int i3 = R.id.iv_icon;
                                                                    if (((ImageView) ms8.u(viewU7, R.id.iv_icon)) != null) {
                                                                        i3 = R.id.tv_subtitle;
                                                                        if (((TextView) ms8.u(viewU7, R.id.tv_subtitle)) != null) {
                                                                            fu fuVar = new fu(materialCardView);
                                                                            i = R.id.firebase_connection_error_view;
                                                                            View viewU8 = ms8.u(viewInflate, R.id.firebase_connection_error_view);
                                                                            if (viewU8 != null) {
                                                                                uf3 uf3VarA = uf3.a(viewU8);
                                                                                i = R.id.rv_notices;
                                                                                RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate, R.id.rv_notices);
                                                                                if (recyclerView2 != null) {
                                                                                    y92 y92Var = new y92(nestedScrollView, xc6VarA, xc6VarA2, xc6VarA3, xc6VarA4, pp0Var, fuVar, uf3VarA, recyclerView2);
                                                                                    this.b = y92Var;
                                                                                    View root = y92Var.getRoot();
                                                                                    root.getClass();
                                                                                    return root;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(i3)));
                                                                    return null;
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
                            f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(i2)));
                            return null;
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        if (isAdded()) {
            fa2 fa2VarM = m();
            zn4 zn4Var = zn4.a;
            zn4.c(new ej(fa2VarM, 17));
            m().c();
            ((AppBarLayout) l().Z().c.a).setLiftOnScrollTargetViewId(R.id.dash_fragment_scrollview);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nd6, androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        Boolean boolValueOf;
        view.getClass();
        super.onViewCreated(view, bundle);
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        uf3 uf3Var = ((y92) jk8Var).n;
        try {
            String string = getString(R.string.firebase_backend_diagnostics_message);
            string.getClass();
            uf3Var.b.setText(nq7.C0(string, "\n", string));
        } catch (Exception unused) {
        }
        uf3Var.a.setOnClickListener(new es(this, 6));
        g00 g00Var = g00.a;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (g00.x()) {
            jk8 jk8Var2 = this.b;
            jk8Var2.getClass();
            ((MaterialCardView) ((y92) jk8Var2).k.a).setVisibility(0);
        }
        gv7 gv7Var = zc6.y;
        ArrayList arrayListE = yc6.e(((Boolean) gv7Var.getValue()).booleanValue());
        jk8 jk8Var3 = this.b;
        jk8Var3.getClass();
        nd6.j(this, arrayListE, ((y92) jk8Var3).e, R.string.quick_actions_messages, R.drawable.ic_message_full, false, null, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS);
        ArrayList arrayListC = yc6.c(((Boolean) gv7Var.getValue()).booleanValue());
        jk8 jk8Var4 = this.b;
        jk8Var4.getClass();
        nd6.j(this, arrayListC, ((y92) jk8Var4).c, R.string.quick_actions_calls, R.drawable.ic_call_log, false, null, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS);
        List listD = yc6.d();
        jk8 jk8Var5 = this.b;
        jk8Var5.getClass();
        nd6.j(this, listD, ((y92) jk8Var5).d, R.string.quick_actions_folders, R.drawable.ic_folder_full, false, null, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS);
        jk8 jk8Var6 = this.b;
        jk8Var6.getClass();
        ((y92) jk8Var6).p.setLayoutManager(new LinearLayoutManager(getContext()));
        jk8 jk8Var7 = this.b;
        jk8Var7.getClass();
        RecyclerView recyclerView = ((y92) jk8Var7).p;
        qo5 qo5Var = (qo5) this.k.getValue();
        qo5Var.n = new jf(4, qo5Var, this);
        qo5Var.o = new nu(4);
        recyclerView.setAdapter(qo5Var);
        fa2 fa2VarM = m();
        ex6 ex6Var = fa2VarM.f;
        boolean zHasSystemFeature = g00.r().hasSystemFeature("android.hardware.telephony");
        final int i = 1;
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(SwiftApp.Companion.c());
            boolValueOf = Boolean.valueOf(wallpaperManager != null && wallpaperManager.isWallpaperSupported());
        } catch (Exception unused2) {
            boolValueOf = null;
        }
        boolean zBooleanValue = boolValueOf != null ? boolValueOf.booleanValue() : false;
        ArrayList arrayList = new ArrayList();
        SwiftApp.Companion companion2 = SwiftApp.d;
        String string2 = SwiftApp.Companion.c().getString(R.string.apps);
        d71 d71Var = new d71();
        d71Var.a = 1;
        if (string2 == null) {
            string2 = "";
        }
        d71Var.b = string2;
        d71Var.c = R.drawable.ic_app;
        d71Var.d = R.color.apps;
        arrayList.add(d71Var);
        int i2 = 2;
        if (zHasSystemFeature) {
            String string3 = SwiftApp.Companion.c().getString(R.string.messages);
            d71 d71Var2 = new d71();
            d71Var2.a = 2;
            if (string3 == null) {
                string3 = "";
            }
            d71Var2.b = string3;
            d71Var2.c = R.drawable.ic_message_full;
            d71Var2.d = R.color.messages;
            arrayList.add(d71Var2);
        }
        if (zHasSystemFeature) {
            String string4 = SwiftApp.Companion.c().getString(R.string.call_logs);
            d71 d71Var3 = new d71();
            d71Var3.a = 3;
            if (string4 == null) {
                string4 = "";
            }
            d71Var3.b = string4;
            d71Var3.c = R.drawable.ic_call_log;
            d71Var3.d = R.color.calls;
            arrayList.add(d71Var3);
        }
        String string5 = SwiftApp.Companion.c().getString(R.string.folders);
        d71 d71Var4 = new d71();
        d71Var4.a = 6;
        if (string5 == null) {
            string5 = "";
        }
        d71Var4.b = string5;
        d71Var4.c = R.drawable.ic_folder_full;
        d71Var4.d = R.color.folders;
        arrayList.add(d71Var4);
        if (zBooleanValue) {
            String string6 = SwiftApp.Companion.c().getString(R.string.wallpapers);
            d71 d71Var5 = new d71();
            d71Var5.a = 4;
            if (string6 == null) {
                string6 = "";
            }
            d71Var5.b = string6;
            d71Var5.c = R.drawable.ic_photo_full;
            d71Var5.d = R.color.walls;
            arrayList.add(d71Var5);
        }
        String string7 = SwiftApp.Companion.c().getString(R.string.wifi);
        d71 d71Var6 = new d71();
        int i3 = 5;
        d71Var6.a = 5;
        d71Var6.b = string7 != null ? string7 : "";
        d71Var6.c = R.drawable.ic_wifi_full;
        d71Var6.d = R.color.wifi;
        arrayList.add(d71Var6);
        ex6Var.k(arrayList);
        fa2VarM.c();
        StorageInfoLocal.Success savedStorageInfo = StorageInfoLocal.Companion.getSavedStorageInfo();
        ex6 ex6Var2 = fa2VarM.c;
        if (savedStorageInfo != null) {
            ex6Var2.k(savedStorageInfo);
        } else {
            ex6Var2.k(StorageInfoLocal.c.INSTANCE);
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new lj(fa2VarM, null, 2));
        ex6 ex6Var3 = (ex6) l().F().j.getValue();
        f0 viewLifecycleOwner = getViewLifecycleOwner();
        final Object[] objArr3 = objArr2 == true ? 1 : 0;
        ex6Var3.e(viewLifecycleOwner, new s30(3, new mt3(this) { // from class: s92
            public final /* synthetic */ x92 b;

            {
                this.b = this;
            }

            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                int i4 = objArr3;
                be8 be8Var = be8.a;
                x92 x92Var = this.b;
                switch (i4) {
                    case 0:
                        x92Var.m().f.l(x92Var.m().f.d());
                        return be8Var;
                    default:
                        ArrayList arrayList2 = (ArrayList) obj;
                        arrayList2.getClass();
                        if (!arrayList2.isEmpty()) {
                            HomeActivity homeActivityL = x92Var.l();
                            if (!arrayList2.isEmpty()) {
                                Log.i("ChangeLogHelper", "Showing changelog");
                                b41 b41Var = new b41(homeActivityL, arrayList2);
                                b41Var.F(homeActivityL, false, false);
                                ho hoVar = (ho) b41Var.b;
                                if (hoVar != null) {
                                    hoVar.setOnDismissListener(new a41());
                                }
                            }
                            SharedPreferences.Editor editor = cz4.k;
                            if (editor == null) {
                                pe4.F("editor");
                                throw null;
                            }
                            editor.putString("KEY_LAST_SHOWN_VERSION", "5.1.0").apply();
                        }
                        return be8Var;
                }
            }
        }));
        SwiftApp.Companion.a().a.e(getViewLifecycleOwner(), new s30(3, new hj(this, 13)));
        this.e = m().c.d() == null;
        m().c.e(getViewLifecycleOwner(), new w92(this, objArr == true ? 1 : 0));
        this.f = m().d.d() == null;
        m().d.e(getViewLifecycleOwner(), new qv5(this, i2));
        m().e.e(getViewLifecycleOwner(), new s30(3, new ox(this, 10)));
        m().f.e(getViewLifecycleOwner(), new s30(3, new cz(this, 6)));
        m().g.e(getViewLifecycleOwner(), new s30(3, new u10(this, 6)));
        m().h.e(getViewLifecycleOwner(), new s30(3, new mt3(this) { // from class: s92
            public final /* synthetic */ x92 b;

            {
                this.b = this;
            }

            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                int i4 = i;
                be8 be8Var = be8.a;
                x92 x92Var = this.b;
                switch (i4) {
                    case 0:
                        x92Var.m().f.l(x92Var.m().f.d());
                        return be8Var;
                    default:
                        ArrayList arrayList2 = (ArrayList) obj;
                        arrayList2.getClass();
                        if (!arrayList2.isEmpty()) {
                            HomeActivity homeActivityL = x92Var.l();
                            if (!arrayList2.isEmpty()) {
                                Log.i("ChangeLogHelper", "Showing changelog");
                                b41 b41Var = new b41(homeActivityL, arrayList2);
                                b41Var.F(homeActivityL, false, false);
                                ho hoVar = (ho) b41Var.b;
                                if (hoVar != null) {
                                    hoVar.setOnDismissListener(new a41());
                                }
                            }
                            SharedPreferences.Editor editor = cz4.k;
                            if (editor == null) {
                                pe4.F("editor");
                                throw null;
                            }
                            editor.putString("KEY_LAST_SHOWN_VERSION", "5.1.0").apply();
                        }
                        return be8Var;
                }
            }
        }));
        so5.a.a();
        so5.d.e(getViewLifecycleOwner(), new s30(3, new px(this, i3)));
    }
}
