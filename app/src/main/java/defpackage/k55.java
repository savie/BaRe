package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Bundle;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.View;
import android.widget.TextView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k55 {
    public static boolean b;
    public static ex0 c;
    public static final zd7[] a = new zd7[1];
    public static final us2 d = new us2(12);
    public static final int[] e = {619, 720, 127, 481, 931, 816, 813, 233, 566, 247, 985, 724, 205, 454, 863, 491, 741, 242, 949, 214, 733, 859, 335, 708, 621, 574, 73, 654, 730, 472, 419, 436, 278, 496, 867, 210, 399, 680, 480, 51, 878, 465, 811, 169, 869, 675, 611, 697, 867, 561, 862, 687, 507, 283, 482, 129, 807, 591, 733, 623, 150, 238, 59, 379, 684, 877, 625, 169, 643, 105, 170, 607, 520, 932, 727, 476, 693, 425, 174, 647, 73, 122, 335, 530, 442, 853, 695, 249, 445, 515, 909, 545, 703, 919, 874, 474, 882, 500, 594, 612, 641, 801, 220, 162, 819, 984, 589, 513, 495, 799, 161, 604, 958, 533, 221, 400, 386, 867, 600, 782, 382, 596, 414, 171, 516, 375, 682, 485, 911, 276, 98, 553, 163, 354, 666, 933, 424, 341, 533, 870, 227, 730, 475, 186, 263, 647, 537, 686, 600, 224, 469, 68, 770, 919, 190, 373, 294, 822, 808, 206, 184, 943, 795, 384, 383, 461, 404, 758, 839, 887, 715, 67, 618, 276, 204, 918, 873, 777, 604, 560, 951, 160, 578, 722, 79, 804, 96, 409, 713, 940, 652, 934, 970, 447, 318, 353, 859, 672, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, 785, 645, 863, 803, 350, 139, 93, 354, 99, 820, 908, 609, 772, 154, 274, 580, 184, 79, 626, 630, 742, 653, 282, 762, 623, 680, 81, 927, 626, 789, 125, 411, 521, 938, 300, 821, 78, 343, 175, 128, 250, 170, 774, 972, 275, 999, 639, 495, 78, 352, 126, 857, 956, 358, 619, 580, 124, 737, 594, 701, 612, 669, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, 134, 694, 363, 992, 809, 743, 168, 974, 944, 375, 748, 52, 600, 747, 642, 182, 862, 81, 344, 805, 988, 739, 511, 655, 814, 334, 249, 515, 897, 955, 664, 981, 649, 113, 974, 459, 893, 228, 433, 837, 553, 268, 926, 240, 102, 654, 459, 51, 686, 754, 806, 760, 493, 403, 415, 394, 687, 700, 946, 670, 656, 610, 738, 392, 760, 799, 887, 653, 978, 321, 576, 617, 626, 502, 894, 679, 243, 440, 680, 879, 194, 572, 640, 724, 926, 56, 204, 700, 707, 151, 457, 449, 797, 195, 791, 558, 945, 679, 297, 59, 87, 824, 713, 663, 412, 693, 342, 606, 134, 108, 571, 364, 631, 212, 174, 643, 304, 329, 343, 97, 430, 751, 497, 314, 983, 374, 822, 928, 140, 206, 73, 263, 980, 736, 876, 478, 430, 305, 170, 514, 364, 692, 829, 82, 855, 953, 676, 246, 369, 970, 294, 750, 807, 827, 150, 790, 288, 923, 804, 378, 215, 828, 592, 281, 565, 555, 710, 82, 896, 831, 547, 261, 524, 462, 293, 465, 502, 56, 661, 821, 976, 991, 658, 869, 905, 758, 745, 193, 768, 550, 608, 933, 378, 286, 215, 979, 792, 961, 61, 688, 793, 644, 986, 403, 106, 366, 905, 644, 372, 567, 466, 434, 645, 210, 389, 550, 919, 135, 780, 773, 635, 389, 707, 100, 626, 958, 165, 504, 920, 176, 193, 713, 857, 265, 203, 50, 668, 108, 645, 990, 626, 197, 510, 357, 358, 850, 858, 364, 936, 638};
    public static final /* synthetic */ int[] f = {1, 2, 3, 4, 5, 6, 7};

    public static final int A(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static void B(TextView textView, int i) {
        if (i < 0) {
            c6.b();
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            cf.p(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void C(TextView textView, int i) {
        if (i < 0) {
            c6.b();
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void D(TextView textView, int i) {
        if (i < 0) {
            c6.b();
            return;
        }
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    public static void E(il0 il0Var, boolean z) {
        if (!z || Const.d(il0Var)) {
            Intent intentPutExtra = new Intent(il0Var, (Class<?>) WallsManageActivity.class).putExtra("EXTRA_CLOUD_MODE", z);
            intentPutExtra.getClass();
            il0Var.startActivity(intentPutExtra);
        }
    }

    public static final String F(byte b2) {
        char[] cArr = jm1.b;
        return new String(new char[]{cArr[(b2 >> 4) & 15], cArr[b2 & 15]});
    }

    public static final String G(int i) {
        if (i == 0) {
            return "0";
        }
        char[] cArr = jm1.b;
        int i2 = 0;
        char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
        while (i2 < 8 && cArr2[i2] == '0') {
            i2++;
        }
        if (i2 < 0) {
            a6.d(xs1.h(i2, "startIndex: ", ", endIndex: 8, size: 8"));
            return null;
        }
        if (i2 <= 8) {
            return new String(cArr2, i2, 8 - i2);
        }
        c6.f(xs1.h(i2, "startIndex: ", " > endIndex: 8"));
        return null;
    }

    public static ActionMode.Callback H(ActionMode.Callback callback) {
        return callback instanceof v18 ? ((v18) callback).a : callback;
    }

    public static ValueAnimator I(int i, int i2, int i3, final View view) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ag7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view2 = view;
                view2.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                view2.requestLayout();
            }
        });
        valueAnimatorOfInt.addListener(new q44(view, (jm1) null));
        valueAnimatorOfInt.setDuration(i3);
        valueAnimatorOfInt.setInterpolator(new i53());
        return valueAnimatorOfInt;
    }

    public static Class J(Class cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        return cls == Void.TYPE ? Void.class : cls;
    }

    public static ActionMode.Callback K(ActionMode.Callback callback, TextView textView) {
        return (Build.VERSION.SDK_INT > 27 || (callback instanceof v18) || callback == null) ? callback : new v18(callback, textView);
    }

    public static String L(wk9 wk9Var) {
        StringBuilder sb = new StringBuilder(wk9Var.f());
        for (int i = 0; i < wk9Var.f(); i++) {
            byte bC = wk9Var.c(i);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                        } else {
                            sb.append((char) bC);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static u79 M(Object obj, Object obj2) {
        u79 u79VarB = (u79) obj;
        u79 u79Var = (u79) obj2;
        if (!u79Var.isEmpty()) {
            if (!u79VarB.a) {
                u79VarB = u79VarB.b();
            }
            u79VarB.d();
            if (!u79Var.isEmpty()) {
                u79VarB.putAll(u79Var);
            }
        }
        return u79VarB;
    }

    public static int[] N() {
        return (int[]) f.clone();
    }

    public static void O(Object obj) {
    }

    public static final void a(MaterialButton materialButton) {
        materialButton.getClass();
        Context context = materialButton.getContext();
        context.getClass();
        int iC = io4.c(context, context.getColor(R.color.blu));
        materialButton.setTextColor(iC);
        materialButton.setBackgroundTintList(sz8.h0(sz8.U(iC, 7)));
        materialButton.setStrokeColor(sz8.h0(sz8.U(iC, 60)));
        materialButton.setRippleColor(sz8.h0(sz8.U(iC, 20)));
        materialButton.setIconTint(null);
    }

    public static final boolean b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        bArr.getClass();
        bArr2.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void c(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            StringBuilder sbT = dj7.t("size=", " offset=", j);
            sbT.append(j2);
            sbT.append(" byteCount=");
            sbT.append(j3);
            throw new ArrayIndexOutOfBoundsException(sbT.toString());
        }
    }

    public static final void d(AutoCloseable autoCloseable, Throwable th) {
        boolean zIsTerminated;
        if (autoCloseable != null) {
            if (th != null) {
                try {
                    u48.r(autoCloseable);
                    return;
                } catch (Throwable th2) {
                    yc9.a(th, th2);
                    return;
                }
            }
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (!(autoCloseable instanceof ExecutorService)) {
                if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                    return;
                }
                if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                    return;
                } else if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                    return;
                } else {
                    c6.b();
                    return;
                }
            }
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                return;
            }
            executorService.shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static Exception e(List list, String str, ArrayList arrayList, qt3 qt3Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            pg1 pg1Var = (pg1) it.next();
            Set set = cb1.a;
            va1 va1VarA = cb1.a(pg1Var.a, pg1Var.g);
            if (va1VarA != null) {
                String strK = dj7.k(str, "/", pg1Var.a);
                try {
                    String str2 = (String) qt3Var.invoke(strK, pg1Var);
                    if (nq7.j0(str2)) {
                        return new IllegalStateException(eq3.k("Owned cloud file '", strK, "' has no stable delete ID"));
                    }
                    arrayList.add(new wa1(pg1Var.a, strK, str2, va1VarA, pg1Var.c, pg1Var.d, pg1Var.e));
                } catch (Exception e2) {
                    return e2;
                }
            }
        }
        return null;
    }

    public static long f(at4 at4Var) {
        long length = 8;
        if (!(at4Var instanceof co2) && !(at4Var instanceof r15)) {
            if (at4Var instanceof nt0) {
                length = 4;
            } else {
                if (!(at4Var instanceof fq7)) {
                    b6.e(at4Var.getClass(), "Unknown leaf node type: ");
                    return 0L;
                }
                length = ((long) ((fq7) at4Var).c.length()) + 2;
            }
        }
        if (at4Var.a.isEmpty()) {
            return length;
        }
        return f((at4) at4Var.a) + length + 24;
    }

    public static long g(qn5 qn5Var) {
        if (qn5Var.isEmpty()) {
            return 4L;
        }
        if (qn5Var.Z()) {
            return f((at4) qn5Var);
        }
        zm5.r("Unexpected node type: " + qn5Var.getClass(), qn5Var instanceof q61);
        Iterator it = qn5Var.iterator();
        long length = 1;
        while (it.hasNext()) {
            hk5 hk5Var = (hk5) it.next();
            length = length + ((long) hk5Var.a.a.length()) + 4 + g(hk5Var.b);
        }
        if (qn5Var.n().isEmpty()) {
            return length;
        }
        return f((at4) qn5Var.n()) + length + 12;
    }

    public static jm1 h(ArrayList arrayList, qf1 qf1Var) {
        qf1Var.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            pg1 pg1Var = (pg1) it.next();
            Set set = cb1.a;
            String str = pg1Var.a;
            String str2 = pg1Var.b;
            va1 va1VarA = cb1.a(str, pg1Var.g);
            if (va1VarA != null) {
                boolean zJ0 = nq7.j0(str2);
                String str3 = pg1Var.a;
                if (zJ0) {
                    return new xa1(new IllegalStateException(eq3.k("Owned cloud file '", str3, "' has no stable ID")));
                }
                arrayList2.add(new wa1(str3, str2, str2, va1VarA, pg1Var.c, pg1Var.d, pg1Var.e));
            }
        }
        return new ya1(arrayList2, qf1Var);
    }

    public static jm1 i(String str, qf1 qf1Var, mt3 mt3Var, qt3 qt3Var) {
        bb1 za1Var;
        bb1 za1Var2;
        str.getClass();
        qf1Var.getClass();
        String strI0 = nq7.I0(str, '/');
        if (nq7.j0(strI0)) {
            return new xa1(new IllegalArgumentException("Swift Backup main folder name is blank"));
        }
        try {
            za1Var = (bb1) mt3Var.invoke(strI0);
        } catch (Exception e2) {
            za1Var = new za1(e2);
        }
        if (za1Var instanceof za1) {
            return new xa1(((za1) za1Var).a);
        }
        if (!(za1Var instanceof ab1)) {
            q.j();
            return null;
        }
        List list = ((ab1) za1Var).a;
        ArrayList arrayList = new ArrayList();
        Exception excE = e(list, strI0, arrayList, qt3Var);
        if (excE != null) {
            return new xa1(excE);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((pg1) obj).g) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str2 = ((pg1) it.next()).a;
            if (nq7.j0(str2) || nq7.a0(str2, '/') || nq7.a0(str2, '\\')) {
                return new xa1(new IllegalStateException(eq3.k("Invalid cloud directory name '", str2, "'")));
            }
            String strK = dj7.k(strI0, "/", str2);
            try {
                za1Var2 = (bb1) mt3Var.invoke(strK);
            } catch (Exception e3) {
                za1Var2 = new za1(e3);
            }
            if (za1Var2 instanceof za1) {
                return new xa1(((za1) za1Var2).a);
            }
            if (!(za1Var2 instanceof ab1)) {
                q.j();
                return null;
            }
            Exception excE2 = e(((ab1) za1Var2).a, strK, arrayList, qt3Var);
            if (excE2 != null) {
                return new xa1(excE2);
            }
        }
        return new ya1(arrayList, qf1Var);
    }

    public static synchronized zd7 j() {
        zd7 zd7VarK;
        try {
            zd7VarK = k();
            if (zd7VarK == null) {
                b = true;
                if (c == null) {
                    c = new ex0();
                }
                zd7VarK = c.a();
                b = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zd7VarK;
    }

    public static zd7 k() {
        zd7 zd7Var;
        zd7[] zd7VarArr = a;
        synchronized (zd7VarArr) {
            try {
                zd7Var = zd7VarArr[0];
                if (zd7Var != null && zd7Var.a < 0) {
                    zd7VarArr[0] = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zd7Var;
    }

    public static ColorStateList l(Context context, u94 u94Var, int i) {
        int resourceId;
        ColorStateList colorStateListQ;
        TypedArray typedArray = (TypedArray) u94Var.b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListQ = zh8.q(context, resourceId)) == null) ? u94Var.a(i) : colorStateListQ;
    }

    public static ColorStateList m(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateListQ;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListQ = zh8.q(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateListQ;
    }

    public static f1 n(String str) {
        if (str.equals("SHA-256")) {
            return pj5.a;
        }
        if (str.equals("SHA-512")) {
            return pj5.b;
        }
        if (str.equals("SHAKE128")) {
            return pj5.e;
        }
        if (str.equals("SHAKE256")) {
            return pj5.f;
        }
        c6.f("unrecognized digest: ".concat(str));
        return null;
    }

    public static int o(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable p(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawableM;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawableM = iz1.m(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawableM;
    }

    public static final Class q(n81 n81Var) {
        n81Var.getClass();
        Class clsA = n81Var.a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? clsA : Double.class;
            case 104431:
                return !name.equals("int") ? clsA : Integer.class;
            case 3039496:
                return !name.equals("byte") ? clsA : Byte.class;
            case 3052374:
                return !name.equals("char") ? clsA : Character.class;
            case 3327612:
                return !name.equals("long") ? clsA : Long.class;
            case 3625364:
                return !name.equals("void") ? clsA : Void.class;
            case 64711720:
                return !name.equals("boolean") ? clsA : Boolean.class;
            case 97526364:
                return !name.equals("float") ? clsA : Float.class;
            case 109413500:
                return !name.equals("short") ? clsA : Short.class;
            default:
                return clsA;
        }
    }

    public static int r(Point point, SimpleSearchView simpleSearchView) {
        ArrayList<Point> arrayList = new ArrayList();
        arrayList.add(new Point(simpleSearchView.getLeft(), simpleSearchView.getTop()));
        arrayList.add(new Point(simpleSearchView.getRight(), simpleSearchView.getTop()));
        arrayList.add(new Point(simpleSearchView.getLeft(), simpleSearchView.getBottom()));
        arrayList.add(new Point(simpleSearchView.getRight(), simpleSearchView.getBottom()));
        float f2 = 0.0f;
        for (Point point2 : arrayList) {
            float fSqrt = (float) Math.sqrt(Math.pow(point.y - point2.y, 2.0d) + Math.pow(point.x - point2.x, 2.0d));
            if (fSqrt > f2) {
                f2 = fSqrt;
            }
        }
        return (int) Math.ceil(f2);
    }

    public static final Bundle s(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        c6.f(eq3.k("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
        return null;
    }

    public static m36 t(tp tpVar) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new m36(cf.l(tpVar));
        }
        TextPaint textPaint = new TextPaint(tpVar.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = tpVar.getBreakStrategy();
        int hyphenationFrequency = tpVar.getHyphenationFrequency();
        if (tpVar.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i < 28 || (tpVar.getInputType() & 15) != 3) {
            boolean z = tpVar.getLayoutDirection() == 1;
            switch (tpVar.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (z) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    }
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(cf.c(DecimalFormatSymbols.getInstance(tpVar.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new m36(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static int v(Context context, int i) {
        if (i == 0) {
            return 0;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, td6.G);
        TypedValue typedValue = new TypedValue();
        boolean value = typedArrayObtainStyledAttributes.getValue(4, typedValue);
        if (!value) {
            value = typedArrayObtainStyledAttributes.getValue(2, typedValue);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!value) {
            return 0;
        }
        int complexUnit = typedValue.getComplexUnit();
        int i2 = typedValue.data;
        return complexUnit == 2 ? Math.round(TypedValue.complexToFloat(i2) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(i2, context.getResources().getDisplayMetrics());
    }

    public static boolean w(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean x(int i) {
        return i >= 200 && i < 300;
    }

    public static boolean y(int i) {
        return i >= 100 && i < 200;
    }

    public static vy5 z(InputStream inputStream, boolean z) {
        vy5 vy5Var = new vy5(z);
        if (inputStream != null) {
            vy5Var.c.add(new sc4(inputStream));
        }
        return vy5Var;
    }
}
