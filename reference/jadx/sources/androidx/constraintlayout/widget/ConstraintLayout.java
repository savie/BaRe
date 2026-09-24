package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.jcraft.jsch.SftpATTRS;
import defpackage.al0;
import defpackage.b24;
import defpackage.bp0;
import defpackage.bt1;
import defpackage.bv4;
import defpackage.c24;
import defpackage.ct1;
import defpackage.d44;
import defpackage.d64;
import defpackage.dk8;
import defpackage.dt1;
import defpackage.et1;
import defpackage.ft1;
import defpackage.gt1;
import defpackage.ib;
import defpackage.j31;
import defpackage.ki3;
import defpackage.ld7;
import defpackage.mi2;
import defpackage.nt1;
import defpackage.ot1;
import defpackage.pr8;
import defpackage.pt1;
import defpackage.qt1;
import defpackage.sz8;
import defpackage.yd6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public static ld7 H;
    public final et1 G;
    public final SparseArray a;
    public final ArrayList b;
    public final pt1 c;
    public int d;
    public int e;
    public int f;
    public int k;
    public boolean n;
    public int p;
    public nt1 q;
    public ib r;
    public int t;
    public HashMap x;
    public final SparseArray y;

    public ConstraintLayout(Context context) {
        super(context);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new pt1();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.n = true;
        this.p = 257;
        this.q = null;
        this.r = null;
        this.t = -1;
        this.x = new HashMap();
        this.y = new SparseArray();
        this.G = new et1(this, this);
        j(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static ld7 getSharedValues() {
        if (H == null) {
            ld7 ld7Var = new ld7();
            new SparseIntArray();
            new HashMap();
            H = ld7Var;
        }
        return H;
    }

    public static dt1 h() {
        dt1 dt1Var = new dt1(-2, -2);
        dt1Var.a = -1;
        dt1Var.b = -1;
        dt1Var.c = -1.0f;
        dt1Var.d = true;
        dt1Var.e = -1;
        dt1Var.f = -1;
        dt1Var.g = -1;
        dt1Var.h = -1;
        dt1Var.i = -1;
        dt1Var.j = -1;
        dt1Var.k = -1;
        dt1Var.l = -1;
        dt1Var.m = -1;
        dt1Var.n = -1;
        dt1Var.o = -1;
        dt1Var.p = -1;
        dt1Var.q = 0;
        dt1Var.r = 0.0f;
        dt1Var.s = -1;
        dt1Var.t = -1;
        dt1Var.u = -1;
        dt1Var.v = -1;
        dt1Var.w = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.x = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.z = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.A = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.B = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.C = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.D = 0;
        dt1Var.E = 0.5f;
        dt1Var.F = 0.5f;
        dt1Var.G = null;
        dt1Var.H = -1.0f;
        dt1Var.I = -1.0f;
        dt1Var.J = 0;
        dt1Var.K = 0;
        dt1Var.L = 0;
        dt1Var.M = 0;
        dt1Var.N = 0;
        dt1Var.O = 0;
        dt1Var.P = 0;
        dt1Var.Q = 0;
        dt1Var.R = 1.0f;
        dt1Var.S = 1.0f;
        dt1Var.T = -1;
        dt1Var.U = -1;
        dt1Var.V = -1;
        dt1Var.W = false;
        dt1Var.X = false;
        dt1Var.Y = null;
        dt1Var.Z = 0;
        dt1Var.a0 = true;
        dt1Var.b0 = true;
        dt1Var.c0 = false;
        dt1Var.d0 = false;
        dt1Var.e0 = false;
        dt1Var.f0 = -1;
        dt1Var.g0 = -1;
        dt1Var.h0 = -1;
        dt1Var.i0 = -1;
        dt1Var.j0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.k0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.l0 = 0.5f;
        dt1Var.p0 = new ot1();
        return dt1Var;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof dt1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((bt1) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        int i5 = Integer.parseInt(strArrSplit[2]);
                        int i6 = (int) ((i3 / 1080.0f) * width);
                        int i7 = (int) ((i4 / 1920.0f) * height);
                        int i8 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i6;
                        float f2 = i7;
                        float f3 = i6 + ((int) ((i5 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i7 + i8;
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.n = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        dt1 dt1Var = new dt1(context, attributeSet);
        dt1Var.a = -1;
        dt1Var.b = -1;
        dt1Var.c = -1.0f;
        dt1Var.d = true;
        dt1Var.e = -1;
        dt1Var.f = -1;
        dt1Var.g = -1;
        dt1Var.h = -1;
        dt1Var.i = -1;
        dt1Var.j = -1;
        dt1Var.k = -1;
        dt1Var.l = -1;
        dt1Var.m = -1;
        dt1Var.n = -1;
        dt1Var.o = -1;
        dt1Var.p = -1;
        dt1Var.q = 0;
        dt1Var.r = 0.0f;
        dt1Var.s = -1;
        dt1Var.t = -1;
        dt1Var.u = -1;
        dt1Var.v = -1;
        dt1Var.w = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.x = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.z = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.A = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.B = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.C = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.D = 0;
        dt1Var.E = 0.5f;
        dt1Var.F = 0.5f;
        dt1Var.G = null;
        dt1Var.H = -1.0f;
        dt1Var.I = -1.0f;
        dt1Var.J = 0;
        dt1Var.K = 0;
        dt1Var.L = 0;
        dt1Var.M = 0;
        dt1Var.N = 0;
        dt1Var.O = 0;
        dt1Var.P = 0;
        dt1Var.Q = 0;
        dt1Var.R = 1.0f;
        dt1Var.S = 1.0f;
        dt1Var.T = -1;
        dt1Var.U = -1;
        dt1Var.V = -1;
        dt1Var.W = false;
        dt1Var.X = false;
        dt1Var.Y = null;
        dt1Var.Z = 0;
        dt1Var.a0 = true;
        dt1Var.b0 = true;
        dt1Var.c0 = false;
        dt1Var.d0 = false;
        dt1Var.e0 = false;
        dt1Var.f0 = -1;
        dt1Var.g0 = -1;
        dt1Var.h0 = -1;
        dt1Var.i0 = -1;
        dt1Var.j0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.k0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.l0 = 0.5f;
        dt1Var.p0 = new ot1();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, yd6.b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            int i2 = ct1.a.get(index);
            switch (i2) {
                case 1:
                    dt1Var.V = typedArrayObtainStyledAttributes.getInt(index, dt1Var.V);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.p);
                    dt1Var.p = resourceId;
                    if (resourceId == -1) {
                        dt1Var.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 3:
                    dt1Var.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.q);
                    break;
                case 4:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.r) % 360.0f;
                    dt1Var.r = f;
                    if (f < 0.0f) {
                        dt1Var.r = (360.0f - f) % 360.0f;
                    }
                    break;
                case 5:
                    dt1Var.a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dt1Var.a);
                    break;
                case 6:
                    dt1Var.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dt1Var.b);
                    break;
                case 7:
                    dt1Var.c = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.e);
                    dt1Var.e = resourceId2;
                    if (resourceId2 == -1) {
                        dt1Var.e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.f);
                    dt1Var.f = resourceId3;
                    if (resourceId3 == -1) {
                        dt1Var.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.g);
                    dt1Var.g = resourceId4;
                    if (resourceId4 == -1) {
                        dt1Var.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.h);
                    dt1Var.h = resourceId5;
                    if (resourceId5 == -1) {
                        dt1Var.h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.i);
                    dt1Var.i = resourceId6;
                    if (resourceId6 == -1) {
                        dt1Var.i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.j);
                    dt1Var.j = resourceId7;
                    if (resourceId7 == -1) {
                        dt1Var.j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.k);
                    dt1Var.k = resourceId8;
                    if (resourceId8 == -1) {
                        dt1Var.k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.l);
                    dt1Var.l = resourceId9;
                    if (resourceId9 == -1) {
                        dt1Var.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case Argon2.V10 /* 16 */:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.m);
                    dt1Var.m = resourceId10;
                    if (resourceId10 == -1) {
                        dt1Var.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.s);
                    dt1Var.s = resourceId11;
                    if (resourceId11 == -1) {
                        dt1Var.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.t);
                    dt1Var.t = resourceId12;
                    if (resourceId12 == -1) {
                        dt1Var.t = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case Argon2.V13 /* 19 */:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.u);
                    dt1Var.u = resourceId13;
                    if (resourceId13 == -1) {
                        dt1Var.u = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.v);
                    dt1Var.v = resourceId14;
                    if (resourceId14 == -1) {
                        dt1Var.v = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 21:
                    dt1Var.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.w);
                    break;
                case 22:
                    dt1Var.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.x);
                    break;
                case 23:
                    dt1Var.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.y);
                    break;
                case 24:
                    dt1Var.z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.z);
                    break;
                case 25:
                    dt1Var.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.A);
                    break;
                case 26:
                    dt1Var.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.B);
                    break;
                case 27:
                    dt1Var.W = typedArrayObtainStyledAttributes.getBoolean(index, dt1Var.W);
                    break;
                case 28:
                    dt1Var.X = typedArrayObtainStyledAttributes.getBoolean(index, dt1Var.X);
                    break;
                case 29:
                    dt1Var.E = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.E);
                    break;
                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                    dt1Var.F = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.F);
                    break;
                case 31:
                    int i3 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    dt1Var.L = i3;
                    if (i3 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    int i4 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    dt1Var.M = i4;
                    if (i4 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                    }
                    break;
                case 33:
                    try {
                        dt1Var.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.N);
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, dt1Var.N) == -2) {
                            dt1Var.N = -2;
                        }
                    }
                    break;
                case 34:
                    try {
                        dt1Var.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.P);
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, dt1Var.P) == -2) {
                            dt1Var.P = -2;
                        }
                    }
                    break;
                case 35:
                    dt1Var.R = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, dt1Var.R));
                    dt1Var.L = 2;
                    break;
                case 36:
                    try {
                        dt1Var.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.O);
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, dt1Var.O) == -2) {
                            dt1Var.O = -2;
                        }
                    }
                    break;
                case 37:
                    try {
                        dt1Var.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.Q);
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, dt1Var.Q) == -2) {
                            dt1Var.Q = -2;
                        }
                    }
                    break;
                case 38:
                    dt1Var.S = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, dt1Var.S));
                    dt1Var.M = 2;
                    break;
                default:
                    switch (i2) {
                        case 44:
                            nt1.j(dt1Var, typedArrayObtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            dt1Var.H = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.H);
                            break;
                        case 46:
                            dt1Var.I = typedArrayObtainStyledAttributes.getFloat(index, dt1Var.I);
                            break;
                        case 47:
                            dt1Var.J = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            dt1Var.K = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            dt1Var.T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dt1Var.T);
                            break;
                        case 50:
                            dt1Var.U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dt1Var.U);
                            break;
                        case 51:
                            dt1Var.Y = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.n);
                            dt1Var.n = resourceId15;
                            if (resourceId15 == -1) {
                                dt1Var.n = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case 53:
                            int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, dt1Var.o);
                            dt1Var.o = resourceId16;
                            if (resourceId16 == -1) {
                                dt1Var.o = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case 54:
                            dt1Var.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.D);
                            break;
                        case 55:
                            dt1Var.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dt1Var.C);
                            break;
                        default:
                            switch (i2) {
                                case 64:
                                    nt1.i(dt1Var, typedArrayObtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    nt1.i(dt1Var, typedArrayObtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    dt1Var.Z = typedArrayObtainStyledAttributes.getInt(index, dt1Var.Z);
                                    break;
                                case 67:
                                    dt1Var.d = typedArrayObtainStyledAttributes.getBoolean(index, dt1Var.d);
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        dt1Var.a();
        return dt1Var;
    }

    public int getMaxHeight() {
        return this.k;
    }

    public int getMaxWidth() {
        return this.f;
    }

    public int getMinHeight() {
        return this.e;
    }

    public int getMinWidth() {
        return this.d;
    }

    public int getOptimizationLevel() {
        return this.c.D0;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        pt1 pt1Var = this.c;
        if (pt1Var.j == null) {
            int id2 = getId();
            if (id2 != -1) {
                pt1Var.j = getContext().getResources().getResourceEntryName(id2);
            } else {
                pt1Var.j = "parent";
            }
        }
        if (pt1Var.h0 == null) {
            pt1Var.h0 = pt1Var.j;
            Log.v("ConstraintLayout", " setDebugName " + pt1Var.h0);
        }
        for (ot1 ot1Var : pt1Var.q0) {
            View view = ot1Var.f0;
            if (view != null) {
                if (ot1Var.j == null && (id = view.getId()) != -1) {
                    ot1Var.j = getContext().getResources().getResourceEntryName(id);
                }
                if (ot1Var.h0 == null) {
                    ot1Var.h0 = ot1Var.j;
                    Log.v("ConstraintLayout", " setDebugName " + ot1Var.h0);
                }
            }
        }
        pt1Var.n(sb);
        return sb.toString();
    }

    public final ot1 i(View view) {
        if (view == this) {
            return this.c;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof dt1) {
            return ((dt1) view.getLayoutParams()).p0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof dt1) {
            return ((dt1) view.getLayoutParams()).p0;
        }
        return null;
    }

    public final void j(AttributeSet attributeSet, int i, int i2) {
        pt1 pt1Var = this.c;
        pt1Var.f0 = this;
        et1 et1Var = this.G;
        pt1Var.u0 = et1Var;
        pt1Var.s0.g = et1Var;
        this.a.put(getId(), this);
        this.q = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, yd6.b, i, i2);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    this.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.d);
                } else if (index == 17) {
                    this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                } else if (index == 14) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 15) {
                    this.k = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.k);
                } else if (index == 113) {
                    this.p = typedArrayObtainStyledAttributes.getInt(index, this.p);
                } else if (index == 56) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            k(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.r = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        nt1 nt1Var = new nt1();
                        this.q = nt1Var;
                        nt1Var.g(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.q = null;
                    }
                    this.t = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        pt1Var.D0 = this.p;
        bv4.q = pt1Var.W(512);
    }

    public final void k(int i) {
        String str;
        Context context = getContext();
        ib ibVar = new ib(2);
        ibVar.b = new SparseArray();
        ibVar.c = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            ft1 ft1Var = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                ibVar.m(context, xml);
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                ft1 ft1Var2 = new ft1(context, xml);
                                ((SparseArray) ibVar.b).put(ft1Var2.a, ft1Var2);
                                ft1Var = ft1Var2;
                            }
                            break;
                        case 1382829617:
                            str = "StateSet";
                            name.equals(str);
                            break;
                        case 1657696882:
                            str = "layoutDescription";
                            name.equals(str);
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                gt1 gt1Var = new gt1(context, xml);
                                if (ft1Var != null) {
                                    ft1Var.b.add(gt1Var);
                                }
                            }
                            break;
                    }
                }
            }
        } catch (IOException e) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e);
        } catch (XmlPullParserException e2) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e2);
        }
        this.r = ibVar;
    }

    /* JADX WARN: Code duplicated, block: B:162:0x030e  */
    /* JADX WARN: Code duplicated, block: B:164:0x032a  */
    /* JADX WARN: Code duplicated, block: B:166:0x032d  */
    /* JADX WARN: Code duplicated, block: B:171:0x0351  */
    /* JADX WARN: Code duplicated, block: B:180:0x036e  */
    /* JADX WARN: Code duplicated, block: B:405:0x039d A[SYNTHETIC] */
    public final void l(pt1 pt1Var, int i, int i2, int i3) {
        int iMin;
        int iMax;
        int iMin2;
        int iMax2;
        int i4;
        char c;
        boolean z;
        int i5;
        int i6;
        boolean z2;
        et1 et1Var;
        int i7;
        boolean zT;
        int i8;
        int i9;
        boolean zB;
        et1 et1Var2;
        boolean z3;
        boolean z4;
        et1 et1Var3;
        boolean z5;
        int i10;
        d64 d64Var;
        dk8 dk8Var;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z6;
        Iterator it;
        pr8 pr8Var;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int iMax3 = Math.max(0, getPaddingTop());
        int iMax4 = Math.max(0, getPaddingBottom());
        int i17 = iMax3 + iMax4;
        int paddingWidth = getPaddingWidth();
        et1 et1Var4 = this.G;
        et1Var4.b = iMax3;
        et1Var4.c = iMax4;
        et1Var4.d = paddingWidth;
        et1Var4.e = i17;
        et1Var4.f = i2;
        et1Var4.g = i3;
        int iMax5 = Math.max(0, getPaddingStart());
        int iMax6 = Math.max(0, getPaddingEnd());
        int i18 = 1;
        if (iMax5 <= 0 && iMax6 <= 0) {
            iMax5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            iMax5 = iMax6;
        }
        int i19 = size - paddingWidth;
        int i20 = size2 - i17;
        int i21 = et1Var4.e;
        int i22 = et1Var4.d;
        int childCount = getChildCount();
        if (mode == Integer.MIN_VALUE) {
            if (childCount == 0) {
                iMax = Math.max(0, this.d);
                iMin = iMax;
            } else {
                iMin = i19;
            }
            i18 = 2;
        } else if (mode == 0) {
            if (childCount == 0) {
                iMax = Math.max(0, this.d);
                iMin = iMax;
            } else {
                iMin = 0;
            }
            i18 = 2;
        } else if (mode != 1073741824) {
            iMin = 0;
        } else {
            iMin = Math.min(this.f - i22, i19);
            i18 = 1;
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (childCount == 0) {
                iMax2 = Math.max(0, this.e);
                iMin2 = iMax2;
            } else {
                iMin2 = i20;
            }
            i4 = 2;
        } else if (mode2 != 0) {
            iMin2 = mode2 != 1073741824 ? 0 : Math.min(this.k - i21, i20);
            i4 = 1;
        } else {
            if (childCount == 0) {
                iMax2 = Math.max(0, this.e);
                iMin2 = iMax2;
            } else {
                iMin2 = 0;
            }
            i4 = 2;
        }
        int iQ = pt1Var.q();
        mi2 mi2Var = pt1Var.s0;
        int[] iArr = pt1Var.C;
        int i23 = iMin;
        if (i23 == iQ && iMin2 == pt1Var.k()) {
            c = 1;
        } else {
            mi2Var.b = true;
            c = 1;
        }
        pt1Var.Y = 0;
        pt1Var.Z = 0;
        iArr[0] = this.f - i22;
        iArr[c] = this.k - i21;
        pt1Var.b0 = 0;
        pt1Var.c0 = 0;
        pt1Var.M(i18);
        pt1Var.O(i23);
        pt1Var.N(i4);
        pt1Var.L(iMin2);
        int i24 = this.d - i22;
        if (i24 < 0) {
            pt1Var.b0 = 0;
        } else {
            pt1Var.b0 = i24;
        }
        int i25 = this.e - i21;
        if (i25 < 0) {
            pt1Var.c0 = 0;
        } else {
            pt1Var.c0 = i25;
        }
        pt1Var.x0 = iMax5;
        pt1Var.y0 = iMax3;
        bp0 bp0Var = pt1Var.r0;
        pt1 pt1Var2 = (pt1) bp0Var.c;
        ArrayList arrayList = (ArrayList) bp0Var.a;
        et1 et1Var5 = pt1Var.u0;
        int size3 = pt1Var.q0.size();
        int iQ2 = pt1Var.q();
        int iK = pt1Var.k();
        boolean zO = sz8.o(i, 128);
        boolean z7 = zO || sz8.o(i, 64);
        if (z7) {
            int i26 = 0;
            while (true) {
                if (i26 < size3) {
                    boolean z8 = z7;
                    ot1 ot1Var = (ot1) pt1Var.q0.get(i26);
                    i5 = size3;
                    int[] iArr2 = ot1Var.p0;
                    int i27 = i26;
                    boolean z9 = (iArr2[0] == 3) && (iArr2[1] == 3) && ot1Var.W > 0.0f;
                    if ((ot1Var.x() && z9) || ((ot1Var.y() && z9) || (ot1Var instanceof ki3) || ot1Var.x() || ot1Var.y())) {
                        i6 = 1073741824;
                        z = false;
                    } else {
                        i26 = i27 + 1;
                        z7 = z8;
                        size3 = i5;
                    }
                } else {
                    z = z7;
                    i5 = size3;
                    i6 = 1073741824;
                }
            }
        } else {
            z = z7;
            i5 = size3;
            i6 = 1073741824;
        }
        boolean z10 = z & ((mode == i6 && mode2 == i6) || zO);
        if (z10) {
            int iMin3 = Math.min(iArr[0], i19);
            int iMin4 = Math.min(iArr[1], i20);
            int i28 = 1073741824;
            if (mode == 1073741824) {
                if (pt1Var.q() != iMin3) {
                    pt1Var.O(iMin3);
                    mi2Var.a = true;
                }
                i28 = 1073741824;
            }
            if (mode2 == i28 && pt1Var.k() != iMin4) {
                pt1Var.L(iMin4);
                mi2Var.a = true;
            }
            if (mode == i28 && mode2 == i28) {
                ArrayList<pr8> arrayList2 = (ArrayList) mi2Var.e;
                pt1 pt1Var3 = (pt1) mi2Var.c;
                if (mi2Var.a || mi2Var.b) {
                    for (ot1 ot1Var2 : pt1Var3.q0) {
                        ot1Var2.h();
                        ot1Var2.a = false;
                        ot1Var2.d.n();
                        ot1Var2.e.m();
                        z10 = z10;
                    }
                    z2 = z10;
                    pt1Var3.h();
                    i13 = 0;
                    pt1Var3.a = false;
                    pt1Var3.d.n();
                    pt1Var3.e.m();
                    mi2Var.b = false;
                } else {
                    z2 = z10;
                    i13 = 0;
                }
                mi2Var.c((pt1) mi2Var.d);
                pt1Var3.Y = i13;
                int[] iArr3 = pt1Var3.p0;
                pt1Var3.Z = i13;
                int iJ = pt1Var3.j(i13);
                int iJ2 = pt1Var3.j(1);
                if (mi2Var.a) {
                    mi2Var.d();
                }
                int iR = pt1Var3.r();
                int iS = pt1Var3.s();
                et1Var = et1Var5;
                pt1Var3.d.h.d(iR);
                pt1Var3.e.h.d(iS);
                mi2Var.i();
                if (iJ == 2 || iJ2 == 2) {
                    if (zO) {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            if (!((pr8) it2.next()).k()) {
                                zO = false;
                                break;
                            }
                        }
                    }
                    if (zO && iJ == 2) {
                        pt1Var3.M(1);
                        pt1Var3.O(mi2Var.e(pt1Var3, 0));
                        pt1Var3.d.e.d(pt1Var3.q());
                    }
                    if (zO && iJ2 == 2) {
                        i14 = 1;
                        pt1Var3.N(1);
                        pt1Var3.L(mi2Var.e(pt1Var3, 1));
                        pt1Var3.e.e.d(pt1Var3.k());
                    }
                    i15 = iArr3[0];
                    if (i15 != i14 || i15 == 4) {
                        int iQ3 = pt1Var3.q() + iR;
                        pt1Var3.d.i.d(iQ3);
                        pt1Var3.d.e.d(iQ3 - iR);
                        mi2Var.i();
                        i16 = iArr3[1];
                        if (i16 != 1 || i16 == 4) {
                            int iK2 = pt1Var3.k() + iS;
                            pt1Var3.e.i.d(iK2);
                            pt1Var3.e.e.d(iK2 - iS);
                        }
                        mi2Var.i();
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    for (pr8 pr8Var2 : arrayList2) {
                        if (pr8Var2.b == pt1Var3 || pr8Var2.g) {
                            pr8Var2.e();
                        }
                    }
                    it = arrayList2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            zT = true;
                            break;
                        }
                        pr8Var = (pr8) it.next();
                        if (!z6 || pr8Var.b != pt1Var3) {
                            if (pr8Var.h.j || ((!pr8Var.i.j && !(pr8Var instanceof c24)) || (!pr8Var.e.j && !(pr8Var instanceof j31) && !(pr8Var instanceof c24)))) {
                                zT = false;
                                break;
                            }
                        }
                    }
                    pt1Var3.M(iJ);
                    pt1Var3.N(iJ2);
                    i7 = 2;
                    i12 = 1073741824;
                } else {
                    iS = iS;
                }
                i14 = 1;
                i15 = iArr3[0];
                if (i15 != i14) {
                    int iQ4 = pt1Var3.q() + iR;
                    pt1Var3.d.i.d(iQ4);
                    pt1Var3.d.e.d(iQ4 - iR);
                    mi2Var.i();
                    i16 = iArr3[1];
                    if (i16 != 1) {
                        int iK3 = pt1Var3.k() + iS;
                        pt1Var3.e.i.d(iK3);
                        pt1Var3.e.e.d(iK3 - iS);
                    } else {
                        int iK4 = pt1Var3.k() + iS;
                        pt1Var3.e.i.d(iK4);
                        pt1Var3.e.e.d(iK4 - iS);
                    }
                    mi2Var.i();
                    z6 = true;
                } else {
                    int iQ5 = pt1Var3.q() + iR;
                    pt1Var3.d.i.d(iQ5);
                    pt1Var3.d.e.d(iQ5 - iR);
                    mi2Var.i();
                    i16 = iArr3[1];
                    if (i16 != 1) {
                        int iK5 = pt1Var3.k() + iS;
                        pt1Var3.e.i.d(iK5);
                        pt1Var3.e.e.d(iK5 - iS);
                    } else {
                        int iK6 = pt1Var3.k() + iS;
                        pt1Var3.e.i.d(iK6);
                        pt1Var3.e.e.d(iK6 - iS);
                    }
                    mi2Var.i();
                    z6 = true;
                }
                while (r8.hasNext()) {
                    if (pr8Var2.b == pt1Var3) {
                    }
                    pr8Var2.e();
                }
                it = arrayList2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zT = true;
                        break;
                    }
                    pr8Var = (pr8) it.next();
                    if (!z6) {
                    }
                    if (pr8Var.h.j) {
                    }
                    zT = false;
                    break;
                }
                pt1Var3.M(iJ);
                pt1Var3.N(iJ2);
                i7 = 2;
                i12 = 1073741824;
            } else {
                z2 = z10;
                et1Var = et1Var5;
                pt1 pt1Var4 = (pt1) mi2Var.c;
                if (mi2Var.a) {
                    for (ot1 ot1Var3 : pt1Var4.q0) {
                        ot1Var3.h();
                        ot1Var3.a = false;
                        d64 d64Var2 = ot1Var3.d;
                        d64Var2.e.j = false;
                        d64Var2.g = false;
                        d64Var2.n();
                        dk8 dk8Var2 = ot1Var3.e;
                        dk8Var2.e.j = false;
                        dk8Var2.g = false;
                        dk8Var2.m();
                    }
                    i11 = 0;
                    pt1Var4.h();
                    pt1Var4.a = false;
                    d64 d64Var3 = pt1Var4.d;
                    d64Var3.e.j = false;
                    d64Var3.g = false;
                    d64Var3.n();
                    dk8 dk8Var3 = pt1Var4.e;
                    dk8Var3.e.j = false;
                    dk8Var3.g = false;
                    dk8Var3.m();
                    mi2Var.d();
                } else {
                    i11 = 0;
                }
                mi2Var.c((pt1) mi2Var.d);
                pt1Var4.Y = i11;
                pt1Var4.Z = i11;
                pt1Var4.d.h.d(i11);
                pt1Var4.e.h.d(i11);
                i12 = 1073741824;
                if (mode == 1073741824) {
                    zT = pt1Var.T(i11, zO);
                    i7 = 1;
                } else {
                    i7 = 0;
                    zT = true;
                }
                if (mode2 == 1073741824) {
                    zT &= pt1Var.T(1, zO);
                    i7++;
                }
            }
            if (zT) {
                pt1Var.P(mode == i12, mode2 == i12);
            }
        } else {
            z2 = z10;
            et1Var = et1Var5;
            i7 = 0;
            zT = false;
        }
        if (zT && i7 == 2) {
            return;
        }
        int i29 = pt1Var.D0;
        if (i5 > 0) {
            int size4 = pt1Var.q0.size();
            boolean zW = pt1Var.W(64);
            et1 et1Var6 = pt1Var.u0;
            int i30 = 0;
            while (i30 < size4) {
                ot1 ot1Var4 = (ot1) pt1Var.q0.get(i30);
                if ((ot1Var4 instanceof b24) || (ot1Var4 instanceof al0) || ot1Var4.F || (zW && (d64Var = ot1Var4.d) != null && (dk8Var = ot1Var4.e) != null && d64Var.e.j && dk8Var.e.j)) {
                    i10 = size4;
                } else {
                    int iJ3 = ot1Var4.j(0);
                    int iJ4 = ot1Var4.j(1);
                    i10 = size4;
                    boolean z11 = iJ3 == 3 && ot1Var4.r != 1 && iJ4 == 3 && ot1Var4.s != 1;
                    if (!z11 && pt1Var.W(1) && !(ot1Var4 instanceof ki3)) {
                        if (iJ3 == 3 && ot1Var4.r == 0 && iJ4 != 3 && !ot1Var4.x()) {
                            z11 = true;
                        }
                        if (iJ4 == 3 && ot1Var4.s == 0 && iJ3 != 3 && !ot1Var4.x()) {
                            z11 = true;
                        }
                        if ((iJ3 == 3 || iJ4 == 3) && ot1Var4.W > 0.0f) {
                            z11 = true;
                        }
                    }
                    if (!z11) {
                        bp0Var.b(0, et1Var6, ot1Var4);
                    }
                }
                i30++;
                size4 = i10;
            }
            ConstraintLayout constraintLayout = et1Var6.a;
            int childCount2 = constraintLayout.getChildCount();
            ArrayList arrayList3 = constraintLayout.b;
            for (int i31 = 0; i31 < childCount2; i31++) {
                constraintLayout.getChildAt(i31);
            }
            int size5 = arrayList3.size();
            if (size5 > 0) {
                for (int i32 = 0; i32 < size5; i32++) {
                    ((bt1) arrayList3.get(i32)).getClass();
                }
            }
        }
        bp0Var.f(pt1Var);
        int size6 = arrayList.size();
        if (i5 > 0) {
            bp0Var.d(pt1Var, 0, iQ2, iK);
        }
        if (size6 > 0) {
            int[] iArr4 = pt1Var.p0;
            boolean z12 = iArr4[0] == 2;
            boolean z13 = iArr4[1] == 2;
            int iMax7 = Math.max(pt1Var.q(), pt1Var2.b0);
            int iMax8 = Math.max(pt1Var.k(), pt1Var2.c0);
            int i33 = 0;
            boolean z14 = false;
            while (i33 < size6) {
                ot1 ot1Var5 = (ot1) arrayList.get(i33);
                if (ot1Var5 instanceof ki3) {
                    int iQ6 = ot1Var5.q();
                    int iK7 = ot1Var5.k();
                    z3 = z13;
                    z4 = z12;
                    et1Var3 = et1Var;
                    boolean zB2 = z14 | bp0Var.b(1, et1Var3, ot1Var5);
                    int iQ7 = ot1Var5.q();
                    int iK8 = ot1Var5.k();
                    if (iQ7 != iQ6) {
                        ot1Var5.O(iQ7);
                        if (z4 && ot1Var5.r() + ot1Var5.U > iMax7) {
                            iMax7 = Math.max(iMax7, ot1Var5.i(4).e() + ot1Var5.r() + ot1Var5.U);
                        }
                        z5 = true;
                    } else {
                        z5 = zB2;
                    }
                    if (iK8 != iK7) {
                        ot1Var5.L(iK8);
                        if (z3 && ot1Var5.s() + ot1Var5.V > iMax8) {
                            iMax8 = Math.max(iMax8, ot1Var5.i(5).e() + ot1Var5.s() + ot1Var5.V);
                        }
                        z5 = true;
                    }
                    z14 = ((ki3) ot1Var5).y0 | z5;
                } else {
                    z3 = z13;
                    z4 = z12;
                    et1Var3 = et1Var;
                }
                i33++;
                et1Var = et1Var3;
                z12 = z4;
                z13 = z3;
            }
            boolean z15 = z13;
            boolean z16 = z12;
            int i34 = 0;
            while (true) {
                et1 et1Var7 = et1Var;
                if (i34 >= 2) {
                    break;
                }
                int i35 = 0;
                while (i35 < size6) {
                    ot1 ot1Var6 = (ot1) arrayList.get(i35);
                    if (((ot1Var6 instanceof d44) && !(ot1Var6 instanceof ki3)) || (ot1Var6 instanceof b24) || ot1Var6.g0 == 8 || ((z2 && ot1Var6.d.e.j && ot1Var6.e.e.j) || (ot1Var6 instanceof ki3))) {
                        i8 = size6;
                        et1Var2 = et1Var7;
                        i9 = i35;
                        zB = z14;
                    } else {
                        int iQ8 = ot1Var6.q();
                        int iK9 = ot1Var6.k();
                        i8 = size6;
                        int i36 = ot1Var6.a0;
                        i9 = i35;
                        zB = bp0Var.b(i34 == 1 ? 2 : 1, et1Var7, ot1Var6) | z14;
                        int iQ9 = ot1Var6.q();
                        et1Var2 = et1Var7;
                        int iK10 = ot1Var6.k();
                        if (iQ9 != iQ8) {
                            ot1Var6.O(iQ9);
                            if (z16 && ot1Var6.r() + ot1Var6.U > iMax7) {
                                iMax7 = Math.max(iMax7, ot1Var6.i(4).e() + ot1Var6.r() + ot1Var6.U);
                            }
                            zB = true;
                        }
                        if (iK10 != iK9) {
                            ot1Var6.L(iK10);
                            if (z15 && ot1Var6.s() + ot1Var6.V > iMax8) {
                                iMax8 = Math.max(iMax8, ot1Var6.i(5).e() + ot1Var6.s() + ot1Var6.V);
                            }
                            zB = true;
                        }
                        if (ot1Var6.E && i36 != ot1Var6.a0) {
                            zB = true;
                        }
                    }
                    z14 = zB;
                    et1Var7 = et1Var2;
                    i35 = i9 + 1;
                    size6 = i8;
                }
                int i37 = size6;
                et1Var = et1Var7;
                if (!z14) {
                    break;
                }
                i34++;
                bp0Var.d(pt1Var, i34, iQ2, iK);
                size6 = i37;
                z14 = false;
            }
        }
        pt1Var.D0 = i29;
        bv4.q = pt1Var.W(512);
    }

    public final void m(ot1 ot1Var, dt1 dt1Var, SparseArray sparseArray, int i, int i2) {
        View view = (View) this.a.get(i);
        ot1 ot1Var2 = (ot1) sparseArray.get(i);
        if (ot1Var2 == null || view == null || !(view.getLayoutParams() instanceof dt1)) {
            return;
        }
        dt1Var.c0 = true;
        if (i2 == 6) {
            dt1 dt1Var2 = (dt1) view.getLayoutParams();
            dt1Var2.c0 = true;
            dt1Var2.p0.E = true;
        }
        ot1Var.i(6).b(ot1Var2.i(i2), dt1Var.D, dt1Var.C, true);
        ot1Var.E = true;
        ot1Var.i(3).j();
        ot1Var.i(5).j();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            dt1 dt1Var = (dt1) childAt.getLayoutParams();
            ot1 ot1Var = dt1Var.p0;
            if (childAt.getVisibility() != 8 || dt1Var.d0 || dt1Var.e0 || zIsInEditMode) {
                int iR = ot1Var.r();
                int iS = ot1Var.s();
                childAt.layout(iR, iS, ot1Var.q() + iR, ot1Var.k() + iS);
            }
        }
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((bt1) arrayList.get(i6)).j();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:125:0x0229  */
    /* JADX WARN: Code duplicated, block: B:164:0x0334  */
    /* JADX WARN: Code duplicated, block: B:166:0x033e  */
    /* JADX WARN: Code duplicated, block: B:169:0x034c  */
    /* JADX WARN: Code duplicated, block: B:176:0x036a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0374  */
    /* JADX WARN: Code duplicated, block: B:179:0x0384  */
    /* JADX WARN: Code duplicated, block: B:181:0x038c  */
    /* JADX WARN: Code duplicated, block: B:186:0x03af  */
    /* JADX WARN: Code duplicated, block: B:189:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:191:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:192:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:194:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:201:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:203:0x0401  */
    /* JADX WARN: Code duplicated, block: B:205:0x0405  */
    /* JADX WARN: Code duplicated, block: B:206:0x040e  */
    /* JADX WARN: Code duplicated, block: B:208:0x0418  */
    /* JADX WARN: Code duplicated, block: B:211:0x041f  */
    /* JADX WARN: Code duplicated, block: B:214:0x0427  */
    /* JADX WARN: Code duplicated, block: B:287:0x054c  */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        ot1 ot1Var;
        int i4;
        ot1 ot1Var2;
        int i5;
        int i6;
        int i7;
        ot1 ot1Var3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        ot1 ot1Var4;
        int i14;
        int i15;
        int i16;
        ot1 ot1Var5;
        dt1 dt1Var;
        int i17;
        int i18;
        int i19;
        ot1 ot1Var6;
        int i20;
        float f;
        ot1 ot1Var7;
        ot1 ot1Var8;
        int i21;
        ot1 ot1Var9;
        int i22;
        int i23;
        int i24;
        int i25;
        float fAbs;
        int i26;
        byte b;
        SparseArray sparseArray;
        ArrayList arrayList;
        String str;
        int iG;
        int i27;
        ot1 ot1Var10;
        ConstraintLayout constraintLayout = this;
        boolean z3 = constraintLayout.n;
        constraintLayout.n = z3;
        int i28 = 1;
        int i29 = 0;
        if (!z3) {
            int childCount = constraintLayout.getChildCount();
            for (int i30 = 0; i30 < childCount; i30++) {
                if (constraintLayout.getChildAt(i30).isLayoutRequested()) {
                    constraintLayout.n = true;
                    break;
                }
            }
        }
        boolean z4 = (constraintLayout.getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == constraintLayout.getLayoutDirection();
        pt1 pt1Var = constraintLayout.c;
        pt1Var.v0 = z4;
        if (constraintLayout.n) {
            constraintLayout.n = false;
            int childCount2 = constraintLayout.getChildCount();
            int i31 = 0;
            while (true) {
                if (i31 >= childCount2) {
                    z = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i31).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i31++;
                }
            }
            if (z) {
                boolean zIsInEditMode = constraintLayout.isInEditMode();
                int childCount3 = constraintLayout.getChildCount();
                for (int i32 = 0; i32 < childCount3; i32++) {
                    ot1 ot1VarI = constraintLayout.i(constraintLayout.getChildAt(i32));
                    if (ot1VarI != null) {
                        ot1VarI.C();
                    }
                }
                SparseArray sparseArray2 = constraintLayout.a;
                if (zIsInEditMode) {
                    int i33 = 0;
                    while (i33 < childCount3) {
                        View childAt = constraintLayout.getChildAt(i33);
                        try {
                            String resourceName = constraintLayout.getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                i27 = i28;
                                try {
                                    if (constraintLayout.x == null) {
                                        constraintLayout.x = new HashMap();
                                    }
                                    int iIndexOf = resourceName.indexOf("/");
                                    constraintLayout.x.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                                } catch (Resources.NotFoundException unused) {
                                }
                            } else {
                                i27 = i28;
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) sparseArray2.get(id);
                                if (viewFindViewById == null && (viewFindViewById = constraintLayout.findViewById(id)) != null && viewFindViewById != constraintLayout && viewFindViewById.getParent() == constraintLayout) {
                                    constraintLayout.onViewAdded(viewFindViewById);
                                }
                                ot1Var10 = viewFindViewById == constraintLayout ? pt1Var : viewFindViewById == null ? null : ((dt1) viewFindViewById.getLayoutParams()).p0;
                            }
                            ot1Var10.h0 = resourceName;
                        } catch (Resources.NotFoundException unused2) {
                            i27 = i28;
                        }
                        i33++;
                        i28 = i27;
                    }
                }
                int i34 = i28;
                if (constraintLayout.t != -1) {
                    for (int i35 = 0; i35 < childCount3; i35++) {
                        constraintLayout.getChildAt(i35).getId();
                    }
                }
                nt1 nt1Var = constraintLayout.q;
                if (nt1Var != null) {
                    nt1Var.a(constraintLayout);
                }
                pt1Var.q0.clear();
                ArrayList arrayList2 = constraintLayout.b;
                int size = arrayList2.size();
                if (size > 0) {
                    int i36 = 0;
                    while (i36 < size) {
                        bt1 bt1Var = (bt1) arrayList2.get(i36);
                        HashMap map = bt1Var.k;
                        if (bt1Var.isInEditMode()) {
                            bt1Var.setIds(bt1Var.e);
                        }
                        d44 d44Var = bt1Var.d;
                        if (d44Var == null) {
                            sparseArray = sparseArray2;
                            arrayList = arrayList2;
                        } else {
                            d44Var.r0 = i29;
                            Arrays.fill(d44Var.q0, (Object) null);
                            int i37 = i29;
                            while (i37 < bt1Var.b) {
                                int i38 = bt1Var.a[i37];
                                View view = (View) sparseArray2.get(i38);
                                if (view == null && (iG = bt1Var.g(constraintLayout, (str = (String) map.get(Integer.valueOf(i38))))) != 0) {
                                    bt1Var.a[i37] = iG;
                                    map.put(Integer.valueOf(iG), str);
                                    view = (View) sparseArray2.get(iG);
                                }
                                View view2 = view;
                                if (view2 != null) {
                                    d44 d44Var2 = bt1Var.d;
                                    ot1 ot1VarI2 = constraintLayout.i(view2);
                                    d44Var2.getClass();
                                    if (ot1VarI2 != d44Var2 && ot1VarI2 != null) {
                                        int i39 = d44Var2.r0 + 1;
                                        ot1[] ot1VarArr = d44Var2.q0;
                                        if (i39 > ot1VarArr.length) {
                                            d44Var2.q0 = (ot1[]) Arrays.copyOf(ot1VarArr, ot1VarArr.length * 2);
                                        }
                                        ot1[] ot1VarArr2 = d44Var2.q0;
                                        int i40 = d44Var2.r0;
                                        ot1VarArr2[i40] = ot1VarI2;
                                        d44Var2.r0 = i40 + 1;
                                    }
                                }
                                i37++;
                                sparseArray2 = sparseArray2;
                                arrayList2 = arrayList2;
                            }
                            sparseArray = sparseArray2;
                            arrayList = arrayList2;
                            bt1Var.d.S();
                        }
                        i36++;
                        sparseArray2 = sparseArray;
                        arrayList2 = arrayList;
                        i29 = 0;
                    }
                }
                int i41 = 2;
                for (int i42 = 0; i42 < childCount3; i42++) {
                    constraintLayout.getChildAt(i42);
                }
                SparseArray sparseArray3 = constraintLayout.y;
                sparseArray3.clear();
                sparseArray3.put(0, pt1Var);
                sparseArray3.put(constraintLayout.getId(), pt1Var);
                for (int i43 = 0; i43 < childCount3; i43++) {
                    View childAt2 = constraintLayout.getChildAt(i43);
                    sparseArray3.put(childAt2.getId(), constraintLayout.i(childAt2));
                }
                int i44 = 0;
                while (i44 < childCount3) {
                    View childAt3 = constraintLayout.getChildAt(i44);
                    ot1 ot1VarI3 = constraintLayout.i(childAt3);
                    if (ot1VarI3 == null) {
                        i3 = i44;
                        z2 = z;
                        i23 = i41;
                    } else {
                        dt1 dt1Var2 = (dt1) childAt3.getLayoutParams();
                        pt1Var.q0.add(ot1VarI3);
                        ot1 ot1Var11 = ot1VarI3.T;
                        if (ot1Var11 != null) {
                            ((pt1) ot1Var11).q0.remove(ot1VarI3);
                            ot1VarI3.C();
                        }
                        ot1VarI3.T = pt1Var;
                        dt1Var2.a();
                        ot1VarI3.g0 = childAt3.getVisibility();
                        ot1VarI3.f0 = childAt3;
                        if (childAt3 instanceof bt1) {
                            ((bt1) childAt3).i(ot1VarI3, pt1Var.v0);
                        }
                        if (dt1Var2.d0) {
                            b24 b24Var = (b24) ot1VarI3;
                            int i45 = dt1Var2.m0;
                            int i46 = dt1Var2.n0;
                            float f2 = dt1Var2.o0;
                            if (f2 == -1.0f) {
                                b = -1;
                                if (i45 != -1) {
                                    if (i45 > -1) {
                                        b24Var.q0 = -1.0f;
                                        b24Var.r0 = i45;
                                        b24Var.s0 = -1;
                                    }
                                } else if (i46 != -1 && i46 > -1) {
                                    b24Var.q0 = -1.0f;
                                    b24Var.r0 = -1;
                                    b24Var.s0 = i46;
                                    i3 = i44;
                                    z2 = z;
                                    i23 = i41;
                                }
                                i3 = i44;
                                z2 = z;
                                i23 = i41;
                            } else if (f2 > -1.0f) {
                                b24Var.q0 = f2;
                                b = -1;
                                b24Var.r0 = -1;
                                b24Var.s0 = -1;
                                i3 = i44;
                                z2 = z;
                                i23 = i41;
                            } else {
                                i3 = i44;
                                z2 = z;
                                i23 = i41;
                            }
                        } else {
                            int i47 = dt1Var2.f0;
                            int i48 = dt1Var2.g0;
                            int i49 = dt1Var2.h0;
                            int i50 = dt1Var2.i0;
                            int i51 = dt1Var2.j0;
                            int i52 = dt1Var2.k0;
                            i3 = i44;
                            float f3 = dt1Var2.l0;
                            int i53 = dt1Var2.p;
                            z2 = z;
                            if (i53 != -1) {
                                ot1 ot1Var12 = (ot1) sparseArray3.get(i53);
                                if (ot1Var12 != null) {
                                    float f4 = dt1Var2.r;
                                    ot1VarI3.v(7, 7, dt1Var2.q, 0, ot1Var12);
                                    ot1VarI3.D = f4;
                                }
                                constraintLayout = this;
                                ot1Var6 = ot1VarI3;
                                dt1Var = dt1Var2;
                                i8 = 4;
                                i7 = 2;
                            } else {
                                if (i47 != -1) {
                                    ot1 ot1Var13 = (ot1) sparseArray3.get(i47);
                                    if (ot1Var13 != null) {
                                        ot1Var = ot1VarI3;
                                        i4 = 2;
                                        ot1Var.v(2, 2, ((ViewGroup.MarginLayoutParams) dt1Var2).leftMargin, i51, ot1Var13);
                                    } else {
                                        ot1Var = ot1VarI3;
                                        i4 = 2;
                                    }
                                } else {
                                    ot1Var = ot1VarI3;
                                    i4 = 2;
                                    if (i48 != -1 && (ot1Var2 = (ot1) sparseArray3.get(i48)) != null) {
                                        ot1Var.v(2, 4, ((ViewGroup.MarginLayoutParams) dt1Var2).leftMargin, i51, ot1Var2);
                                        i5 = 2;
                                        i6 = 4;
                                    }
                                    if (i49 != -1) {
                                        ot1Var9 = (ot1) sparseArray3.get(i49);
                                        if (ot1Var9 != null) {
                                            ot1Var.v(i6, i5, ((ViewGroup.MarginLayoutParams) dt1Var2).rightMargin, i52, ot1Var9);
                                        }
                                        i7 = i5;
                                    } else {
                                        i7 = i5;
                                        if (i50 != -1 && (ot1Var3 = (ot1) sparseArray3.get(i50)) != null) {
                                            ot1Var.v(i6, i6, ((ViewGroup.MarginLayoutParams) dt1Var2).rightMargin, i52, ot1Var3);
                                        }
                                    }
                                    i8 = i6;
                                    i9 = dt1Var2.i;
                                    if (i9 != -1) {
                                        ot1Var8 = (ot1) sparseArray3.get(i9);
                                        if (ot1Var8 != null) {
                                            i21 = 3;
                                            ot1Var.v(3, 3, ((ViewGroup.MarginLayoutParams) dt1Var2).topMargin, dt1Var2.x, ot1Var8);
                                        } else {
                                            i21 = 3;
                                        }
                                        i12 = i21;
                                        i13 = 5;
                                        i11 = -1;
                                    } else {
                                        i10 = dt1Var2.j;
                                        i11 = -1;
                                        if (i10 != -1 || (ot1Var4 = (ot1) sparseArray3.get(i10)) == null) {
                                            i12 = 3;
                                            i13 = 5;
                                        } else {
                                            ot1Var.v(3, 5, ((ViewGroup.MarginLayoutParams) dt1Var2).topMargin, dt1Var2.x, ot1Var4);
                                            i12 = 3;
                                            i13 = 5;
                                        }
                                    }
                                    i14 = dt1Var2.k;
                                    if (i14 != i11) {
                                        ot1Var7 = (ot1) sparseArray3.get(i14);
                                        if (ot1Var7 != null) {
                                            int i54 = i12;
                                            ot1Var.v(i13, i54, ((ViewGroup.MarginLayoutParams) dt1Var2).bottomMargin, dt1Var2.z, ot1Var7);
                                            i15 = i54;
                                        } else {
                                            i15 = i12;
                                        }
                                    } else {
                                        i15 = i12;
                                        i16 = dt1Var2.l;
                                        if (i16 != i11 && (ot1Var5 = (ot1) sparseArray3.get(i16)) != null) {
                                            ot1Var.v(i13, i13, ((ViewGroup.MarginLayoutParams) dt1Var2).bottomMargin, dt1Var2.z, ot1Var5);
                                        }
                                    }
                                    dt1Var = dt1Var2;
                                    i17 = dt1Var.m;
                                    if (i17 != -1) {
                                        constraintLayout = this;
                                        ot1Var6 = ot1Var;
                                        constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i17, 6);
                                    } else {
                                        i18 = dt1Var.n;
                                        if (i18 != -1) {
                                            constraintLayout = this;
                                            ot1Var6 = ot1Var;
                                            constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i18, i15);
                                        } else {
                                            i19 = dt1Var.o;
                                            constraintLayout = this;
                                            ot1Var6 = ot1Var;
                                            i20 = i13;
                                            if (i19 != -1) {
                                                constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i19, i20);
                                            }
                                        }
                                        if (f3 >= 0.0f) {
                                            ot1Var6.d0 = f3;
                                        }
                                        f = dt1Var.F;
                                        if (f >= 0.0f) {
                                            ot1Var6.e0 = f;
                                        }
                                    }
                                    if (f3 >= 0.0f) {
                                        ot1Var6.d0 = f3;
                                    }
                                    f = dt1Var.F;
                                    if (f >= 0.0f) {
                                        ot1Var6.e0 = f;
                                    }
                                }
                                i5 = i4;
                                i6 = 4;
                                if (i49 != -1) {
                                    ot1Var9 = (ot1) sparseArray3.get(i49);
                                    if (ot1Var9 != null) {
                                        ot1Var.v(i6, i5, ((ViewGroup.MarginLayoutParams) dt1Var2).rightMargin, i52, ot1Var9);
                                    }
                                    i7 = i5;
                                } else {
                                    i7 = i5;
                                    if (i50 != -1) {
                                        ot1Var.v(i6, i6, ((ViewGroup.MarginLayoutParams) dt1Var2).rightMargin, i52, ot1Var3);
                                    }
                                }
                                i8 = i6;
                                i9 = dt1Var2.i;
                                if (i9 != -1) {
                                    ot1Var8 = (ot1) sparseArray3.get(i9);
                                    if (ot1Var8 != null) {
                                        i21 = 3;
                                        ot1Var.v(3, 3, ((ViewGroup.MarginLayoutParams) dt1Var2).topMargin, dt1Var2.x, ot1Var8);
                                    } else {
                                        i21 = 3;
                                    }
                                    i12 = i21;
                                    i13 = 5;
                                    i11 = -1;
                                } else {
                                    i10 = dt1Var2.j;
                                    i11 = -1;
                                    if (i10 != -1) {
                                        i12 = 3;
                                        i13 = 5;
                                    } else {
                                        i12 = 3;
                                        i13 = 5;
                                    }
                                }
                                i14 = dt1Var2.k;
                                if (i14 != i11) {
                                    ot1Var7 = (ot1) sparseArray3.get(i14);
                                    if (ot1Var7 != null) {
                                        int i55 = i12;
                                        ot1Var.v(i13, i55, ((ViewGroup.MarginLayoutParams) dt1Var2).bottomMargin, dt1Var2.z, ot1Var7);
                                        i15 = i55;
                                    } else {
                                        i15 = i12;
                                    }
                                } else {
                                    i15 = i12;
                                    i16 = dt1Var2.l;
                                    if (i16 != i11) {
                                        ot1Var.v(i13, i13, ((ViewGroup.MarginLayoutParams) dt1Var2).bottomMargin, dt1Var2.z, ot1Var5);
                                    }
                                }
                                dt1Var = dt1Var2;
                                i17 = dt1Var.m;
                                if (i17 != -1) {
                                    constraintLayout = this;
                                    ot1Var6 = ot1Var;
                                    constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i17, 6);
                                } else {
                                    i18 = dt1Var.n;
                                    if (i18 != -1) {
                                        constraintLayout = this;
                                        ot1Var6 = ot1Var;
                                        constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i18, i15);
                                    } else {
                                        i19 = dt1Var.o;
                                        constraintLayout = this;
                                        ot1Var6 = ot1Var;
                                        i20 = i13;
                                        if (i19 != -1) {
                                            constraintLayout.m(ot1Var6, dt1Var, sparseArray3, i19, i20);
                                        }
                                    }
                                    if (f3 >= 0.0f) {
                                        ot1Var6.d0 = f3;
                                    }
                                    f = dt1Var.F;
                                    if (f >= 0.0f) {
                                        ot1Var6.e0 = f;
                                    }
                                }
                                if (f3 >= 0.0f) {
                                    ot1Var6.d0 = f3;
                                }
                                f = dt1Var.F;
                                if (f >= 0.0f) {
                                    ot1Var6.e0 = f;
                                }
                            }
                            if (zIsInEditMode && ((i26 = dt1Var.T) != -1 || dt1Var.U != -1)) {
                                int i56 = dt1Var.U;
                                ot1Var6.Y = i26;
                                ot1Var6.Z = i56;
                            }
                            if (dt1Var.a0) {
                                ot1Var6.M(i34);
                                ot1Var6.O(((ViewGroup.MarginLayoutParams) dt1Var).width);
                                if (((ViewGroup.MarginLayoutParams) dt1Var).width == -2) {
                                    ot1Var6.M(i41);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) dt1Var).width == -1) {
                                if (dt1Var.W) {
                                    ot1Var6.M(3);
                                } else {
                                    ot1Var6.M(4);
                                }
                                ot1Var6.i(i7).g = ((ViewGroup.MarginLayoutParams) dt1Var).leftMargin;
                                ot1Var6.i(i8).g = ((ViewGroup.MarginLayoutParams) dt1Var).rightMargin;
                            } else {
                                ot1Var6.M(3);
                                ot1Var6.O(0);
                            }
                            if (dt1Var.b0) {
                                i22 = -1;
                                ot1Var6.N(1);
                                ot1Var6.L(((ViewGroup.MarginLayoutParams) dt1Var).height);
                                if (((ViewGroup.MarginLayoutParams) dt1Var).height == -2) {
                                    ot1Var6.N(2);
                                }
                            } else {
                                i22 = -1;
                                if (((ViewGroup.MarginLayoutParams) dt1Var).height == -1) {
                                    if (dt1Var.X) {
                                        ot1Var6.N(3);
                                    } else {
                                        ot1Var6.N(4);
                                    }
                                    ot1Var6.i(3).g = ((ViewGroup.MarginLayoutParams) dt1Var).topMargin;
                                    ot1Var6.i(5).g = ((ViewGroup.MarginLayoutParams) dt1Var).bottomMargin;
                                } else {
                                    ot1Var6.N(3);
                                    ot1Var6.L(0);
                                }
                            }
                            String str2 = dt1Var.G;
                            if (str2 == null || str2.length() == 0) {
                                ot1Var6.W = 0.0f;
                            } else {
                                int length = str2.length();
                                int iIndexOf3 = str2.indexOf(44);
                                if (iIndexOf3 <= 0 || iIndexOf3 >= length - 1) {
                                    i24 = i22;
                                    i25 = 0;
                                } else {
                                    String strSubstring = str2.substring(0, iIndexOf3);
                                    i24 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : i22;
                                    i25 = iIndexOf3 + 1;
                                }
                                int iIndexOf4 = str2.indexOf(58);
                                if (iIndexOf4 < 0 || iIndexOf4 >= length - 1) {
                                    String strSubstring2 = str2.substring(i25);
                                    if (strSubstring2.length() > 0) {
                                        fAbs = Float.parseFloat(strSubstring2);
                                    } else {
                                        fAbs = 0.0f;
                                    }
                                } else {
                                    String strSubstring3 = str2.substring(i25, iIndexOf4);
                                    String strSubstring4 = str2.substring(iIndexOf4 + 1);
                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                        fAbs = 0.0f;
                                    } else {
                                        try {
                                            float f5 = Float.parseFloat(strSubstring3);
                                            float f6 = Float.parseFloat(strSubstring4);
                                            if (f5 <= 0.0f || f6 <= 0.0f) {
                                                fAbs = 0.0f;
                                            } else {
                                                fAbs = i24 == 1 ? Math.abs(f6 / f5) : Math.abs(f5 / f6);
                                            }
                                        } catch (NumberFormatException unused3) {
                                        }
                                    }
                                }
                                if (fAbs > 0.0f) {
                                    ot1Var6.W = fAbs;
                                    ot1Var6.X = i24;
                                }
                            }
                            float f7 = dt1Var.H;
                            float[] fArr = ot1Var6.k0;
                            fArr[0] = f7;
                            i34 = 1;
                            fArr[1] = dt1Var.I;
                            ot1Var6.i0 = dt1Var.J;
                            ot1Var6.j0 = dt1Var.K;
                            int i57 = dt1Var.Z;
                            if (i57 >= 0 && i57 <= 3) {
                                ot1Var6.q = i57;
                            }
                            int i58 = dt1Var.L;
                            int i59 = dt1Var.N;
                            int i60 = dt1Var.P;
                            float f8 = dt1Var.R;
                            ot1Var6.r = i58;
                            ot1Var6.u = i59;
                            if (i60 == Integer.MAX_VALUE) {
                                i60 = 0;
                            }
                            ot1Var6.v = i60;
                            ot1Var6.w = f8;
                            if (f8 > 0.0f && f8 < 1.0f && i58 == 0) {
                                ot1Var6.r = 2;
                            }
                            int i61 = dt1Var.M;
                            int i62 = dt1Var.O;
                            int i63 = dt1Var.Q;
                            float f9 = dt1Var.S;
                            ot1Var6.s = i61;
                            ot1Var6.x = i62;
                            if (i63 == Integer.MAX_VALUE) {
                                i63 = 0;
                            }
                            ot1Var6.y = i63;
                            ot1Var6.z = f9;
                            if (f9 <= 0.0f || f9 >= 1.0f || i61 != 0) {
                                i23 = 2;
                            } else {
                                i23 = 2;
                                ot1Var6.s = 2;
                            }
                        }
                    }
                    i44 = i3 + 1;
                    i41 = i23;
                    z = z2;
                }
            }
            if (z) {
                pt1Var.r0.f(pt1Var);
            }
        }
        pt1Var.w0.getClass();
        constraintLayout.l(pt1Var, constraintLayout.p, i, i2);
        int iQ = pt1Var.q();
        int iK = pt1Var.k();
        boolean z5 = pt1Var.E0;
        boolean z6 = pt1Var.F0;
        et1 et1Var = constraintLayout.G;
        int i64 = et1Var.e;
        int iResolveSizeAndState = View.resolveSizeAndState(iQ + et1Var.d, i, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(iK + i64, i2, 0) & 16777215;
        int iMin = Math.min(constraintLayout.f, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(constraintLayout.k, iResolveSizeAndState2);
        if (z5) {
            iMin |= 16777216;
        }
        if (z6) {
            iMin2 |= 16777216;
        }
        constraintLayout.setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        ot1 ot1VarI = i(view);
        if ((view instanceof Guideline) && !(ot1VarI instanceof b24)) {
            dt1 dt1Var = (dt1) view.getLayoutParams();
            b24 b24Var = new b24();
            dt1Var.p0 = b24Var;
            dt1Var.d0 = true;
            b24Var.S(dt1Var.V);
        }
        if (view instanceof bt1) {
            bt1 bt1Var = (bt1) view;
            bt1Var.k();
            ((dt1) view.getLayoutParams()).e0 = true;
            ArrayList arrayList = this.b;
            if (!arrayList.contains(bt1Var)) {
                arrayList.add(bt1Var);
            }
        }
        this.a.put(view.getId(), view);
        this.n = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.a.remove(view.getId());
        ot1 ot1VarI = i(view);
        this.c.q0.remove(ot1VarI);
        ot1VarI.C();
        this.b.remove(view);
        this.n = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.n = true;
        super.requestLayout();
    }

    public void setConstraintSet(nt1 nt1Var) {
        this.q = nt1Var;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.a;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f) {
            return;
        }
        this.f = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.e) {
            return;
        }
        this.e = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.d) {
            return;
        }
        this.d = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(qt1 qt1Var) {
        ib ibVar = this.r;
        if (ibVar != null) {
            ibVar.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        this.p = i;
        pt1 pt1Var = this.c;
        pt1Var.D0 = i;
        bv4.q = pt1Var.W(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new pt1();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.n = true;
        this.p = 257;
        this.q = null;
        this.r = null;
        this.t = -1;
        this.x = new HashMap();
        this.y = new SparseArray();
        this.G = new et1(this, this);
        j(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new pt1();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.n = true;
        this.p = 257;
        this.q = null;
        this.r = null;
        this.t = -1;
        this.x = new HashMap();
        this.y = new SparseArray();
        this.G = new et1(this, this);
        j(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new pt1();
        this.d = 0;
        this.e = 0;
        this.f = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.n = true;
        this.p = 257;
        this.q = null;
        this.r = null;
        this.t = -1;
        this.x = new HashMap();
        this.y = new SparseArray();
        this.G = new et1(this, this);
        j(attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        dt1 dt1Var = new dt1(layoutParams);
        dt1Var.a = -1;
        dt1Var.b = -1;
        dt1Var.c = -1.0f;
        dt1Var.d = true;
        dt1Var.e = -1;
        dt1Var.f = -1;
        dt1Var.g = -1;
        dt1Var.h = -1;
        dt1Var.i = -1;
        dt1Var.j = -1;
        dt1Var.k = -1;
        dt1Var.l = -1;
        dt1Var.m = -1;
        dt1Var.n = -1;
        dt1Var.o = -1;
        dt1Var.p = -1;
        dt1Var.q = 0;
        dt1Var.r = 0.0f;
        dt1Var.s = -1;
        dt1Var.t = -1;
        dt1Var.u = -1;
        dt1Var.v = -1;
        dt1Var.w = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.x = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.z = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.A = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.B = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.C = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.D = 0;
        dt1Var.E = 0.5f;
        dt1Var.F = 0.5f;
        dt1Var.G = null;
        dt1Var.H = -1.0f;
        dt1Var.I = -1.0f;
        dt1Var.J = 0;
        dt1Var.K = 0;
        dt1Var.L = 0;
        dt1Var.M = 0;
        dt1Var.N = 0;
        dt1Var.O = 0;
        dt1Var.P = 0;
        dt1Var.Q = 0;
        dt1Var.R = 1.0f;
        dt1Var.S = 1.0f;
        dt1Var.T = -1;
        dt1Var.U = -1;
        dt1Var.V = -1;
        dt1Var.W = false;
        dt1Var.X = false;
        dt1Var.Y = null;
        dt1Var.Z = 0;
        dt1Var.a0 = true;
        dt1Var.b0 = true;
        dt1Var.c0 = false;
        dt1Var.d0 = false;
        dt1Var.e0 = false;
        dt1Var.f0 = -1;
        dt1Var.g0 = -1;
        dt1Var.h0 = -1;
        dt1Var.i0 = -1;
        dt1Var.j0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.k0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        dt1Var.l0 = 0.5f;
        dt1Var.p0 = new ot1();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) dt1Var).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) dt1Var).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) dt1Var).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) dt1Var).bottomMargin = marginLayoutParams.bottomMargin;
            dt1Var.setMarginStart(marginLayoutParams.getMarginStart());
            dt1Var.setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        if (!(layoutParams instanceof dt1)) {
            return dt1Var;
        }
        dt1 dt1Var2 = (dt1) layoutParams;
        dt1Var.a = dt1Var2.a;
        dt1Var.b = dt1Var2.b;
        dt1Var.c = dt1Var2.c;
        dt1Var.d = dt1Var2.d;
        dt1Var.e = dt1Var2.e;
        dt1Var.f = dt1Var2.f;
        dt1Var.g = dt1Var2.g;
        dt1Var.h = dt1Var2.h;
        dt1Var.i = dt1Var2.i;
        dt1Var.j = dt1Var2.j;
        dt1Var.k = dt1Var2.k;
        dt1Var.l = dt1Var2.l;
        dt1Var.m = dt1Var2.m;
        dt1Var.n = dt1Var2.n;
        dt1Var.o = dt1Var2.o;
        dt1Var.p = dt1Var2.p;
        dt1Var.q = dt1Var2.q;
        dt1Var.r = dt1Var2.r;
        dt1Var.s = dt1Var2.s;
        dt1Var.t = dt1Var2.t;
        dt1Var.u = dt1Var2.u;
        dt1Var.v = dt1Var2.v;
        dt1Var.w = dt1Var2.w;
        dt1Var.x = dt1Var2.x;
        dt1Var.y = dt1Var2.y;
        dt1Var.z = dt1Var2.z;
        dt1Var.A = dt1Var2.A;
        dt1Var.B = dt1Var2.B;
        dt1Var.C = dt1Var2.C;
        dt1Var.D = dt1Var2.D;
        dt1Var.E = dt1Var2.E;
        dt1Var.F = dt1Var2.F;
        dt1Var.G = dt1Var2.G;
        dt1Var.H = dt1Var2.H;
        dt1Var.I = dt1Var2.I;
        dt1Var.J = dt1Var2.J;
        dt1Var.K = dt1Var2.K;
        dt1Var.W = dt1Var2.W;
        dt1Var.X = dt1Var2.X;
        dt1Var.L = dt1Var2.L;
        dt1Var.M = dt1Var2.M;
        dt1Var.N = dt1Var2.N;
        dt1Var.P = dt1Var2.P;
        dt1Var.O = dt1Var2.O;
        dt1Var.Q = dt1Var2.Q;
        dt1Var.R = dt1Var2.R;
        dt1Var.S = dt1Var2.S;
        dt1Var.T = dt1Var2.T;
        dt1Var.U = dt1Var2.U;
        dt1Var.V = dt1Var2.V;
        dt1Var.a0 = dt1Var2.a0;
        dt1Var.b0 = dt1Var2.b0;
        dt1Var.c0 = dt1Var2.c0;
        dt1Var.d0 = dt1Var2.d0;
        dt1Var.f0 = dt1Var2.f0;
        dt1Var.g0 = dt1Var2.g0;
        dt1Var.h0 = dt1Var2.h0;
        dt1Var.i0 = dt1Var2.i0;
        dt1Var.j0 = dt1Var2.j0;
        dt1Var.k0 = dt1Var2.k0;
        dt1Var.l0 = dt1Var2.l0;
        dt1Var.Y = dt1Var2.Y;
        dt1Var.Z = dt1Var2.Z;
        dt1Var.p0 = dt1Var2.p0;
        return dt1Var;
    }
}
