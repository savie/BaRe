package defpackage;

import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t35 extends TransitionSet {
    public t35() {
        setOrdering(0);
        addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1).setDuration(250L));
    }
}
