package com.pcloud.sdk.internal.networking.serialization;

import defpackage.gl4;
import defpackage.gl6;
import defpackage.kl4;
import defpackage.nq7;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ResolutionDeserializer implements pj4 {
    public static final ResolutionDeserializer a = new ResolutionDeserializer();

    private ResolutionDeserializer() {
    }

    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) {
        qj4Var.getClass();
        type.getClass();
        z28Var.getClass();
        if (!(qj4Var instanceof kl4) || !(qj4Var.k().a instanceof String)) {
            throw new gl4("Invalid size value " + qj4Var + ".");
        }
        String strO = qj4Var.o();
        strO.getClass();
        int iG0 = nq7.g0('x', 0, 6, strO);
        if (iG0 == -1) {
            throw new gl4("Invalid resolution format: ".concat(strO));
        }
        try {
            return new gl6(Integer.parseInt(strO.substring(0, iG0)), Integer.parseInt(strO.substring(iG0 + 1)));
        } catch (NumberFormatException e) {
            throw new gl4(e);
        }
    }
}
