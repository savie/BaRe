package org.swiftapps.swiftbackup.detail;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import defpackage.ak;
import defpackage.bt3;
import defpackage.cf2;
import defpackage.cj2;
import defpackage.cz4;
import defpackage.d65;
import defpackage.d76;
import defpackage.dj2;
import defpackage.ej;
import defpackage.ek;
import defpackage.eq3;
import defpackage.fc5;
import defpackage.fu;
import defpackage.g36;
import defpackage.gv7;
import defpackage.hj;
import defpackage.hk;
import defpackage.hk0;
import defpackage.io4;
import defpackage.iu;
import defpackage.ix0;
import defpackage.iz4;
import defpackage.ji;
import defpackage.k3;
import defpackage.kf;
import defpackage.l0;
import defpackage.l90;
import defpackage.lf;
import defpackage.lx;
import defpackage.mk2;
import defpackage.nc8;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.pj2;
import defpackage.q;
import defpackage.q05;
import defpackage.q63;
import defpackage.qj2;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.tf;
import defpackage.tj;
import defpackage.tj2;
import defpackage.u45;
import defpackage.uf;
import defpackage.vf;
import defpackage.vr6;
import defpackage.wf;
import defpackage.xf;
import defpackage.xs1;
import defpackage.xx3;
import defpackage.yq;
import defpackage.zi2;
import defpackage.zn4;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.views.PreCachingGridLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DetailActivity extends sa1 {
    public static final /* synthetic */ int b0 = 0;
    public final l90 P;
    public final gv7 S;
    public final gv7 V;
    public final gv7 W;
    public boolean X;
    public final gv7 Y;
    public ShortcutPinnedReceiver Z;
    public final gv7 Q = new gv7(new ak(this, 12));
    public boolean R = true;
    public final gv7 T = new gv7(new d76(this, 20));
    public final gv7 U = new gv7(new kf(this, 22));
    public final fu a0 = new fu((Object) this);

    public DetailActivity() {
        int i = 4;
        this.P = new l90(ph6.a(mk2.class), new vf(this, i), new uf(this, 6), new wf(this, i));
        final int i2 = 1;
        final int i3 = 0;
        this.S = new gv7(new bt3(this) { // from class: xi2
            public final /* synthetic */ DetailActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                DetailActivity detailActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = DetailActivity.b0;
                        return new xi0(detailActivity);
                    default:
                        int i6 = DetailActivity.b0;
                        TransitionSet duration = new t35().setDuration(400L);
                        duration.getClass();
                        duration.addListener((Transition.TransitionListener) new bj2(detailActivity));
                        return duration;
                }
            }
        });
        int i4 = 18;
        this.V = new gv7(new lf(this, i4));
        this.W = new gv7(new ej(this, i4));
        this.Y = new gv7(new bt3(this) { // from class: xi2
            public final /* synthetic */ DetailActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                DetailActivity detailActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = DetailActivity.b0;
                        return new xi0(detailActivity);
                    default:
                        int i7 = DetailActivity.b0;
                        TransitionSet duration = new t35().setDuration(400L);
                        duration.getClass();
                        duration.addListener((Transition.TransitionListener) new bj2(detailActivity));
                        return duration;
                }
            }
        });
    }

    public static final void U(SpannableStringBuilder spannableStringBuilder, String str, CharSequence charSequence) {
        if (spannableStringBuilder.length() > 0) {
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.append(": ");
        spannableStringBuilder.append(charSequence);
    }

    public static String V(long j) {
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            String str = NumberFormat.getNumberInstance((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()).format(j);
            str.getClass();
            return str;
        } catch (ClassCastException unused) {
        }
    }

    public static String W(long j) {
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            String str = DateFormat.getDateTimeInstance(0, 3, (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()).format(Long.valueOf(j));
            str.getClass();
            return str;
        } catch (ClassCastException unused) {
        }
    }

    public static void Z(d65 d65Var, hk0 hk0Var, long j) {
        if (j > 0) {
            d65Var.put(hk0Var, Long.valueOf(j));
        }
    }

    public static tj2 a0(QuickRecyclerView quickRecyclerView) {
        tj2 tj2Var = new tj2(null);
        Context context = quickRecyclerView.getContext();
        context.getClass();
        quickRecyclerView.setLayoutManager(new PreCachingGridLayoutManager(context, 2));
        cf2 cf2Var = (cf2) quickRecyclerView.getItemAnimator();
        if (cf2Var != null) {
            cf2Var.g = false;
        }
        quickRecyclerView.setAdapter(tj2Var);
        return tj2Var;
    }

    public final dj2 X() {
        return (dj2) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final mk2 U() {
        return (mk2) this.P.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:17:0x003a  */
    public final void b0(View view, final q05 q05Var, final iz4 iz4Var, final AppCloudBackup appCloudBackup) {
        LocalMetadata metadata;
        final boolean z;
        LocalMetadata metadata2;
        CloudMetadata metadata3;
        CloudMetadata metadata4;
        q05Var.getClass();
        if (iz4Var == null && appCloudBackup == null) {
            l0.e("Both localBackup and cloudBackup are null");
            return;
        }
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_detail_backup_card_actions);
        int[] iArr = zi2.b;
        int i = iArr[q05Var.ordinal()];
        if (i != 1) {
            if (i != 2) {
                q.j();
                return;
            } else if (appCloudBackup == null || (metadata4 = appCloudBackup.getMetadata()) == null || !metadata4.isProtectedBackup()) {
                z = false;
            } else {
                z = true;
            }
        } else if (iz4Var == null || (metadata = iz4Var.getMetadata()) == null || !metadata.isProtectedBackup()) {
            z = false;
        } else {
            z = true;
        }
        int i2 = iArr[q05Var.ordinal()];
        String note = null;
        if (i2 != 1) {
            if (i2 != 2) {
                q.j();
                return;
            } else if (appCloudBackup != null && (metadata3 = appCloudBackup.getMetadata()) != null) {
                note = metadata3.getNote();
            }
        } else if (iz4Var != null && (metadata2 = iz4Var.getMetadata()) != null) {
            note = metadata2.getNote();
        }
        final String str = note;
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.getClass();
        int size = fc5Var.f.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = fc5Var.getItem(i3);
            int itemId = item.getItemId();
            if (itemId == R.id.action_protect_backup) {
                item.setTitle(z ? R.string.unprotect_backup : R.string.protect_backup);
                item.setIcon(z ? R.drawable.ic_protection_off : R.drawable.ic_protection_on);
            } else if (itemId == R.id.action_update_note) {
                item.setVisible(str == null || str.length() == 0);
            } else if (itemId == R.id.action_sync) {
                item.setVisible(q05Var.isDevice() && iz4Var != null);
                if (item.isVisible() && !V.INSTANCE.getA()) {
                    Drawable drawable = getDrawable(R.drawable.ic_flash_outline);
                    drawable.getClass();
                    int iC = io4.c(this, getColor(R.color.premium));
                    Drawable drawableMutate = drawable.mutate();
                    drawableMutate.getClass();
                    drawableMutate.setTint(iC);
                    item.setIcon(drawableMutate);
                }
            } else if (itemId == R.id.action_delete) {
                Drawable icon = item.getIcon();
                icon.getClass();
                int iR = sz8.r(this);
                Drawable drawableMutate2 = icon.mutate();
                drawableMutate2.getClass();
                drawableMutate2.setTint(iR);
                item.setIcon(drawableMutate2);
                item.setTitle(R.string.delete_backup);
            } else if (itemId == R.id.action_metadata) {
                item.setVisible(false);
            }
        }
        u45Var.e = new g36() { // from class: ti2
            /* JADX WARN: Code duplicated, block: B:27:0x0096  */
            @Override // defpackage.g36
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean z2;
                int i4 = DetailActivity.b0;
                int itemId2 = menuItem.getItemId();
                final DetailActivity detailActivity = this.a;
                final iz4 iz4Var2 = iz4Var;
                final AppCloudBackup appCloudBackup2 = appCloudBackup;
                int i5 = 1;
                if (itemId2 == R.id.action_backup_details) {
                    zn4.c(new oj(2, iz4Var2, detailActivity, appCloudBackup2));
                } else {
                    boolean z3 = z;
                    final q05 q05Var2 = q05Var;
                    int i6 = 0;
                    if (itemId2 == R.id.action_protect_backup) {
                        boolean z4 = !z3;
                        if (!z3 && !V.INSTANCE.getA()) {
                            zn4 zn4Var = zn4.a;
                            zn4.e(new b56(detailActivity, i6));
                            return true;
                        }
                        vi2 vi2Var = new vi2(q05Var2, detailActivity, iz4Var2, z4, appCloudBackup2);
                        if (z3) {
                            vi2Var.invoke();
                        } else {
                            try {
                                SharedPreferences sharedPreferences = cz4.f;
                                if (sharedPreferences == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                z2 = sharedPreferences.getBoolean("protect_backup_help_shown", false);
                                if (z2) {
                                    vi2Var.invoke();
                                } else {
                                    SharedPreferences.Editor editor = cz4.k;
                                    if (editor == null) {
                                        pe4.F("editor");
                                        throw null;
                                    }
                                    editor.putBoolean("protect_backup_help_shown", true).apply();
                                    s35 s35Var = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), null);
                                    s35Var.v(R.string.protected_backup);
                                    s35Var.n(R.string.protected_backup_description);
                                    s35Var.s(R.string.got_it, new wi2(vi2Var, i6));
                                    s35Var.m();
                                }
                            } catch (ClassCastException unused) {
                                z2 = false;
                            }
                        }
                    } else if (itemId2 == R.id.action_update_note) {
                        tu0.y(detailActivity, str, new mt3() { // from class: yi2
                            @Override // defpackage.mt3
                            public final Object invoke(Object obj) {
                                String str2 = (String) obj;
                                int i7 = DetailActivity.b0;
                                int i8 = zi2.b[q05Var2.ordinal()];
                                DetailActivity detailActivity2 = detailActivity;
                                if (i8 == 1) {
                                    mk2 mk2VarA0 = detailActivity2.a0();
                                    iz4 iz4Var3 = iz4Var2;
                                    mk2VarA0.o(iz4Var3 != null ? iz4Var3.getBackup() : null, str2);
                                } else {
                                    if (i8 != 2) {
                                        q.j();
                                        return null;
                                    }
                                    if (Const.d(detailActivity2)) {
                                        detailActivity2.a0().p(appCloudBackup2, str2);
                                    }
                                }
                                return be8.a;
                            }
                        });
                    } else if (itemId2 == R.id.action_sync) {
                        if (!V.INSTANCE.getA()) {
                            zn4 zn4Var2 = zn4.a;
                            zn4.e(new b56(detailActivity, i6));
                        } else if (iz4Var2 != null) {
                            sa1.R(detailActivity, null, new kg(6, detailActivity, iz4Var2), 1);
                        } else {
                            vr6.e$default(vr6.INSTANCE, detailActivity.r(), "Null LocalAppBackupInfo!", null, 4, null);
                        }
                    } else if (itemId2 == R.id.action_delete) {
                        if (!q05Var2.isCloud() || Const.d(detailActivity)) {
                            s35 s35Var2 = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), null);
                            s35Var2.v(z3 ? R.string.delete_protected_backup : R.string.delete_backup);
                            s35Var2.n(R.string.warning_backup_delete);
                            s35Var2.q(R.string.no, null);
                            s35Var2.s(R.string.yes, new vq1(i5, detailActivity, iz4Var2, appCloudBackup2));
                            s35Var2.m();
                        }
                    } else if (itemId2 == R.id.action_metadata) {
                        if (iz4Var2 != null && (metadata = iz4Var2.getMetadata()) != null) {
                            zn4 zn4Var3 = zn4.a;
                            zn4.c(new w01(detailActivity, metadata, iz4Var2));
                        } else if (appCloudBackup2 != null) {
                            Parcelable metadata5 = appCloudBackup2.getMetadata();
                            zn4 zn4Var4 = zn4.a;
                            zn4.c(new w01(detailActivity, metadata5, iz4Var2));
                        }
                    }
                }
                return true;
            }
        };
        u45Var.j();
    }

    public final void c0(View view, final iu iuVar, final hk hkVar, final AppCloudBackup appCloudBackup, final String str) {
        CloudMetadata metadata;
        q63 q63VarC;
        view.getClass();
        iuVar.getClass();
        if (hkVar == null && appCloudBackup == null) {
            l0.e("Both localBackup and cloudBackup are null");
            return;
        }
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_detail_backup_chip_actions);
        final ji jiVarK = a0().k();
        boolean zIsInstalled = jiVarK.isInstalled();
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.getClass();
        int i = 0;
        while (i < fc5Var.f.size()) {
            int i2 = i + 1;
            MenuItem item = fc5Var.getItem(i);
            if (item == null) {
                l0.a();
                return;
            }
            int itemId = item.getItemId();
            boolean zIsPossible = true;
            if (itemId == R.id.action_restore) {
                if (zi2.a[iuVar.ordinal()] == 1) {
                    zIsPossible = iuVar.getBackupReq().isPossible();
                } else if (!zIsInstalled || !iuVar.getBackupReq().isPossible()) {
                    zIsPossible = false;
                }
                item.setVisible(zIsPossible);
            } else if (itemId == R.id.action_share) {
                if (iuVar != iu.APP || ((hkVar == null || (q63VarC = hkVar.c()) == null || !q63VarC.j()) && (appCloudBackup == null || (metadata = appCloudBackup.getMetadata()) == null || !metadata.hasApk()))) {
                    zIsPossible = false;
                }
                item.setVisible(zIsPossible);
            } else if (itemId == R.id.action_sync) {
                item.setVisible(hkVar != null);
                if (item.isVisible() && !V.INSTANCE.getA()) {
                    Drawable drawable = getDrawable(R.drawable.ic_flash_outline);
                    drawable.getClass();
                    int iC = io4.c(this, getColor(R.color.premium));
                    Drawable drawableMutate = drawable.mutate();
                    drawableMutate.getClass();
                    drawableMutate.setTint(iC);
                    item.setIcon(drawableMutate);
                }
            } else if (itemId == R.id.action_delete) {
                Drawable icon = item.getIcon();
                icon.getClass();
                int iR = sz8.r(this);
                Drawable drawableMutate2 = icon.mutate();
                drawableMutate2.getClass();
                drawableMutate2.setTint(iR);
                item.setIcon(drawableMutate2);
            } else if (itemId == R.id.action_encryption) {
                if (str == null || str.length() == 0) {
                    item.setVisible(false);
                } else {
                    item.setVisible(true);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(1.2f);
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) "🔒");
                    spannableStringBuilder.setSpan(relativeSizeSpan, length, spannableStringBuilder.length(), 17);
                    spannableStringBuilder.append((CharSequence) ("     " + getString(R.string.encrypted)));
                    item.setTitle(new SpannedString(spannableStringBuilder));
                    item.setIcon(new ColorDrawable(0));
                }
            }
            i = i2;
        }
        u45Var.e = new g36() { // from class: si2
            @Override // defpackage.g36
            public final boolean onMenuItemClick(MenuItem menuItem) {
                String str2;
                k55 whVar;
                boolean z;
                boolean z2;
                int i3 = DetailActivity.b0;
                final AppCloudBackup appCloudBackup2 = appCloudBackup;
                final DetailActivity detailActivity = this;
                if (appCloudBackup2 == null || Const.d(detailActivity)) {
                    int itemId2 = menuItem.getItemId();
                    final iu iuVar2 = iuVar;
                    final hk hkVar2 = hkVar;
                    int i4 = 0;
                    if (itemId2 == R.id.action_restore) {
                        mk2 mk2VarA0 = detailActivity.a0();
                        iuVar2.getClass();
                        if (appCloudBackup2 != null) {
                            String backupId = appCloudBackup2.getBackupId();
                            ji jiVar = mk2VarA0.e;
                            if (jiVar == null) {
                                pe4.F("app");
                                throw null;
                            }
                            hkVar2 = new hk(backupId, jiVar.getPackageName(), true);
                        } else if (hkVar2 == null) {
                            c6.f("localBackup null!");
                            return false;
                        }
                        hk hkVar3 = hkVar2;
                        ji jiVar2 = mk2VarA0.e;
                        if (jiVar2 == null) {
                            pe4.F("app");
                            throw null;
                        }
                        List listI = nc8.I(iuVar2);
                        yu.Companion.getClass();
                        yu yuVarA = wu.a();
                        try {
                            SharedPreferences sharedPreferences = cz4.f;
                            if (sharedPreferences == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            z = sharedPreferences.getBoolean("restore_special_permissions", true);
                            try {
                                SharedPreferences sharedPreferences2 = cz4.f;
                                if (sharedPreferences2 == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                z2 = sharedPreferences2.getBoolean("restore_ssaids", false);
                                mk2VarA0.l(new jz(jiVar2, listI, yuVarA, z, z2, hkVar3, appCloudBackup2), new ry7(true));
                            } catch (ClassCastException unused) {
                                z2 = false;
                            }
                        } catch (ClassCastException unused2) {
                            z = true;
                        }
                    } else if (itemId2 == R.id.action_share) {
                        ji jiVar3 = jiVarK;
                        if (hkVar2 != null) {
                            whVar = new yh(jiVar3, hkVar2);
                        } else {
                            whVar = appCloudBackup2 != null ? new wh(jiVar3, appCloudBackup2) : null;
                        }
                        if (whVar instanceof wh) {
                            sa1.R(detailActivity, null, new y2(9, detailActivity, (wh) whVar), 1);
                        } else if (whVar != null) {
                            detailActivity.getClass();
                            new nh(detailActivity).n(whVar);
                        }
                    } else if (itemId2 == R.id.action_sync) {
                        if (!V.INSTANCE.getA()) {
                            detailActivity.getClass();
                            zn4 zn4Var = zn4.a;
                            zn4.e(new b56(detailActivity, i4));
                        } else {
                            if (hkVar2 == null) {
                                c6.f("Null localBackup, cannot sync!");
                                return false;
                            }
                            sa1.R(detailActivity, null, new o20(7, detailActivity, new cd(iuVar2, hkVar2)), 1);
                        }
                    } else if (itemId2 == R.id.action_delete) {
                        detailActivity.getClass();
                        s35 s35Var = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), null);
                        s35Var.v(R.string.delete_backup);
                        s35Var.n(R.string.sure_to_proceed);
                        s35Var.s(R.string.yes, new DialogInterface.OnClickListener() { // from class: ui2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i5) {
                                int i6 = DetailActivity.b0;
                                zn4.c(new kk2(detailActivity.a0(), nc8.I(iuVar2), fl1.B0(hkVar2), fl1.B0(appCloudBackup2), 0));
                            }
                        });
                        s35Var.q(R.string.no, null);
                        s35Var.m();
                    } else if (itemId2 == R.id.action_encryption && (str2 = str) != null && str2.length() != 0) {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                        String string = detailActivity.getString(R.string.encrypted_with_x, str2);
                        string.getClass();
                        int iH0 = nq7.h0(string, str2, 0, false, 6);
                        if (iH0 >= 0) {
                            spannableStringBuilder2.append((CharSequence) string.substring(0, iH0));
                            StyleSpan styleSpan = new StyleSpan(1);
                            int length2 = spannableStringBuilder2.length();
                            spannableStringBuilder2.append((CharSequence) str2);
                            spannableStringBuilder2.setSpan(styleSpan, length2, spannableStringBuilder2.length(), 17);
                            spannableStringBuilder2.append((CharSequence) string.substring(str2.length() + iH0));
                        } else {
                            spannableStringBuilder2.append((CharSequence) string);
                        }
                        SpannedString spannedString = new SpannedString(spannableStringBuilder2);
                        s35 s35Var2 = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), null);
                        ((ra) s35Var2.b).f = spannedString;
                        s35Var2.s(R.string.ok, null);
                        s35Var2.m();
                    }
                }
                return true;
            }
        };
        u45Var.j();
    }

    public final void d0(View view, iu iuVar) {
        view.getClass();
        iuVar.getClass();
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_detail_storage_chip_actions);
        ji jiVarK = a0().k();
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.getClass();
        int i = 0;
        while (i < fc5Var.f.size()) {
            int i2 = i + 1;
            MenuItem item = fc5Var.getItem(i);
            if (item == null) {
                l0.a();
                return;
            }
            int itemId = item.getItemId();
            if (itemId != R.id.action_backup_cloud && itemId != R.id.action_backup_local_cloud) {
                if (itemId == R.id.action_delete) {
                    item.setVisible(iuVar != iu.APP);
                    if (item.isVisible()) {
                        Drawable icon = item.getIcon();
                        icon.getClass();
                        int iR = sz8.r(this);
                        Drawable drawableMutate = icon.mutate();
                        drawableMutate.getClass();
                        drawableMutate.setTint(iR);
                        item.setIcon(drawableMutate);
                    }
                } else if (itemId == R.id.action_share) {
                    item.setVisible(iuVar == iu.APP && jiVarK.isInstalled());
                }
            } else if (!V.INSTANCE.getA()) {
                Drawable drawable = getDrawable(R.drawable.ic_flash_outline);
                drawable.getClass();
                int iC = io4.c(this, getColor(R.color.premium));
                Drawable drawableMutate2 = drawable.mutate();
                drawableMutate2.getClass();
                drawableMutate2.setTint(iC);
                item.setIcon(drawableMutate2);
            }
            i = i2;
        }
        u45Var.e = new tj(this, iuVar, jiVarK);
        u45Var.j();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ji jiVar;
        super.onCreate(bundle);
        setContentView(X().a);
        setSupportActionBar((Toolbar) ((ix0) X().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(X().f, 7);
        Intent intent = getIntent();
        intent.getClass();
        if (intent.getBooleanExtra("detail_launched_from_shortcut", false)) {
            String str = getIntent().getPackage();
            str.getClass();
            if (bundle == null) {
                vr6.i$default(vr6.INSTANCE, r(), "Fetching details for ".concat(str), null, 4, null);
            }
            mk2 mk2VarA0 = a0();
            zn4 zn4Var = zn4.a;
            zn4.c(new yq(4, mk2VarA0, str));
        } else {
            if (bundle != null) {
                jiVar = (ji) bundle.getParcelable(ji.PARCEL_KEY);
            } else {
                Intent intent2 = getIntent();
                jiVar = (ji) (intent2 != null ? intent2.getParcelableExtra(ji.PARCEL_KEY) : null);
            }
            if (jiVar == null) {
                vr6.e$default(vr6.INSTANCE, r(), "Couldn't get parcelable extra for App", null, 4, null);
                finish();
                return;
            } else {
                if (bundle == null) {
                    vr6.i$default(vr6.INSTANCE, r(), xs1.j("Opened app details for ", jiVar.asString()), null, 4, null);
                }
                zn4.c(new lx(a0(), jiVar));
            }
        }
        a0().i.e(this, new tf(i, new k3(this, 11)));
        a0().j.e(this, new tf(i, new hj(this, 14)));
        int i2 = 0;
        int i3 = 1;
        a0().k.e(this, new tf(i, new xf(i3, (qj2) this.V.getValue(), qj2.class, "setState", "setState(Lorg/swiftapps/swiftbackup/detail/DetailModels$DeviceBackupStates;)V", i2, 3)));
        a0().l.e(this, new tf(i, new cj2(i3, (pj2) this.W.getValue(), pj2.class, "setStates", "setStates(Lorg/swiftapps/swiftbackup/detail/DetailModels$CloudBackupStates;)V", i2, 0)));
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        Const.S(this.Z);
        super.onDestroy();
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        String str = intent.getPackage();
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, r(), xs1.j("onNewIntent: ", str), null, 4, null);
        if (!intent.getBooleanExtra("detail_launched_from_shortcut", false) || str == null || str.length() == 0) {
            return;
        }
        mk2 mk2VarA0 = a0();
        int i = 24;
        ji jiVar = (ji) io4.j(mk2VarA0.b, null, false, new kf(mk2VarA0, i), 14);
        if (pe4.d(jiVar != null ? jiVar.getPackageName() : null, str)) {
            return;
        }
        String strR = r();
        mk2 mk2VarA1 = a0();
        ji jiVar2 = (ji) io4.j(mk2VarA1.b, null, false, new kf(mk2VarA1, i), 14);
        vr6.i$default(vr6Var, strR, eq3.k("Currently showing package ", jiVar2 != null ? jiVar2.getPackageName() : null, ", Restarting for new package."), null, 4, null);
        finish();
        Intent intent2 = new Intent(this, (Class<?>) DetailActivity.class).putExtra("detail_launched_from_shortcut", true).setPackage(str);
        intent2.getClass();
        startActivity(intent2);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        ji jiVar = a0().e;
        if (jiVar != null) {
            bundle.putParcelable(ji.PARCEL_KEY, jiVar);
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        if (this.R) {
            this.R = false;
        } else {
            zn4.c(new ek(a0(), 22));
        }
    }
}
