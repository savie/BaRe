package defpackage;

import java.io.IOException;
import java.util.function.BiFunction;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j84 implements BiFunction {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Integer num = (Integer) obj;
        num.intValue();
        IOException iOException = (IOException) obj2;
        return new f84(String.format("%s #%,d: %s", iOException == null ? "Null" : iOException.getClass().getSimpleName(), num, iOException != null ? iOException.getMessage() : "Null"), iOException);
    }
}
