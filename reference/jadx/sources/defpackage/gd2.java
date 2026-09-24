package defpackage;

import java.text.SimpleDateFormat;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum gd2 {
    FULL("yyyy-MM-dd HH:mm:ss.S z"),
    LONG("yyyy-MM-dd HH:mm:ss z"),
    NORMAL("yyyy-MM-dd z"),
    SHORT("yyyy-MM-dd");

    public final tr9 a;

    gd2(String str) {
        tr9 tr9Var = new tr9(6, false);
        tr9Var.b = new SimpleDateFormat(str);
        this.a = tr9Var;
    }
}
