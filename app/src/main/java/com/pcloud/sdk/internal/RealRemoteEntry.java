package com.pcloud.sdk.internal;

import com.google.gson.reflect.TypeToken;
import defpackage.aj6;
import defpackage.bj6;
import defpackage.fz5;
import defpackage.pj4;
import defpackage.q03;
import defpackage.qj4;
import defpackage.xb8;
import defpackage.y77;
import defpackage.z28;
import defpackage.zi6;
import java.lang.reflect.Type;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class RealRemoteEntry implements zi6 {

    @q03
    @y77("created")
    private Date created;

    @q03
    @y77("id")
    private String id;

    @q03
    @y77("isfolder")
    private boolean isFolder;

    @q03
    @y77("ismine")
    private boolean isMine;

    @q03
    @y77("isshared")
    private boolean isShared;

    @q03
    @y77("modified")
    private Date lastModified;

    @q03
    @y77("name")
    private String name;

    @q03
    @y77("parentfolderid")
    private long parentFolderId;

    @q03
    @y77("canread")
    private boolean canRead = true;

    @q03
    @y77("canmodify")
    private boolean canModify = true;

    @q03
    @y77("candelete")
    private boolean canDelete = true;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class FileEntryDeserializer implements pj4 {
        @Override // defpackage.pj4
        public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) {
            return qj4Var.i().x("isfolder").e() ? (zi6) z28Var.E(qj4Var, d.class) : (zi6) z28Var.E(qj4Var, c.class);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class TypeAdapterFactory implements xb8 {
        public static final TypeToken a = new TypeToken<zi6>() { // from class: com.pcloud.sdk.internal.RealRemoteEntry.TypeAdapterFactory.1
        };
        public static final TypeToken b = new TypeToken<aj6>() { // from class: com.pcloud.sdk.internal.RealRemoteEntry.TypeAdapterFactory.2
        };
        public static final TypeToken c = new TypeToken<bj6>() { // from class: com.pcloud.sdk.internal.RealRemoteEntry.TypeAdapterFactory.3
        };

        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            TypeToken typeToken2 = a;
            if (typeToken2.equals(typeToken)) {
                return aVar.d(typeToken2);
            }
            if (b.equals(typeToken)) {
                return aVar.e(c.class);
            }
            if (c.equals(typeToken)) {
                return aVar.e(d.class);
            }
            return null;
        }
    }

    @Override // defpackage.zi6
    public Date a() {
        return this.created;
    }

    @Override // defpackage.zi6
    public boolean b() {
        return this.isFolder;
    }

    @Override // defpackage.zi6
    public aj6 c() {
        throw new IllegalStateException("This entry is not a file");
    }

    @Override // defpackage.zi6
    public Date d() {
        return this.lastModified;
    }

    @Override // defpackage.zi6
    public boolean e() {
        return !this.isFolder;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RealRemoteEntry realRemoteEntry = (RealRemoteEntry) obj;
        if (this.parentFolderId == realRemoteEntry.parentFolderId && this.isFolder == realRemoteEntry.isFolder && this.id.equals(realRemoteEntry.id) && this.name.equals(realRemoteEntry.name) && this.lastModified.equals(realRemoteEntry.lastModified) && this.isMine == realRemoteEntry.isMine && this.isShared == realRemoteEntry.isShared && this.canRead == realRemoteEntry.canRead && this.canModify == realRemoteEntry.canModify && this.canDelete == realRemoteEntry.canDelete) {
            return this.created.equals(realRemoteEntry.created);
        }
        return false;
    }

    public String f() {
        return this.id;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        long j = this.parentFolderId;
        return ((this.created.hashCode() + ((this.lastModified.hashCode() + fz5.g((iHashCode + ((int) (j ^ (j >>> 32)))) * 31, 31, this.name)) * 31)) * 31) + (this.isFolder ? 1 : 0);
    }

    @Override // defpackage.zi6
    public String name() {
        return this.name;
    }
}
