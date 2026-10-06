package com.google.gson.internal.sql;

import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.km4;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class SqlTimeTypeAdapter extends b {
    public static final xb8 b = new xb8() { // from class: com.google.gson.internal.sql.SqlTimeTypeAdapter.1
        @Override // defpackage.xb8
        public final b create(com.google.gson.a aVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Time.class) {
                return new SqlTimeTypeAdapter(0);
            }
            return null;
        }
    };
    public final SimpleDateFormat a;

    private SqlTimeTypeAdapter() {
        this.a = new SimpleDateFormat("hh:mm:ss a");
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        Time time;
        if (tl4Var.peek() == 9) {
            tl4Var.nextNull();
            return null;
        }
        String strNextString = tl4Var.nextString();
        synchronized (this) {
            TimeZone timeZone = this.a.getTimeZone();
            try {
                try {
                    time = new Time(this.a.parse(strNextString).getTime());
                    this.a.setTimeZone(timeZone);
                } catch (ParseException e) {
                    throw new km4("Failed parsing '" + strNextString + "' as SQL Time; at path " + tl4Var.getPreviousPath(), e);
                }
            } catch (Throwable th) {
                this.a.setTimeZone(timeZone);
                throw th;
            }
        }
        return time;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            nn4Var.r();
            return;
        }
        synchronized (this) {
            str = this.a.format((Date) time);
        }
        nn4Var.S(str);
    }

    public /* synthetic */ SqlTimeTypeAdapter(int i) {
        this();
    }
}
