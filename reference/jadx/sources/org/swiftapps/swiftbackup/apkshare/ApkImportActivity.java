package org.swiftapps.swiftbackup.apkshare;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.ag;
import defpackage.bg;
import defpackage.bn6;
import defpackage.bt3;
import defpackage.cr;
import defpackage.cw5;
import defpackage.d7;
import defpackage.dj7;
import defpackage.eg;
import defpackage.fg;
import defpackage.g7;
import defpackage.gv7;
import defpackage.h7;
import defpackage.hf;
import defpackage.il0;
import defpackage.jf;
import defpackage.jx2;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.lg;
import defpackage.ly8;
import defpackage.mf;
import defpackage.mg;
import defpackage.nf;
import defpackage.nq7;
import defpackage.of;
import defpackage.p93;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.rs9;
import defpackage.sz8;
import defpackage.tf;
import defpackage.uf;
import defpackage.uq7;
import defpackage.vf;
import defpackage.wf;
import defpackage.xf;
import defpackage.yf;
import defpackage.zf;
import defpackage.zn4;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apptasks.AppsWorkingDir;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ApkImportActivity extends il0 {
    public static final /* synthetic */ int Q = 0;
    public zf M;
    public ag N;
    public final AlphaAnimation P;
    public final l90 K = new l90(ph6.a(mg.class), new vf(this, 0), new uf(this, 0), new wf(this, 0));
    public final gv7 L = new gv7(new kf(this, 0));
    public final gv7 O = new gv7(new lf(this, 0));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        APKS_ARCHIVE,
        SINGLE_APK;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public ApkImportActivity() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(20L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        this.P = alphaAnimation;
    }

    public final yf N() {
        return (yf) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final mg V() {
        return (mg) this.K.getValue();
    }

    public final void P(boolean z) {
        for (View view : (List) this.O.getValue()) {
            if (z) {
                view.startAnimation(this.P);
            } else {
                view.clearAnimation();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:31:0x004c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ca  */
    public final void Q(Intent intent) {
        Parcelable parcelableExtra;
        Uri data;
        Uri data2;
        final Uri uri;
        Object bn6Var;
        a aVar;
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode != -1173264947) {
                if (iHashCode == -1173171990 && action.equals("android.intent.action.VIEW")) {
                    data = intent.getData();
                } else {
                    if (intent != null) {
                    }
                    if (intent != null) {
                        parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                    } else {
                        parcelableExtra = null;
                    }
                    data = (Uri) parcelableExtra;
                }
            } else if (action.equals("android.intent.action.SEND")) {
                data = (Uri) (intent != null ? intent.getParcelableExtra("android.intent.extra.STREAM") : null);
            } else {
                if (intent != null) {
                }
                if (intent != null) {
                    parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                } else {
                    parcelableExtra = null;
                }
                data = (Uri) parcelableExtra;
            }
            uri = data;
        } else if (intent != null || (data2 = intent.getData()) == null) {
            if (intent != null) {
                parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
            } else {
                parcelableExtra = null;
            }
            data = (Uri) parcelableExtra;
            uri = data;
        } else {
            uri = data2;
        }
        if (uri != null) {
            try {
                Cursor cursorQuery = getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        bn6Var = cursorQuery.moveToFirst() ? cursorQuery.getString(0) : null;
                        cursorQuery.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(cursorQuery, th);
                            throw th2;
                        }
                    }
                } else {
                    bn6Var = null;
                }
            } catch (Throwable th3) {
                bn6Var = new bn6(th3);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            String lastPathSegment = (String) bn6Var;
            if (lastPathSegment == null && (lastPathSegment = uri.getLastPathSegment()) == null) {
                lastPathSegment = "";
            }
            if (uq7.O(lastPathSegment, ".apks", true)) {
                aVar = a.APKS_ARCHIVE;
            } else if (uq7.O(lastPathSegment, ".apk", true) || pe4.d(getContentResolver().getType(uri), "application/vnd.android.package-archive")) {
                aVar = a.SINGLE_APK;
            } else {
                aVar = null;
            }
        } else {
            aVar = null;
        }
        if (uri == null || aVar == null) {
            mg mgVarU = U();
            zf zfVar = mgVarU.j;
            if (zfVar != null) {
                zfVar.a.h();
            }
            mgVarU.j = null;
            SwiftApp.Companion companion = SwiftApp.d;
            mgVarU.o(new eg(null, new cw5(dj7.g(R.string.apk_import_error_title), dj7.g(R.string.unsupported_apks_file))));
            return;
        }
        final mg mgVarU2 = U();
        final boolean z = aVar == a.SINGLE_APK;
        lg lgVar = new lg(uri, z);
        if (mgVarU2.h || pe4.d(mgVarU2.g, lgVar)) {
            return;
        }
        zf zfVar2 = mgVarU2.j;
        if (zfVar2 != null) {
            zfVar2.a.h();
        }
        mgVarU2.j = null;
        mgVarU2.g = lgVar;
        mgVarU2.h = true;
        mgVarU2.o(new fg());
        zn4 zn4Var = zn4.a;
        zn4.d(new bt3() { // from class: jg
            @Override // defpackage.bt3
            public final Object invoke() {
                Object bn6Var2;
                zh zhVarN;
                q63 q63Var = null;
                try {
                    q63 q63VarJ = AppsWorkingDir.INSTANCE.getWorkingDir("apks_import", 0L).J(String.valueOf(System.currentTimeMillis()));
                    if (q63.E(q63VarJ)) {
                        q63Var = q63VarJ;
                    } else {
                        g84.f(xs1.i(q63VarJ, "Unable to create APKS import working directory: "));
                    }
                    boolean z2 = z;
                    Uri uri2 = uri;
                    if (z2) {
                        q63 q63VarJ2 = q63Var.J("base.apk");
                        mg.k(uri2, q63VarJ2, "Unable to open APK file");
                        zhVarN = new zh(q63Var, nc8.I(q63VarJ2), ov2.a);
                    } else {
                        zhVarN = mg.n(uri2, q63Var);
                    }
                    List list = zhVarN.c;
                    List list2 = zhVarN.b;
                    bg bgVarA = cg.a(list2, list);
                    bn6Var2 = new pw5(new zf(q63Var, list2, list, bgVarA.c), bgVarA);
                } catch (Throwable th4) {
                    bn6Var2 = new bn6(th4);
                }
                mg mgVar = mgVarU2;
                mgVar.h = false;
                if (!(bn6Var2 instanceof bn6)) {
                    pw5 pw5Var = (pw5) bn6Var2;
                    zf zfVar3 = (zf) pw5Var.a;
                    bg bgVar = (bg) pw5Var.b;
                    mgVar.j = zfVar3;
                    mgVar.o(new gg(bgVar, zfVar3));
                }
                Throwable thA = en6.a(bn6Var2);
                if (thA != null) {
                    if (q63Var != null) {
                        q63Var.h();
                    }
                    bg bgVarL = mgVar.l();
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    mgVar.o(new eg(bgVarL, new cw5(dj7.g(R.string.apk_import_error_title), dj7.k(SwiftApp.Companion.c().getString(R.string.invalid_apks_archive), "\n\n", io4.b(thA)))));
                }
                return be8.a;
            }
        });
    }

    public final void R(zf zfVar) {
        mg mgVarU = U();
        zfVar.getClass();
        mgVarU.j = null;
        mgVarU.o(new fg(R.string.apk_import_status_falling_back_to_system_installer, mgVarU.l()));
        int i = 0;
        cr.e(this, zfVar.b, false, false, new hf(i, this, zfVar), new jf(i, this, zfVar));
        mg mgVarU2 = U();
        mgVarU2.o(new fg(R.string.apk_import_status_waiting_for_installer, mgVarU2.l()));
    }

    public final void S(bg bgVar) {
        P(false);
        N().n.setVisibility(0);
        N().c.setVisibility(8);
        N().b.setVisibility(0);
        Drawable drawable = bgVar.a;
        String str = bgVar.h;
        if (drawable != null) {
            N().x.setImageDrawable(bgVar.a);
        } else {
            N().x.setImageResource(R.drawable.sym_def_app_icon);
        }
        N().J.setText(bgVar.b);
        TextView textView = N().L;
        String string = bgVar.c;
        if (string == null) {
            string = getString(R.string.unknown);
            string.getClass();
        }
        textView.setText(string);
        TextView textView2 = N().O;
        String str2 = bgVar.d;
        Long l = bgVar.e;
        if (str2 != null && !nq7.j0(str2) && l != null) {
            str2 = str2 + " (" + l + ")";
        } else if (str2 == null || nq7.j0(str2)) {
            if (l != null) {
                str2 = "(" + l + ")";
            } else {
                str2 = "";
            }
        }
        textView2.setText(str2);
        TextView textView3 = N().O;
        CharSequence text = N().O.getText();
        textView3.setVisibility((text == null || nq7.j0(text)) ? 8 : 0);
        TextView textView4 = N().I;
        Integer numValueOf = Integer.valueOf(bgVar.f);
        p93 p93Var = p93.a;
        textView4.setText(getString(R.string.apk_import_apk_summary, numValueOf, p93.c(Long.valueOf(bgVar.g))));
        N().K.setVisibility((str == null || nq7.j0(str)) ? 8 : 0);
        N().K.setText(str != null ? getString(R.string.apk_import_installer_source, str) : null);
    }

    public final void T(bg bgVar) {
        if (bgVar != null) {
            S(bgVar);
            return;
        }
        P(false);
        this.M = null;
        this.N = null;
        N().n.setVisibility(8);
        N().b.setVisibility(8);
        N().c.setVisibility(8);
        N().x.setImageResource(R.drawable.sym_def_app_icon);
        N().J.setText((CharSequence) null);
        N().L.setText((CharSequence) null);
        N().O.setText((CharSequence) null);
        N().I.setText((CharSequence) null);
        N().K.setText((CharSequence) null);
        N().K.setVisibility(8);
    }

    public final void U(boolean z, boolean z2, boolean z3, boolean z4) {
        N().e.setVisibility(z ? 0 : 8);
        N().k.setVisibility(z2 ? 0 : 8);
        N().f.setVisibility(z3 ? 0 : 8);
        N().d.setVisibility(z4 ? 0 : 8);
        N().r.setVisibility((z3 || z4) ? 0 : 8);
        N().p.setVisibility((z || z2 || z3 || z4) ? 0 : 8);
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        cr.b(this, i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayout = N().a;
        linearLayout.getClass();
        if (K(linearLayout)) {
            int i = 0;
            N().y.setOnClickListener(new mf(this, i));
            N().e.setOnClickListener(new nf(this, i));
            N().k.setOnClickListener(new g7(this, 1));
            N().d.setOnClickListener(new h7(this, 1));
            N().f.setOnClickListener(new of(this, i));
            LinearLayout linearLayout2 = N().q;
            linearLayout2.getClass();
            sz8.b(linearLayout2, 13);
            sz8.b(N().p, 7);
            U().e.e(this, new tf(0, new xf(1, this, ApkImportActivity.class, "renderState", "renderState(Lorg/swiftapps/swiftbackup/apkshare/ApkImportUiState;)V", 0, 0)));
            U().f.e(this, new tf(0, new d7(this, 1)));
            Q(getIntent());
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        Q(intent);
    }
}
