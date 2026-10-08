package defpackage;

import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ag6 implements au4 {
    public final wx6 a;

    public ag6(wx6 wx6Var) {
        this.a = wx6Var;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        if (rt4Var != rt4.ON_CREATE) {
            e6.e("Next event must be ON_CREATE");
            return;
        }
        fu4Var.getLifecycle().f(this);
        wx6 wx6Var = this.a;
        Bundle bundleC = wx6Var.getSavedStateRegistry().c("androidx.savedstate.Restarter");
        if (bundleC == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleC.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            l0.e("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            return;
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str, false, ag6.class.getClassLoader()).asSubclass(tx6.class);
                clsAsSubclass.getClass();
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(null);
                        objNewInstance.getClass();
                        if (!(wx6Var instanceof zl8)) {
                            q.d(wx6Var, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                            return;
                        }
                        yl8 viewModelStore = ((zl8) wx6Var).getViewModelStore();
                        ot9 savedStateRegistry = wx6Var.getSavedStateRegistry();
                        viewModelStore.getClass();
                        LinkedHashMap linkedHashMap = viewModelStore.a;
                        for (String str2 : new HashSet(linkedHashMap.keySet())) {
                            str2.getClass();
                            tl8 tl8Var = (tl8) linkedHashMap.get(str2);
                            if (tl8Var != null) {
                                pe4.e(tl8Var, savedStateRegistry, wx6Var.getLifecycle());
                            }
                        }
                        if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                            savedStateRegistry.i();
                        }
                    } catch (Exception e) {
                        e6.i(xs1.j("Failed to instantiate ", str), e);
                        return;
                    }
                } catch (NoSuchMethodException e2) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                }
            } catch (ClassNotFoundException e3) {
                e6.i(eq3.k("Class ", str, " wasn't found"), e3);
                return;
            }
        }
    }
}
