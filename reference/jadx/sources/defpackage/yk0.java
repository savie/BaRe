package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yk0 {
    public final xk0 a;
    public final xk0 b = new xk0();
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;
    public final int i;
    public final int j;
    public final int k;
    public int l;

    public yk0(Context context, xk0 xk0Var) {
        AttributeSet attributeSetAsAttributeSet;
        int styleAttribute;
        int next;
        xk0Var = xk0Var == null ? new xk0() : xk0Var;
        int i = xk0Var.a;
        if (i != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } else {
            attributeSetAsAttributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayB = jd4.B(context, attributeSetAsAttributeSet, td6.c, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.c = typedArrayB.getDimensionPixelSize(5, -1);
        this.i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.d = typedArrayB.getDimensionPixelSize(15, -1);
        this.e = typedArrayB.getDimension(13, resources.getDimension(R.dimen.m3_badge_size));
        this.g = typedArrayB.getDimension(18, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f = typedArrayB.getDimension(4, resources.getDimension(R.dimen.m3_badge_size));
        this.h = typedArrayB.getDimension(14, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.k = typedArrayB.getInt(25, 1);
        this.l = typedArrayB.getInt(2, 0);
        xk0 xk0Var2 = this.b;
        int i2 = xk0Var.p;
        xk0Var2.p = i2 == -2 ? 255 : i2;
        int i3 = xk0Var.r;
        if (i3 != -2) {
            xk0Var2.r = i3;
        } else {
            boolean zHasValue = typedArrayB.hasValue(24);
            xk0 xk0Var3 = this.b;
            if (zHasValue) {
                xk0Var3.r = typedArrayB.getInt(24, 0);
            } else {
                xk0Var3.r = -1;
            }
        }
        String str = xk0Var.q;
        if (str != null) {
            this.b.q = str;
        } else if (typedArrayB.hasValue(8)) {
            this.b.q = typedArrayB.getString(8);
        }
        xk0 xk0Var4 = this.b;
        xk0Var4.G = xk0Var.G;
        CharSequence charSequence = xk0Var.H;
        xk0Var4.H = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        xk0 xk0Var5 = this.b;
        int i4 = xk0Var.I;
        xk0Var5.I = i4 == 0 ? R.plurals.mtrl_badge_content_description : i4;
        int i5 = xk0Var.J;
        xk0Var5.J = i5 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i5;
        Boolean bool = xk0Var.L;
        xk0Var5.L = Boolean.valueOf(bool == null || bool.booleanValue());
        xk0 xk0Var6 = this.b;
        int i6 = xk0Var.t;
        xk0Var6.t = i6 == -2 ? typedArrayB.getInt(22, -2) : i6;
        xk0 xk0Var7 = this.b;
        int i7 = xk0Var.x;
        xk0Var7.x = i7 == -2 ? typedArrayB.getInt(23, -2) : i7;
        xk0 xk0Var8 = this.b;
        Integer num = xk0Var.e;
        xk0Var8.e = Integer.valueOf(num == null ? typedArrayB.getResourceId(6, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        xk0 xk0Var9 = this.b;
        Integer num2 = xk0Var.f;
        xk0Var9.f = Integer.valueOf(num2 == null ? typedArrayB.getResourceId(7, 0) : num2.intValue());
        xk0 xk0Var10 = this.b;
        Integer num3 = xk0Var.k;
        xk0Var10.k = Integer.valueOf(num3 == null ? typedArrayB.getResourceId(16, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        xk0 xk0Var11 = this.b;
        Integer num4 = xk0Var.n;
        xk0Var11.n = Integer.valueOf(num4 == null ? typedArrayB.getResourceId(17, 0) : num4.intValue());
        xk0 xk0Var12 = this.b;
        Integer num5 = xk0Var.b;
        xk0Var12.b = Integer.valueOf(num5 == null ? k55.m(context, typedArrayB, 1).getDefaultColor() : num5.intValue());
        xk0 xk0Var13 = this.b;
        Integer num6 = xk0Var.d;
        xk0Var13.d = Integer.valueOf(num6 == null ? typedArrayB.getResourceId(9, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = xk0Var.c;
        if (num7 != null) {
            this.b.c = num7;
        } else {
            boolean zHasValue2 = typedArrayB.hasValue(10);
            xk0 xk0Var14 = this.b;
            if (zHasValue2) {
                xk0Var14.c = Integer.valueOf(k55.m(context, typedArrayB, 10).getDefaultColor());
            } else {
                this.b.c = Integer.valueOf(new u08(context, xk0Var14.d.intValue()).k.getDefaultColor());
            }
        }
        xk0 xk0Var15 = this.b;
        Integer num8 = xk0Var.K;
        xk0Var15.K = Integer.valueOf(num8 == null ? typedArrayB.getInt(3, 8388661) : num8.intValue());
        xk0 xk0Var16 = this.b;
        Integer num9 = xk0Var.M;
        xk0Var16.M = Integer.valueOf(num9 == null ? typedArrayB.getDimensionPixelSize(12, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        xk0 xk0Var17 = this.b;
        Integer num10 = xk0Var.N;
        xk0Var17.N = Integer.valueOf(num10 == null ? typedArrayB.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        xk0 xk0Var18 = this.b;
        Integer num11 = xk0Var.O;
        xk0Var18.O = Integer.valueOf(num11 == null ? typedArrayB.getDimensionPixelOffset(19, 0) : num11.intValue());
        xk0 xk0Var19 = this.b;
        Integer num12 = xk0Var.P;
        xk0Var19.P = Integer.valueOf(num12 == null ? typedArrayB.getDimensionPixelOffset(26, 0) : num12.intValue());
        xk0 xk0Var20 = this.b;
        Integer num13 = xk0Var.Q;
        xk0Var20.Q = Integer.valueOf(num13 == null ? typedArrayB.getDimensionPixelOffset(20, xk0Var20.O.intValue()) : num13.intValue());
        xk0 xk0Var21 = this.b;
        Integer num14 = xk0Var.R;
        xk0Var21.R = Integer.valueOf(num14 == null ? typedArrayB.getDimensionPixelOffset(27, xk0Var21.P.intValue()) : num14.intValue());
        xk0 xk0Var22 = this.b;
        Integer num15 = xk0Var.U;
        xk0Var22.U = Integer.valueOf(num15 == null ? typedArrayB.getDimensionPixelOffset(21, 0) : num15.intValue());
        xk0 xk0Var23 = this.b;
        Integer num16 = xk0Var.S;
        xk0Var23.S = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        xk0 xk0Var24 = this.b;
        Integer num17 = xk0Var.T;
        xk0Var24.T = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        xk0 xk0Var25 = this.b;
        Boolean bool2 = xk0Var.V;
        xk0Var25.V = Boolean.valueOf(bool2 == null ? typedArrayB.getBoolean(0, false) : bool2.booleanValue());
        typedArrayB.recycle();
        Locale locale = xk0Var.y;
        xk0 xk0Var26 = this.b;
        if (locale == null) {
            xk0Var26.y = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            xk0Var26.y = locale;
        }
        this.a = xk0Var;
    }
}
