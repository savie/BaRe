package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.crypto.impl.AESGCM;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import com.nimbusds.jwt.proc.DefaultJWTClaimsVerifier;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nt1 {
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;
    public static final SparseIntArray f;
    public final HashMap a = new HashMap();
    public final boolean b = true;
    public final HashMap c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] e(Barrier barrier, String str) {
        int iIntValue;
        String[] strArrSplit = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            Object obj = null;
            try {
                iIntValue = pd6.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (strTrim != null) {
                    HashMap map = constraintLayout.x;
                    if (map != null && map.containsKey(strTrim)) {
                        obj = constraintLayout.x.get(strTrim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    public static it1 f(Context context, AttributeSet attributeSet, boolean z) {
        int i;
        int i2;
        it1 it1Var = new it1();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? yd6.c : yd6.a);
        String[] strArr = bb9.a;
        lt1 lt1Var = it1Var.b;
        mt1 mt1Var = it1Var.e;
        kt1 kt1Var = it1Var.c;
        jt1 jt1Var = it1Var.d;
        int[] iArr = d;
        SparseIntArray sparseIntArray = e;
        if (z) {
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            ht1 ht1Var = new ht1();
            ht1Var.a = new int[10];
            ht1Var.b = new int[10];
            ht1Var.c = 0;
            ht1Var.d = new int[10];
            ht1Var.e = new float[10];
            ht1Var.f = 0;
            ht1Var.g = new int[5];
            ht1Var.h = new String[5];
            ht1Var.i = 0;
            ht1Var.j = new int[4];
            ht1Var.k = new boolean[4];
            ht1Var.l = 0;
            kt1Var.getClass();
            jt1Var.getClass();
            mt1Var.getClass();
            int i3 = 0;
            while (i3 < indexCount) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                int i4 = indexCount;
                switch (f.get(index)) {
                    case 2:
                        i2 = i3;
                        ht1Var.b(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.I));
                        continue;
                        i3 = i2 + 1;
                        indexCount = i4;
                        break;
                    case 3:
                    case 4:
                    case XmlPullParser.COMMENT /* 9 */:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder("Unknown attribute 0x");
                        i2 = i3;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        break;
                    case 5:
                        i2 = i3;
                        ht1Var.c(5, typedArrayObtainStyledAttributes.getString(index));
                        continue;
                        i3 = i2 + 1;
                        indexCount = i4;
                        break;
                    case 6:
                        i2 = i3;
                        ht1Var.b(6, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jt1Var.C));
                        break;
                    case 7:
                        i2 = i3;
                        ht1Var.b(7, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jt1Var.D));
                        break;
                    case 8:
                        i2 = i3;
                        ht1Var.b(8, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.J));
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        i2 = i3;
                        ht1Var.b(11, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.P));
                        break;
                    case 12:
                        i2 = i3;
                        ht1Var.b(12, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.Q));
                        break;
                    case 13:
                        i2 = i3;
                        ht1Var.b(13, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.M));
                        break;
                    case 14:
                        i2 = i3;
                        ht1Var.b(14, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.O));
                        break;
                    case 15:
                        i2 = i3;
                        ht1Var.b(15, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.R));
                        break;
                    case Argon2.V10 /* 16 */:
                        i2 = i3;
                        ht1Var.b(16, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.N));
                        break;
                    case 17:
                        i2 = i3;
                        ht1Var.b(17, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jt1Var.d));
                        break;
                    case 18:
                        i2 = i3;
                        ht1Var.b(18, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jt1Var.e));
                        break;
                    case Argon2.V13 /* 19 */:
                        i2 = i3;
                        ht1Var.a(19, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.f));
                        break;
                    case 20:
                        i2 = i3;
                        ht1Var.a(20, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.w));
                        break;
                    case 21:
                        i2 = i3;
                        ht1Var.b(21, typedArrayObtainStyledAttributes.getLayoutDimension(index, jt1Var.c));
                        break;
                    case 22:
                        i2 = i3;
                        ht1Var.b(22, iArr[typedArrayObtainStyledAttributes.getInt(index, lt1Var.a)]);
                        break;
                    case 23:
                        i2 = i3;
                        ht1Var.b(23, typedArrayObtainStyledAttributes.getLayoutDimension(index, jt1Var.b));
                        break;
                    case 24:
                        i2 = i3;
                        ht1Var.b(24, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.F));
                        break;
                    case 27:
                        i2 = i3;
                        ht1Var.b(27, typedArrayObtainStyledAttributes.getInt(index, jt1Var.E));
                        break;
                    case 28:
                        i2 = i3;
                        ht1Var.b(28, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.G));
                        break;
                    case 31:
                        i2 = i3;
                        ht1Var.b(31, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.K));
                        break;
                    case 34:
                        i2 = i3;
                        ht1Var.b(34, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.H));
                        break;
                    case 37:
                        i2 = i3;
                        ht1Var.a(37, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.x));
                        break;
                    case 38:
                        i2 = i3;
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, it1Var.a);
                        it1Var.a = resourceId;
                        ht1Var.b(38, resourceId);
                        break;
                    case 39:
                        i2 = i3;
                        ht1Var.a(39, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.U));
                        break;
                    case 40:
                        i2 = i3;
                        ht1Var.a(40, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.T));
                        break;
                    case 41:
                        i2 = i3;
                        ht1Var.b(41, typedArrayObtainStyledAttributes.getInt(index, jt1Var.V));
                        break;
                    case 42:
                        i2 = i3;
                        ht1Var.b(42, typedArrayObtainStyledAttributes.getInt(index, jt1Var.W));
                        break;
                    case 43:
                        i2 = i3;
                        ht1Var.a(43, typedArrayObtainStyledAttributes.getFloat(index, lt1Var.c));
                        break;
                    case 44:
                        i2 = i3;
                        ht1Var.d(44, true);
                        ht1Var.a(44, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.m));
                        break;
                    case 45:
                        i2 = i3;
                        ht1Var.a(45, typedArrayObtainStyledAttributes.getFloat(index, mt1Var.b));
                        break;
                    case 46:
                        i2 = i3;
                        ht1Var.a(46, typedArrayObtainStyledAttributes.getFloat(index, mt1Var.c));
                        break;
                    case 47:
                        i2 = i3;
                        ht1Var.a(47, typedArrayObtainStyledAttributes.getFloat(index, mt1Var.d));
                        break;
                    case 48:
                        i2 = i3;
                        ht1Var.a(48, typedArrayObtainStyledAttributes.getFloat(index, mt1Var.e));
                        break;
                    case 49:
                        i2 = i3;
                        ht1Var.a(49, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.f));
                        break;
                    case 50:
                        i2 = i3;
                        ht1Var.a(50, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.g));
                        break;
                    case 51:
                        i2 = i3;
                        ht1Var.a(51, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.i));
                        break;
                    case 52:
                        i2 = i3;
                        ht1Var.a(52, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.j));
                        break;
                    case 53:
                        i2 = i3;
                        ht1Var.a(53, typedArrayObtainStyledAttributes.getDimension(index, mt1Var.k));
                        break;
                    case 54:
                        i2 = i3;
                        ht1Var.b(54, typedArrayObtainStyledAttributes.getInt(index, jt1Var.X));
                        break;
                    case 55:
                        i2 = i3;
                        ht1Var.b(55, typedArrayObtainStyledAttributes.getInt(index, jt1Var.Y));
                        break;
                    case 56:
                        i2 = i3;
                        ht1Var.b(56, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.Z));
                        break;
                    case 57:
                        i2 = i3;
                        ht1Var.b(57, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.a0));
                        break;
                    case 58:
                        i2 = i3;
                        ht1Var.b(58, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.b0));
                        break;
                    case 59:
                        i2 = i3;
                        ht1Var.b(59, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.c0));
                        break;
                    case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                        i2 = i3;
                        ht1Var.a(60, typedArrayObtainStyledAttributes.getFloat(index, mt1Var.a));
                        break;
                    case 62:
                        i2 = i3;
                        ht1Var.b(62, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.A));
                        break;
                    case 63:
                        i2 = i3;
                        ht1Var.a(63, typedArrayObtainStyledAttributes.getFloat(index, jt1Var.B));
                        break;
                    case 64:
                        i2 = i3;
                        ht1Var.b(64, h(typedArrayObtainStyledAttributes, index, kt1Var.a));
                        break;
                    case 65:
                        i2 = i3;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            ht1Var.c(65, typedArrayObtainStyledAttributes.getString(index));
                        } else {
                            ht1Var.c(65, strArr[typedArrayObtainStyledAttributes.getInteger(index, 0)]);
                        }
                        break;
                    case 66:
                        i2 = i3;
                        ht1Var.b(66, typedArrayObtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        i2 = i3;
                        ht1Var.a(67, typedArrayObtainStyledAttributes.getFloat(index, kt1Var.e));
                        break;
                    case 68:
                        i2 = i3;
                        ht1Var.a(68, typedArrayObtainStyledAttributes.getFloat(index, lt1Var.d));
                        break;
                    case 69:
                        i2 = i3;
                        ht1Var.a(69, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 70:
                        i2 = i3;
                        ht1Var.a(70, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 71:
                        i2 = i3;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i2 = i3;
                        ht1Var.b(72, typedArrayObtainStyledAttributes.getInt(index, jt1Var.f0));
                        break;
                    case 73:
                        i2 = i3;
                        ht1Var.b(73, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.g0));
                        break;
                    case 74:
                        i2 = i3;
                        ht1Var.c(74, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        i2 = i3;
                        ht1Var.d(75, typedArrayObtainStyledAttributes.getBoolean(index, jt1Var.n0));
                        break;
                    case 76:
                        i2 = i3;
                        ht1Var.b(76, typedArrayObtainStyledAttributes.getInt(index, kt1Var.c));
                        break;
                    case 77:
                        i2 = i3;
                        ht1Var.c(77, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        i2 = i3;
                        ht1Var.b(78, typedArrayObtainStyledAttributes.getInt(index, lt1Var.b));
                        break;
                    case 79:
                        i2 = i3;
                        ht1Var.a(79, typedArrayObtainStyledAttributes.getFloat(index, kt1Var.d));
                        break;
                    case 80:
                        i2 = i3;
                        ht1Var.d(80, typedArrayObtainStyledAttributes.getBoolean(index, jt1Var.l0));
                        break;
                    case 81:
                        i2 = i3;
                        ht1Var.d(81, typedArrayObtainStyledAttributes.getBoolean(index, jt1Var.m0));
                        break;
                    case 82:
                        i2 = i3;
                        ht1Var.b(82, typedArrayObtainStyledAttributes.getInteger(index, kt1Var.b));
                        break;
                    case 83:
                        i2 = i3;
                        ht1Var.b(83, h(typedArrayObtainStyledAttributes, index, mt1Var.h));
                        break;
                    case 84:
                        i2 = i3;
                        ht1Var.b(84, typedArrayObtainStyledAttributes.getInteger(index, kt1Var.g));
                        break;
                    case 85:
                        i2 = i3;
                        ht1Var.a(85, typedArrayObtainStyledAttributes.getFloat(index, kt1Var.f));
                        break;
                    case 86:
                        i2 = i3;
                        int i5 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i5 == 1) {
                            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            kt1Var.i = resourceId2;
                            ht1Var.b(89, resourceId2);
                            if (kt1Var.i != -1) {
                                ht1Var.b(88, -2);
                            }
                        } else if (i5 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            kt1Var.h = string;
                            ht1Var.c(90, string);
                            if (kt1Var.h.indexOf("/") > 0) {
                                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                kt1Var.i = resourceId3;
                                ht1Var.b(89, resourceId3);
                                ht1Var.b(88, -2);
                            } else {
                                ht1Var.b(88, -1);
                            }
                        } else {
                            ht1Var.b(88, typedArrayObtainStyledAttributes.getInteger(index, kt1Var.i));
                        }
                        break;
                    case 87:
                        i2 = i3;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 93:
                        i2 = i3;
                        ht1Var.b(93, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.L));
                        break;
                    case 94:
                        i2 = i3;
                        ht1Var.b(94, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jt1Var.S));
                        break;
                    case 95:
                        i2 = i3;
                        i(ht1Var, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case AESGCM.IV_BIT_LENGTH /* 96 */:
                        i2 = i3;
                        i(ht1Var, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        i2 = i3;
                        ht1Var.b(97, typedArrayObtainStyledAttributes.getInt(index, jt1Var.o0));
                        break;
                    case 98:
                        i2 = i3;
                        int i6 = oh5.I;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            it1Var.a = typedArrayObtainStyledAttributes.getResourceId(index, it1Var.a);
                        }
                        break;
                    case SbaTarEntryInfo.TYPE_OTHER /* 99 */:
                        i2 = i3;
                        ht1Var.d(99, typedArrayObtainStyledAttributes.getBoolean(index, jt1Var.g));
                        break;
                }
                i3 = i2 + 1;
                indexCount = i4;
            }
        } else {
            int i7 = 0;
            for (int indexCount2 = typedArrayObtainStyledAttributes.getIndexCount(); i7 < indexCount2; indexCount2 = i) {
                int index2 = typedArrayObtainStyledAttributes.getIndex(i7);
                if (index2 != 1 && 23 != index2) {
                    if (24 != index2) {
                        kt1Var.getClass();
                        jt1Var.getClass();
                        mt1Var.getClass();
                    }
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i = indexCount2;
                        jt1Var.p = h(typedArrayObtainStyledAttributes, index2, jt1Var.p);
                        continue;
                        i7++;
                        break;
                    case 2:
                        i = indexCount2;
                        jt1Var.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.I);
                        continue;
                        i7++;
                        break;
                    case 3:
                        i = indexCount2;
                        jt1Var.o = h(typedArrayObtainStyledAttributes, index2, jt1Var.o);
                        continue;
                        i7++;
                        break;
                    case 4:
                        i = indexCount2;
                        jt1Var.n = h(typedArrayObtainStyledAttributes, index2, jt1Var.n);
                        continue;
                        i7++;
                        break;
                    case 5:
                        i = indexCount2;
                        jt1Var.y = typedArrayObtainStyledAttributes.getString(index2);
                        continue;
                        i7++;
                        break;
                    case 6:
                        i = indexCount2;
                        jt1Var.C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jt1Var.C);
                        continue;
                        i7++;
                        break;
                    case 7:
                        i = indexCount2;
                        jt1Var.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jt1Var.D);
                        continue;
                        i7++;
                        break;
                    case 8:
                        i = indexCount2;
                        jt1Var.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.J);
                        continue;
                        i7++;
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        i = indexCount2;
                        jt1Var.v = h(typedArrayObtainStyledAttributes, index2, jt1Var.v);
                        continue;
                        i7++;
                        break;
                    case 10:
                        i = indexCount2;
                        jt1Var.u = h(typedArrayObtainStyledAttributes, index2, jt1Var.u);
                        continue;
                        i7++;
                        break;
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        i = indexCount2;
                        jt1Var.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.P);
                        continue;
                        i7++;
                        break;
                    case 12:
                        i = indexCount2;
                        jt1Var.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.Q);
                        continue;
                        i7++;
                        break;
                    case 13:
                        i = indexCount2;
                        jt1Var.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.M);
                        continue;
                        i7++;
                        break;
                    case 14:
                        i = indexCount2;
                        jt1Var.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.O);
                        continue;
                        i7++;
                        break;
                    case 15:
                        i = indexCount2;
                        jt1Var.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.R);
                        continue;
                        i7++;
                        break;
                    case Argon2.V10 /* 16 */:
                        i = indexCount2;
                        jt1Var.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.N);
                        continue;
                        i7++;
                        break;
                    case 17:
                        i = indexCount2;
                        jt1Var.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jt1Var.d);
                        continue;
                        i7++;
                        break;
                    case 18:
                        i = indexCount2;
                        jt1Var.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jt1Var.e);
                        continue;
                        i7++;
                        break;
                    case Argon2.V13 /* 19 */:
                        i = indexCount2;
                        jt1Var.f = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.f);
                        continue;
                        i7++;
                        break;
                    case 20:
                        i = indexCount2;
                        jt1Var.w = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.w);
                        continue;
                        i7++;
                        break;
                    case 21:
                        i = indexCount2;
                        jt1Var.c = typedArrayObtainStyledAttributes.getLayoutDimension(index2, jt1Var.c);
                        continue;
                        i7++;
                        break;
                    case 22:
                        i = indexCount2;
                        int i8 = typedArrayObtainStyledAttributes.getInt(index2, lt1Var.a);
                        lt1Var.a = i8;
                        lt1Var.a = iArr[i8];
                        continue;
                        i7++;
                        break;
                    case 23:
                        i = indexCount2;
                        jt1Var.b = typedArrayObtainStyledAttributes.getLayoutDimension(index2, jt1Var.b);
                        continue;
                        i7++;
                        break;
                    case 24:
                        i = indexCount2;
                        jt1Var.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.F);
                        continue;
                        i7++;
                        break;
                    case 25:
                        i = indexCount2;
                        jt1Var.h = h(typedArrayObtainStyledAttributes, index2, jt1Var.h);
                        continue;
                        i7++;
                        break;
                    case 26:
                        i = indexCount2;
                        jt1Var.i = h(typedArrayObtainStyledAttributes, index2, jt1Var.i);
                        continue;
                        i7++;
                        break;
                    case 27:
                        i = indexCount2;
                        jt1Var.E = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.E);
                        continue;
                        i7++;
                        break;
                    case 28:
                        i = indexCount2;
                        jt1Var.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.G);
                        continue;
                        i7++;
                        break;
                    case 29:
                        i = indexCount2;
                        jt1Var.j = h(typedArrayObtainStyledAttributes, index2, jt1Var.j);
                        continue;
                        i7++;
                        break;
                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                        i = indexCount2;
                        jt1Var.k = h(typedArrayObtainStyledAttributes, index2, jt1Var.k);
                        continue;
                        i7++;
                        break;
                    case 31:
                        i = indexCount2;
                        jt1Var.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.K);
                        continue;
                        i7++;
                        break;
                    case 32:
                        i = indexCount2;
                        jt1Var.s = h(typedArrayObtainStyledAttributes, index2, jt1Var.s);
                        continue;
                        i7++;
                        break;
                    case 33:
                        i = indexCount2;
                        jt1Var.t = h(typedArrayObtainStyledAttributes, index2, jt1Var.t);
                        continue;
                        i7++;
                        break;
                    case 34:
                        i = indexCount2;
                        jt1Var.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.H);
                        continue;
                        i7++;
                        break;
                    case 35:
                        i = indexCount2;
                        jt1Var.m = h(typedArrayObtainStyledAttributes, index2, jt1Var.m);
                        continue;
                        i7++;
                        break;
                    case 36:
                        i = indexCount2;
                        jt1Var.l = h(typedArrayObtainStyledAttributes, index2, jt1Var.l);
                        continue;
                        i7++;
                        break;
                    case 37:
                        i = indexCount2;
                        jt1Var.x = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.x);
                        continue;
                        i7++;
                        break;
                    case 38:
                        i = indexCount2;
                        it1Var.a = typedArrayObtainStyledAttributes.getResourceId(index2, it1Var.a);
                        continue;
                        i7++;
                        break;
                    case 39:
                        i = indexCount2;
                        jt1Var.U = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.U);
                        continue;
                        i7++;
                        break;
                    case 40:
                        i = indexCount2;
                        jt1Var.T = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.T);
                        continue;
                        i7++;
                        break;
                    case 41:
                        i = indexCount2;
                        jt1Var.V = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.V);
                        continue;
                        i7++;
                        break;
                    case 42:
                        i = indexCount2;
                        jt1Var.W = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.W);
                        continue;
                        i7++;
                        break;
                    case 43:
                        i = indexCount2;
                        lt1Var.c = typedArrayObtainStyledAttributes.getFloat(index2, lt1Var.c);
                        continue;
                        i7++;
                        break;
                    case 44:
                        i = indexCount2;
                        mt1Var.l = true;
                        mt1Var.m = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.m);
                        continue;
                        i7++;
                        break;
                    case 45:
                        i = indexCount2;
                        mt1Var.b = typedArrayObtainStyledAttributes.getFloat(index2, mt1Var.b);
                        continue;
                        i7++;
                        break;
                    case 46:
                        i = indexCount2;
                        mt1Var.c = typedArrayObtainStyledAttributes.getFloat(index2, mt1Var.c);
                        continue;
                        i7++;
                        break;
                    case 47:
                        i = indexCount2;
                        mt1Var.d = typedArrayObtainStyledAttributes.getFloat(index2, mt1Var.d);
                        continue;
                        i7++;
                        break;
                    case 48:
                        i = indexCount2;
                        mt1Var.e = typedArrayObtainStyledAttributes.getFloat(index2, mt1Var.e);
                        continue;
                        i7++;
                        break;
                    case 49:
                        i = indexCount2;
                        mt1Var.f = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.f);
                        continue;
                        i7++;
                        break;
                    case 50:
                        i = indexCount2;
                        mt1Var.g = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.g);
                        continue;
                        i7++;
                        break;
                    case 51:
                        i = indexCount2;
                        mt1Var.i = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.i);
                        continue;
                        i7++;
                        break;
                    case 52:
                        i = indexCount2;
                        mt1Var.j = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.j);
                        continue;
                        i7++;
                        break;
                    case 53:
                        i = indexCount2;
                        mt1Var.k = typedArrayObtainStyledAttributes.getDimension(index2, mt1Var.k);
                        continue;
                        i7++;
                        break;
                    case 54:
                        i = indexCount2;
                        jt1Var.X = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.X);
                        continue;
                        i7++;
                        break;
                    case 55:
                        i = indexCount2;
                        jt1Var.Y = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.Y);
                        continue;
                        i7++;
                        break;
                    case 56:
                        i = indexCount2;
                        jt1Var.Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.Z);
                        continue;
                        i7++;
                        break;
                    case 57:
                        i = indexCount2;
                        jt1Var.a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.a0);
                        continue;
                        i7++;
                        break;
                    case 58:
                        i = indexCount2;
                        jt1Var.b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.b0);
                        continue;
                        i7++;
                        break;
                    case 59:
                        i = indexCount2;
                        jt1Var.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.c0);
                        continue;
                        i7++;
                        break;
                    case DefaultJWTClaimsVerifier.DEFAULT_MAX_CLOCK_SKEW_SECONDS /* 60 */:
                        i = indexCount2;
                        mt1Var.a = typedArrayObtainStyledAttributes.getFloat(index2, mt1Var.a);
                        continue;
                        i7++;
                        break;
                    case 61:
                        i = indexCount2;
                        jt1Var.z = h(typedArrayObtainStyledAttributes, index2, jt1Var.z);
                        continue;
                        i7++;
                        break;
                    case 62:
                        i = indexCount2;
                        jt1Var.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.A);
                        continue;
                        i7++;
                        break;
                    case 63:
                        i = indexCount2;
                        jt1Var.B = typedArrayObtainStyledAttributes.getFloat(index2, jt1Var.B);
                        continue;
                        i7++;
                        break;
                    case 64:
                        i = indexCount2;
                        kt1Var.a = h(typedArrayObtainStyledAttributes, index2, kt1Var.a);
                        continue;
                        i7++;
                        break;
                    case 65:
                        i = indexCount2;
                        if (typedArrayObtainStyledAttributes.peekValue(index2).type == 3) {
                            typedArrayObtainStyledAttributes.getString(index2);
                            kt1Var.getClass();
                        } else {
                            String str = strArr[typedArrayObtainStyledAttributes.getInteger(index2, 0)];
                            kt1Var.getClass();
                        }
                        i7++;
                        break;
                    case 66:
                        i = indexCount2;
                        typedArrayObtainStyledAttributes.getInt(index2, 0);
                        kt1Var.getClass();
                        continue;
                        i7++;
                        break;
                    case 67:
                        i = indexCount2;
                        kt1Var.e = typedArrayObtainStyledAttributes.getFloat(index2, kt1Var.e);
                        break;
                    case 68:
                        i = indexCount2;
                        lt1Var.d = typedArrayObtainStyledAttributes.getFloat(index2, lt1Var.d);
                        break;
                    case 69:
                        i = indexCount2;
                        jt1Var.d0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        i = indexCount2;
                        jt1Var.e0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        i = indexCount2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        i = indexCount2;
                        jt1Var.f0 = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.f0);
                        break;
                    case 73:
                        i = indexCount2;
                        jt1Var.g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.g0);
                        break;
                    case 74:
                        i = indexCount2;
                        jt1Var.j0 = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        i = indexCount2;
                        jt1Var.n0 = typedArrayObtainStyledAttributes.getBoolean(index2, jt1Var.n0);
                        break;
                    case 76:
                        i = indexCount2;
                        kt1Var.c = typedArrayObtainStyledAttributes.getInt(index2, kt1Var.c);
                        break;
                    case 77:
                        i = indexCount2;
                        jt1Var.k0 = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        i = indexCount2;
                        lt1Var.b = typedArrayObtainStyledAttributes.getInt(index2, lt1Var.b);
                        break;
                    case 79:
                        i = indexCount2;
                        kt1Var.d = typedArrayObtainStyledAttributes.getFloat(index2, kt1Var.d);
                        break;
                    case 80:
                        i = indexCount2;
                        jt1Var.l0 = typedArrayObtainStyledAttributes.getBoolean(index2, jt1Var.l0);
                        break;
                    case 81:
                        i = indexCount2;
                        jt1Var.m0 = typedArrayObtainStyledAttributes.getBoolean(index2, jt1Var.m0);
                        break;
                    case 82:
                        i = indexCount2;
                        kt1Var.b = typedArrayObtainStyledAttributes.getInteger(index2, kt1Var.b);
                        break;
                    case 83:
                        i = indexCount2;
                        mt1Var.h = h(typedArrayObtainStyledAttributes, index2, mt1Var.h);
                        break;
                    case 84:
                        i = indexCount2;
                        kt1Var.g = typedArrayObtainStyledAttributes.getInteger(index2, kt1Var.g);
                        break;
                    case 85:
                        i = indexCount2;
                        kt1Var.f = typedArrayObtainStyledAttributes.getFloat(index2, kt1Var.f);
                        break;
                    case 86:
                        i = indexCount2;
                        int i9 = typedArrayObtainStyledAttributes.peekValue(index2).type;
                        if (i9 == 1) {
                            kt1Var.i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i9 == 3) {
                            String string2 = typedArrayObtainStyledAttributes.getString(index2);
                            kt1Var.h = string2;
                            if (string2.indexOf("/") > 0) {
                                kt1Var.i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            typedArrayObtainStyledAttributes.getInteger(index2, kt1Var.i);
                        }
                        break;
                    case 87:
                        i = indexCount2;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        StringBuilder sb2 = new StringBuilder("Unknown attribute 0x");
                        i = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        break;
                    case 91:
                        i = indexCount2;
                        jt1Var.q = h(typedArrayObtainStyledAttributes, index2, jt1Var.q);
                        break;
                    case 92:
                        i = indexCount2;
                        jt1Var.r = h(typedArrayObtainStyledAttributes, index2, jt1Var.r);
                        break;
                    case 93:
                        i = indexCount2;
                        jt1Var.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.L);
                        break;
                    case 94:
                        i = indexCount2;
                        jt1Var.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jt1Var.S);
                        break;
                    case 95:
                        i = indexCount2;
                        i(jt1Var, typedArrayObtainStyledAttributes, index2, 0);
                        continue;
                        i7++;
                        break;
                    case AESGCM.IV_BIT_LENGTH /* 96 */:
                        i = indexCount2;
                        i(jt1Var, typedArrayObtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        i = indexCount2;
                        jt1Var.o0 = typedArrayObtainStyledAttributes.getInt(index2, jt1Var.o0);
                        break;
                }
                i7++;
            }
            if (jt1Var.j0 != null) {
                jt1Var.i0 = null;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return it1Var;
    }

    public static int h(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:22:0x003a  */
    /* JADX WARN: Code duplicated, block: B:24:0x003f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x004c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005a  */
    /* JADX WARN: Code duplicated, block: B:38:0x005e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    public static void i(Object obj, TypedArray typedArray, int i, int i2) {
        int dimensionPixelSize;
        ht1 ht1Var;
        jt1 jt1Var;
        dt1 dt1Var;
        if (obj == null) {
            return;
        }
        int i3 = typedArray.peekValue(i).type;
        boolean z = true;
        int i4 = 0;
        if (i3 != 3) {
            if (i3 != 5) {
                dimensionPixelSize = typedArray.getInt(i, 0);
                if (dimensionPixelSize == -4) {
                    i4 = -2;
                } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                    z = false;
                }
                if (obj instanceof dt1) {
                    dt1Var = (dt1) obj;
                    if (i2 == 0) {
                        ((ViewGroup.MarginLayoutParams) dt1Var).width = i4;
                        dt1Var.W = z;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) dt1Var).height = i4;
                        dt1Var.X = z;
                        return;
                    }
                }
                if (obj instanceof jt1) {
                    jt1Var = (jt1) obj;
                    if (i2 == 0) {
                        jt1Var.b = i4;
                        jt1Var.l0 = z;
                        return;
                    } else {
                        jt1Var.c = i4;
                        jt1Var.m0 = z;
                        return;
                    }
                }
                if (obj instanceof ht1) {
                    ht1Var = (ht1) obj;
                    if (i2 == 0) {
                        ht1Var.b(23, i4);
                        ht1Var.d(80, z);
                        return;
                    } else {
                        ht1Var.b(21, i4);
                        ht1Var.d(81, z);
                        return;
                    }
                }
                return;
            }
            dimensionPixelSize = typedArray.getDimensionPixelSize(i, 0);
            z = false;
            i4 = dimensionPixelSize;
            if (obj instanceof dt1) {
                dt1Var = (dt1) obj;
                if (i2 == 0) {
                    ((ViewGroup.MarginLayoutParams) dt1Var).width = i4;
                    dt1Var.W = z;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) dt1Var).height = i4;
                    dt1Var.X = z;
                    return;
                }
            }
            if (obj instanceof jt1) {
                jt1Var = (jt1) obj;
                if (i2 == 0) {
                    jt1Var.b = i4;
                    jt1Var.l0 = z;
                    return;
                } else {
                    jt1Var.c = i4;
                    jt1Var.m0 = z;
                    return;
                }
            }
            if (obj instanceof ht1) {
                ht1Var = (ht1) obj;
                if (i2 == 0) {
                    ht1Var.b(23, i4);
                    ht1Var.d(80, z);
                    return;
                } else {
                    ht1Var.b(21, i4);
                    ht1Var.d(81, z);
                    return;
                }
            }
            return;
        }
        String string = typedArray.getString(i);
        if (string == null) {
            return;
        }
        int iIndexOf = string.indexOf(61);
        int length = string.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = string.substring(0, iIndexOf);
        String strSubstring2 = string.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof dt1) {
                    dt1 dt1Var2 = (dt1) obj;
                    if (i2 == 0) {
                        ((ViewGroup.MarginLayoutParams) dt1Var2).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) dt1Var2).height = 0;
                    }
                    j(dt1Var2, strTrim2);
                    return;
                }
                if (obj instanceof jt1) {
                    ((jt1) obj).y = strTrim2;
                    return;
                } else {
                    if (obj instanceof ht1) {
                        ((ht1) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f2 = Float.parseFloat(strTrim2);
                    if (obj instanceof dt1) {
                        dt1 dt1Var3 = (dt1) obj;
                        if (i2 == 0) {
                            ((ViewGroup.MarginLayoutParams) dt1Var3).width = 0;
                            dt1Var3.H = f2;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) dt1Var3).height = 0;
                            dt1Var3.I = f2;
                            return;
                        }
                    }
                    if (obj instanceof jt1) {
                        jt1 jt1Var2 = (jt1) obj;
                        if (i2 == 0) {
                            jt1Var2.b = 0;
                            jt1Var2.U = f2;
                            return;
                        } else {
                            jt1Var2.c = 0;
                            jt1Var2.T = f2;
                            return;
                        }
                    }
                    if (obj instanceof ht1) {
                        ht1 ht1Var2 = (ht1) obj;
                        if (i2 == 0) {
                            ht1Var2.b(23, 0);
                            ht1Var2.a(39, f2);
                            return;
                        } else {
                            ht1Var2.b(21, 0);
                            ht1Var2.a(40, f2);
                            return;
                        }
                    }
                    return;
                }
                if ("parent".equalsIgnoreCase(strTrim)) {
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof dt1) {
                        dt1 dt1Var4 = (dt1) obj;
                        if (i2 == 0) {
                            ((ViewGroup.MarginLayoutParams) dt1Var4).width = 0;
                            dt1Var4.R = fMax;
                            dt1Var4.L = 2;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) dt1Var4).height = 0;
                            dt1Var4.S = fMax;
                            dt1Var4.M = 2;
                            return;
                        }
                    }
                    if (obj instanceof jt1) {
                        jt1 jt1Var3 = (jt1) obj;
                        if (i2 == 0) {
                            jt1Var3.b = 0;
                            jt1Var3.d0 = fMax;
                            jt1Var3.X = 2;
                            return;
                        } else {
                            jt1Var3.c = 0;
                            jt1Var3.e0 = fMax;
                            jt1Var3.Y = 2;
                            return;
                        }
                    }
                    if (obj instanceof ht1) {
                        ht1 ht1Var3 = (ht1) obj;
                        if (i2 == 0) {
                            ht1Var3.b(23, 0);
                            ht1Var3.b(54, 2);
                        } else {
                            ht1Var3.b(21, 0);
                            ht1Var3.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public static void j(dt1 dt1Var, String str) {
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i = 0;
            int i2 = -1;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (!strSubstring.equalsIgnoreCase("W")) {
                    i = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                }
                i2 = i;
                i = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i);
                    if (strSubstring2.length() > 0) {
                        Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f2 = Float.parseFloat(strSubstring3);
                        float f3 = Float.parseFloat(strSubstring4);
                        if (f2 > 0.0f && f3 > 0.0f) {
                            if (i2 == 1) {
                                Math.abs(f3 / f2);
                            } else {
                                Math.abs(f2 / f3);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        dt1Var.G = str;
    }

    public static String k(int i) {
        switch (i) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(ConstraintLayout constraintLayout) {
        HashSet hashSet;
        int i;
        HashMap map;
        String resourceEntryName;
        nt1 nt1Var = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map2 = nt1Var.c;
        HashSet<Integer> hashSet2 = new HashSet(map2.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!map2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    resourceEntryName = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    resourceEntryName = "UNKNOWN";
                }
                sb.append(resourceEntryName);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (nt1Var.b && id == -1) {
                    g84.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (id != -1) {
                    if (map2.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        it1 it1Var = (it1) map2.get(Integer.valueOf(id));
                        if (it1Var != null) {
                            lt1 lt1Var = it1Var.b;
                            jt1 jt1Var = it1Var.d;
                            mt1 mt1Var = it1Var.e;
                            if (childAt instanceof Barrier) {
                                jt1Var.h0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(jt1Var.f0);
                                barrier.setMargin(jt1Var.g0);
                                barrier.setAllowsGoneWidget(jt1Var.n0);
                                int[] iArr = jt1Var.i0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = jt1Var.j0;
                                    if (str != null) {
                                        int[] iArrE = e(barrier, str);
                                        jt1Var.i0 = iArrE;
                                        barrier.setReferencedIds(iArrE);
                                    }
                                }
                            }
                            dt1 dt1Var = (dt1) childAt.getLayoutParams();
                            dt1Var.a();
                            it1Var.a(dt1Var);
                            HashMap map3 = it1Var.f;
                            Class<?> cls = childAt.getClass();
                            for (String str2 : map3.keySet()) {
                                zs1 zs1Var = (zs1) map3.get(str2);
                                HashSet hashSet3 = hashSet2;
                                String strJ = !zs1Var.a ? xs1.j("set", str2) : str2;
                                int i3 = i2;
                                try {
                                    int iA = dj7.A(zs1Var.b);
                                    Class cls2 = Float.TYPE;
                                    Class cls3 = Integer.TYPE;
                                    switch (iA) {
                                        case 0:
                                            map = map3;
                                            cls.getMethod(strJ, cls3).invoke(childAt, Integer.valueOf(zs1Var.c));
                                            break;
                                        case 1:
                                            map = map3;
                                            cls.getMethod(strJ, cls2).invoke(childAt, Float.valueOf(zs1Var.d));
                                            break;
                                        case 2:
                                            map = map3;
                                            cls.getMethod(strJ, cls3).invoke(childAt, Integer.valueOf(zs1Var.g));
                                            break;
                                        case 3:
                                            Method method = cls.getMethod(strJ, Drawable.class);
                                            map = map3;
                                            try {
                                                ColorDrawable colorDrawable = new ColorDrawable();
                                                colorDrawable.setColor(zs1Var.g);
                                                method.invoke(childAt, colorDrawable);
                                            } catch (IllegalAccessException e2) {
                                                e = e2;
                                                StringBuilder sbU = dj7.u(" Custom Attribute \"", str2, "\" not found on ");
                                                sbU.append(cls.getName());
                                                Log.e("TransitionLayout", sbU.toString(), e);
                                            } catch (NoSuchMethodException e3) {
                                                e = e3;
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + strJ, e);
                                            } catch (InvocationTargetException e4) {
                                                e = e4;
                                                StringBuilder sbU2 = dj7.u(" Custom Attribute \"", str2, "\" not found on ");
                                                sbU2.append(cls.getName());
                                                Log.e("TransitionLayout", sbU2.toString(), e);
                                            }
                                            break;
                                        case 4:
                                            cls.getMethod(strJ, CharSequence.class).invoke(childAt, zs1Var.e);
                                            map = map3;
                                            break;
                                        case 5:
                                            cls.getMethod(strJ, Boolean.TYPE).invoke(childAt, Boolean.valueOf(zs1Var.f));
                                            map = map3;
                                            break;
                                        case 6:
                                            cls.getMethod(strJ, cls2).invoke(childAt, Float.valueOf(zs1Var.d));
                                            map = map3;
                                            break;
                                        case 7:
                                            cls.getMethod(strJ, cls3).invoke(childAt, Integer.valueOf(zs1Var.c));
                                            map = map3;
                                            break;
                                        default:
                                            map = map3;
                                            break;
                                    }
                                } catch (IllegalAccessException e5) {
                                    e = e5;
                                    map = map3;
                                } catch (NoSuchMethodException e6) {
                                    e = e6;
                                    map = map3;
                                } catch (InvocationTargetException e7) {
                                    e = e7;
                                    map = map3;
                                }
                                hashSet2 = hashSet3;
                                i2 = i3;
                                map3 = map;
                            }
                            hashSet = hashSet2;
                            i = i2;
                            childAt.setLayoutParams(dt1Var);
                            if (lt1Var.b == 0) {
                                childAt.setVisibility(lt1Var.a);
                            }
                            childAt.setAlpha(lt1Var.c);
                            childAt.setRotation(mt1Var.a);
                            childAt.setRotationX(mt1Var.b);
                            childAt.setRotationY(mt1Var.c);
                            childAt.setScaleX(mt1Var.d);
                            childAt.setScaleY(mt1Var.e);
                            if (mt1Var.h != -1) {
                                View viewFindViewById = ((View) childAt.getParent()).findViewById(mt1Var.h);
                                if (viewFindViewById != null) {
                                    float bottom = (viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f;
                                    float right = (viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        float left = right - childAt.getLeft();
                                        float top = bottom - childAt.getTop();
                                        childAt.setPivotX(left);
                                        childAt.setPivotY(top);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(mt1Var.f)) {
                                    childAt.setPivotX(mt1Var.f);
                                }
                                if (!Float.isNaN(mt1Var.g)) {
                                    childAt.setPivotY(mt1Var.g);
                                }
                            }
                            childAt.setTranslationX(mt1Var.i);
                            childAt.setTranslationY(mt1Var.j);
                            childAt.setTranslationZ(mt1Var.k);
                            if (mt1Var.l) {
                                childAt.setElevation(mt1Var.m);
                            }
                        }
                    } else {
                        hashSet = hashSet2;
                        i = i2;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
                i2 = i + 1;
                nt1Var = this;
                hashSet2 = hashSet;
            }
            hashSet = hashSet2;
            i = i2;
            i2 = i + 1;
            nt1Var = this;
            hashSet2 = hashSet;
        }
        for (Integer num : hashSet2) {
            it1 it1Var2 = (it1) map2.get(num);
            if (it1Var2 != null) {
                jt1 jt1Var2 = it1Var2.d;
                if (jt1Var2.h0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = jt1Var2.i0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str3 = jt1Var2.j0;
                        if (str3 != null) {
                            int[] iArrE2 = e(barrier2, str3);
                            jt1Var2.i0 = iArrE2;
                            barrier2.setReferencedIds(iArrE2);
                        }
                    }
                    barrier2.setType(jt1Var2.f0);
                    barrier2.setMargin(jt1Var2.g0);
                    dt1 dt1VarH = ConstraintLayout.h();
                    barrier2.k();
                    it1Var2.a(dt1VarH);
                    constraintLayout.addView(barrier2, dt1VarH);
                }
                if (jt1Var2.a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    dt1 dt1VarH2 = ConstraintLayout.h();
                    it1Var2.a(dt1VarH2);
                    constraintLayout.addView(guideline, dt1VarH2);
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = constraintLayout.getChildAt(i4);
            if (childAt2 instanceof bt1) {
                ((bt1) childAt2).f(constraintLayout);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        int i;
        HashMap map;
        int i2;
        nt1 nt1Var = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map2 = nt1Var.c;
        map2.clear();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            dt1 dt1Var = (dt1) childAt.getLayoutParams();
            int id = childAt.getId();
            if (nt1Var.b && id == -1) {
                g84.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!map2.containsKey(Integer.valueOf(id))) {
                map2.put(Integer.valueOf(id), new it1());
            }
            it1 it1Var = (it1) map2.get(Integer.valueOf(id));
            if (it1Var == null) {
                i = childCount;
                map = map2;
                i2 = i3;
            } else {
                lt1 lt1Var = it1Var.b;
                jt1 jt1Var = it1Var.d;
                mt1 mt1Var = it1Var.e;
                i = childCount;
                HashMap map3 = new HashMap();
                map = map2;
                Class<?> cls = childAt.getClass();
                i2 = i3;
                HashMap map4 = nt1Var.a;
                for (String str : map4.keySet()) {
                    zs1 zs1Var = (zs1) map4.get(str);
                    HashMap map5 = map4;
                    try {
                        if (str.equals("BackgroundColor")) {
                            map3.put(str, new zs1(zs1Var, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            map3.put(str, new zs1(zs1Var, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e2) {
                        StringBuilder sbU = dj7.u(" Custom Attribute \"", str, "\" not found on ");
                        sbU.append(cls.getName());
                        Log.e("TransitionLayout", sbU.toString(), e2);
                    } catch (NoSuchMethodException e3) {
                        Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e3);
                    } catch (InvocationTargetException e4) {
                        StringBuilder sbU2 = dj7.u(" Custom Attribute \"", str, "\" not found on ");
                        sbU2.append(cls.getName());
                        Log.e("TransitionLayout", sbU2.toString(), e4);
                    }
                    map4 = map5;
                }
                it1Var.f = map3;
                it1Var.a = id;
                jt1Var.h = dt1Var.e;
                jt1Var.i = dt1Var.f;
                jt1Var.j = dt1Var.g;
                jt1Var.k = dt1Var.h;
                jt1Var.l = dt1Var.i;
                jt1Var.m = dt1Var.j;
                jt1Var.n = dt1Var.k;
                jt1Var.o = dt1Var.l;
                jt1Var.p = dt1Var.m;
                jt1Var.q = dt1Var.n;
                jt1Var.r = dt1Var.o;
                jt1Var.s = dt1Var.s;
                jt1Var.t = dt1Var.t;
                jt1Var.u = dt1Var.u;
                jt1Var.v = dt1Var.v;
                jt1Var.w = dt1Var.E;
                jt1Var.x = dt1Var.F;
                jt1Var.y = dt1Var.G;
                jt1Var.z = dt1Var.p;
                jt1Var.A = dt1Var.q;
                jt1Var.B = dt1Var.r;
                jt1Var.C = dt1Var.T;
                jt1Var.D = dt1Var.U;
                jt1Var.E = dt1Var.V;
                jt1Var.f = dt1Var.c;
                jt1Var.d = dt1Var.a;
                jt1Var.e = dt1Var.b;
                jt1Var.b = ((ViewGroup.MarginLayoutParams) dt1Var).width;
                jt1Var.c = ((ViewGroup.MarginLayoutParams) dt1Var).height;
                jt1Var.F = ((ViewGroup.MarginLayoutParams) dt1Var).leftMargin;
                jt1Var.G = ((ViewGroup.MarginLayoutParams) dt1Var).rightMargin;
                jt1Var.H = ((ViewGroup.MarginLayoutParams) dt1Var).topMargin;
                jt1Var.I = ((ViewGroup.MarginLayoutParams) dt1Var).bottomMargin;
                jt1Var.L = dt1Var.D;
                jt1Var.T = dt1Var.I;
                jt1Var.U = dt1Var.H;
                jt1Var.W = dt1Var.K;
                jt1Var.V = dt1Var.J;
                jt1Var.l0 = dt1Var.W;
                jt1Var.m0 = dt1Var.X;
                jt1Var.X = dt1Var.L;
                jt1Var.Y = dt1Var.M;
                jt1Var.Z = dt1Var.P;
                jt1Var.a0 = dt1Var.Q;
                jt1Var.b0 = dt1Var.N;
                jt1Var.c0 = dt1Var.O;
                jt1Var.d0 = dt1Var.R;
                jt1Var.e0 = dt1Var.S;
                jt1Var.k0 = dt1Var.Y;
                jt1Var.N = dt1Var.x;
                jt1Var.P = dt1Var.z;
                jt1Var.M = dt1Var.w;
                jt1Var.O = dt1Var.y;
                jt1Var.R = dt1Var.A;
                jt1Var.Q = dt1Var.B;
                jt1Var.S = dt1Var.C;
                jt1Var.o0 = dt1Var.Z;
                jt1Var.J = dt1Var.getMarginEnd();
                jt1Var.K = dt1Var.getMarginStart();
                lt1Var.a = childAt.getVisibility();
                lt1Var.c = childAt.getAlpha();
                mt1Var.a = childAt.getRotation();
                mt1Var.b = childAt.getRotationX();
                mt1Var.c = childAt.getRotationY();
                mt1Var.d = childAt.getScaleX();
                mt1Var.e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    mt1Var.f = pivotX;
                    mt1Var.g = pivotY;
                }
                mt1Var.i = childAt.getTranslationX();
                mt1Var.j = childAt.getTranslationY();
                mt1Var.k = childAt.getTranslationZ();
                if (mt1Var.l) {
                    mt1Var.m = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    jt1Var.n0 = barrier.getAllowsGoneWidget();
                    jt1Var.i0 = barrier.getReferencedIds();
                    jt1Var.f0 = barrier.getType();
                    jt1Var.g0 = barrier.getMargin();
                }
            }
            i3 = i2 + 1;
            nt1Var = this;
            childCount = i;
            map2 = map;
        }
    }

    public final void c(int i, int i2, int i3, int i4) {
        Integer numValueOf = Integer.valueOf(i);
        HashMap map = this.c;
        if (!map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(i), new it1());
        }
        it1 it1Var = (it1) map.get(Integer.valueOf(i));
        if (it1Var == null) {
            return;
        }
        jt1 jt1Var = it1Var.d;
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    jt1Var.h = i3;
                    jt1Var.i = -1;
                    return;
                } else if (i4 != 2) {
                    z5.d(k(i4), " undefined", "left to ");
                    return;
                } else {
                    jt1Var.i = i3;
                    jt1Var.h = -1;
                    return;
                }
            case 2:
                if (i4 == 1) {
                    jt1Var.j = i3;
                    jt1Var.k = -1;
                    return;
                } else if (i4 != 2) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.k = i3;
                    jt1Var.j = -1;
                    return;
                }
            case 3:
                if (i4 == 3) {
                    jt1Var.l = i3;
                    jt1Var.m = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                    return;
                }
                if (i4 != 4) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                }
                jt1Var.m = i3;
                jt1Var.l = -1;
                jt1Var.p = -1;
                jt1Var.q = -1;
                jt1Var.r = -1;
                return;
            case 4:
                if (i4 == 4) {
                    jt1Var.o = i3;
                    jt1Var.n = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                    return;
                }
                if (i4 != 3) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                }
                jt1Var.n = i3;
                jt1Var.o = -1;
                jt1Var.p = -1;
                jt1Var.q = -1;
                jt1Var.r = -1;
                return;
            case 5:
                if (i4 == 5) {
                    jt1Var.p = i3;
                    jt1Var.o = -1;
                    jt1Var.n = -1;
                    jt1Var.l = -1;
                    jt1Var.m = -1;
                    return;
                }
                if (i4 == 3) {
                    jt1Var.q = i3;
                    jt1Var.o = -1;
                    jt1Var.n = -1;
                    jt1Var.l = -1;
                    jt1Var.m = -1;
                    return;
                }
                if (i4 != 4) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                }
                jt1Var.r = i3;
                jt1Var.o = -1;
                jt1Var.n = -1;
                jt1Var.l = -1;
                jt1Var.m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    jt1Var.t = i3;
                    jt1Var.s = -1;
                    return;
                } else if (i4 != 7) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.s = i3;
                    jt1Var.t = -1;
                    return;
                }
            case 7:
                if (i4 == 7) {
                    jt1Var.v = i3;
                    jt1Var.u = -1;
                    return;
                } else if (i4 != 6) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.u = i3;
                    jt1Var.v = -1;
                    return;
                }
            default:
                throw new IllegalArgumentException(k(i2) + " to " + k(i4) + " unknown");
        }
    }

    public final void d(int i, int i2, int i3, int i4, int i5) {
        Integer numValueOf = Integer.valueOf(i);
        HashMap map = this.c;
        if (!map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(i), new it1());
        }
        it1 it1Var = (it1) map.get(Integer.valueOf(i));
        if (it1Var == null) {
            return;
        }
        jt1 jt1Var = it1Var.d;
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    jt1Var.h = i3;
                    jt1Var.i = -1;
                } else if (i4 != 2) {
                    z5.d(k(i4), " undefined", "Left to ");
                    return;
                } else {
                    jt1Var.i = i3;
                    jt1Var.h = -1;
                }
                jt1Var.F = i5;
                return;
            case 2:
                if (i4 == 1) {
                    jt1Var.j = i3;
                    jt1Var.k = -1;
                } else if (i4 != 2) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.k = i3;
                    jt1Var.j = -1;
                }
                jt1Var.G = i5;
                return;
            case 3:
                if (i4 == 3) {
                    jt1Var.l = i3;
                    jt1Var.m = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                } else {
                    if (i4 != 4) {
                        z5.d(k(i4), " undefined", "right to ");
                        return;
                    }
                    jt1Var.m = i3;
                    jt1Var.l = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                }
                jt1Var.H = i5;
                return;
            case 4:
                if (i4 == 4) {
                    jt1Var.o = i3;
                    jt1Var.n = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                } else {
                    if (i4 != 3) {
                        z5.d(k(i4), " undefined", "right to ");
                        return;
                    }
                    jt1Var.n = i3;
                    jt1Var.o = -1;
                    jt1Var.p = -1;
                    jt1Var.q = -1;
                    jt1Var.r = -1;
                }
                jt1Var.I = i5;
                return;
            case 5:
                if (i4 == 5) {
                    jt1Var.p = i3;
                    jt1Var.o = -1;
                    jt1Var.n = -1;
                    jt1Var.l = -1;
                    jt1Var.m = -1;
                    return;
                }
                if (i4 == 3) {
                    jt1Var.q = i3;
                    jt1Var.o = -1;
                    jt1Var.n = -1;
                    jt1Var.l = -1;
                    jt1Var.m = -1;
                    return;
                }
                if (i4 != 4) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                }
                jt1Var.r = i3;
                jt1Var.o = -1;
                jt1Var.n = -1;
                jt1Var.l = -1;
                jt1Var.m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    jt1Var.t = i3;
                    jt1Var.s = -1;
                } else if (i4 != 7) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.s = i3;
                    jt1Var.t = -1;
                }
                jt1Var.K = i5;
                return;
            case 7:
                if (i4 == 7) {
                    jt1Var.v = i3;
                    jt1Var.u = -1;
                } else if (i4 != 6) {
                    z5.d(k(i4), " undefined", "right to ");
                    return;
                } else {
                    jt1Var.u = i3;
                    jt1Var.v = -1;
                }
                jt1Var.J = i5;
                return;
            default:
                throw new IllegalArgumentException(k(i2) + " to " + k(i4) + " unknown");
        }
    }

    public final void g(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    it1 it1VarF = f(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        it1VarF.d.a = true;
                    }
                    this.c.put(Integer.valueOf(it1VarF.a), it1VarF);
                }
            }
        } catch (IOException e2) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e2);
        } catch (XmlPullParserException e3) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e3);
        }
    }
}
