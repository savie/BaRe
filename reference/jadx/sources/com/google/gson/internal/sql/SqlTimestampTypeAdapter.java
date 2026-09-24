package com.google.gson.internal.sql;

import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class SqlTimestampTypeAdapter extends b {
    public static final xb8 b = new xb8() { // from class: com.google.gson.internal.sql.SqlTimestampTypeAdapter.1
        @Override // defpackage.xb8
        public final b create(com.google.gson.a aVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Timestamp.class) {
                return new SqlTimestampTypeAdapter(aVar.e(Date.class));
            }
            return null;
        }
    };
    public final b a;

    public SqlTimestampTypeAdapter(b bVar) {
        this.a = bVar;
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        Date date = (Date) this.a.read(tl4Var);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) {
        this.a.write(nn4Var, (Timestamp) obj);
    }
}
