package com.microsoft.identity.common.internal.ui;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.a;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import com.microsoft.device.display.DisplayMask;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dl8;
import defpackage.e6;
import defpackage.mv7;
import defpackage.nt1;
import defpackage.os2;
import defpackage.uk8;
import defpackage.ur3;
import defpackage.zi1;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class DualScreenActivity extends u {
    public final /* synthetic */ int a = 0;

    /* JADX WARN: Code duplicated, block: B:8:0x0021  */
    private void adjustLayoutForDualScreenActivity() {
        boolean zIntersect;
        WindowManager windowManager = (WindowManager) getSystemService("window");
        int rotation = windowManager != null ? windowManager.getDefaultDisplay().getRotation() : 0;
        if (getPackageManager().hasSystemFeature("com.microsoft.device.display.displaymask")) {
            WindowManager windowManager2 = (WindowManager) getSystemService("window");
            Rect hinge = getHinge(this, windowManager2 != null ? windowManager2.getDefaultDisplay().getRotation() : 0);
            Rect rect = new Rect();
            getWindowManager().getDefaultDisplay().getRectSize(rect);
            if (rect.width() <= 0 || rect.height() <= 0) {
                zIntersect = false;
            } else {
                zIntersect = hinge.intersect(rect);
            }
        } else {
            zIntersect = false;
        }
        boolean z = rotation == 0 || rotation == 2;
        nt1 nt1Var = new nt1();
        nt1Var.d(R.id.dual_screen_content, 1, R.id.dual_screen_layout, 1, 0);
        nt1Var.d(R.id.dual_screen_content, 2, R.id.dual_screen_layout, 2, 0);
        nt1Var.d(R.id.dual_screen_content, 3, R.id.dual_screen_layout, 3, 0);
        nt1Var.d(R.id.dual_screen_content, 4, R.id.dual_screen_layout, 4, 0);
        nt1Var.d(R.id.dual_screen_empty_view, 1, R.id.dual_screen_layout, 1, 0);
        nt1Var.d(R.id.dual_screen_empty_view, 2, R.id.dual_screen_layout, 2, 0);
        nt1Var.d(R.id.dual_screen_empty_view, 3, R.id.dual_screen_layout, 3, 0);
        nt1Var.d(R.id.dual_screen_empty_view, 4, R.id.dual_screen_layout, 4, 0);
        getWindow().setSoftInputMode(16);
        if (!zIntersect) {
            nt1Var.c.remove(Integer.valueOf(R.id.dual_screen_empty_view));
        } else if (z) {
            nt1Var.d(R.id.dual_screen_content, 1, R.id.vertical_guideline, 2, getHinge(this, rotation).width() / 2);
            nt1Var.d(R.id.dual_screen_empty_view, 2, R.id.vertical_guideline, 1, 0);
        } else {
            nt1Var.d(R.id.dual_screen_content, 4, R.id.horizontal_guideline, 3, getHinge(this, rotation).height() / 2);
            nt1Var.d(R.id.dual_screen_empty_view, 3, R.id.horizontal_guideline, 4, 0);
            getWindow().setSoftInputMode(48);
        }
        ((ConstraintLayout) findViewById(R.id.dual_screen_layout)).setConstraintSet(nt1Var);
    }

    private static Rect getHinge(DualScreenActivity dualScreenActivity, int i) {
        try {
            List<Rect> boundingRectsForRotation = DisplayMask.fromResourcesRect(dualScreenActivity).getBoundingRectsForRotation(i);
            return boundingRectsForRotation.size() == 0 ? new Rect(0, 0, 0, 0) : boundingRectsForRotation.get(0);
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DualScreenActivity:getHinge", "Failed to get hinge rect", th);
            return new Rect(0, 0, 0, 0);
        }
    }

    private void initializeContentView() {
        super.setContentView(R.layout.dual_screen_layout);
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_HANDLING_FOR_EDGE_TO_EDGE)) {
            try {
                View viewFindViewById = findViewById(android.R.id.content);
                e6 e6Var = new e6();
                WeakHashMap weakHashMap = dl8.a;
                uk8.c(viewFindViewById, e6Var);
            } catch (Throwable unused) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("DualScreenActivity:initializeContentView", "Failed to set OnApplyWindowInsetsListener");
            }
        }
        adjustLayoutForDualScreenActivity();
    }

    public int getThemeResId() {
        return R.style.DualScreenActivityTheme;
    }

    @Override // defpackage.io1, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        switch (this.a) {
            case 0:
                super.onConfigurationChanged(configuration);
                adjustLayoutForDualScreenActivity();
                break;
            default:
                super.onConfigurationChanged(configuration);
                break;
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        switch (this.a) {
            case 0:
                super.onCreate(bundle);
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_HANDLING_FOR_EDGE_TO_EDGE)) {
                    setTheme(getThemeResId());
                    setEdgeToEdge();
                }
                break;
            default:
                super.onCreate(bundle);
                break;
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public void setContentView(int i) {
        switch (this.a) {
            case 0:
                initializeContentView();
                LayoutInflater.from(this).inflate(i, (RelativeLayout) findViewById(R.id.dual_screen_content));
                break;
            default:
                super.setContentView(i);
                break;
        }
    }

    public void setEdgeToEdge() {
        os2.a(this, new mv7(0, 0, 1, new zi1(9)), new mv7(0, 0, 1, new zi1(9)));
    }

    public void setFragment(o oVar) {
        initializeContentView();
        ur3 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        a aVar = new a(supportFragmentManager);
        aVar.j(R.id.dual_screen_content, oVar);
        aVar.e();
    }
}
