package defpackage;

import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d74 implements ch5 {
    public static final iu5 b = iu5.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");
    public final vk9 a;

    public d74(vk9 vk9Var) {
        this.a = vk9Var;
    }

    @Override // defpackage.ch5
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        sy3 sy3Var = (sy3) obj;
        vk9 vk9Var = this.a;
        if (vk9Var != null) {
            yg5 yg5Var = (yg5) vk9Var.b;
            zg5 zg5VarA = zg5.a(sy3Var);
            Object objA = yg5Var.a(zg5VarA);
            ArrayDeque arrayDeque = zg5.b;
            synchronized (arrayDeque) {
                arrayDeque.offer(zg5VarA);
            }
            sy3 sy3Var2 = (sy3) objA;
            if (sy3Var2 == null) {
                yg5Var.d(zg5.a(sy3Var), sy3Var);
            } else {
                sy3Var = sy3Var2;
            }
        }
        return new bh5(sy3Var, new f74(sy3Var, ((Integer) ou5Var.c(b)).intValue()));
    }
}
