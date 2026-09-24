package org.swiftapps.swiftbackup.folders.data;

import defpackage.dj7;
import defpackage.el1;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.pe4;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Changes {
    private final List<String> directoriesAdded;
    private final List<String> directoriesDeleted;
    private final List<String> filesAdded;
    private final List<String> filesDeleted;
    private final List<String> filesModified;

    public Changes(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        this.filesAdded = list;
        this.filesModified = list2;
        this.filesDeleted = list3;
        this.directoriesAdded = list4;
        this.directoriesDeleted = list5;
    }

    public static /* synthetic */ String asString$default(Changes changes, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return changes.asString(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Changes copy$default(Changes changes, List list, List list2, List list3, List list4, List list5, int i, Object obj) {
        if ((i & 1) != 0) {
            list = changes.filesAdded;
        }
        if ((i & 2) != 0) {
            list2 = changes.filesModified;
        }
        if ((i & 4) != 0) {
            list3 = changes.filesDeleted;
        }
        if ((i & 8) != 0) {
            list4 = changes.directoriesAdded;
        }
        if ((i & 16) != 0) {
            list5 = changes.directoriesDeleted;
        }
        List list6 = list5;
        List list7 = list3;
        return changes.copy(list, list2, list7, list4, list6);
    }

    public final String asString(boolean z) {
        if (isEmpty()) {
            return "Changes: No changes in files or directories";
        }
        StringBuilder sb = new StringBuilder("Changes:");
        List listA0 = fl1.A0(this.filesAdded, this.filesModified, this.filesDeleted);
        if (!listA0.isEmpty()) {
            Iterator it = listA0.iterator();
            while (it.hasNext()) {
                if (!((List) it.next()).isEmpty()) {
                    if (!this.filesAdded.isEmpty()) {
                        sb.append(" +" + this.filesAdded.size());
                        if (z) {
                            sb.append(" (" + el1.Y0(this.filesAdded, ", ", null, null, null, 62) + ")");
                        }
                    }
                    if (!this.filesModified.isEmpty()) {
                        sb.append(" ~" + this.filesModified.size());
                        if (z) {
                            sb.append(" (" + el1.Y0(this.filesModified, ", ", null, null, null, 62) + ")");
                        }
                    }
                    if (!this.filesDeleted.isEmpty()) {
                        sb.append(" -" + this.filesDeleted.size());
                    }
                    if (z) {
                        sb.append(" (" + el1.Y0(this.filesDeleted, ", ", null, null, null, 62) + ")");
                    }
                    sb.append(" files");
                    break;
                }
            }
        }
        List listA1 = fl1.A0(this.directoriesAdded, this.directoriesDeleted);
        if (!listA1.isEmpty()) {
            Iterator it2 = listA1.iterator();
            while (it2.hasNext()) {
                if (!((List) it2.next()).isEmpty()) {
                    if (!this.directoriesAdded.isEmpty()) {
                        sb.append(" +" + this.directoriesAdded.size());
                        if (z) {
                            sb.append(" (" + el1.Y0(this.directoriesAdded, ", ", null, null, null, 62) + ")");
                        }
                    }
                    if (!this.directoriesDeleted.isEmpty()) {
                        sb.append(" -" + this.directoriesDeleted.size());
                        if (z) {
                            sb.append(" (" + el1.Y0(this.directoriesDeleted, ", ", null, null, null, 62) + ")");
                        }
                    }
                    sb.append(" dirs");
                    break;
                }
            }
        }
        return sb.toString();
    }

    public final int changesCount() {
        return this.directoriesDeleted.size() + this.directoriesAdded.size() + this.filesDeleted.size() + this.filesModified.size() + this.filesAdded.size();
    }

    public final List<String> component1() {
        return this.filesAdded;
    }

    public final List<String> component2() {
        return this.filesModified;
    }

    public final List<String> component3() {
        return this.filesDeleted;
    }

    public final List<String> component4() {
        return this.directoriesAdded;
    }

    public final List<String> component5() {
        return this.directoriesDeleted;
    }

    public final Changes copy(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        return new Changes(list, list2, list3, list4, list5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Changes)) {
            return false;
        }
        Changes changes = (Changes) obj;
        return pe4.d(this.filesAdded, changes.filesAdded) && pe4.d(this.filesModified, changes.filesModified) && pe4.d(this.filesDeleted, changes.filesDeleted) && pe4.d(this.directoriesAdded, changes.directoriesAdded) && pe4.d(this.directoriesDeleted, changes.directoriesDeleted);
    }

    public final List<String> getDirectoriesAdded() {
        return this.directoriesAdded;
    }

    public final List<String> getDirectoriesDeleted() {
        return this.directoriesDeleted;
    }

    public final List<String> getFilesAdded() {
        return this.filesAdded;
    }

    public final List<String> getFilesDeleted() {
        return this.filesDeleted;
    }

    public final List<String> getFilesModified() {
        return this.filesModified;
    }

    public final boolean hasArchiveContent() {
        return (this.filesAdded.isEmpty() && this.filesModified.isEmpty() && this.directoriesAdded.isEmpty()) ? false : true;
    }

    public final boolean hasOnlyDeletions() {
        List listA0 = fl1.A0(this.filesDeleted, this.directoriesDeleted);
        if (!listA0.isEmpty()) {
            Iterator it = listA0.iterator();
            while (it.hasNext()) {
                if (!((List) it.next()).isEmpty()) {
                    List listA1 = fl1.A0(this.filesAdded, this.filesModified, this.directoriesAdded);
                    if (!listA1.isEmpty()) {
                        Iterator it2 = listA1.iterator();
                        while (it2.hasNext()) {
                            if (!((List) it2.next()).isEmpty()) {
                                break;
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.directoriesDeleted.hashCode() + fz5.i(this.directoriesAdded, fz5.i(this.filesDeleted, fz5.i(this.filesModified, this.filesAdded.hashCode() * 31, 31), 31), 31);
    }

    public final boolean isEmpty() {
        return changesCount() == 0;
    }

    public String toString() {
        List<String> list = this.filesAdded;
        List<String> list2 = this.filesModified;
        List<String> list3 = this.filesDeleted;
        List<String> list4 = this.directoriesAdded;
        List<String> list5 = this.directoriesDeleted;
        StringBuilder sb = new StringBuilder("Changes(filesAdded=");
        sb.append(list);
        sb.append(", filesModified=");
        sb.append(list2);
        sb.append(", filesDeleted=");
        sb.append(list3);
        sb.append(", directoriesAdded=");
        sb.append(list4);
        sb.append(", directoriesDeleted=");
        return dj7.o(sb, list5, ")");
    }
}
