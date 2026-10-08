package com.microsoft.identity.common.java.authscheme;

import defpackage.dj7;
import defpackage.f6;
import defpackage.y77;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAuthenticationScheme implements Serializable {
    private static final long serialVersionUID = -2437270903389813253L;

    @y77("name")
    private final String mName;

    public AbstractAuthenticationScheme(String str) {
        if (str != null) {
            this.mName = str;
        } else {
            f6.n("name is marked non-null but is null");
            throw null;
        }
    }

    public boolean canEqual(Object obj) {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractAuthenticationScheme)) {
            return false;
        }
        AbstractAuthenticationScheme abstractAuthenticationScheme = (AbstractAuthenticationScheme) obj;
        if (!abstractAuthenticationScheme.canEqual(this)) {
            return false;
        }
        String name = getName();
        String name2 = abstractAuthenticationScheme.getName();
        if (name == null) {
            return name2 == null;
        }
        return name.equals(name2);
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        String name = getName();
        return 59 + (name == null ? 43 : name.hashCode());
    }

    public String toString() {
        return dj7.n(new StringBuilder("AbstractAuthenticationScheme{mName='"), this.mName, "'}");
    }

    public AbstractAuthenticationScheme(TokenAuthenticationScheme.TokenAuthenticationSchemeBuilder tokenAuthenticationSchemeBuilder) {
        this.mName = tokenAuthenticationSchemeBuilder.name;
    }
}
