package defpackage;

import javax.el.BeanELResolver;
import javax.el.ELContext;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fl7 extends ELContext {
    public final Object a;

    public fl7(Object obj) {
        this.a = obj;
        new el7();
        new dl7(this);
        new BeanELResolver(true);
    }
}
