package defpackage;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class l90 implements bw1, jk8, os4 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;
    public final Object d;
    public Object e;
    public Object f;

    public l90(n90 n90Var) {
        this.a = 0;
        this.f = n90Var;
        this.b = (Uri) n90Var.a(n90.c);
        this.c = (Uri) n90Var.a(n90.d);
        this.e = (Uri) n90Var.a(n90.f);
        this.d = (Uri) n90Var.a(n90.e);
    }

    public static l90 e(JSONObject jSONObject) throws JSONException {
        jb9.j(jSONObject, "json object cannot be null");
        if (!jSONObject.has("discoveryDoc")) {
            jb9.h("missing authorizationEndpoint", jSONObject.has("authorizationEndpoint"));
            jb9.h("missing tokenEndpoint", jSONObject.has("tokenEndpoint"));
            return new l90(jm1.x(jSONObject, "authorizationEndpoint"), jm1.x(jSONObject, "tokenEndpoint"), jm1.y(jSONObject, "registrationEndpoint"), jm1.y(jSONObject, "endSessionEndpoint"));
        }
        try {
            return new l90(new n90(jSONObject.optJSONObject("discoveryDoc")));
        } catch (m90 e) {
            throw new JSONException("Missing required field in discovery doc: " + e.a);
        }
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        Map map = (Map) obj;
        for (Object obj2 : map.keySet()) {
            String strA = ((ix2) this.f).a();
            ((cz4) this.e).getClass();
            ev5 ev5VarI = ev5Var.i(strA);
            Object obj3 = map.get(obj2);
            ((bw1) this.d).a(ev5VarI, obj2);
            ((bw1) this.c).a(ev5VarI, obj3);
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        gd4 gd4VarG = ((j65) this.b).g(mc4Var);
        Object objD = gd4VarG.d();
        return !gd4VarG.c() ? h(mc4Var, objD) : objD;
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) {
        gd4 gd4VarG = ((j65) this.b).g(mc4Var);
        if (gd4VarG.c()) {
            return gd4VarG.d();
        }
        gd4VarG.e(obj);
        return obj != null ? h(mc4Var, obj) : obj;
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        mc4 mc4VarD;
        gd4 gd4VarG = ((j65) this.b).g(mc4Var);
        if (gd4VarG.c()) {
            return true;
        }
        gd4VarG.e(null);
        do {
            mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return true;
            }
            if (!((bw1) this.d).d(mc4VarD)) {
                return false;
            }
        } while (((bw1) this.c).d(mc4VarD));
        return false;
    }

    public void f(int i) {
        new ks7((Context) this.b).inflate(i, (fc5) this.c);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 2:
                break;
        }
        return (ConstraintLayout) obj;
    }

    @Override // defpackage.os4
    public Object getValue() {
        tl8 tl8Var = (tl8) this.f;
        if (tl8Var != null) {
            return tl8Var;
        }
        yl8 yl8Var = (yl8) ((bt3) this.c).invoke();
        wl8 wl8Var = (wl8) ((bt3) this.d).invoke();
        n22 n22Var = (n22) ((bt3) this.e).invoke();
        yl8Var.getClass();
        wl8Var.getClass();
        n22Var.getClass();
        lj3 lj3Var = new lj3(yl8Var, wl8Var, n22Var);
        n81 n81Var = (n81) this.b;
        String strB = n81Var.b();
        if (strB == null) {
            c6.f("Local and anonymous classes can not be ViewModels");
            return null;
        }
        tl8 tl8VarB = lj3Var.b(n81Var, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        this.f = tl8VarB;
        return tl8VarB;
    }

    public Map h(mc4 mc4Var, Object obj) {
        Map map = (Map) obj;
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return map;
            }
            map.put(((bw1) this.d).b(mc4VarD), ((bw1) this.c).b(mc4VarD));
        }
    }

    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        jm1.H(jSONObject, "authorizationEndpoint", ((Uri) this.b).toString());
        jm1.H(jSONObject, "tokenEndpoint", ((Uri) this.c).toString());
        Uri uri = (Uri) this.e;
        if (uri != null) {
            jm1.H(jSONObject, "registrationEndpoint", uri.toString());
        }
        Uri uri2 = (Uri) this.d;
        if (uri2 != null) {
            jm1.H(jSONObject, "endSessionEndpoint", uri2.toString());
        }
        n90 n90Var = (n90) this.f;
        if (n90Var != null) {
            jm1.J(jSONObject, "discoveryDoc", n90Var.a);
        }
        return jSONObject;
    }

    public l90(n81 n81Var, bt3 bt3Var, bt3 bt3Var2, bt3 bt3Var3) {
        this.a = 5;
        this.b = n81Var;
        this.c = bt3Var;
        this.d = bt3Var2;
        this.e = bt3Var3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l90(Context context, View view) {
        this(context, view, 0, R.attr.popupMenuStyle, 0);
        this.a = 4;
    }

    public l90(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.a = 1;
        this.b = new j65(ai5Var, ln5Var, null);
        this.c = ix2Var.d(ai5Var);
        this.d = ix2Var.b(ai5Var);
        this.e = ai5Var.n();
        this.f = ix2Var;
    }

    public l90(Context context, View view, int i, int i2, int i3) {
        this.a = 4;
        this.b = context;
        fc5 fc5Var = new fc5(context);
        this.c = fc5Var;
        fc5Var.e = new zq8(this, 16);
        qc5 qc5Var = new qc5(i2, i3, fc5Var, context, view, false);
        this.d = qc5Var;
        qc5Var.g = i;
        qc5Var.k = new pc5(this, 1);
    }

    public l90(Uri uri, Uri uri2, Uri uri3, Uri uri4) {
        this.a = 0;
        uri.getClass();
        this.b = uri;
        uri2.getClass();
        this.c = uri2;
        this.e = uri3;
        this.d = uri4;
        this.f = null;
    }

    public /* synthetic */ l90(ConstraintLayout constraintLayout, View view, View view2, TextView textView, TextView textView2, int i) {
        this.a = i;
        this.b = constraintLayout;
        this.c = view;
        this.d = view2;
        this.e = textView;
        this.f = textView2;
    }
}
