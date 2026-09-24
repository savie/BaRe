package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import java.io.IOException;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pm7 {
    public int a;
    public vk9 b;
    public int[][] c;
    public vk9[] d;

    /* JADX WARN: Code duplicated, block: B:28:0x0069  */
    public final void a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        om7 om7Var;
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
                int[] iArr = td6.U;
                boolean z = false;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    int i = typedValuePeekValue.type;
                    if (i == 5) {
                        om7Var = new om7(2, TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainAttributes.getResources().getDisplayMetrics()));
                    } else if (i == 6) {
                        om7Var = new om7(1, typedValuePeekValue.getFraction(1.0f, 1.0f));
                    } else {
                        om7Var = null;
                    }
                } else {
                    om7Var = null;
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i2 = 0;
                for (int i3 = 0; i3 < attributeCount; i3++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    if (attributeNameResource != R.attr.widthChange) {
                        int i4 = i2 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i2] = attributeNameResource;
                        i2 = i4;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i2);
                vk9 vk9Var = new vk9(16, z);
                vk9Var.b = om7Var;
                int i5 = this.a;
                if (i5 == 0 || iArrTrimStateSet.length == 0) {
                    this.b = vk9Var;
                }
                int[][] iArr3 = this.c;
                if (i5 >= iArr3.length) {
                    int i6 = i5 + 10;
                    int[][] iArr4 = new int[i6][];
                    System.arraycopy(iArr3, 0, iArr4, 0, i5);
                    this.c = iArr4;
                    vk9[] vk9VarArr = new vk9[i6];
                    System.arraycopy(this.d, 0, vk9VarArr, 0, i5);
                    this.d = vk9VarArr;
                }
                int[][] iArr5 = this.c;
                int i7 = this.a;
                iArr5[i7] = iArrTrimStateSet;
                this.d[i7] = vk9Var;
                this.a = i7 + 1;
            }
        }
    }
}
