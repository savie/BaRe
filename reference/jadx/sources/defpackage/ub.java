package defpackage;

import android.util.Log;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ub implements w6 {
    public final int a;
    public final Object b;

    public ub(int i) {
        this.b = null;
        this.a = i;
    }

    public boolean a() {
        return this.a == 0;
    }

    public void b(int i, String str, String str2) {
        HashSet hashSet = (HashSet) this.b;
        if (dj7.A(i) >= dj7.A(this.a)) {
            if (hashSet == null || dj7.A(i) > 0 || hashSet.contains(str)) {
                int iA = dj7.A(i);
                if (iA == 0) {
                    Log.d(str, str2);
                    return;
                }
                if (iA == 1) {
                    Log.i(str, str2);
                    return;
                }
                if (iA == 2) {
                    Log.w(str, str2);
                } else if (iA == 3) {
                    Log.e(str, str2);
                } else {
                    g84.h("Should not reach here!");
                }
            }
        }
    }

    @Override // defpackage.w6
    public boolean d(View view) {
        ((BottomSheetBehavior) this.b).L(this.a);
        return true;
    }

    public /* synthetic */ ub(Object obj, int i) {
        this.b = obj;
        this.a = i;
    }
}
