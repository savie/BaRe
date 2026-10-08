package org.swiftapps.swiftbackup.folders.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import defpackage.ae1;
import defpackage.bt3;
import defpackage.c6;
import defpackage.cj2;
import defpackage.cz4;
import defpackage.d76;
import defpackage.dm3;
import defpackage.e7;
import defpackage.ek;
import defpackage.fc5;
import defpackage.g36;
import defpackage.g7;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.h7;
import defpackage.hb;
import defpackage.hl3;
import defpackage.il3;
import defpackage.io4;
import defpackage.ix0;
import defpackage.k00;
import defpackage.kj3;
import defpackage.l0;
import defpackage.l90;
import defpackage.ln3;
import defpackage.m9;
import defpackage.nc8;
import defpackage.o20;
import defpackage.of;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.qt3;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.t9;
import defpackage.u45;
import defpackage.uf;
import defpackage.ur0;
import defpackage.vf;
import defpackage.vr6;
import defpackage.xf;
import defpackage.xx3;
import defpackage.y2;
import defpackage.y63;
import defpackage.zn4;
import java.text.DateFormat;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderDetailActivity extends sa1 {
    public static final /* synthetic */ int Z = 0;
    public final gv7 Q;
    public final gv7 S;
    public ln3 T;
    public FolderItem V;
    public boolean W;
    public final l90 P = new l90(ph6.a(dm3.class), new uf(this, 8), new gl0(this, 4), new vf(this, 6));
    public final gv7 R = new gv7(new d76(this, 24));
    public final t9 U = (t9) registerForActivityResult(new hb(this, 4), new m9(0));
    public boolean X = true;
    public final hl3 Y = new hl3(this);

    public FolderDetailActivity() {
        final int i = 0;
        this.Q = new gv7(new bt3(this) { // from class: cl3
            public final /* synthetic */ FolderDetailActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                FolderDetailActivity folderDetailActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = FolderDetailActivity.Z;
                        View viewInflate = folderDetailActivity.getLayoutInflater().inflate(R.layout.folder_detail_activity, (ViewGroup) null, false);
                        int i4 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i4 = R.id.folder_backup_card_cloud;
                            View viewU2 = ms8.u(viewInflate, R.id.folder_backup_card_cloud);
                            if (viewU2 != null) {
                                jl3 jl3VarA = jl3.a(viewU2);
                                i4 = R.id.folder_backup_card_device;
                                View viewU3 = ms8.u(viewInflate, R.id.folder_backup_card_device);
                                if (viewU3 != null) {
                                    jl3 jl3VarA2 = jl3.a(viewU3);
                                    i4 = R.id.folder_detail_info_card;
                                    View viewU4 = ms8.u(viewInflate, R.id.folder_detail_info_card);
                                    if (viewU4 != null) {
                                        int i5 = R.id.btn_backup;
                                        MaterialButton materialButton = (MaterialButton) ms8.u(viewU4, R.id.btn_backup);
                                        if (materialButton != null) {
                                            i5 = R.id.btn_delete;
                                            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU4, R.id.btn_delete);
                                            if (materialButton2 != null) {
                                                i5 = R.id.btn_open;
                                                MaterialButton materialButton3 = (MaterialButton) ms8.u(viewU4, R.id.btn_open);
                                                if (materialButton3 != null) {
                                                    i5 = R.id.btns_container;
                                                    LinearLayout linearLayout = (LinearLayout) ms8.u(viewU4, R.id.btns_container);
                                                    if (linearLayout != null) {
                                                        i5 = R.id.container_folder_details;
                                                        LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewU4, R.id.container_folder_details);
                                                        if (linearLayout2 != null) {
                                                            i5 = R.id.container_folder_not_found_error;
                                                            MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewU4, R.id.container_folder_not_found_error);
                                                            if (materialCardView != null) {
                                                                MaterialCardView materialCardView2 = (MaterialCardView) viewU4;
                                                                i5 = R.id.divider;
                                                                if (ms8.u(viewU4, R.id.divider) != null) {
                                                                    i5 = R.id.iv_icon;
                                                                    if (((ImageView) ms8.u(viewU4, R.id.iv_icon)) != null) {
                                                                        i5 = R.id.loading_view;
                                                                        FrameLayout frameLayout = (FrameLayout) ms8.u(viewU4, R.id.loading_view);
                                                                        if (frameLayout != null) {
                                                                            i5 = R.id.main_view;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ms8.u(viewU4, R.id.main_view);
                                                                            if (linearLayout3 != null) {
                                                                                i5 = R.id.tv_display_name;
                                                                                TextView textView = (TextView) ms8.u(viewU4, R.id.tv_display_name);
                                                                                if (textView != null) {
                                                                                    i5 = R.id.tv_folder_path;
                                                                                    TextView textView2 = (TextView) ms8.u(viewU4, R.id.tv_folder_path);
                                                                                    if (textView2 != null) {
                                                                                        i5 = R.id.tv_folder_size_title;
                                                                                        if (((TextView) ms8.u(viewU4, R.id.tv_folder_size_title)) != null) {
                                                                                            i5 = R.id.tv_folder_size_value;
                                                                                            TextView textView3 = (TextView) ms8.u(viewU4, R.id.tv_folder_size_value);
                                                                                            if (textView3 != null) {
                                                                                                i5 = R.id.tv_last_modified_title;
                                                                                                if (((TextView) ms8.u(viewU4, R.id.tv_last_modified_title)) != null) {
                                                                                                    i5 = R.id.tv_last_modified_value;
                                                                                                    TextView textView4 = (TextView) ms8.u(viewU4, R.id.tv_last_modified_value);
                                                                                                    if (textView4 != null) {
                                                                                                        nl3 nl3Var = new nl3(materialCardView2, materialButton, materialButton2, materialButton3, linearLayout, linearLayout2, materialCardView, frameLayout, linearLayout3, textView, textView2, textView3, textView4);
                                                                                                        i4 = R.id.scroll_view;
                                                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                                        if (nestedScrollView != null) {
                                                                                                            return new il3((CoordinatorLayout) viewInflate, w00VarB, jl3VarA, jl3VarA2, nl3Var, nestedScrollView);
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
                                        f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(i5)));
                                        return null;
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                        return null;
                    default:
                        int i6 = FolderDetailActivity.Z;
                        return new kl3(folderDetailActivity, folderDetailActivity.W().c, folderDetailActivity.U());
                }
            }
        });
        final int i2 = 1;
        this.S = new gv7(new bt3(this) { // from class: cl3
            public final /* synthetic */ FolderDetailActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                FolderDetailActivity folderDetailActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = FolderDetailActivity.Z;
                        View viewInflate = folderDetailActivity.getLayoutInflater().inflate(R.layout.folder_detail_activity, (ViewGroup) null, false);
                        int i5 = R.id.appbar_layout;
                        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                        if (viewU != null) {
                            w00 w00VarB = w00.b(viewU);
                            i5 = R.id.folder_backup_card_cloud;
                            View viewU2 = ms8.u(viewInflate, R.id.folder_backup_card_cloud);
                            if (viewU2 != null) {
                                jl3 jl3VarA = jl3.a(viewU2);
                                i5 = R.id.folder_backup_card_device;
                                View viewU3 = ms8.u(viewInflate, R.id.folder_backup_card_device);
                                if (viewU3 != null) {
                                    jl3 jl3VarA2 = jl3.a(viewU3);
                                    i5 = R.id.folder_detail_info_card;
                                    View viewU4 = ms8.u(viewInflate, R.id.folder_detail_info_card);
                                    if (viewU4 != null) {
                                        int i6 = R.id.btn_backup;
                                        MaterialButton materialButton = (MaterialButton) ms8.u(viewU4, R.id.btn_backup);
                                        if (materialButton != null) {
                                            i6 = R.id.btn_delete;
                                            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewU4, R.id.btn_delete);
                                            if (materialButton2 != null) {
                                                i6 = R.id.btn_open;
                                                MaterialButton materialButton3 = (MaterialButton) ms8.u(viewU4, R.id.btn_open);
                                                if (materialButton3 != null) {
                                                    i6 = R.id.btns_container;
                                                    LinearLayout linearLayout = (LinearLayout) ms8.u(viewU4, R.id.btns_container);
                                                    if (linearLayout != null) {
                                                        i6 = R.id.container_folder_details;
                                                        LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewU4, R.id.container_folder_details);
                                                        if (linearLayout2 != null) {
                                                            i6 = R.id.container_folder_not_found_error;
                                                            MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewU4, R.id.container_folder_not_found_error);
                                                            if (materialCardView != null) {
                                                                MaterialCardView materialCardView2 = (MaterialCardView) viewU4;
                                                                i6 = R.id.divider;
                                                                if (ms8.u(viewU4, R.id.divider) != null) {
                                                                    i6 = R.id.iv_icon;
                                                                    if (((ImageView) ms8.u(viewU4, R.id.iv_icon)) != null) {
                                                                        i6 = R.id.loading_view;
                                                                        FrameLayout frameLayout = (FrameLayout) ms8.u(viewU4, R.id.loading_view);
                                                                        if (frameLayout != null) {
                                                                            i6 = R.id.main_view;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ms8.u(viewU4, R.id.main_view);
                                                                            if (linearLayout3 != null) {
                                                                                i6 = R.id.tv_display_name;
                                                                                TextView textView = (TextView) ms8.u(viewU4, R.id.tv_display_name);
                                                                                if (textView != null) {
                                                                                    i6 = R.id.tv_folder_path;
                                                                                    TextView textView2 = (TextView) ms8.u(viewU4, R.id.tv_folder_path);
                                                                                    if (textView2 != null) {
                                                                                        i6 = R.id.tv_folder_size_title;
                                                                                        if (((TextView) ms8.u(viewU4, R.id.tv_folder_size_title)) != null) {
                                                                                            i6 = R.id.tv_folder_size_value;
                                                                                            TextView textView3 = (TextView) ms8.u(viewU4, R.id.tv_folder_size_value);
                                                                                            if (textView3 != null) {
                                                                                                i6 = R.id.tv_last_modified_title;
                                                                                                if (((TextView) ms8.u(viewU4, R.id.tv_last_modified_title)) != null) {
                                                                                                    i6 = R.id.tv_last_modified_value;
                                                                                                    TextView textView4 = (TextView) ms8.u(viewU4, R.id.tv_last_modified_value);
                                                                                                    if (textView4 != null) {
                                                                                                        nl3 nl3Var = new nl3(materialCardView2, materialButton, materialButton2, materialButton3, linearLayout, linearLayout2, materialCardView, frameLayout, linearLayout3, textView, textView2, textView3, textView4);
                                                                                                        i5 = R.id.scroll_view;
                                                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                                        if (nestedScrollView != null) {
                                                                                                            return new il3((CoordinatorLayout) viewInflate, w00VarB, jl3VarA, jl3VarA2, nl3Var, nestedScrollView);
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
                                        f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(i6)));
                                        return null;
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                        return null;
                    default:
                        int i7 = FolderDetailActivity.Z;
                        return new kl3(folderDetailActivity, folderDetailActivity.W().c, folderDetailActivity.U());
                }
            }
        });
    }

    public static final void U(SpannableStringBuilder spannableStringBuilder, String str, String str2) {
        if (spannableStringBuilder.length() > 0) {
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.append(": ");
        spannableStringBuilder.append((CharSequence) str2);
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
            String str = DateFormat.getDateTimeInstance(0, 3, (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()).format(Long.valueOf(j));
            str.getClass();
            return str;
        } catch (ClassCastException unused) {
        }
    }

    public static final void Y(FolderDetailActivity folderDetailActivity, boolean z) {
        sz8.d0(folderDetailActivity.W().e.n, z);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(20L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        FrameLayout frameLayout = folderDetailActivity.W().e.n;
        int i = 0;
        while (true) {
            if (!(i < frameLayout.getChildCount())) {
                return;
            }
            int i2 = i + 1;
            View childAt = frameLayout.getChildAt(i);
            if (childAt == null) {
                l0.a();
                return;
            }
            if (z) {
                childAt.startAnimation(alphaAnimation);
            } else {
                childAt.clearAnimation();
            }
            i = i2;
        }
    }

    public static void Z(final FolderDetailActivity folderDetailActivity, View view, final kj3 kj3Var, final FolderMetadata folderMetadata, int i) {
        if ((i & 2) != 0) {
            kj3Var = null;
        }
        if ((i & 4) != 0) {
            folderMetadata = null;
        }
        if (!((kj3Var == null) ^ (folderMetadata == null))) {
            c6.f("Exactly one of localBackup or cloudBackup must be non-null");
            return;
        }
        u45 u45Var = new u45(folderDetailActivity, view, 12);
        u45Var.f(R.menu.menu_folder_backup);
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.getClass();
        int i2 = 0;
        while (i2 < fc5Var.f.size()) {
            int i3 = i2 + 1;
            MenuItem item = fc5Var.getItem(i2);
            if (item == null) {
                l0.a();
                return;
            }
            int itemId = item.getItemId();
            if (itemId == R.id.action_sync) {
                item.setVisible(kj3Var != null);
                if (item.isVisible() && !V.INSTANCE.getA()) {
                    Drawable drawable = folderDetailActivity.getDrawable(R.drawable.ic_flash_outline);
                    drawable.getClass();
                    int iC = io4.c(folderDetailActivity, folderDetailActivity.getColor(R.color.premium));
                    Drawable drawableMutate = drawable.mutate();
                    drawableMutate.getClass();
                    drawableMutate.setTint(iC);
                    item.setIcon(drawableMutate);
                }
            } else if (itemId == R.id.action_delete) {
                Drawable icon = item.getIcon();
                icon.getClass();
                int iR = sz8.r(folderDetailActivity);
                Drawable drawableMutate2 = icon.mutate();
                drawableMutate2.getClass();
                drawableMutate2.setTint(iR);
                item.setIcon(drawableMutate2);
            }
            i2 = i3;
        }
        u45Var.e = new g36() { // from class: dl3
            @Override // defpackage.g36
            public final boolean onMenuItemClick(MenuItem menuItem) {
                int i4 = FolderDetailActivity.Z;
                int itemId2 = menuItem.getItemId();
                FolderDetailActivity folderDetailActivity2 = this.a;
                kj3 kj3Var2 = kj3Var;
                FolderMetadata folderMetadata2 = folderMetadata;
                if (itemId2 == R.id.action_backup_details) {
                    zn4 zn4Var = zn4.a;
                    zn4.c(new d32(2, kj3Var2, folderMetadata2, folderDetailActivity2));
                    return true;
                }
                if (itemId2 == R.id.action_sync) {
                    if (V.INSTANCE.getA()) {
                        int i5 = FolderDetailActivity.Z;
                        sa1.R(folderDetailActivity2, null, new qf(13, folderDetailActivity2, kj3Var2), 1);
                        return true;
                    }
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new b56(folderDetailActivity2, 0));
                    return true;
                }
                if (itemId2 == R.id.action_delete) {
                    if (folderMetadata2 == null || Const.d(folderDetailActivity2)) {
                        s35 s35Var = new s35(folderDetailActivity2, R.style.M3AlertDialogTheme, new hv1(folderDetailActivity2, R.style.M3AlertDialogTheme), null);
                        s35Var.v(R.string.delete_backup);
                        s35Var.n(R.string.sure_to_proceed);
                        s35Var.s(R.string.yes, new rj1(3, kj3Var2, folderDetailActivity2, folderMetadata2));
                        s35Var.q(R.string.no, null);
                        s35Var.m();
                        return true;
                    }
                } else if (itemId2 == R.id.action_show_metadata) {
                    zn4 zn4Var3 = zn4.a;
                    zn4.c(new v20(5, kj3Var2, folderMetadata2, folderDetailActivity2));
                }
                return true;
            }
        };
        u45Var.j();
    }

    public static void a0(final FolderDetailActivity folderDetailActivity, final kj3 kj3Var, final FolderMetadata folderMetadata, int i) {
        if ((i & 1) != 0) {
            kj3Var = null;
        }
        if ((i & 2) != 0) {
            folderMetadata = null;
        }
        if (!((folderMetadata == null) ^ (kj3Var == null))) {
            c6.f("Exactly one of localBackup or cloudBackup must be non-null");
            return;
        }
        final ln3 ln3Var = new ln3(folderDetailActivity, folderDetailActivity.U().k().getSourceFolder(), true, new ae1(1, folderDetailActivity, FolderDetailActivity.class, "openCustomRestoreFolderPicker", "openCustomRestoreFolderPicker(Ljava/lang/String;)V", 0, 5));
        ln3Var.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: el3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ln3 ln3Var2 = ln3Var;
                FolderDetailActivity folderDetailActivity2 = this.a;
                if (folderDetailActivity2.T == ln3Var2) {
                    folderDetailActivity2.T = null;
                }
            }
        });
        folderDetailActivity.T = ln3Var;
        ln3Var.a0 = new qt3() { // from class: fl3
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) {
                final FolderRestoreStrategy folderRestoreStrategy = (FolderRestoreStrategy) obj;
                final String str = (String) obj2;
                int i2 = FolderDetailActivity.Z;
                folderRestoreStrategy.getClass();
                final dm3 dm3VarU = this.a.U();
                zn4 zn4Var = zn4.a;
                final kj3 kj3Var2 = kj3Var;
                final FolderMetadata folderMetadata2 = folderMetadata;
                zn4.c(new bt3() { // from class: cm3
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        kj3 kj3Var3 = kj3Var2;
                        FolderMetadata folderMetadata3 = folderMetadata2;
                        if (kj3Var3 == null && folderMetadata3 == null) {
                            l0.e("Both localBackup and cloudBackup are null");
                            return null;
                        }
                        dm3 dm3Var = dm3VarU;
                        FolderItem folderItemK = dm3Var.k();
                        FolderRestoreStrategy folderRestoreStrategy2 = folderRestoreStrategy;
                        zn4.c(new oj(4, new do3(folderItemK, kj3Var3, folderMetadata3, folderRestoreStrategy2, str), new wy7(folderRestoreStrategy2), dm3Var));
                        return be8.a;
                    }
                });
                return be8.a;
            }
        };
        ln3Var.l();
        ((MaterialButton) ln3Var.X.getValue()).setOnClickListener(new h7(ln3Var, 10));
        ln3Var.show();
    }

    public final il3 W() {
        return (il3) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final dm3 U() {
        return (dm3) this.P.getValue();
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 4988 && i2 == -1) {
            FolderItem folderItem = (FolderItem) (intent != null ? intent.getParcelableExtra("extra_folder_item") : null);
            if (folderItem == null) {
                return;
            }
            dm3 dm3VarU = U();
            zn4 zn4Var = zn4.a;
            zn4.c(new y2(13, folderItem, dm3VarU));
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        FolderItem folderItem;
        super.onCreate(bundle);
        setContentView(W().a);
        if (bundle != null) {
            folderItem = (FolderItem) bundle.getParcelable("extra_folder_info");
        } else {
            Intent intent = getIntent();
            folderItem = (FolderItem) (intent != null ? intent.getParcelableExtra("extra_folder_info") : null);
        }
        if (folderItem == null) {
            vr6.e$default(vr6.INSTANCE, r(), "Couldn't get parcelable extra for FolderMetadata", null, 4, null);
            finish();
            return;
        }
        this.V = folderItem;
        if (!folderItem.isValid()) {
            vr6 vr6Var = vr6.INSTANCE;
            String strR = r();
            FolderItem folderItem2 = this.V;
            if (folderItem2 == null) {
                pe4.F("folderItem");
                throw null;
            }
            vr6.e$default(vr6Var, strR, "Invalid metadata: " + folderItem2, null, 4, null);
            finish();
            return;
        }
        dm3 dm3VarU = U();
        FolderItem folderItem3 = this.V;
        if (folderItem3 == null) {
            pe4.F("folderItem");
            throw null;
        }
        zn4.c(new o20(8, dm3VarU, folderItem3));
        setSupportActionBar((Toolbar) ((ix0) W().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(W().f, 7);
        W().e.b.setOnClickListener(new g7(this, 11));
        W().e.d.setOnClickListener(new h7(this, 9));
        W().e.c.setOnClickListener(new of(this, 4));
        int i2 = 0;
        U().f.e(this, new ur0(i, new k00(1, this, FolderDetailActivity.class, "onFolderItemUpdate", "onFolderItemUpdate(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V", i2, 1)));
        U().g.e(this, new ur0(i, new xf(1, this, FolderDetailActivity.class, "onFolderInfo", "onFolderInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$FolderInfoState;)V", i2, 4)));
        int i3 = 1;
        U().h.e(this, new ur0(i, new cj2(1, this, FolderDetailActivity.class, "onLocalBackupInfo", "onLocalBackupInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$DeviceBackupState;)V", i2, i3)));
        U().i.e(this, new ur0(i, new y63(1, this, FolderDetailActivity.class, "onCloudBackupInfo", "onCloudBackupInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$CloudBackupState;)V", i2, i3)));
        U().j.e(this, new ur0(i, new e7(this, 13)));
        addMenuProvider(this.Y);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        dm3 dm3VarU = U();
        if (dm3VarU.e != null) {
            bundle.putParcelable("extra_folder_info", dm3VarU.k());
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        if (this.X) {
            this.X = false;
        } else {
            zn4.c(new ek(U(), 27));
        }
    }
}
