package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu implements ViewGroup.OnHierarchyChangeListener {
    public final /* synthetic */ LinkedHashMap a;

    public mu(LinkedHashMap linkedHashMap) {
        this.a = linkedHashMap;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        Object next;
        view.getClass();
        view2.getClass();
        fn fnVar = (fn) view2;
        CharSequence text = fnVar.getText();
        z3 z3Var = (z3) iu.getEntries();
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        do {
            if (!w3Var.hasNext()) {
                next = null;
                break;
            } else {
                next = w3Var.next();
            }
        } while (!pe4.d(text, this.a.get(((iu) next).toString())));
        iu iuVar = (iu) next;
        if (iuVar != null) {
            fnVar.setEnabled(iuVar.getBackupReq().isPossible());
            if (fnVar.isEnabled()) {
                return;
            }
            view2.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        view.getClass();
        view2.getClass();
    }
}
