package org.swiftapps.swiftbackup.walls;

import android.content.Intent;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.github.chrisbanes.photoview.PhotoView;
import defpackage.ao8;
import defpackage.b67;
import defpackage.bz;
import defpackage.co8;
import defpackage.cz;
import defpackage.f93;
import defpackage.g52;
import defpackage.gv7;
import defpackage.il0;
import defpackage.j51;
import defpackage.js;
import defpackage.l0;
import defpackage.l90;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.no5;
import defpackage.no8;
import defpackage.nq7;
import defpackage.ph6;
import defpackage.q63;
import defpackage.qy5;
import defpackage.ry5;
import defpackage.sz8;
import defpackage.vf;
import defpackage.vr6;
import defpackage.wf;
import defpackage.zn4;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WallApplyActivity extends il0 {
    public static ao8 O;
    public final l90 K = new l90(ph6.a(co8.class), new wf(this, 10), new vf(this, 11), new j51(this, 7));
    public final gv7 L = new gv7(new no5(this, 10));
    public final int M = R.anim.wall_apply_activity_enter_anim;
    public final int N = R.anim.wall_apply_activity_exit_anim;

    public final no8 N() {
        return (no8) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final co8 U() {
        return (co8) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ao8 ao8Var = O;
        if (ao8Var == null) {
            vr6.e$default(vr6.INSTANCE, r(), "Wall apply data parcel null", null, 4, null);
            finish();
            return;
        }
        setContentView(N().a);
        getWindow().getDecorView().setSystemUiVisibility(1536);
        N().b.setBackgroundResource(R.color.wht20);
        int color = getColor(R.color.wht20);
        if (!b67.f()) {
            getWindow().setStatusBarColor(color);
        }
        int color2 = getColor(R.color.trans);
        if (!b67.f()) {
            getWindow().setNavigationBarColor(color2);
        }
        ViewGroup.LayoutParams layoutParams = N().b.getLayoutParams();
        layoutParams.getClass();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        layoutParams2.setMargins(0, identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0, 0, 0);
        N().b.setLayoutParams(layoutParams2);
        setSupportActionBar(N().e);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        N().c.setVisibility(8);
        sz8.a(N().c);
        sz8.e0(N().c, true);
        N().d.setZoomable(true);
        N().d.setScaleType(ImageView.ScaleType.CENTER_CROP);
        PhotoView photoView = N().d;
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        photoView.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        co8 co8VarU = U();
        if (!co8VarU.g) {
            co8VarU.g = true;
            co8VarU.i.k(new q63(ao8Var.a.a.v(), 2));
        }
        int i = 3;
        U().i.e(this, new js(i, new bz(9, this, ao8Var)));
        U().j.e(this, new js(i, new cz(this, 19)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_walls_apply, menu);
        int iZ = sz8.z(this);
        int i = 0;
        while (i < menu.size()) {
            int i2 = i + 1;
            MenuItem item = menu.getItem(i);
            if (item == null) {
                l0.a();
                return false;
            }
            if (item.getItemId() == R.id.action_delete) {
                Drawable icon = item.getIcon();
                icon.getClass();
                int iR = sz8.r(this);
                Drawable drawableMutate = icon.mutate();
                drawableMutate.getClass();
                drawableMutate.setTint(iR);
                item.setIcon(drawableMutate);
                CharSequence title = item.getTitle();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.r(this));
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append(title);
                spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
                item.setTitle(new SpannedString(spannableStringBuilder));
            } else {
                item.setIconTintList(sz8.h0(iZ));
            }
            i = i2;
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        ao8 ao8Var = O;
        if (ao8Var != null) {
            int itemId = menuItem.getItemId();
            if (itemId == R.id.action_apply_external) {
                Intent intent = new Intent("android.intent.action.ATTACH_DATA");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.addFlags(1);
                Object objD = U().i.d();
                objD.getClass();
                intent.setDataAndType(f93.a((q63) objD), "image/jpeg");
                intent.putExtra("mimeType", "image/jpeg");
                Intent intentAddFlags = Intent.createChooser(intent, getString(R.string.set_wallpaper)).addFlags(268435456);
                intentAddFlags.getClass();
                getApplicationContext().startActivity(intentAddFlags);
            } else if (itemId == R.id.action_share) {
                zn4 zn4Var = zn4.a;
                zn4.c(new mo3(this, 16));
            } else if (itemId == R.id.action_delete) {
                String strV = ao8Var.a.a.v();
                String str = ry5.u;
                if (!nq7.Z(strV, qy5.f(false, null).r, false) || Const.d(this)) {
                    Const.K(this, R.string.delete_backup, new g52(12, this, ao8Var), null);
                }
            }
            return super.onOptionsItemSelected(menuItem);
        }
        return false;
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onPause() {
        overridePendingTransition(this.M, this.N);
        super.onPause();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        overridePendingTransition(this.M, this.N);
        super.onResume();
    }

    @Override // defpackage.k28
    public final boolean u() {
        return false;
    }
}
