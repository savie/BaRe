package defpackage;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yu2 extends ji8 {
    public final TextView n;
    public final uu2 p;
    public boolean q = true;

    public yu2(TextView textView) {
        this.n = textView;
        this.p = new uu2(textView);
    }

    @Override // defpackage.ji8
    public final void I(boolean z) {
        if (z) {
            TextView textView = this.n;
            textView.setTransformationMethod(P(textView.getTransformationMethod()));
        }
    }

    @Override // defpackage.ji8
    public final void J(boolean z) {
        this.q = z;
        TextView textView = this.n;
        textView.setTransformationMethod(P(textView.getTransformationMethod()));
        textView.setFilters(n(textView.getFilters()));
    }

    @Override // defpackage.ji8
    public final TransformationMethod P(TransformationMethod transformationMethod) {
        if (this.q) {
            return ((transformationMethod instanceof cv2) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new cv2(transformationMethod);
        }
        return transformationMethod instanceof cv2 ? ((cv2) transformationMethod).a : transformationMethod;
    }

    @Override // defpackage.ji8
    public final InputFilter[] n(InputFilter[] inputFilterArr) {
        if (!this.q) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof uu2) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (sparseArray.indexOfKey(i3) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i3];
                    i2++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            uu2 uu2Var = this.p;
            if (i4 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = uu2Var;
                return inputFilterArr3;
            }
            if (inputFilterArr[i4] == uu2Var) {
                return inputFilterArr;
            }
            i4++;
        }
    }

    @Override // defpackage.ji8
    public final boolean y() {
        return this.q;
    }
}
