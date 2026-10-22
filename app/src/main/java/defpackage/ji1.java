package defpackage;

import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ji1 extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ji1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((tb1) this.receiver).m();
            case 1:
                ((ik0) this.receiver).getClass();
                return Boolean.valueOf(g00.r().hasSystemFeature("android.hardware.telephony"));
            case 2:
                ((dz5) this.receiver).getClass();
                return Boolean.valueOf(dz5.d());
            case 3:
                ((Response) this.receiver).close();
                return be8Var;
            default:
                ((Response) this.receiver).close();
                return be8Var;
        }
    }
}
