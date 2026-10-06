package com.microsoft.identity.common.internal.broker;

import defpackage.fl4;
import defpackage.gl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthUxJsonPayloadKTDeserializer implements pj4 {
    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) {
        qj4Var.getClass();
        type.getClass();
        z28Var.getClass();
        fl4 fl4VarI = qj4Var.i();
        qj4 qj4VarX = fl4VarI.x("correlationID");
        String strO = qj4VarX != null ? qj4VarX.o() : null;
        if (strO == null) {
            throw new gl4("correlationID is required and cannot be null");
        }
        qj4 qj4VarX2 = fl4VarI.x("action_name");
        String strO2 = qj4VarX2 != null ? qj4VarX2.o() : null;
        if (strO2 == null) {
            throw new gl4("action_name is required and cannot be null");
        }
        qj4 qj4VarX3 = fl4VarI.x("action_component");
        String strO3 = qj4VarX3 != null ? qj4VarX3.o() : null;
        if (strO3 == null) {
            throw new gl4("action_component is required and cannot be null");
        }
        qj4 qj4VarX4 = fl4VarI.x("params");
        return new AuthUxJsonPayload(strO, strO2, strO3, qj4VarX4 != null ? (AuthUxParams) z28Var.E(qj4VarX4, AuthUxParams.class) : null);
    }
}
