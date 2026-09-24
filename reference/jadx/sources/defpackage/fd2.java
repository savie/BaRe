package defpackage;

import java.lang.reflect.Constructor;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fd2 implements i98 {
    public final km8 a;

    public fd2(Class cls) {
        this.a = new km8(cls);
    }

    @Override // defpackage.i98
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final synchronized Date a(String str) {
        gd2 gd2Var;
        Date date;
        gd2 gd2Var2 = gd2.FULL;
        int length = str.length();
        if (length > 23) {
            gd2Var = gd2.FULL;
        } else if (length > 20) {
            gd2Var = gd2.LONG;
        } else {
            gd2Var = length > 11 ? gd2.NORMAL : gd2.SHORT;
        }
        tr9 tr9Var = gd2Var.a;
        synchronized (tr9Var) {
            date = ((SimpleDateFormat) tr9Var.b).parse(str);
        }
        return (Date) ((Constructor) this.a.a).newInstance(Long.valueOf(date.getTime()));
    }

    @Override // defpackage.i98
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final synchronized String b(Date date) {
        String str;
        tr9 tr9Var = gd2.FULL.a;
        synchronized (tr9Var) {
            str = ((SimpleDateFormat) tr9Var.b).format(date);
        }
        return str;
    }
}
