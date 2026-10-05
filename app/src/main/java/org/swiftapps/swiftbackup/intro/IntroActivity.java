package org.swiftapps.swiftbackup.intro;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.button.MaterialButton;
import defpackage.af4;
import defpackage.b67;
import defpackage.bf4;
import defpackage.c7;
import defpackage.cf4;
import defpackage.cz4;
import defpackage.d45;
import defpackage.da8;
import defpackage.df4;
import defpackage.dj;
import defpackage.dw;
import defpackage.dz5;
import defpackage.e7;
import defpackage.ej;
import defpackage.eq3;
import defpackage.f11;
import defpackage.f28;
import defpackage.fj;
import defpackage.gf4;
import defpackage.gg3;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.h28;
import defpackage.hf4;
import defpackage.hl0;
import defpackage.i7;
import defpackage.if4;
import defpackage.il0;
import defpackage.io4;
import defpackage.jf4;
import defpackage.jx2;
import defpackage.k55;
import defpackage.kf4;
import defpackage.kx2;
import defpackage.l90;
import defpackage.lm;
import defpackage.ly8;
import defpackage.mf;
import defpackage.mf4;
import defpackage.nf;
import defpackage.nq7;
import defpackage.of;
import defpackage.oh1;
import defpackage.p30;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.pw5;
import defpackage.px;
import defpackage.q;
import defpackage.q30;
import defpackage.qf4;
import defpackage.qi7;
import defpackage.sz8;
import defpackage.u10;
import defpackage.uf3;
import defpackage.ux5;
import defpackage.v10;
import defpackage.ve4;
import defpackage.vr6;
import defpackage.vs7;
import defpackage.w20;
import defpackage.w3;
import defpackage.wa;
import defpackage.x65;
import defpackage.xe4;
import defpackage.ye4;
import defpackage.yx5;
import defpackage.z3;
import defpackage.zn4;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class IntroActivity extends il0 {
    public static final /* synthetic */ int V = 0;
    public final gv7 N;
    public final gv7 O;
    public final gv7 P;
    public final gv7 R;
    public wa S;
    public a T;
    public wa U;
    public final l90 K = new l90(ph6.a(d.class), new q30(this, 4), new p30(this, 2), new gl0(this, 5));
    public final gv7 L = new gv7(new ej(this, 23));
    public final gv7 M = new gv7(new fj(this, 27));
    public final gv7 Q = new gv7(new af4(this, 1));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        ConnectionCard,
        FirstRunRestore;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public IntroActivity() {
        int i = 1;
        this.N = new gv7(new xe4(this, i));
        this.O = new gv7(new ye4(this, i));
        int i2 = 0;
        this.P = new gv7(new cf4(this, i2));
        this.R = new gv7(new df4(this, i2));
    }

    public static boolean S() {
        d45.b.getClass();
        return d45.a() != null;
    }

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    public final void N() {
        if (P().b()) {
            P().a(3);
        }
    }

    public final jf4 O() {
        return (jf4) this.P.getValue();
    }

    public final qi7 P() {
        return (qi7) this.R.getValue();
    }

    public final if4 Q() {
        return (if4) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final d a0() {
        return (d) this.K.getValue();
    }

    public final void T() {
        Log.d(r(), "onFirstIntroSuccess");
        d dVarA0 = a0();
        if (dVarA0.e != null) {
            return;
        }
        dVarA0.k.k(d.a.RUNNING);
        zn4 zn4Var = zn4.a;
        dVarA0.e = zn4.b(null, new e(dVarA0, null));
    }

    public final void U(boolean z, boolean z2) {
        zn4 zn4Var = zn4.a;
        zn4.f(500L, new ve4(this, 1));
        if (S()) {
            return;
        }
        if (!z) {
            if (!Const.d(this)) {
                return;
            } else {
                V.INSTANCE.setG(z2);
            }
        }
        a0().m(z, this);
    }

    public final void V() {
        SharedPreferences.Editor editor = cz4.k;
        ux5 ux5Var = null;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putBoolean("KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED", true).commit();
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 == null) {
            pe4.F("editor");
            throw null;
        }
        editor2.putBoolean("KEY_FIRST_START", false).commit();
        try {
            ux5Var = (ux5) ((kx2) ux5.getEntries()).get(V.INSTANCE.getZ().getInt("saved_password_mode", ux5.STANDARD_PASSWORD.ordinal()));
        } catch (Exception unused) {
        }
        if (ux5Var == null) {
            ux5Var = ux5.STANDARD_PASSWORD;
        }
        if (ux5Var != ux5.USER_PASSWORD) {
            M(R.string.getting_started);
            zn4.f(500L, new xe4(this, 2));
        } else {
            Intent intentPutExtra = new Intent(this, (Class<?>) UserPasswordActivity.class).putExtra("extra_is_restoring", true);
            intentPutExtra.getClass();
            startActivityForResult(intentPutExtra, 1981811);
        }
    }

    public final void W() {
        a aVar = a.ConnectionCard;
        wa waVar = this.S;
        if (waVar != null && waVar.isShowing()) {
            if (this.T == aVar) {
                return;
            }
            wa waVar2 = this.S;
            if (waVar2 != null) {
                waVar2.dismiss();
            }
        }
        this.T = aVar;
        gg3 gg3Var = gg3.a;
        wa waVarG = gg3.g(this, Integer.valueOf(R.string.exit), new ye4(this, 3), Integer.valueOf(R.string.continue_anyway), new ve4(this, 0));
        this.S = waVarG;
        if (waVarG != null) {
            waVarG.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: we4
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.a.T = null;
                }
            });
        }
    }

    public final void X() {
        a aVar = a.FirstRunRestore;
        wa waVar = this.S;
        if (waVar != null && waVar.isShowing()) {
            if (this.T == aVar) {
                return;
            }
            wa waVar2 = this.S;
            if (waVar2 != null) {
                waVar2.dismiss();
            }
        }
        this.T = aVar;
        gg3 gg3Var = gg3.a;
        int i = 0;
        wa waVarG = gg3.g(this, Integer.valueOf(R.string.retry), new xe4(this, i), Integer.valueOf(R.string.continue_anyway), new ye4(this, i));
        this.S = waVarG;
        if (waVarG != null) {
            waVarG.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ze4
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.a.T = null;
                }
            });
        }
    }

    public final void Y(boolean z) {
        pw5 pw5Var = new pw5(((kf4) this.M.getValue()).a, Boolean.valueOf(!S()));
        pw5 pw5Var2 = new pw5(Q().k, Boolean.valueOf(!S()));
        pw5 pw5Var3 = new pw5(O().a, Boolean.valueOf(S() && !(dz5.n() && dz5.h("android.permission.POST_NOTIFICATIONS") && dz5.k())));
        IntroPermissionCardView introPermissionCardView = O().e;
        dz5 dz5Var = dz5.a;
        for (Map.Entry entry : x65.r0(pw5Var, pw5Var2, pw5Var3, new pw5(introPermissionCardView, Boolean.valueOf(!dz5.n())), new pw5(O().c, Boolean.valueOf(!dz5.h("android.permission.POST_NOTIFICATIONS"))), new pw5(O().f, Boolean.valueOf(dz5.l(dz5.j()) && !dz5.k()))).entrySet()) {
            View view = (View) entry.getKey();
            boolean zBooleanValue = ((Boolean) entry.getValue()).booleanValue();
            if (!sz8.I(view) || zBooleanValue || !z) {
                sz8.d0(view, zBooleanValue);
            } else if (sz8.I(view)) {
                da8.a(Q().a, null);
                view.setVisibility(8);
            }
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1003) {
            a0().p(i2 == -1 ? d.b.SIGNED_IN : d.b.NOT_SIGNED_IN);
            if (i2 == 179) {
                V.INSTANCE.setG(true);
                a0().m(false, this);
                return;
            }
        }
        if (i == 9785) {
            a0().o();
            return;
        }
        if (i != 1981811) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        String strK = yx5.k();
        if (strK == null || strK.length() == 0 || nq7.j0(strK)) {
            vr6.e$default(vr6.INSTANCE, r(), eq3.k("User entered invalid password: '", strK, "'. Falling back to app generated password strategy."), null, 4, null);
            ux5 ux5Var = ux5.STANDARD_PASSWORD;
            ux5Var.getClass();
            V.INSTANCE.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
            yx5.n(null);
        } else {
            ux5 ux5Var2 = ux5.USER_PASSWORD;
            ux5Var2.getClass();
            V.INSTANCE.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var2)).apply();
            yx5.n(strK);
        }
        M(R.string.getting_started);
        zn4.f(500L, new xe4(this, 2));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0052  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c3  */
    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) throws Throwable {
        boolean z;
        int iA;
        boolean z2;
        boolean z3;
        String string;
        Object next;
        boolean z4;
        Const r0 = Const.a;
        super.onCreate(bundle);
        if (!o()) {
            return;
        }
        final int i = 1;
        a0().n.e(this, new f11(i, new e7(this, 17)));
        Throwable th = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("KEY_FIRST_START", true);
            final int i2 = 0;
            if (z) {
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z4 = sharedPreferences2.getBoolean("KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED", false);
                    if (z4) {
                        if (S() && dz5.n() && dz5.h("android.permission.POST_NOTIFICATIONS") && dz5.k() && a0().f.d() != d.b.RUNNING && a0().p.g == mf4.IDLE) {
                            d dVarA0 = a0();
                            Intent intent = getIntent();
                            intent.getClass();
                            dVarA0.n(intent, false, new oh1(1, dVarA0.o, qf4.class, "start", "start(Lkotlin/jvm/functions/Function1;)Z", 0, 3));
                            return;
                        }
                    }
                } catch (ClassCastException unused) {
                    z4 = false;
                }
            } else if (S()) {
                d dVarA1 = a0();
                Intent intent2 = getIntent();
                intent2.getClass();
                dVarA1.n(intent2, false, new oh1(1, dVarA1.o, qf4.class, "start", "start(Lkotlin/jvm/functions/Function1;)Z", 0, 3));
                return;
            }
            Log.d(r(), "onCreate: onboarding activity started");
            if (v()) {
                h28.Companion.getClass();
                if (f28.e()) {
                    iA = -16777216;
                } else {
                    iA = vs7.SURFACE_0.a(this);
                }
            } else {
                iA = vs7.SURFACE_0.a(this);
            }
            io4.a(this).setBackgroundColor(iA);
            if (!b67.f()) {
                getWindow().setStatusBarColor(iA);
            }
            setContentView(Q().a);
            LinearLayout linearLayout = Q().a;
            linearLayout.getClass();
            sz8.b(linearLayout, 13);
            sz8.b(Q().k, 7);
            ((kf4) this.M.getValue()).b.setText(getString(R.string.signin_intro_subtitle));
            uf3 uf3Var = (uf3) this.Q.getValue();
            try {
                String string2 = getString(R.string.firebase_backend_diagnostics_message);
                string2.getClass();
                uf3Var.b.setText(nq7.C0(string2, "\n", string2));
            } catch (Exception unused2) {
            }
            uf3Var.a.setOnClickListener(new View.OnClickListener(this) { // from class: ue4
                public final /* synthetic */ IntroActivity b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i3 = i2;
                    IntroActivity introActivity = this.b;
                    switch (i3) {
                        case 0:
                            int i4 = IntroActivity.V;
                            introActivity.W();
                            return;
                        default:
                            int i5 = IntroActivity.V;
                            introActivity.a0();
                            SharedPreferences.Editor editor = cz4.k;
                            if (editor == null) {
                                pe4.F("editor");
                                throw null;
                            }
                            editor.putBoolean("show_root_grant_permissions_button", false).commit();
                            introActivity.O().d.setVisibility(8);
                            dz5 dz5Var = dz5.a;
                            cb cbVar = new cb(introActivity);
                            if (b67.c()) {
                                dz5.o(introActivity, dz5.c(), false);
                                return;
                            } else {
                                String[] strArr = (String[]) dz5.c().toArray(new String[0]);
                                dz5.a(introActivity, cbVar, (String[]) Arrays.copyOf(strArr, strArr.length));
                                return;
                            }
                    }
                }
            });
            Y(false);
            Spanned spannedFromHtml = Html.fromHtml(getString(R.string.tos_privacy_agreement), 0);
            spannedFromHtml.getClass();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
            Object[] spans = spannableStringBuilder.getSpans(0, spannedFromHtml.length(), URLSpan.class);
            spans.getClass();
            URLSpan[] uRLSpanArr = (URLSpan[]) spans;
            int length = uRLSpanArr.length;
            int i3 = 0;
            while (i3 < length) {
                URLSpan uRLSpan = uRLSpanArr[i3];
                spannableStringBuilder.setSpan(new hf4(this, uRLSpan), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
                spannableStringBuilder.removeSpan(uRLSpan);
                i3++;
                th = th;
            }
            Throwable th2 = th;
            TextView textView = Q().p;
            textView.setText(spannableStringBuilder);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            MaterialButton materialButton = (MaterialButton) this.N.getValue();
            k55.a(materialButton);
            materialButton.setOnClickListener(new bf4(this, 0));
            materialButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: ef4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    int i4 = IntroActivity.V;
                    this.a.U(false, true);
                    return true;
                }
            });
            Object value = this.O.getValue();
            value.getClass();
            ((View) value).setOnClickListener(new of(this, 6));
            O().e.getActionButton().setOnClickListener(new View.OnClickListener(this) { // from class: ue4
                public final /* synthetic */ IntroActivity b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i4 = i;
                    IntroActivity introActivity = this.b;
                    switch (i4) {
                        case 0:
                            int i5 = IntroActivity.V;
                            introActivity.W();
                            return;
                        default:
                            int i6 = IntroActivity.V;
                            introActivity.a0();
                            SharedPreferences.Editor editor = cz4.k;
                            if (editor == null) {
                                pe4.F("editor");
                                throw null;
                            }
                            editor.putBoolean("show_root_grant_permissions_button", false).commit();
                            introActivity.O().d.setVisibility(8);
                            dz5 dz5Var = dz5.a;
                            cb cbVar = new cb(introActivity);
                            if (b67.c()) {
                                dz5.o(introActivity, dz5.c(), false);
                                return;
                            } else {
                                String[] strArr = (String[]) dz5.c().toArray(new String[0]);
                                dz5.a(introActivity, cbVar, (String[]) Arrays.copyOf(strArr, strArr.length));
                                return;
                            }
                    }
                }
            });
            int i4 = 9;
            O().c.getActionButton().setOnClickListener(new dj(this, i4));
            O().f.getActionButton().setOnClickListener(new gf4(this, i));
            LinearLayoutCompat linearLayoutCompat = O().d;
            a0();
            try {
                SharedPreferences sharedPreferences3 = cz4.f;
                if (sharedPreferences3 == null) {
                    pe4.F("prefs");
                    throw th2;
                }
                z2 = sharedPreferences3.getBoolean("show_root_grant_permissions_button", true);
                sz8.d0(linearLayoutCompat, z2);
                O().b.setOnClickListener(new mf(this, i4));
                Q().n.setOnClickListener(new nf(this, 8));
                a0();
                r0.e();
                a0().f.e(this, new f11(i, new b(1, this, IntroActivity.class, "onSignInStatusChange", "onSignInStatusChange(Lorg/swiftapps/swiftbackup/intro/IntroVM$SignInStatus;)V", 0)));
                gg3 gg3Var = gg3.a;
                uf3 uf3Var2 = (uf3) this.Q.getValue();
                af4 af4Var = new af4(this, 0);
                uf3Var2.getClass();
                gg3.c.e(this, new i7(i, new dw(i, this, af4Var, uf3Var2)));
                int i5 = 12;
                a0().g.e(this, new f11(i, new u10(this, i5)));
                a0().h.e(this, new f11(i, new v10(this, 14)));
                a0().i.e(this, new f11(i, new px(this, 10)));
                a0().j.e(this, new f11(i, new lm(this, i5)));
                a0().k.e(this, new f11(i, new c(1, this, IntroActivity.class, "onFirstRunRestoreStatus", "onFirstRunRestoreStatus(Lorg/swiftapps/swiftbackup/intro/IntroVM$FirstRunRestoreStatus;)V", 0)));
                a0().l.e(this, new f11(i, new w20(this, 15)));
                if (a0().p.g == mf4.AWAITING_SHIZUKU) {
                    I(new hl0(1, a0(), d.class, "onShizukuPermissionResult", "onShizukuPermissionResult(Z)V", 0, 2));
                }
                a0().m.e(this, new f11(i, new c7(this, 19)));
                if (bundle != null && (string = bundle.getString("KEY_FIREBASE_ERROR_DIALOG_MODE")) != null) {
                    Iterator it = ((z3) a.getEntries()).iterator();
                    do {
                        w3 w3Var = (w3) it;
                        if (!w3Var.hasNext()) {
                            next = th2;
                            break;
                        }
                        next = w3Var.next();
                    } while (!pe4.d(((a) next).name(), string));
                    a aVar = (a) next;
                    if (aVar != null) {
                        int i6 = org.swiftapps.swiftbackup.intro.a.b[aVar.ordinal()];
                        if (i6 == 1) {
                            W();
                        } else {
                            if (i6 != 2) {
                                q.j();
                                return;
                            }
                            X();
                        }
                    }
                }
                try {
                    SharedPreferences sharedPreferences4 = cz4.f;
                    if (sharedPreferences4 == null) {
                        pe4.F("prefs");
                        throw th2;
                    }
                    z3 = sharedPreferences4.getBoolean("is_migrating_to_google_sign_in", false);
                    if (z3) {
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor == null) {
                            pe4.F("editor");
                            throw th2;
                        }
                        editor.putBoolean("is_migrating_to_google_sign_in", false).commit();
                        ((MaterialButton) this.N.getValue()).callOnClick();
                    }
                } catch (ClassCastException unused3) {
                    z3 = false;
                }
            } catch (ClassCastException unused4) {
                z2 = true;
            }
        } catch (ClassCastException unused5) {
            z = true;
        }
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        wa waVar;
        bundle.getClass();
        a aVar = this.T;
        if (aVar != null && (waVar = this.S) != null && waVar.isShowing()) {
            bundle.putString("KEY_FIREBASE_ERROR_DIALOG_MODE", aVar.name());
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }

    @Override // defpackage.k28
    public final boolean t() {
        return false;
    }
}
