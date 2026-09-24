package com.google.gson.internal.sql;

import defpackage.ik7;
import defpackage.jk7;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final boolean a;
    public static final ik7 b;
    public static final jk7 c;
    public static final List d;

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        a = z;
        if (z) {
            b = new ik7(Date.class);
            c = new jk7(Timestamp.class);
            d = Collections.unmodifiableList(Arrays.asList(SqlTimeTypeAdapter.b, SqlDateTypeAdapter.b, SqlTimestampTypeAdapter.b));
        } else {
            b = null;
            c = null;
            d = Collections.EMPTY_LIST;
        }
    }
}
