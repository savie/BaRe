package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ks7 extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public ks7(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i;
        ColorStateList colorStateList;
        int resourceId;
        js7 js7Var = new js7(this, menu);
        int eventType = xmlPullParser.getEventType();
        do {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                } else {
                    g84.h("Expecting menu, got ".concat(name));
                    return;
                }
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                g84.h("Unexpected end of document");
                return;
            }
            Menu menu2 = js7Var.a;
            if (eventType == i) {
                if (!z2) {
                    String name2 = xmlPullParser.getName();
                    boolean zEquals = name2.equals("group");
                    Context context = this.c;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ge6.p);
                        js7Var.b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                        js7Var.c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        js7Var.d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        js7Var.e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        js7Var.f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                        js7Var.g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, ge6.q);
                        js7Var.i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                        js7Var.j = (typedArrayObtainStyledAttributes2.getInt(5, js7Var.c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, js7Var.d) & 65535);
                        js7Var.k = typedArrayObtainStyledAttributes2.getText(7);
                        js7Var.l = typedArrayObtainStyledAttributes2.getText(8);
                        js7Var.m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                        String string = typedArrayObtainStyledAttributes2.getString(9);
                        js7Var.n = string == null ? (char) 0 : string.charAt(0);
                        js7Var.o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                        String string2 = typedArrayObtainStyledAttributes2.getString(10);
                        js7Var.p = string2 == null ? (char) 0 : string2.charAt(0);
                        js7Var.q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                        if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                            js7Var.r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                        } else {
                            js7Var.r = js7Var.e;
                        }
                        js7Var.s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                        js7Var.t = typedArrayObtainStyledAttributes2.getBoolean(4, js7Var.f);
                        js7Var.u = typedArrayObtainStyledAttributes2.getBoolean(1, js7Var.g);
                        js7Var.v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                        js7Var.y = typedArrayObtainStyledAttributes2.getString(12);
                        js7Var.w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                        js7Var.x = typedArrayObtainStyledAttributes2.getString(15);
                        String string3 = typedArrayObtainStyledAttributes2.getString(14);
                        boolean z3 = string3 != null;
                        if (z3 && js7Var.w == 0 && js7Var.x == null) {
                            js7Var.z = (jc5) js7Var.a(string3, f, this.b);
                        } else {
                            if (z3) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            js7Var.z = null;
                        }
                        js7Var.A = typedArrayObtainStyledAttributes2.getText(17);
                        js7Var.B = typedArrayObtainStyledAttributes2.getText(22);
                        if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                            js7Var.D = fp2.c(typedArrayObtainStyledAttributes2.getInt(19, -1), js7Var.D);
                        } else {
                            js7Var.D = null;
                        }
                        if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                            if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = zh8.q(context, resourceId)) == null) {
                                colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                            }
                            js7Var.C = colorStateList;
                        } else {
                            js7Var.C = null;
                        }
                        typedArrayObtainStyledAttributes2.recycle();
                        js7Var.h = false;
                        xmlPullParser = xmlPullParser;
                    } else if (name2.equals("menu")) {
                        js7Var.h = true;
                        SubMenu subMenuAddSubMenu = menu2.addSubMenu(js7Var.b, js7Var.i, js7Var.j, js7Var.k);
                        js7Var.b(subMenuAddSubMenu.getItem());
                        xmlPullParser = xmlPullParser;
                        b(xmlPullParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        xmlPullParser = xmlPullParser;
                        str = name2;
                        z2 = true;
                    }
                }
                z = z;
            } else if (eventType != 3) {
                z = z;
            } else {
                String name3 = xmlPullParser.getName();
                if (z2 && name3.equals(str)) {
                    xmlPullParser = xmlPullParser;
                    z2 = false;
                    str = null;
                } else {
                    if (name3.equals("group")) {
                        js7Var.b = 0;
                        js7Var.c = 0;
                        js7Var.d = 0;
                        js7Var.e = 0;
                        js7Var.f = true;
                        js7Var.g = true;
                    } else if (name3.equals("item")) {
                        if (!js7Var.h) {
                            jc5 jc5Var = js7Var.z;
                            if (jc5Var == null || !jc5Var.b.hasSubMenu()) {
                                js7Var.h = true;
                                js7Var.b(menu2.add(js7Var.b, js7Var.i, js7Var.j, js7Var.k));
                            } else {
                                js7Var.h = true;
                                js7Var.b(menu2.addSubMenu(js7Var.b, js7Var.i, js7Var.j, js7Var.k).getItem());
                            }
                        }
                    } else if (name3.equals("menu")) {
                        z = true;
                    }
                    z = z;
                }
            }
            eventType = xmlPullParser.next();
            i = 2;
            z = z;
            z2 = z2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof fc5)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z = false;
        try {
            try {
                layout = this.c.getResources().getLayout(i);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof fc5) {
                    fc5 fc5Var = (fc5) menu;
                    if (!fc5Var.H) {
                        fc5Var.w();
                        z = true;
                    }
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z) {
                    ((fc5) menu).v();
                }
                layout.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((fc5) menu).v();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
