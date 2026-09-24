package com.microsoft.identity.common.internal.providers.oauth2;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.o;
import defpackage.gf1;
import defpackage.l0;
import defpackage.mv7;
import defpackage.os2;
import defpackage.ur3;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SilentAuthorizationActivity extends AuthorizationActivity {
    @Override // com.microsoft.identity.common.internal.ui.DualScreenActivity
    public final int getThemeResId() {
        return R.style.TransparentActivityTheme;
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity, com.microsoft.identity.common.internal.ui.DualScreenActivity, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setEdgeToEdge();
    }

    @Override // com.microsoft.identity.common.internal.ui.DualScreenActivity
    public final void setEdgeToEdge() {
        os2.a(this, new mv7(0, 0, 0, new gf1(5)), new mv7(os2.a, os2.b, 0, new gf1(5)));
        if (Build.VERSION.SDK_INT >= 29) {
            getWindow().setNavigationBarContrastEnforced(false);
        }
    }

    @Override // com.microsoft.identity.common.internal.ui.DualScreenActivity
    public final void setFragment(o oVar) {
        oVar.getClass();
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(View.generateViewId());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(0);
        frameLayout.setVisibility(8);
        setContentView(frameLayout);
        ur3 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(supportFragmentManager);
        aVar.j(frameLayout.getId(), oVar);
        if (aVar.g) {
            l0.e("This transaction is already being added to the back stack");
        } else {
            aVar.h = false;
            aVar.r.A(aVar, false);
        }
    }
}
