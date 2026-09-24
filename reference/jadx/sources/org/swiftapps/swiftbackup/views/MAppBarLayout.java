package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.k28;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MAppBarLayout extends AppBarLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    public MAppBarLayout(Context context, AttributeSet attributeSet) {
        int iK;
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        Context context2 = getContext();
        context2.getClass();
        k28 k28VarH = h(context2);
        if (k28VarH == null) {
            Context context3 = getContext();
            context3.getClass();
            iK = Const.k(context3);
        } else {
            k28VarH = k28VarH.t() ? k28VarH : null;
            if (k28VarH != null) {
                iK = k28VarH.p();
            } else {
                Context context4 = getContext();
                context4.getClass();
                iK = Const.k(context4);
            }
        }
        setBackgroundColor(iK);
    }

    public static k28 h(Context context) {
        while (!(context instanceof k28)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
            context.getClass();
        }
        return (k28) context;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    public MAppBarLayout(Context context) {
        int iK;
        super(context);
        context.getClass();
        Context context2 = getContext();
        context2.getClass();
        k28 k28VarH = h(context2);
        if (k28VarH != null) {
            k28VarH = k28VarH.t() ? k28VarH : null;
            if (k28VarH != null) {
                iK = k28VarH.p();
            } else {
                Context context3 = getContext();
                context3.getClass();
                iK = Const.k(context3);
            }
        } else {
            Context context4 = getContext();
            context4.getClass();
            iK = Const.k(context4);
        }
        setBackgroundColor(iK);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    public MAppBarLayout(Context context, AttributeSet attributeSet, int i) {
        int iK;
        super(context, attributeSet, i);
        context.getClass();
        attributeSet.getClass();
        Context context2 = getContext();
        context2.getClass();
        k28 k28VarH = h(context2);
        if (k28VarH != null) {
            k28VarH = k28VarH.t() ? k28VarH : null;
            if (k28VarH != null) {
                iK = k28VarH.p();
            } else {
                Context context3 = getContext();
                context3.getClass();
                iK = Const.k(context3);
            }
        } else {
            Context context4 = getContext();
            context4.getClass();
            iK = Const.k(context4);
        }
        setBackgroundColor(iK);
    }
}
