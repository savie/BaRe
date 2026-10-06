package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fm0 extends c46 {
    public static void m(PreferenceGroup preferenceGroup) {
        int size = preferenceGroup.g0.size();
        for (int i = 0; i < size; i++) {
            Preference preferenceH = preferenceGroup.H(i);
            preferenceH.getClass();
            if (preferenceH.T) {
                preferenceH.T = false;
                preferenceH.h();
            }
            preferenceH.R = true;
            preferenceH.S = false;
            preferenceH.W = preferenceH instanceof PreferenceCategory ? R.layout.preference_category : R.layout.preference_segmented;
            if (preferenceH instanceof PreferenceGroup) {
                m((PreferenceGroup) preferenceH);
            }
        }
    }

    public static ArrayList o(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        int size = preferenceGroup.g0.size();
        for (int i = 0; i < size; i++) {
            Preference preferenceH = preferenceGroup.H(i);
            preferenceH.getClass();
            if (preferenceH instanceof PreferenceGroup) {
                arrayList.addAll(o((PreferenceGroup) preferenceH));
            } else {
                arrayList.add(preferenceH);
            }
        }
        return arrayList;
    }

    @Override // defpackage.c46
    public final hg6 k(PreferenceScreen preferenceScreen) {
        preferenceScreen.getClass();
        m(preferenceScreen);
        return new lt7(preferenceScreen, p());
    }

    public final ArrayList n() {
        ArrayList arrayList = new ArrayList();
        PreferenceScreen preferenceScreen = this.b.g;
        preferenceScreen.getClass();
        int size = preferenceScreen.g0.size();
        for (int i = 0; i < size; i++) {
            PreferenceScreen preferenceScreen2 = this.b.g;
            preferenceScreen2.getClass();
            Preference preferenceH = preferenceScreen2.H(i);
            preferenceH.getClass();
            if (preferenceH instanceof PreferenceGroup) {
                arrayList.addAll(o((PreferenceGroup) preferenceH));
            } else {
                arrayList.add(preferenceH);
            }
        }
        return arrayList;
    }

    @Override // defpackage.c46, androidx.fragment.app.o
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        u activity = getActivity();
        k28 k28Var = activity instanceof k28 ? (k28) activity : null;
        if (k28Var != null) {
            int iP = k28Var.p();
            ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
            if (viewGroup != null) {
                viewGroup.setBackgroundColor(iP);
            }
            RecyclerView recyclerView = this.c;
            if (recyclerView != null) {
                recyclerView.setBackgroundColor(iP);
            }
        }
        RecyclerView recyclerView2 = this.c;
        if (recyclerView2 != null) {
            sz8.b(recyclerView2, 7);
        }
        b46 b46Var = this.a;
        b46Var.b = 0;
        b46Var.a = null;
        RecyclerView recyclerView3 = b46Var.d.c;
        if (recyclerView3.H.size() == 0) {
            return;
        }
        a aVar = recyclerView3.y;
        if (aVar != null) {
            aVar.m("Cannot invalidate item decorations during a scroll or layout");
        }
        recyclerView3.Q();
        recyclerView3.requestLayout();
    }

    public boolean p() {
        return false;
    }
}
