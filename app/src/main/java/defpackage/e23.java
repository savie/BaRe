package defpackage;

import java.util.Locale;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e23 {
    public static final TreeMap e;
    public final String a;
    public String b;
    public String c;
    public final boolean d;

    static {
        TreeMap treeMap = new TreeMap();
        e = treeMap;
        treeMap.put("en", Locale.ENGLISH);
        treeMap.put("de", Locale.GERMAN);
        treeMap.put("it", Locale.ITALIAN);
        treeMap.put("es", new Locale("es", "", ""));
        treeMap.put("pt", new Locale("pt", "", ""));
        treeMap.put("da", new Locale("da", "", ""));
        treeMap.put("sv", new Locale("sv", "", ""));
        treeMap.put("no", new Locale("no", "", ""));
        treeMap.put("nl", new Locale("nl", "", ""));
        treeMap.put("ro", new Locale("ro", "", ""));
        treeMap.put("sq", new Locale("sq", "", ""));
        treeMap.put("sh", new Locale("sh", "", ""));
        treeMap.put("sk", new Locale("sk", "", ""));
        treeMap.put("sl", new Locale("sl", "", ""));
        treeMap.put("fr", "jan|fév|mar|avr|mai|jun|jui|aoû|sep|oct|nov|déc");
    }

    public e23(e23 e23Var) {
        this.d = true;
        this.a = e23Var.a;
        this.b = e23Var.b;
        this.d = e23Var.d;
        this.c = e23Var.c;
    }

    public e23(String str, String str2, String str3) {
        this.d = true;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public e23(String str, e23 e23Var) {
        this.d = true;
        this.a = str;
        this.b = e23Var.b;
        this.d = e23Var.d;
        this.c = e23Var.c;
    }
}
