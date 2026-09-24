package defpackage;

import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tt1 implements ObjectConstructor {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ tt1(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public final Object construct() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                return ConstructorConstructor.lambda$newDefaultConstructor$7(str);
            default:
                return ConstructorConstructor.lambda$get$2(str);
        }
    }
}
