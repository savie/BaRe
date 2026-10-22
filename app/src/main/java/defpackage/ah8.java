package defpackage;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ah8 {
    public static final a Companion = new a(null);
    private static final String logTag = "MUser";
    private int currentAppVersion;
    private String displayName;
    private String email;
    private String id;
    private Boolean isAnonymous;
    private int latestAppVersion;
    private String photoUrl;

    public /* synthetic */ ah8(String str, Boolean bool, String str2, String str3, String str4, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? null : bool, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? null : str3, (i3 & 16) != 0 ? null : str4, (i3 & 32) != 0 ? 0 : i, (i3 & 64) != 0 ? 620 : i2);
    }

    public static /* synthetic */ ah8 copy$default(ah8 ah8Var, String str, Boolean bool, String str2, String str3, String str4, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = ah8Var.id;
        }
        if ((i3 & 2) != 0) {
            bool = ah8Var.isAnonymous;
        }
        if ((i3 & 4) != 0) {
            str2 = ah8Var.displayName;
        }
        if ((i3 & 8) != 0) {
            str3 = ah8Var.email;
        }
        if ((i3 & 16) != 0) {
            str4 = ah8Var.photoUrl;
        }
        if ((i3 & 32) != 0) {
            i = ah8Var.latestAppVersion;
        }
        if ((i3 & 64) != 0) {
            i2 = ah8Var.currentAppVersion;
        }
        int i4 = i;
        int i5 = i2;
        String str5 = str4;
        String str6 = str2;
        return ah8Var.copy(str, bool, str6, str3, str5, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    public final void updateFields(MFirebaseUser mFirebaseUser) {
        Object next;
        String displayName;
        String email;
        String photoUrl;
        Uri uriC;
        String string;
        mFirebaseUser.getClass();
        Iterator<T> it = mFirebaseUser.getProviderData().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((dh8) next).l(), "google.com"));
        dh8 dh8Var = (dh8) next;
        this.id = mFirebaseUser.getUid();
        if (dh8Var == null || (displayName = dh8Var.e()) == null) {
            displayName = mFirebaseUser.getDisplayName();
        }
        this.displayName = displayName;
        if (dh8Var == null || (email = dh8Var.m()) == null) {
            email = mFirebaseUser.getEmail();
        }
        this.email = email;
        if (dh8Var == null || (uriC = dh8Var.c()) == null || (string = uriC.toString()) == null) {
            photoUrl = mFirebaseUser.getPhotoUrl();
        } else {
            photoUrl = string.length() > 0 ? string : null;
            if (photoUrl == null) {
                photoUrl = mFirebaseUser.getPhotoUrl();
            }
        }
        if (photoUrl != null && photoUrl.length() != 0) {
            this.photoUrl = photoUrl;
        }
        zn4 zn4Var = zn4.a;
        zn4.c(new w01(15, this, mFirebaseUser));
        this.currentAppVersion = 620;
        int i = this.latestAppVersion;
        this.latestAppVersion = i > 620 ? i : 620;
        zn4.c(new xq4(this, 17));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 updateFields$lambda$1(ah8 ah8Var, MFirebaseUser mFirebaseUser) {
        io4.j(logTag, "updateUser", true, new qf(16, ah8Var, mFirebaseUser), 8);
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x0096  */
    public static final be8 updateFields$lambda$1$0(ah8 ah8Var, MFirebaseUser mFirebaseUser) {
        Uri uri;
        String str = ah8Var.displayName;
        if (str == null || str.length() <= 0 || str.equals(mFirebaseUser.getDisplayName())) {
            str = null;
        }
        String str2 = ah8Var.photoUrl;
        if (str2 == null || str2.length() <= 0 || str2.equals(mFirebaseUser.getPhotoUrl())) {
            str2 = null;
        }
        List<String> listA0 = fl1.A0(str, str2);
        if (!listA0.isEmpty()) {
            for (String str3 : listA0) {
                boolean z = true;
                if (!(str3 == null || str3.length() == 0)) {
                    if (str != null) {
                        vr6.i$default(vr6.INSTANCE, logTag, "User display name has changed.", null, 4, null);
                    } else {
                        str = null;
                    }
                    if (str2 != null) {
                        vr6.i$default(vr6.INSTANCE, logTag, "User photo url has changed.", null, 4, null);
                        uri = Uri.parse(str2);
                        if (uri == null) {
                            uri = null;
                        }
                        vr6.i$default(vr6.INSTANCE, logTag, "Updating the profile details", null, 4, null);
                        mFirebaseUser.updateProfile(new hh8(str, uri != null ? uri.toString() : null, false, z));
                        break;
                    }
                    uri = null;
                    z = false;
                    vr6.i$default(vr6.INSTANCE, logTag, "Updating the profile details", null, 4, null);
                    mFirebaseUser.updateProfile(new hh8(str, uri != null ? uri.toString() : null, false, z));
                    break;
                }
            }
        }
        return be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 updateFields$lambda$2(ah8 ah8Var) {
        Long lValueOf;
        try {
            lValueOf = Long.valueOf(updateFields$lambda$2$0());
        } catch (Exception unused) {
            lValueOf = null;
        }
        List listA0 = fl1.A0(u48.l(lValueOf != null ? lValueOf.longValue() : -1L, "s="), fz5.j(ah8Var.currentAppVersion, "current="), fz5.j(ah8Var.latestAppVersion, "latest="));
        zc2 zc2Var = re3.a;
        try {
            new qe3("s", el1.Y0(listA0, null, null, null, null, 63)).invoke();
        } catch (Exception unused2) {
        }
        return be8.a;
    }

    private static final long updateFields$lambda$2$0() {
        Shell shell = (Shell) mp6.c.getValue();
        boolean z = g42.a;
        SwiftApp.Companion companion = SwiftApp.d;
        String packageName = SwiftApp.Companion.c().getPackageName();
        packageName.getClass();
        String strFastCmd = ShellUtils.fastCmd(shell, String.format(g42.a("AQLFCL/7Dy3S5q7uDhoL6UHDcrNWK4S1nr+i+S65kDy3e+fbbI8H9lGSPC3fcIQTdeeJCXGjiBuIRV0pjQkcMg=="), Arrays.copyOf(new Object[]{packageName}, 1)));
        strFastCmd.getClass();
        return new File(strFastCmd).length();
    }

    public final String component1() {
        return this.id;
    }

    public final Boolean component2() {
        return this.isAnonymous;
    }

    public final String component3() {
        return this.displayName;
    }

    public final String component4() {
        return this.email;
    }

    public final String component5() {
        return this.photoUrl;
    }

    public final int component6() {
        return this.latestAppVersion;
    }

    public final int component7() {
        return this.currentAppVersion;
    }

    public final ah8 copy(String str, Boolean bool, String str2, String str3, String str4, int i, int i2) {
        str.getClass();
        return new ah8(str, bool, str2, str3, str4, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ah8)) {
            return false;
        }
        ah8 ah8Var = (ah8) obj;
        return pe4.d(this.id, ah8Var.id) && pe4.d(this.isAnonymous, ah8Var.isAnonymous) && pe4.d(this.displayName, ah8Var.displayName) && pe4.d(this.email, ah8Var.email) && pe4.d(this.photoUrl, ah8Var.photoUrl) && this.latestAppVersion == ah8Var.latestAppVersion && this.currentAppVersion == ah8Var.currentAppVersion;
    }

    public final int getCurrentAppVersion() {
        return this.currentAppVersion;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getId() {
        return this.id;
    }

    public final int getLatestAppVersion() {
        return this.latestAppVersion;
    }

    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        Boolean bool = this.isAnonymous;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.displayName;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.email;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photoUrl;
        return Integer.hashCode(this.currentAppVersion) + eq3.d(this.latestAppVersion, (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31, 31);
    }

    public final Boolean isAnonymous() {
        return this.isAnonymous;
    }

    public final void setAnonymous(Boolean bool) {
        this.isAnonymous = bool;
    }

    public final void setCurrentAppVersion(int i) {
        this.currentAppVersion = i;
    }

    public final void setDisplayName(String str) {
        this.displayName = str;
    }

    public final void setEmail(String str) {
        this.email = str;
    }

    public final void setId(String str) {
        str.getClass();
        this.id = str;
    }

    public final void setLatestAppVersion(int i) {
        this.latestAppVersion = i;
    }

    public final void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public String toString() {
        String str = this.id;
        Boolean bool = this.isAnonymous;
        String str2 = this.displayName;
        String str3 = this.email;
        String str4 = this.photoUrl;
        int i = this.latestAppVersion;
        int i2 = this.currentAppVersion;
        StringBuilder sb = new StringBuilder("User(id=");
        sb.append(str);
        sb.append(", isAnonymous=");
        sb.append(bool);
        sb.append(", displayName=");
        xs1.t(sb, str2, ", email=", str3, ", photoUrl=");
        sb.append(str4);
        sb.append(", latestAppVersion=");
        sb.append(i);
        sb.append(", currentAppVersion=");
        return xs1.m(sb, i2, ")");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {

        /* JADX INFO: renamed from: ah8$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class C0000a implements aj8 {
            final /* synthetic */ MFirebaseUser $firebaseUser;
            final /* synthetic */ mt3 $onCompletion;

            public C0000a(MFirebaseUser mFirebaseUser, mt3 mt3Var) {
                this.$firebaseUser = mFirebaseUser;
                this.$onCompletion = mt3Var;
            }

            @Override // defpackage.aj8
            public void onCancelled(wc2 wc2Var) {
                wc2Var.getClass();
                Log.i(ah8.logTag, "onCancelled: Error while writing user info to database");
                u48.s("onCancelled: ", wc2Var.b, ah8.logTag);
                this.$onCompletion.invoke(ah8.Companion.createNew(this.$firebaseUser));
            }

            @Override // defpackage.aj8
            public void onDataChange(eb2 eb2Var) {
                eb2Var.getClass();
                ah8 ah8VarCreateNew = (ah8) eb2Var.c(ah8.class);
                if (ah8VarCreateNew == null) {
                    ah8VarCreateNew = ah8.Companion.createNew(this.$firebaseUser);
                } else {
                    ah8VarCreateNew.updateFields(this.$firebaseUser);
                }
                this.$onCompletion.invoke(ah8VarCreateNew);
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ah8 createNew(MFirebaseUser mFirebaseUser) {
            return new ah8(mFirebaseUser.getUid(), Boolean.valueOf(mFirebaseUser.isAnonymous()), mFirebaseUser.getDisplayName(), mFirebaseUser.getEmail(), mFirebaseUser.getPhotoUrl(), 620, 0, 64, null);
        }

        public static /* synthetic */ void updateInDatabase$default(a aVar, ah8 ah8Var, bt3 bt3Var, int i, Object obj) {
            if ((i & 2) != 0) {
                bt3Var = null;
            }
            aVar.updateInDatabase(ah8Var, bt3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void updateInDatabase$lambda$0(bt3 bt3Var, Task task) {
            task.getClass();
            if (bt3Var != null) {
                bt3Var.invoke();
            }
        }

        public final void fromDatabase(MFirebaseUser mFirebaseUser, mt3 mt3Var) {
            mFirebaseUser.getClass();
            mt3Var.getClass();
            if (mFirebaseUser.isAnonymous()) {
                mt3Var.invoke(createNew(mFirebaseUser));
            } else {
                re3.k().d("userInfo").b(new C0000a(mFirebaseUser, mt3Var));
            }
        }

        public final void updateInDatabase(ah8 ah8Var, bt3 bt3Var) {
            ah8Var.getClass();
            if (!pe4.d(ah8Var.isAnonymous(), Boolean.TRUE)) {
                re3.k().d("userInfo").i(ah8Var).addOnCompleteListener(new fs(bt3Var, 11));
            } else if (bt3Var != null) {
                bt3Var.invoke();
            }
        }

        private a() {
        }

        public final void fromDatabase(mt3 mt3Var) {
            mt3Var.getClass();
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                fromDatabase(mFirebaseUserA, mt3Var);
                return;
            }
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
    }

    public ah8(String str, Boolean bool, String str2, String str3, String str4, int i, int i2) {
        str.getClass();
        this.id = str;
        this.isAnonymous = bool;
        this.displayName = str2;
        this.email = str3;
        this.photoUrl = str4;
        this.latestAppVersion = i;
        this.currentAppVersion = i2;
    }

    public ah8() {
        this(null, null, null, null, null, 0, 0, 127, null);
    }
}
