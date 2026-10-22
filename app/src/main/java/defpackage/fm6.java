package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fm6 {
    public static final ThreadLocal a = new ThreadLocal();
    public static final WeakHashMap b = new WeakHashMap(0);
    public static final Object c = new Object();

    public static Typeface a(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00c5  */
    public static Typeface b(Context context, int i, TypedValue typedValue, int i2, g67 g67Var, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            int i3 = typedValue.assetCookie;
            p35 p35Var = vc8.b;
            Typeface typeface = (Typeface) p35Var.h(vc8.b(resources, i, string, i3, i2));
            int i4 = 4;
            if (typeface != null) {
                if (g67Var != null) {
                    new Handler(Looper.getMainLooper()).post(new ro1(i4, g67Var, typeface));
                }
                typefaceA = typeface;
            } else if (!z2) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        oq3 oq3VarA = zh8.A(resources.getXml(i), resources);
                        if (oq3VarA == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (g67Var != null) {
                                g67Var.g(-3);
                            }
                        } else {
                            typefaceA = vc8.a(context, oq3VarA, resources, i, string, typedValue.assetCookie, i2, g67Var, z);
                        }
                    } else {
                        int i5 = typedValue.assetCookie;
                        Typeface typefaceI = vc8.a.i(context, resources, i, string);
                        if (typefaceI != null) {
                            p35Var.l(vc8.b(resources, i, string, i5, i2), typefaceI);
                        }
                        if (g67Var != null) {
                            if (typefaceI != null) {
                                new Handler(Looper.getMainLooper()).post(new ro1(i4, g67Var, typefaceI));
                            } else {
                                g67Var.g(-3);
                            }
                        }
                        typefaceA = typefaceI;
                    }
                } catch (IOException e) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), e);
                    if (g67Var != null) {
                        g67Var.g(-3);
                    }
                } catch (XmlPullParserException e2) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), e2);
                    if (g67Var != null) {
                        g67Var.g(-3);
                    }
                }
            }
        } else if (g67Var != null) {
            g67Var.g(-3);
        }
        if (typefaceA != null || g67Var != null || z2) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }
}
