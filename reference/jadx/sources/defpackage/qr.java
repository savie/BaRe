package defpackage;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qr {
    public static float a(ji jiVar) {
        jiVar.getClass();
        return jiVar.isInstalled() ? 1.0f : 0.6f;
    }

    public static List b(Set set) {
        List list;
        WeakHashMap weakHashMap = tr.o0;
        synchronized (weakHashMap) {
            try {
                Object objV1 = weakHashMap.get(set);
                if (objV1 == null) {
                    LabelParams.Companion.getClass();
                    xg xgVar = new xg(7);
                    String.CASE_INSENSITIVE_ORDER.getClass();
                    objV1 = el1.v1(el1.n1(set, new yg(xgVar, 4)));
                    weakHashMap.put(set, objV1);
                }
                list = (List) objV1;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public static int c(Context context) {
        context.getClass();
        return xl1.g(sz8.A(context), 200);
    }

    public static void d(ImageView imageView, ji jiVar) {
        imageView.getClass();
        jiVar.getClass();
        qr qrVar = tr.n0;
        imageView.setAlpha(a(jiVar));
        Set set = j94.a;
        j94.g(new sx3(jiVar.getPackageName(), jiVar.isInstalled()), imageView, !jiVar.isInstalled(), false);
    }

    public static void e(TextView textView, ji jiVar) {
        textView.getClass();
        jiVar.getClass();
        qr qrVar = tr.n0;
        textView.setAlpha(a(jiVar));
        textView.setText(jiVar.getName());
    }

    public static void f(RecyclerView recyclerView, a aVar, boolean z, float f, Set set, boolean z2, qt3 qt3Var, int i) {
        qr qrVar = tr.n0;
        if ((i & 2) != 0) {
            aVar = null;
        }
        boolean z3 = false;
        if ((i & 32) != 0) {
            z2 = false;
        }
        boolean a = V.INSTANCE.getA();
        if ((i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
            qt3Var = null;
        }
        recyclerView.getClass();
        if (a && set != null && !set.isEmpty()) {
            z3 = true;
        }
        sz8.d0(recyclerView, z3);
        if (sz8.I(recyclerView)) {
            if (aVar == null) {
                aVar = new FlexboxLayoutManager(recyclerView.getContext());
            }
            recyclerView.setLayoutManager(aVar);
            ht htVar = new ht(f, z, z2);
            List listB = set != null ? b(set) : null;
            if (listB == null) {
                listB = ov2.a;
            }
            r35.m(htVar, listB);
            htVar.e = qt3Var;
            recyclerView.setAdapter(htVar);
        }
    }

    public static void g(TextView textView, ji jiVar, int i, int i2, int i3) {
        CharSequence charSequence;
        textView.getClass();
        jiVar.getClass();
        qr qrVar = tr.n0;
        textView.setAlpha(a(jiVar));
        Context context = textView.getContext();
        context.getClass();
        String string = context.getString(R.string.disabled);
        string.getClass();
        int i4 = i;
        nr nrVar = new nr(jiVar.getPackageName(), jiVar.getEnabled(), jiVar.isBundled(), i4, i2, i3, string);
        pr prVar = tr.p0;
        synchronized (prVar) {
            CharSequence charSequence2 = (CharSequence) prVar.get(nrVar);
            charSequence = charSequence2;
            if (charSequence2 == null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (!jiVar.getEnabled()) {
                    StyleSpan styleSpan = new StyleSpan(1);
                    int length = spannableStringBuilder.length();
                    ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i2);
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) string);
                    spannableStringBuilder.setSpan(foregroundColorSpan, length2, spannableStringBuilder.length(), 17);
                    spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                    ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(i4);
                    int length3 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) " • ");
                    spannableStringBuilder.setSpan(foregroundColorSpan2, length3, spannableStringBuilder.length(), 17);
                }
                if (jiVar.isBundled()) {
                    i4 = i3;
                }
                ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(i4);
                int length4 = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) jiVar.getPackageName());
                spannableStringBuilder.setSpan(foregroundColorSpan3, length4, spannableStringBuilder.length(), 17);
                synchronized (prVar) {
                    charSequence = spannableStringBuilder;
                }
            }
        }
        textView.setText(charSequence);
    }

    public static void h(TextView textView, ji jiVar, int i) {
        Context context = textView.getContext();
        context.getClass();
        int iC = io4.c(context, context.getColor(R.color.disabled_app_indicator));
        Context context2 = textView.getContext();
        context2.getClass();
        g(textView, jiVar, i, iC, sz8.r(context2));
    }
}
