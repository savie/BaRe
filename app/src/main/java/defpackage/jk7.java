package defpackage;

import com.google.gson.internal.bind.a;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jk7 extends a {
    @Override // com.google.gson.internal.bind.a
    public final Date b(Date date) {
        return new Timestamp(date.getTime());
    }
}
