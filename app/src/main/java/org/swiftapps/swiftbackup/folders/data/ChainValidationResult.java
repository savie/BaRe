package org.swiftapps.swiftbackup.folders.data;

import defpackage.pe4;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ChainValidationResult {
    private final List<String> errors;
    private final boolean isValid;

    public ChainValidationResult(boolean z, List<String> list) {
        list.getClass();
        this.isValid = z;
        this.errors = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChainValidationResult copy$default(ChainValidationResult chainValidationResult, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = chainValidationResult.isValid;
        }
        if ((i & 2) != 0) {
            list = chainValidationResult.errors;
        }
        return chainValidationResult.copy(z, list);
    }

    public final boolean component1() {
        return this.isValid;
    }

    public final List<String> component2() {
        return this.errors;
    }

    public final ChainValidationResult copy(boolean z, List<String> list) {
        list.getClass();
        return new ChainValidationResult(z, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChainValidationResult)) {
            return false;
        }
        ChainValidationResult chainValidationResult = (ChainValidationResult) obj;
        return this.isValid == chainValidationResult.isValid && pe4.d(this.errors, chainValidationResult.errors);
    }

    public final List<String> getErrors() {
        return this.errors;
    }

    public int hashCode() {
        return this.errors.hashCode() + (Boolean.hashCode(this.isValid) * 31);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public String toString() {
        return "ChainValidationResult(isValid=" + this.isValid + ", errors=" + this.errors + ")";
    }
}
