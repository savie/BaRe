package com.google.gson.internal;

import com.google.gson.a;
import com.google.gson.b;
import com.google.gson.reflect.TypeToken;
import defpackage.e6;
import defpackage.nn4;
import defpackage.pe4;
import defpackage.th6;
import defpackage.tl4;
import defpackage.v14;
import defpackage.xb8;
import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Excluder implements xb8, Cloneable {
    public static final Excluder d = new Excluder();
    public boolean a;
    public List b;
    public List c;

    public Excluder() {
        List list = Collections.EMPTY_LIST;
        this.b = list;
        this.c = list;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            e6.e(e);
            return null;
        }
    }

    public final boolean b(Class cls, boolean z) {
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            pe4 pe4Var = th6.a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        Iterator it = (z ? this.b : this.c).iterator();
        while (it.hasNext()) {
            ((v14) it.next()).getClass();
        }
        return false;
    }

    @Override // defpackage.xb8
    public final b create(final a aVar, final TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        final boolean zB = b(rawType, true);
        final boolean zB2 = b(rawType, false);
        if (zB || zB2) {
            return new b() { // from class: com.google.gson.internal.Excluder.1
                public volatile b a;

                @Override // com.google.gson.b
                public final Object read(tl4 tl4Var) throws IOException {
                    if (zB2) {
                        tl4Var.skipValue();
                        return null;
                    }
                    b bVarF = this.a;
                    if (bVarF == null) {
                        bVarF = aVar.f(Excluder.this, typeToken);
                        this.a = bVarF;
                    }
                    return bVarF.read(tl4Var);
                }

                @Override // com.google.gson.b
                public final void write(nn4 nn4Var, Object obj) throws IOException {
                    if (zB) {
                        nn4Var.r();
                        return;
                    }
                    b bVarF = this.a;
                    if (bVarF == null) {
                        bVarF = aVar.f(Excluder.this, typeToken);
                        this.a = bVarF;
                    }
                    bVarF.write(nn4Var, obj);
                }
            };
        }
        return null;
    }
}
