package org.swiftapps.swiftbackup.folders.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.ah;
import defpackage.ak;
import defpackage.bh;
import defpackage.bk;
import defpackage.c7;
import defpackage.ck;
import defpackage.d7;
import defpackage.dk;
import defpackage.ek;
import defpackage.er6;
import defpackage.es;
import defpackage.f20;
import defpackage.gj;
import defpackage.gv7;
import defpackage.ix0;
import defpackage.j51;
import defpackage.js;
import defpackage.km3;
import defpackage.l90;
import defpackage.lm3;
import defpackage.ls;
import defpackage.nb1;
import defpackage.nc8;
import defpackage.nh4;
import defpackage.nq7;
import defpackage.ph6;
import defpackage.q52;
import defpackage.q63;
import defpackage.vr6;
import defpackage.w20;
import defpackage.xe6;
import defpackage.xs1;
import java.io.Serializable;
import java.util.Locale;
import java.util.Random;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderEditActivity extends er6 {
    public static final /* synthetic */ int h0 = 0;
    public final l90 X = new l90(ph6.a(lm3.class), new f20(this, 3), new j51(this, 2), new ls(this, 7));
    public final gv7 Y = new gv7(new bh(this, 25));
    public final gv7 Z = new gv7(new gj(this, 18));
    public final gv7 a0 = new gv7(new ak(this, 16));
    public final gv7 b0 = new gv7(new bk(this, 19));
    public final gv7 c0 = new gv7(new ck(this, 21));
    public final gv7 d0 = new gv7(new dk(this, 25));
    public final gv7 e0 = new gv7(new ek(this, 28));
    public final gv7 f0 = new gv7(new ah(this, 27));
    public boolean g0;

    public static final void Y(FolderEditActivity folderEditActivity) {
        FolderItem folderItem;
        String string;
        String string2;
        Editable text = ((TextInputEditText) folderEditActivity.a0.getValue()).getText();
        String string3 = (text == null || (string2 = text.toString()) == null) ? null : nq7.H0(string2).toString();
        String str = string3 == null ? "" : string3;
        Editable text2 = ((TextInputEditText) folderEditActivity.d0.getValue()).getText();
        String string4 = (text2 == null || (string = text2.toString()) == null) ? null : nq7.H0(string).toString();
        String str2 = string4 == null ? "" : string4;
        FolderItem folderItem2 = folderEditActivity.V().g;
        if (folderItem2 == null || (folderItem = FolderItem.copy$default(folderItem2, null, str, str2, 0L, 9, null)) == null) {
            FolderItem.Companion.getClass();
            String strK = nh4.k(6, true, false, null, (Random) xe6.b.a.get());
            strK.getClass();
            String upperCase = strK.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            folderItem = new FolderItem(upperCase, str, str2, System.currentTimeMillis());
        }
        folderEditActivity.V().j(folderItem);
    }

    public final km3 Z() {
        return (km3) this.Y.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final lm3 V() {
        return (lm3) this.X.getValue();
    }

    @Override // defpackage.er6, defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 789435 && i2 == -1) {
            Serializable serializableExtra = intent != null ? intent.getSerializableExtra("extra_selected_folder") : null;
            q63 q63Var = serializableExtra instanceof q63 ? (q63) serializableExtra : null;
            if (q63Var == null) {
                return;
            }
            vr6.i$default(vr6.INSTANCE, r(), xs1.i(q63Var, "Picked folder: "), null, 4, null);
            ((TextInputEditText) this.d0.getValue()).setText(q63Var.v());
            if (this.g0) {
                return;
            }
            ((TextInputEditText) this.a0.getValue()).setText(q63Var.p());
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String displayName;
        String sourceFolder;
        super.onCreate(bundle);
        setContentView(Z().a);
        Intent intent = getIntent();
        FolderItem folderItem = (FolderItem) (intent != null ? intent.getParcelableExtra("extra_folder_item") : null);
        final int i = 0;
        final int i2 = 1;
        this.g0 = folderItem != null;
        lm3 lm3VarV = V();
        if (!lm3VarV.e) {
            lm3VarV.e = true;
            lm3VarV.f = folderItem;
            lm3VarV.j(folderItem);
        }
        setSupportActionBar((Toolbar) ((ix0) Z().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.f0(getString(!this.g0 ? R.string.new_folder_setup : R.string.edit_folder_setup));
            FolderItem folderItem2 = V().g;
            if (folderItem2 != null) {
                supportActionBar.d0(folderItem2.getDisplayName());
            }
        }
        boolean z = this.g0;
        gv7 gv7Var = this.c0;
        if (z) {
            ((View) gv7Var.getValue()).setEnabled(false);
            TextInputLayout textInputLayout = (TextInputLayout) this.b0.getValue();
            textInputLayout.setEnabled(false);
            textInputLayout.setEndIconMode(0);
        }
        TextInputEditText textInputEditText = (TextInputEditText) this.a0.getValue();
        FolderItem folderItem3 = V().g;
        String str = "";
        if (folderItem3 == null || (displayName = folderItem3.getDisplayName()) == null) {
            displayName = "";
        }
        textInputEditText.setText(displayName);
        textInputEditText.addTextChangedListener(new nb1(this, 2));
        TextInputEditText textInputEditText2 = (TextInputEditText) this.d0.getValue();
        FolderItem folderItem4 = V().g;
        if (folderItem4 != null && (sourceFolder = folderItem4.getSourceFolder()) != null) {
            str = sourceFolder;
        }
        textInputEditText2.setText(str);
        textInputEditText2.addTextChangedListener(new q52(this, 1));
        ((View) gv7Var.getValue()).setOnClickListener(new es(this, 9));
        ((MaterialButton) this.e0.getValue()).setOnClickListener(new View.OnClickListener(this) { // from class: jm3
            public final /* synthetic */ FolderEditActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:24:0x0068  */
            /* JADX WARN: Code duplicated, block: B:30:0x0087 A[ADDED_TO_REGION] */
            /* JADX WARN: Code duplicated, block: B:61:0x0082 A[SYNTHETIC] */
            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v5 java.lang.Object, still in use, count: 2, list:
                  (r9v5 java.lang.Object) from 0x0056: PHI (r9 I:??) = (r9v2 java.lang.Object), (r9v5 java.lang.Object) binds: [B:20:0x0055, B:59:0x0056] A[DONT_GENERATE, DONT_INLINE]
                  (r9v5 java.lang.Object) from 0x0040: CHECK_CAST (org.swiftapps.swiftbackup.folders.data.FolderMetadata) (r9v5 java.lang.Object)
                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
                	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
                	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
                */
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View r20) {
                /*
                    Method dump skipped, instruction units count: 406
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.jm3.onClick(android.view.View):void");
            }
        });
        ((MaterialButton) this.f0.getValue()).setOnClickListener(new View.OnClickListener(this) { // from class: jm3
            public final /* synthetic */ FolderEditActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:24:0x0068  */
            /* JADX WARN: Code duplicated, block: B:30:0x0087 A[ADDED_TO_REGION] */
            /* JADX WARN: Code duplicated, block: B:61:0x0082 A[SYNTHETIC] */
            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v5 java.lang.Object, still in use, count: 2, list:
                  (r9v5 java.lang.Object) from 0x0056: PHI (r9 I:??) = (r9v2 java.lang.Object), (r9v5 java.lang.Object) binds: [B:20:0x0055, B:59:0x0056] A[DONT_GENERATE, DONT_INLINE]
                  (r9v5 java.lang.Object) from 0x0040: CHECK_CAST (org.swiftapps.swiftbackup.folders.data.FolderMetadata) (r9v5 java.lang.Object)
                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
                	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
                */
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View r20) {
                /*
                    Method dump skipped, instruction units count: 406
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.jm3.onClick(android.view.View):void");
            }
        });
        V().h.e(this, new js(2, new w20(this, 12)));
        V().i.e(this, new js(2, new c7(this, 16)));
        V().j.e(this, new js(2, new d7(this, 11)));
    }
}
