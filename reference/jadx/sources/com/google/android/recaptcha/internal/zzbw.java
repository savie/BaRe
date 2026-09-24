package com.google.android.recaptcha.internal;

import defpackage.ai4;
import defpackage.an1;
import defpackage.bi4;
import defpackage.bn1;
import defpackage.ci4;
import defpackage.f77;
import defpackage.g61;
import defpackage.in2;
import defpackage.jg2;
import defpackage.jv1;
import defpackage.k61;
import defpackage.ma2;
import defpackage.md5;
import defpackage.mt3;
import defpackage.mx1;
import defpackage.nc8;
import defpackage.nh4;
import defpackage.nx1;
import defpackage.od2;
import defpackage.oh4;
import defpackage.ox1;
import defpackage.ph4;
import defpackage.qt3;
import defpackage.r67;
import defpackage.s67;
import defpackage.zh4;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbw implements jg2 {
    private final /* synthetic */ an1 zza;

    public zzbw(an1 an1Var) {
        this.zza = an1Var;
    }

    @Override // defpackage.oh4
    public final g61 attachChild(k61 k61Var) {
        return this.zza.attachChild(k61Var);
    }

    @Override // defpackage.jg2
    public final Object await(jv1 jv1Var) {
        return ((bn1) this.zza).k(jv1Var);
    }

    public final /* synthetic */ boolean cancel(Throwable th) {
        CancellationException ph4Var;
        ci4 ci4Var = (ci4) this.zza;
        if (th != null) {
            ci4Var.getClass();
            ph4Var = ci4.T(ci4Var, th);
        } else {
            ph4Var = new ph4(ci4Var.o(), null, ci4Var);
        }
        ci4Var.m(ph4Var);
        return true;
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        ci4 ci4Var = (ci4) this.zza;
        ci4Var.getClass();
        return od2.h(ci4Var, obj, qt3Var);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        ci4 ci4Var = (ci4) this.zza;
        ci4Var.getClass();
        return od2.k(ci4Var, nx1Var);
    }

    @Override // defpackage.oh4
    public final CancellationException getCancellationException() {
        return this.zza.getCancellationException();
    }

    @Override // defpackage.oh4
    public final f77 getChildren() {
        return this.zza.getChildren();
    }

    @Override // defpackage.jg2
    public final Object getCompleted() {
        return ((bn1) this.zza).t();
    }

    @Override // defpackage.jg2
    public final Throwable getCompletionExceptionOrNull() {
        return ((ci4) this.zza).getCompletionExceptionOrNull();
    }

    @Override // defpackage.mx1
    public final nx1 getKey() {
        this.zza.getClass();
        return nh4.b;
    }

    public final s67 getOnAwait() {
        ((bn1) this.zza).getClass();
        nc8.g(3, zh4.a);
        nc8.g(3, ai4.a);
        return new md5();
    }

    public final r67 getOnJoin() {
        ((ci4) this.zza).getClass();
        nc8.g(3, bi4.a);
        return new ma2(19);
    }

    public final oh4 getParent() {
        g61 g61VarY = ((ci4) this.zza).y();
        if (g61VarY != null) {
            return g61VarY.getParent();
        }
        return null;
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(boolean z, boolean z2, mt3 mt3Var) {
        return ((ci4) this.zza).invokeOnCompletion(z, z2, mt3Var);
    }

    @Override // defpackage.oh4
    public final boolean isActive() {
        return this.zza.isActive();
    }

    @Override // defpackage.oh4
    public final boolean isCancelled() {
        return this.zza.isCancelled();
    }

    public final boolean isCompleted() {
        return ((ci4) this.zza).E();
    }

    @Override // defpackage.oh4
    public final Object join(jv1 jv1Var) {
        return this.zza.join(jv1Var);
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return this.zza.minusKey(nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return this.zza.plus(ox1Var);
    }

    @Override // defpackage.oh4
    public final boolean start() {
        return this.zza.start();
    }

    public final oh4 plus(oh4 oh4Var) {
        this.zza.getClass();
        return oh4Var;
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(mt3 mt3Var) {
        return this.zza.invokeOnCompletion(mt3Var);
    }

    @Override // defpackage.oh4
    public final void cancel(CancellationException cancellationException) {
        this.zza.cancel(cancellationException);
    }

    public final /* synthetic */ void cancel() {
        mx1 mx1Var = this.zza;
        mx1Var.getClass();
        ((ci4) mx1Var).cancel(null);
    }
}
