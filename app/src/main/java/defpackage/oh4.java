package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface oh4 extends mx1 {
    g61 attachChild(k61 k61Var);

    void cancel(CancellationException cancellationException);

    CancellationException getCancellationException();

    f77 getChildren();

    in2 invokeOnCompletion(mt3 mt3Var);

    in2 invokeOnCompletion(boolean z, boolean z2, mt3 mt3Var);

    boolean isActive();

    boolean isCancelled();

    Object join(jv1 jv1Var);

    boolean start();
}
