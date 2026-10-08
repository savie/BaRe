package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gn4 {
    public static final ib a = ib.k("x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE);

    public static int a(ul4 ul4Var) {
        ul4Var.a();
        int iQ = (int) (ul4Var.q() * 255.0d);
        int iQ2 = (int) (ul4Var.q() * 255.0d);
        int iQ3 = (int) (ul4Var.q() * 255.0d);
        while (ul4Var.m()) {
            ul4Var.G();
        }
        ul4Var.g();
        return Color.argb(255, iQ, iQ2, iQ3);
    }

    public static PointF b(ul4 ul4Var, float f) {
        int iA = dj7.A(ul4Var.v());
        if (iA == 0) {
            ul4Var.a();
            float fQ = (float) ul4Var.q();
            float fQ2 = (float) ul4Var.q();
            while (ul4Var.v() != 2) {
                ul4Var.G();
            }
            ul4Var.g();
            return new PointF(fQ * f, fQ2 * f);
        }
        if (iA != 2) {
            if (iA != 6) {
                c6.f("Unknown point starts with ".concat(eq3.t(ul4Var.v())));
                return null;
            }
            float fQ3 = (float) ul4Var.q();
            float fQ4 = (float) ul4Var.q();
            while (ul4Var.m()) {
                ul4Var.G();
            }
            return new PointF(fQ3 * f, fQ4 * f);
        }
        ul4Var.b();
        float fD = 0.0f;
        float fD2 = 0.0f;
        while (ul4Var.m()) {
            int iA2 = ul4Var.A(a);
            if (iA2 == 0) {
                fD = d(ul4Var);
            } else if (iA2 != 1) {
                ul4Var.D();
                ul4Var.G();
            } else {
                fD2 = d(ul4Var);
            }
        }
        ul4Var.h();
        return new PointF(fD * f, fD2 * f);
    }

    public static ArrayList c(ul4 ul4Var, float f) {
        ArrayList arrayList = new ArrayList();
        ul4Var.a();
        while (ul4Var.v() == 1) {
            ul4Var.a();
            arrayList.add(b(ul4Var, f));
            ul4Var.g();
        }
        ul4Var.g();
        return arrayList;
    }

    public static float d(ul4 ul4Var) {
        int iV = ul4Var.v();
        int iA = dj7.A(iV);
        if (iA != 0) {
            if (iA == 6) {
                return (float) ul4Var.q();
            }
            c6.f("Unknown value for token of type ".concat(eq3.t(iV)));
            return 0.0f;
        }
        ul4Var.a();
        float fQ = (float) ul4Var.q();
        while (ul4Var.m()) {
            ul4Var.G();
        }
        ul4Var.g();
        return fQ;
    }
}
