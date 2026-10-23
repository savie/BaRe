package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import java.util.Objects;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nm7 implements rb7 {
    public final int a;
    public final tb7 b;
    public final int[][] c;
    public final tb7[] d;
    public final mm7 e;
    public final mm7 f;
    public final mm7 g;
    public final mm7 h;

    public nm7(yl2 yl2Var) {
        this.a = yl2Var.a;
        this.b = (tb7) yl2Var.b;
        this.c = (int[][]) yl2Var.c;
        this.d = (tb7[]) yl2Var.d;
        this.e = (mm7) yl2Var.e;
        this.f = (mm7) yl2Var.f;
        this.g = (mm7) yl2Var.g;
        this.h = (mm7) yl2Var.h;
    }

    public static void g(yl2 yl2Var, Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr = td6.D;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                tb7 tb7VarA = tb7.g(context, typedArrayObtainAttributes.getResourceId(0, 0), typedArrayObtainAttributes.getResourceId(1, 0)).a();
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                yl2Var.a(StateSet.trimStateSet(iArr2, i), tb7VarA);
            }
        }
    }

    public static nm7 h(Context context, TypedArray typedArray, int i) {
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        yl2 yl2Var = new yl2();
        yl2Var.d();
        try {
            XmlResourceParser xml = context.getResources().getXml(resourceId);
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    g(yl2Var, context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                xml.close();
                return yl2Var.b();
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            yl2Var.d();
        }
    }

    @Override // defpackage.rb7
    public final tb7 a(float f) {
        return i().a(f);
    }

    @Override // defpackage.rb7
    public final tb7 b(int[] iArr) {
        int i;
        int i2;
        int[][] iArr2;
        int i3 = 0;
        while (true) {
            i = -1;
            i2 = this.a;
            iArr2 = this.c;
            if (i3 >= i2) {
                i3 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            for (int i4 = 0; i4 < i2; i4++) {
                if (StateSet.stateSetMatches(iArr2[i4], iArr3)) {
                    i = i4;
                    break;
                }
            }
            i3 = i;
        }
        tb7[] tb7VarArr = this.d;
        mm7 mm7Var = this.h;
        mm7 mm7Var2 = this.g;
        mm7 mm7Var3 = this.f;
        mm7 mm7Var4 = this.e;
        if (mm7Var4 == null && mm7Var3 == null && mm7Var2 == null && mm7Var == null) {
            return tb7VarArr[i3];
        }
        sb7 sb7VarM = tb7VarArr[i3].m();
        if (mm7Var4 != null) {
            sb7VarM.e = mm7Var4.c(iArr);
        }
        if (mm7Var3 != null) {
            sb7VarM.f = mm7Var3.c(iArr);
        }
        if (mm7Var2 != null) {
            sb7VarM.h = mm7Var2.c(iArr);
        }
        if (mm7Var != null) {
            sb7VarM.g = mm7Var.c(iArr);
        }
        return sb7VarM.a();
    }

    @Override // defpackage.rb7
    public final tb7[] c() {
        return this.d;
    }

    @Override // defpackage.rb7
    public final tb7 d() {
        return i();
    }

    @Override // defpackage.rb7
    public final tb7 e(vi6 vi6Var) {
        return i().e(vi6Var);
    }

    @Override // defpackage.rb7
    public final boolean f() {
        mm7 mm7Var;
        mm7 mm7Var2;
        mm7 mm7Var3;
        mm7 mm7Var4;
        return this.a > 1 || ((mm7Var = this.e) != null && mm7Var.a > 1) || (((mm7Var2 = this.f) != null && mm7Var2.a > 1) || (((mm7Var3 = this.g) != null && mm7Var3.a > 1) || ((mm7Var4 = this.h) != null && mm7Var4.a > 1)));
    }

    public final tb7 i() {
        tb7 tb7Var = this.b;
        mm7 mm7Var = this.h;
        mm7 mm7Var2 = this.g;
        mm7 mm7Var3 = this.f;
        mm7 mm7Var4 = this.e;
        if (mm7Var4 == null && mm7Var3 == null && mm7Var2 == null && mm7Var == null) {
            return tb7Var;
        }
        sb7 sb7VarM = tb7Var.m();
        if (mm7Var4 != null) {
            sb7VarM.e = mm7Var4.b;
        }
        if (mm7Var3 != null) {
            sb7VarM.f = mm7Var3.b;
        }
        if (mm7Var2 != null) {
            sb7VarM.h = mm7Var2.b;
        }
        if (mm7Var != null) {
            sb7VarM.g = mm7Var.b;
        }
        return sb7VarM.a();
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.Serializable, tb7[]] */
    public final yl2 j() {
        yl2 yl2Var = new yl2();
        int i = this.a;
        yl2Var.a = i;
        yl2Var.b = this.b;
        int[][] iArr = this.c;
        int[][] iArr2 = new int[iArr.length][];
        yl2Var.c = iArr2;
        tb7[] tb7VarArr = this.d;
        yl2Var.d = new tb7[tb7VarArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        System.arraycopy(tb7VarArr, 0, (tb7[]) yl2Var.d, 0, yl2Var.a);
        yl2Var.e = this.e;
        yl2Var.f = this.f;
        yl2Var.g = this.g;
        yl2Var.h = this.h;
        return yl2Var;
    }
}
