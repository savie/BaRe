package com.google.gson.internal.sql;

import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.km4;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class SqlDateTypeAdapter extends b {
    public static final xb8 b = new xb8() { // from class: com.google.gson.internal.sql.SqlDateTypeAdapter.1
        @Override // defpackage.xb8
        public final b create(com.google.gson.a aVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new SqlDateTypeAdapter(0);
            }
            return null;
        }
    };
    public final SimpleDateFormat a;

    private SqlDateTypeAdapter() {
        this.a = new SimpleDateFormat("MMM d, yyyy");
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        Date date;
        if (tl4Var.peek() == 9) {
            tl4Var.nextNull();
            return null;
        }
        String strNextString = tl4Var.nextString();
        synchronized (this) {
            TimeZone timeZone = this.a.getTimeZone();
            try {
                try {
                    date = new Date(this.a.parse(strNextString).getTime());
                    this.a.setTimeZone(timeZone);
                } catch (ParseException e) {
                    throw new km4("Failed parsing '" + strNextString + "' as SQL Date; at path " + tl4Var.getPreviousPath(), e);
                }
            } catch (Throwable th) {
                this.a.setTimeZone(timeZone);
                throw th;
            }
        }
        return date;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            nn4Var.r();
            return;
        }
        synchronized (this) {
            str = this.a.format((java.util.Date) date);
        }
        nn4Var.S(str);
    }

    public /* synthetic */ SqlDateTypeAdapter(int i) {
        this();
    }
}
