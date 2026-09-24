package com.pcloud.sdk.internal.networking.serialization;

import com.google.gson.a;
import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UnmodifiableListTypeFactory implements xb8 {
    @Override // defpackage.xb8
    public final b create(a aVar, final TypeToken typeToken) {
        final b bVarF = aVar.f(this, typeToken);
        return new b() { // from class: com.pcloud.sdk.internal.networking.serialization.UnmodifiableListTypeFactory.1
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) {
                Object obj = bVarF.read(tl4Var);
                return List.class.isAssignableFrom(typeToken.getRawType()) ? Collections.unmodifiableList((List) obj) : obj;
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) {
                bVarF.write(nn4Var, obj);
            }
        };
    }
}
