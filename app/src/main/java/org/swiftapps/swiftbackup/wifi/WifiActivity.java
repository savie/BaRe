package org.swiftapps.swiftbackup.wifi;

import android.app.KeyguardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.hardware.biometrics.BiometricPrompt;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import defpackage.b67;
import defpackage.bz5;
import defpackage.ce1;
import defpackage.cz4;
import defpackage.d71;
import defpackage.er0;
import defpackage.et8;
import defpackage.f20;
import defpackage.fc5;
import defpackage.fl1;
import defpackage.fr0;
import defpackage.g36;
import defpackage.g84;
import defpackage.gv7;
import defpackage.h71;
import defpackage.hl1;
import defpackage.hv1;
import defpackage.iu8;
import defpackage.ix0;
import defpackage.ix6;
import defpackage.j51;
import defpackage.kn3;
import defpackage.l90;
import defpackage.ls;
import defpackage.lt8;
import defpackage.mt3;
import defpackage.n55;
import defpackage.nc8;
import defpackage.ot8;
import defpackage.ov;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.pt8;
import defpackage.px;
import defpackage.qb5;
import defpackage.qm;
import defpackage.qr7;
import defpackage.ra;
import defpackage.s30;
import defpackage.s35;
import defpackage.sa1;
import defpackage.sr8;
import defpackage.sz8;
import defpackage.u14;
import defpackage.u45;
import defpackage.uq7;
import defpackage.ur8;
import defpackage.w20;
import defpackage.w45;
import defpackage.xq4;
import defpackage.zs;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WifiActivity extends sa1 {
    public static et8 Y;
    public final l90 P;
    public et8 T;
    public final gv7 V;
    public final gv7 W;
    public final gv7 Q = new gv7(new xq4(this, 19));
    public final int R = 9122;
    public final int S = 987;
    public final gv7 U = new gv7(new qb5(this, 12));
    public final gv7 X = new gv7(new kn3(this, 18));

    public WifiActivity() {
        int i = 13;
        this.P = new l90(ph6.a(iu8.class), new f20(this, 11), new j51(this, 9), new ls(this, i));
        this.V = new gv7(new n55(this, i));
        this.W = new gv7(new u14(this, i));
    }

    public static ArrayList V(WifiActivity wifiActivity, List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            int iY = sz8.y(wifiActivity, R.attr.colorPrimary);
            String strT = uq7.T(((et8) obj).getSSID(), "\"", "");
            d71 d71Var = new d71();
            d71Var.a = i;
            d71Var.b = strT;
            d71Var.c = R.drawable.ic_wifi;
            d71Var.d = iY;
            arrayList.add(d71Var);
            i = i2;
        }
        return new ArrayList(arrayList);
    }

    public static final void f0(WifiActivity wifiActivity) {
        if (wifiActivity.W().isShowing()) {
            return;
        }
        wifiActivity.W().show();
        TextView textView = (TextView) wifiActivity.W().findViewById(android.R.id.message);
        if (textView != null) {
            textView.setTextSize(13.5f);
        }
    }

    public final void U(int i, String str, String str2) {
        BiometricPrompt.Builder builder = new BiometricPrompt.Builder(getApplicationContext());
        builder.setTitle(str);
        builder.setSubtitle(str2);
        if (b67.c()) {
            builder.setAllowedAuthenticators(33023);
        } else {
            builder.setDeviceCredentialAllowed(true);
        }
        BiometricPrompt biometricPromptBuild = builder.build();
        biometricPromptBuild.getClass();
        CancellationSignal cancellationSignal = new CancellationSignal();
        Executor mainExecutor = getMainExecutor();
        Integer num = fr0.a;
        fr0.a = Integer.valueOf(i);
        biometricPromptBuild.authenticate(cancellationSignal, mainExecutor, (er0) fr0.c.getValue());
    }

    public final w45 W() {
        return (w45) this.X.getValue();
    }

    public final ur8 X() {
        return (ur8) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final iu8 U() {
        return (iu8) this.P.getValue();
    }

    public final void Z(et8 et8Var) {
        if (a0().l) {
            if (et8Var.hasValidEnterpriseDetails()) {
                e0(et8Var);
                return;
            } else {
                Const.f(et8Var.getProperPreSharedKey(), "wifi_password_swift", new sr8(this, 0));
                return;
            }
        }
        this.T = et8Var;
        String string = getString(R.string.restore);
        string.getClass();
        U(this.S, string, et8Var.getSSID());
    }

    public final void a0(QuickRecyclerView quickRecyclerView) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 7; i++) {
            d71 d71Var = new d71();
            d71Var.a = i;
            d71Var.b = "     ";
            d71Var.c = R.drawable.ic_transparent;
            d71Var.d = 0;
            arrayList.add(d71Var);
        }
        h71 h71Var = new h71(this, arrayList);
        quickRecyclerView.setAdapter(h71Var);
        h71Var.h = true;
    }

    public final void b0(boolean z) {
        if (!z || Const.y(this)) {
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.delete_all);
            s35Var.n(R.string.sure_to_proceed);
            s35Var.s(R.string.yes, new bz5(z, this, 1));
            s35Var.q(R.string.no, null);
            s35Var.m();
        }
    }

    public final void c0(final ArrayList arrayList, final int i, final boolean z, View view) {
        view.getClass();
        if (arrayList.isEmpty()) {
            return;
        }
        final et8 et8Var = (et8) arrayList.get(i);
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_popup_wifi_item_backedup);
        MenuItem menuItemFindItem = ((fc5) u45Var.c).findItem(R.id.action_delete);
        if (menuItemFindItem != null) {
            Drawable icon = menuItemFindItem.getIcon();
            icon.getClass();
            int iR = sz8.r(this);
            Drawable drawableMutate = icon.mutate();
            drawableMutate.getClass();
            drawableMutate.setTint(iR);
            menuItemFindItem.setIcon(drawableMutate);
        }
        u45Var.e = new g36() { // from class: tr8
            @Override // defpackage.g36
            public final boolean onMenuItemClick(MenuItem menuItem) {
                et8 et8Var2 = WifiActivity.Y;
                int itemId = menuItem.getItemId();
                WifiActivity wifiActivity = this;
                if (itemId == R.id.action_delete) {
                    boolean z2 = z;
                    ArrayList arrayList2 = arrayList;
                    int i2 = i;
                    int i3 = R.string.deleting_backup;
                    boolean z3 = false;
                    if (!z2) {
                        arrayList2.remove(i2);
                        if (arrayList2.isEmpty()) {
                            zn4.c(new no5(wifiActivity.a0(), 12));
                            return true;
                        }
                        zn4.c(new ut8(new bz7(arrayList2, nc8.I(q05.DEVICE), false), i3, wifiActivity.a0(), z3));
                        return true;
                    }
                    if (Const.y(wifiActivity)) {
                        arrayList2.remove(i2);
                        if (arrayList2.isEmpty()) {
                            zn4.c(new us5(wifiActivity.a0(), 14));
                            return true;
                        }
                        zn4.c(new ut8(new bz7(arrayList2, nc8.I(q05.CLOUD), false), i3, wifiActivity.a0(), z3));
                        return true;
                    }
                } else {
                    et8 et8Var3 = et8Var;
                    if (itemId == R.id.action_restore) {
                        iu8 iu8VarA0 = wifiActivity.a0();
                        zn4.c(new rm(16, nc8.I(et8Var3), iu8VarA0));
                        return true;
                    }
                    if (itemId == R.id.action_show_password) {
                        wifiActivity.e0(et8Var3);
                    }
                }
                return true;
            }
        };
        u45Var.j();
    }

    public final void d0() {
        Integer numW;
        String str;
        Integer numW2;
        String str2;
        et8 et8Var = Y;
        if (et8Var == null) {
            return;
        }
        gv7 gv7Var = new gv7(new ov(16));
        gv7 gv7Var2 = new gv7(new qm(23));
        View viewInflate = View.inflate(this, R.layout.wifi_show_dialog, null);
        viewInflate.getClass();
        RecyclerView recyclerView = (RecyclerView) viewInflate;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        String strT = uq7.T(et8Var.getSSID(), "\"", "");
        ArrayList arrayList = new ArrayList();
        String properPreSharedKey = et8Var.getProperPreSharedKey();
        if (properPreSharedKey.length() > 0) {
            arrayList.add(new pt8("Password", properPreSharedKey, true));
        }
        PasswordInfo passwordInfo = et8Var.getPasswordInfo();
        if (passwordInfo != null && passwordInfo.hasValidEnterpriseDetails()) {
            String entEapMethod = passwordInfo.getEntEapMethod();
            if (entEapMethod != null && (numW2 = uq7.W(10, entEapMethod)) != null && (str2 = (String) ((Map) gv7Var.getValue()).get(numW2)) != null) {
                arrayList.add(new pt8("EAP", str2, false));
            }
            String entPhase2Method = passwordInfo.getEntPhase2Method();
            if (entPhase2Method != null && (numW = uq7.W(10, entPhase2Method)) != null && (str = (String) ((Map) gv7Var2.getValue()).get(numW)) != null) {
                arrayList.add(new pt8("Phase-2 authentication", str, false));
            }
            String entCaCert = passwordInfo.getEntCaCert();
            if (entCaCert != null && entCaCert.length() > 0) {
                arrayList.add(new pt8("CA certificate", entCaCert, false));
            }
            String entIdentity = passwordInfo.getEntIdentity();
            if (entIdentity != null && entIdentity.length() > 0) {
                arrayList.add(new pt8("Identity", entIdentity, true));
            }
            String entAnonIdentity = passwordInfo.getEntAnonIdentity();
            if (entAnonIdentity != null && entAnonIdentity.length() > 0) {
                arrayList.add(new pt8("Anonymous identity", entAnonIdentity, true));
            }
            String properEnterprisePassword = et8Var.getProperEnterprisePassword();
            if (properEnterprisePassword.length() > 0) {
                arrayList.add(new pt8("Password", properEnterprisePassword, true));
            }
        }
        recyclerView.setAdapter(new ot8(arrayList));
        s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
        ra raVar = (ra) s35Var.b;
        raVar.m = false;
        raVar.d = strT;
        s35Var.s(R.string.ok, null);
        raVar.s = recyclerView;
        s35Var.m();
        Y = null;
    }

    public final void e0(et8 et8Var) {
        Y = et8Var;
        if (a0().l) {
            d0();
            return;
        }
        this.T = et8Var;
        if (b67.b()) {
            String string = getString(R.string.show_password);
            string.getClass();
            U(this.R, string, et8Var.getSSID());
        } else {
            if (b67.b()) {
                g84.h("Method call WifiActivity.authenticatePreQ()() requires sdk below Android Q!");
                return;
            }
            KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KeyguardManager.class);
            Intent intentCreateConfirmDeviceCredentialIntent = keyguardManager != null ? keyguardManager.createConfirmDeviceCredentialIntent(getString(R.string.show_password), et8Var.getSSID()) : null;
            if (intentCreateConfirmDeviceCredentialIntent == null) {
                d0();
            } else {
                startActivityForResult(intentCreateConfirmDeviceCredentialIntent, 1816);
            }
        }
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1816) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 == -1) {
            d0();
            a0().l = true;
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        setContentView(X().a);
        setSupportActionBar((Toolbar) ((ix0) X().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        final int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(X().d, 7);
        final int i2 = 0;
        int i3 = 5;
        if (b67.a == 29) {
            MaterialCardView materialCardView = X().e;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("user_acknowledge_no_batch_restore_on_q", false);
                sz8.d0(materialCardView, !z);
                X().c.setOnClickListener(new ce1(i3, this, materialCardView));
            } catch (ClassCastException unused) {
                z = false;
            }
        }
        a0().g.e(this, new s30(i3, new px(this, 19)));
        a0().h.e(this, new s30(i3, new zs(this, 16)));
        a0().i.e(this, new s30(i3, new mt3(this) { // from class: rr8
            public final /* synthetic */ WifiActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                et8 et8Var;
                int i4 = i;
                be8 be8Var = be8.a;
                WifiActivity wifiActivity = this.b;
                switch (i4) {
                    case 0:
                        Integer num = (Integer) obj;
                        et8 et8Var2 = WifiActivity.Y;
                        wifiActivity.a0().l = true;
                        int i5 = wifiActivity.R;
                        if (num != null && num.intValue() == i5) {
                            et8 et8Var3 = wifiActivity.T;
                            if (et8Var3 != null) {
                                wifiActivity.e0(et8Var3);
                            }
                        } else {
                            int i6 = wifiActivity.S;
                            if (num != null && num.intValue() == i6 && (et8Var = wifiActivity.T) != null) {
                                wifiActivity.Z(et8Var);
                            }
                        }
                        return be8Var;
                    default:
                        final au8 au8Var = (au8) obj;
                        final as8 as8Var = (as8) wifiActivity.W.getValue();
                        au8Var.getClass();
                        MaterialButton materialButton = as8Var.j;
                        WifiActivity wifiActivity2 = as8Var.a;
                        TextView textView = as8Var.i;
                        LinearLayout linearLayout = as8Var.h.a;
                        ConstraintLayout constraintLayout = as8Var.e;
                        QuickRecyclerView quickRecyclerView = as8Var.d;
                        if (au8Var.equals(yt8.a)) {
                            as8Var.a(null);
                            quickRecyclerView.setVisibility(0);
                            constraintLayout.setVisibility(8);
                            linearLayout.setVisibility(8);
                            wifiActivity2.a0(quickRecyclerView);
                            return be8Var;
                        }
                        if (au8Var instanceof wt8) {
                            as8Var.a(null);
                            quickRecyclerView.setVisibility(8);
                            constraintLayout.setVisibility(8);
                            linearLayout.setVisibility(0);
                            textView.setText(R.string.no_backup_in_cloud);
                            return be8Var;
                        }
                        if (au8Var instanceof zt8) {
                            List list = ((zt8) au8Var).a;
                            as8Var.a(Integer.valueOf(list.size()));
                            quickRecyclerView.setVisibility(0);
                            constraintLayout.setVisibility(0);
                            linearLayout.setVisibility(8);
                            h71 h71Var = new h71(wifiActivity2, WifiActivity.V(wifiActivity2, list));
                            h71Var.g = new qt3() { // from class: zr8
                                @Override // defpackage.qt3
                                public final Object invoke(Object obj2, Object obj3) {
                                    View view = (View) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    view.getClass();
                                    as8Var.a.c0(el1.x1(((zt8) au8Var).a), iIntValue, true, view);
                                    return be8.a;
                                }
                            };
                            quickRecyclerView.setAdapter(h71Var);
                            MaterialButton materialButton2 = as8Var.f;
                            materialButton2.setText(R.string.delete_all);
                            materialButton2.setOnClickListener(new zf1(as8Var, 12));
                            MaterialButton materialButton3 = as8Var.g;
                            if (!as8Var.k.b.c()) {
                                materialButton3.setVisibility(8);
                                return be8Var;
                            }
                            materialButton3.setText(R.string.restore_all);
                            materialButton3.setOnClickListener(new h10(7, as8Var, au8Var));
                            return be8Var;
                        }
                        if (!(au8Var instanceof xt8)) {
                            q.j();
                            return null;
                        }
                        as8Var.a(null);
                        quickRecyclerView.setVisibility(8);
                        constraintLayout.setVisibility(8);
                        linearLayout.setVisibility(0);
                        xt8 xt8Var = (xt8) au8Var;
                        int i7 = 16;
                        if (xt8Var.b) {
                            textView.setText(R.string.no_internet_connection_summary);
                            materialButton.setVisibility(0);
                            materialButton.setText(R.string.retry);
                            materialButton.setOnClickListener(new i00(as8Var, i7));
                        }
                        if (!xt8Var.a) {
                            return be8Var;
                        }
                        textView.setText(R.string.cloud_not_connected_summary);
                        materialButton.setVisibility(0);
                        materialButton.setText(R.string.connect_cloud_account);
                        materialButton.setOnClickListener(new es(as8Var, i7));
                        return be8Var;
                }
            }
        }));
        a0().j.e(this, new s30(i3, new w20(this, 23)));
        a0().k.e(this, new s30(i3, new sr8(this, i)));
        ((ix6) fr0.b.getValue()).e(this, new s30(i3, new mt3(this) { // from class: rr8
            public final /* synthetic */ WifiActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                et8 et8Var;
                int i4 = i2;
                be8 be8Var = be8.a;
                WifiActivity wifiActivity = this.b;
                switch (i4) {
                    case 0:
                        Integer num = (Integer) obj;
                        et8 et8Var2 = WifiActivity.Y;
                        wifiActivity.a0().l = true;
                        int i5 = wifiActivity.R;
                        if (num != null && num.intValue() == i5) {
                            et8 et8Var3 = wifiActivity.T;
                            if (et8Var3 != null) {
                                wifiActivity.e0(et8Var3);
                            }
                        } else {
                            int i6 = wifiActivity.S;
                            if (num != null && num.intValue() == i6 && (et8Var = wifiActivity.T) != null) {
                                wifiActivity.Z(et8Var);
                            }
                        }
                        return be8Var;
                    default:
                        final au8 au8Var = (au8) obj;
                        final as8 as8Var = (as8) wifiActivity.W.getValue();
                        au8Var.getClass();
                        MaterialButton materialButton = as8Var.j;
                        WifiActivity wifiActivity2 = as8Var.a;
                        TextView textView = as8Var.i;
                        LinearLayout linearLayout = as8Var.h.a;
                        ConstraintLayout constraintLayout = as8Var.e;
                        QuickRecyclerView quickRecyclerView = as8Var.d;
                        if (au8Var.equals(yt8.a)) {
                            as8Var.a(null);
                            quickRecyclerView.setVisibility(0);
                            constraintLayout.setVisibility(8);
                            linearLayout.setVisibility(8);
                            wifiActivity2.a0(quickRecyclerView);
                            return be8Var;
                        }
                        if (au8Var instanceof wt8) {
                            as8Var.a(null);
                            quickRecyclerView.setVisibility(8);
                            constraintLayout.setVisibility(8);
                            linearLayout.setVisibility(0);
                            textView.setText(R.string.no_backup_in_cloud);
                            return be8Var;
                        }
                        if (au8Var instanceof zt8) {
                            List list = ((zt8) au8Var).a;
                            as8Var.a(Integer.valueOf(list.size()));
                            quickRecyclerView.setVisibility(0);
                            constraintLayout.setVisibility(0);
                            linearLayout.setVisibility(8);
                            h71 h71Var = new h71(wifiActivity2, WifiActivity.V(wifiActivity2, list));
                            h71Var.g = new qt3() { // from class: zr8
                                @Override // defpackage.qt3
                                public final Object invoke(Object obj2, Object obj3) {
                                    View view = (View) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    view.getClass();
                                    as8Var.a.c0(el1.x1(((zt8) au8Var).a), iIntValue, true, view);
                                    return be8.a;
                                }
                            };
                            quickRecyclerView.setAdapter(h71Var);
                            MaterialButton materialButton2 = as8Var.f;
                            materialButton2.setText(R.string.delete_all);
                            materialButton2.setOnClickListener(new zf1(as8Var, 12));
                            MaterialButton materialButton3 = as8Var.g;
                            if (!as8Var.k.b.c()) {
                                materialButton3.setVisibility(8);
                                return be8Var;
                            }
                            materialButton3.setText(R.string.restore_all);
                            materialButton3.setOnClickListener(new h10(7, as8Var, au8Var));
                            return be8Var;
                        }
                        if (!(au8Var instanceof xt8)) {
                            q.j();
                            return null;
                        }
                        as8Var.a(null);
                        quickRecyclerView.setVisibility(8);
                        constraintLayout.setVisibility(8);
                        linearLayout.setVisibility(0);
                        xt8 xt8Var = (xt8) au8Var;
                        int i7 = 16;
                        if (xt8Var.b) {
                            textView.setText(R.string.no_internet_connection_summary);
                            materialButton.setVisibility(0);
                            materialButton.setText(R.string.retry);
                            materialButton.setOnClickListener(new i00(as8Var, i7));
                        }
                        if (!xt8Var.a) {
                            return be8Var;
                        }
                        textView.setText(R.string.cloud_not_connected_summary);
                        materialButton.setVisibility(0);
                        materialButton.setText(R.string.connect_cloud_account);
                        materialButton.setOnClickListener(new es(as8Var, i7));
                        return be8Var;
                }
            }
        }));
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        a0().l();
        super.onStart();
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onWifiRestoreOnQRequestEvent(lt8 lt8Var) {
        lt8Var.getClass();
        Z(lt8Var.a);
    }
}
