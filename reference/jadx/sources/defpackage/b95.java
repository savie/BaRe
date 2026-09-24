package defpackage;

import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b95 extends wx3 {
    public final int g;

    public b95(int i) {
        this.g = i;
    }

    @Override // defpackage.wx3
    public final void A(Object obj, float f) {
        c95 c95Var = (c95) obj;
        float[] fArr = c95Var.U;
        if (fArr != null) {
            int i = this.g;
            if (fArr[i] != f) {
                fArr[i] = f;
                gb gbVar = c95Var.W;
                if (gbVar != null) {
                    float fJ = c95Var.j();
                    MaterialButton materialButton = (MaterialButton) gbVar.b;
                    int i2 = (int) (fJ * 0.11f);
                    if (materialButton.W != i2) {
                        materialButton.W = i2;
                        materialButton.v();
                        materialButton.invalidate();
                    }
                }
                c95Var.invalidateSelf();
            }
        }
    }

    @Override // defpackage.wx3
    public final float m(Object obj) {
        float[] fArr = ((c95) obj).U;
        if (fArr != null) {
            return fArr[this.g];
        }
        return 0.0f;
    }
}
