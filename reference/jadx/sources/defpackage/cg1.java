package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cg1 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cg1(Object obj, int i) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        switch (this.a) {
            case 0:
                zl8 zl8Var = (zl8) ((os4) this.b).getValue();
                w24 w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return w24Var != null ? w24Var.getDefaultViewModelCreationExtras() : m22.b;
            case 1:
                x93 x93Var = ((ic2) this.b).a;
                File canonicalFile = ((File) x93Var.c.invoke()).getCanonicalFile();
                synchronized (x93.e) {
                    String absolutePath = canonicalFile.getAbsolutePath();
                    LinkedHashSet linkedHashSet = x93.d;
                    if (linkedHashSet.contains(absolutePath)) {
                        throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                    }
                    absolutePath.getClass();
                    linkedHashSet.add(absolutePath);
                }
                return new aa3(canonicalFile, x93Var.a, (sd4) x93Var.b.invoke(canonicalFile), new w93(canonicalFile, 0));
            default:
                File file = (File) ((dg1) this.b).invoke();
                if (!nc3.R(file).equals("preferences_pb")) {
                    f6.h(file, " does not match required extension for Preferences file: preferences_pb", "File extension for file: ");
                    return null;
                }
                File absoluteFile = file.getAbsoluteFile();
                absoluteFile.getClass();
                return absoluteFile;
        }
    }
}
