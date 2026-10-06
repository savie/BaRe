package org.greenrobot.eventbus.android;

import defpackage.ms8;
import defpackage.q34;
import defpackage.sl4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AndroidComponentsImpl {
    public static final AndroidComponentsImpl c;
    public final sl4 a;
    public final q34 b;

    static {
        AndroidComponentsImpl androidComponentsImpl = null;
        if (ms8.z()) {
            try {
                androidComponentsImpl = (AndroidComponentsImpl) AndroidComponentsImpl.class.getConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
        }
        c = androidComponentsImpl;
    }

    public AndroidComponentsImpl() {
        sl4 sl4Var = new sl4();
        q34 q34Var = new q34(6);
        this.a = sl4Var;
        this.b = q34Var;
    }
}
