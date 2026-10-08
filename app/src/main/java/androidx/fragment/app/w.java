package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.as3;
import defpackage.bs3;
import defpackage.ce6;
import defpackage.cs3;
import defpackage.eq3;
import defpackage.l0;
import defpackage.or3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements LayoutInflater.Factory2 {
    public final z a;

    public w(z zVar) {
        this.a = zVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        d0 d0VarG;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        z zVar = this.a;
        if (zEquals) {
            return new FragmentContainerView(context, attributeSet, zVar);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ce6.a);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes.getString(0);
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
            String string = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = o.class.isAssignableFrom(or3.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    o oVarC = resourceId != -1 ? zVar.C(resourceId) : null;
                    if (oVarC == null && string != null) {
                        oVarC = zVar.D(string);
                    }
                    if (oVarC == null && id != -1) {
                        oVarC = zVar.C(id);
                    }
                    if (oVarC == null) {
                        or3 or3VarH = zVar.H();
                        context.getClassLoader();
                        oVarC = or3VarH.a(attributeValue);
                        oVarC.mFromLayout = true;
                        oVarC.mFragmentId = resourceId != 0 ? resourceId : id;
                        oVarC.mContainerId = id;
                        oVarC.mTag = string;
                        oVarC.mInLayout = true;
                        oVarC.mFragmentManager = zVar;
                        t tVar = zVar.w;
                        oVarC.mHost = tVar;
                        u uVar = tVar.e;
                        oVarC.onInflate();
                        d0VarG = zVar.a(oVarC);
                        if (z.K(2)) {
                            Log.v("FragmentManager", "Fragment " + oVarC + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (oVarC.mInLayout) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        oVarC.mInLayout = true;
                        oVarC.mFragmentManager = zVar;
                        t tVar2 = zVar.w;
                        oVarC.mHost = tVar2;
                        u uVar2 = tVar2.e;
                        oVarC.onInflate();
                        d0VarG = zVar.g(oVarC);
                        if (z.K(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + oVarC + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    as3 as3Var = bs3.a;
                    bs3.b(new cs3(oVarC, "Attempting to use <fragment> tag to add fragment " + oVarC + " to container " + viewGroup));
                    bs3.a(oVarC).getClass();
                    oVarC.mContainer = viewGroup;
                    d0VarG.k();
                    d0VarG.j();
                    View view2 = oVarC.mView;
                    if (view2 == null) {
                        l0.e(eq3.k("Fragment ", attributeValue, " did not create a view."));
                        return null;
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (oVarC.mView.getTag() == null) {
                        oVarC.mView.setTag(string);
                    }
                    oVarC.mView.addOnAttachStateChangeListener(new v(this, d0VarG));
                    return oVarC.mView;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
