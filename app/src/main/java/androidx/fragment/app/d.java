package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import defpackage.dr3;
import defpackage.ji8;
import defpackage.la;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends f {
    public final boolean b;
    public boolean c;
    public la d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(h0 h0Var, boolean z) {
        super(h0Var);
        h0Var.getClass();
        this.b = z;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0025  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e3 A[Catch: RuntimeException -> 0x00f5, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x00f5, blocks: (B:78:0x00dd, B:80:0x00e3), top: B:91:0x00dd }] */
    public final la b(Context context) {
        int i;
        la laVar;
        Animator animatorLoadAnimator;
        int iN;
        if (this.c) {
            return this.d;
        }
        h0 h0Var = this.a;
        o oVar = h0Var.c;
        boolean z = h0Var.a == 2;
        dr3 dr3Var = oVar.mAnimationInfo;
        int i2 = dr3Var == null ? 0 : dr3Var.f;
        if (this.b) {
            if (z) {
                if (dr3Var == null) {
                    i = 0;
                } else {
                    i = dr3Var.d;
                }
            } else if (dr3Var == null) {
                i = 0;
            } else {
                i = dr3Var.e;
            }
        } else if (z) {
            if (dr3Var == null) {
                i = 0;
            } else {
                i = dr3Var.b;
            }
        } else if (dr3Var == null) {
            i = 0;
        } else {
            i = dr3Var.c;
        }
        oVar.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = oVar.mContainer;
        la laVar2 = null;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            oVar.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = oVar.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            if (i == 0 && i2 != 0) {
                if (i2 == 4097) {
                    iN = z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                } else if (i2 == 8194) {
                    iN = z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                } else if (i2 == 8197) {
                    iN = z ? ji8.N(context, android.R.attr.activityCloseEnterAnimation) : ji8.N(context, android.R.attr.activityCloseExitAnimation);
                } else if (i2 == 4099) {
                    iN = z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                } else if (i2 != 4100) {
                    iN = -1;
                } else {
                    iN = z ? ji8.N(context, android.R.attr.activityOpenEnterAnimation) : ji8.N(context, android.R.attr.activityOpenExitAnimation);
                }
                i = iN;
            }
            if (i != 0) {
                boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(i));
                if (zEquals) {
                    try {
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i);
                        if (animationLoadAnimation != null) {
                            laVar = new la(animationLoadAnimation);
                            laVar2 = laVar;
                        }
                    } catch (Resources.NotFoundException e) {
                        throw e;
                    } catch (RuntimeException unused) {
                        try {
                            animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
                            if (animatorLoadAnimator != null) {
                                laVar = new la();
                                laVar.a = null;
                                AnimatorSet animatorSet = new AnimatorSet();
                                laVar.b = animatorSet;
                                animatorSet.play(animatorLoadAnimator);
                                laVar2 = laVar;
                            }
                        } catch (RuntimeException e2) {
                            if (zEquals) {
                                throw e2;
                            }
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i);
                            if (animationLoadAnimation2 != null) {
                                laVar2 = new la(animationLoadAnimation2);
                            }
                        }
                    }
                } else {
                    animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
                    if (animatorLoadAnimator != null) {
                        laVar = new la();
                        laVar.a = null;
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        laVar.b = animatorSet2;
                        animatorSet2.play(animatorLoadAnimator);
                        laVar2 = laVar;
                    }
                }
            }
        }
        this.d = laVar2;
        this.c = true;
        return laVar2;
    }
}
