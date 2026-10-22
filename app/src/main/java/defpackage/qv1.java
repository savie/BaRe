package defpackage;

import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.provider.Telephony;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qv1 implements Parcelable, jl0 {
    private static final Uri CONTENT_URI;
    private String address;

    @zl1("date")
    private long date;
    private String displayName;

    @zl1("_id")
    private long id;
    private long lastSmsDate;
    private int messageCount;
    private List<wg5> mmsItemList;
    private String photoUri;

    @x14
    private String randomId;
    private List<ki7> smsItemList;
    private String snippet;

    @zl1("thread_id")
    private long threadId;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<qv1> CREATOR = new b();
    private static final os4 logTag$delegate = new gv7(new b7(12));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class c {
        private final int index;
        private final int total;

        public c(int i, int i2) {
            this.index = i;
            this.total = i2;
        }

        public final int getIndex() {
            return this.index;
        }

        public final int getTotal() {
            return this.total;
        }
    }

    static {
        Uri uri = Telephony.MmsSms.CONTENT_CONVERSATIONS_URI;
        uri.getClass();
        CONTENT_URI = uri;
    }

    public /* synthetic */ qv1(long j, long j2, long j3, int i, String str, String str2, List list, List list2, long j4, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0L : j2, (i2 & 4) != 0 ? 0L : j3, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? new ArrayList() : list, (i2 & 128) != 0 ? new ArrayList() : list2, (i2 & 256) == 0 ? j4 : 0L, (i2 & 512) != 0 ? null : str3, (i2 & 1024) != 0 ? null : str4);
    }

    private final String component10() {
        return this.displayName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ qv1 copy$default(qv1 qv1Var, long j, long j2, long j3, int i, String str, String str2, List list, List list2, long j4, String str3, String str4, int i2, Object obj) {
        return qv1Var.copy((i2 & 1) != 0 ? qv1Var.id : j, (i2 & 2) != 0 ? qv1Var.threadId : j2, (i2 & 4) != 0 ? qv1Var.date : j3, (i2 & 8) != 0 ? qv1Var.messageCount : i, (i2 & 16) != 0 ? qv1Var.snippet : str, (i2 & 32) != 0 ? qv1Var.address : str2, (i2 & 64) != 0 ? qv1Var.smsItemList : list, (i2 & 128) != 0 ? qv1Var.mmsItemList : list2, (i2 & 256) != 0 ? qv1Var.lastSmsDate : j4, (i2 & 512) != 0 ? qv1Var.displayName : str3, (i2 & 1024) != 0 ? qv1Var.photoUri : str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logTag_delegate$lambda$0() {
        return "ConversationItem";
    }

    public final long component1() {
        return this.id;
    }

    public final String component11() {
        return this.photoUri;
    }

    public final long component2() {
        return this.threadId;
    }

    public final long component3() {
        return this.date;
    }

    public final int component4() {
        return this.messageCount;
    }

    public final String component5() {
        return this.snippet;
    }

    public final String component6() {
        return this.address;
    }

    public final List<ki7> component7() {
        return this.smsItemList;
    }

    public final List<wg5> component8() {
        return this.mmsItemList;
    }

    public final long component9() {
        return this.lastSmsDate;
    }

    public final qv1 copy(long j, long j2, long j3, int i, String str, String str2, List<ki7> list, List<wg5> list2, long j4, String str3, String str4) {
        list.getClass();
        list2.getClass();
        return new qv1(j, j2, j3, i, str, str2, list, list2, j4, str3, str4);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qv1)) {
            return false;
        }
        qv1 qv1Var = (qv1) obj;
        return this.id == qv1Var.id && this.threadId == qv1Var.threadId && this.date == qv1Var.date && this.messageCount == qv1Var.messageCount && pe4.d(this.snippet, qv1Var.snippet) && pe4.d(this.address, qv1Var.address) && pe4.d(this.smsItemList, qv1Var.smsItemList) && pe4.d(this.mmsItemList, qv1Var.mmsItemList) && this.lastSmsDate == qv1Var.lastSmsDate && pe4.d(this.displayName, qv1Var.displayName) && pe4.d(this.photoUri, qv1Var.photoUri);
    }

    public final String getAddress() {
        return this.address;
    }

    @Override // defpackage.jl0
    public qv1 getCopy() {
        qv1 qv1VarCopy$default = copy$default(this, 0L, 0L, 0L, 0, null, null, null, null, 0L, null, null, 2047, null);
        qv1VarCopy$default.randomId = this.randomId;
        return qv1VarCopy$default;
    }

    public final long getDate() {
        return this.date;
    }

    public final String getDisplayName() {
        String str = this.displayName;
        if (str != null) {
            return str;
        }
        String str2 = this.address;
        return str2 == null ? "Name not found" : str2;
    }

    public final long getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        String str = this.randomId;
        if (str != null) {
            return str;
        }
        String strI = nh4.d.i(6, true, true);
        this.randomId = strI;
        strI.getClass();
        return strI;
    }

    public final long getLastSmsDate() {
        return this.lastSmsDate;
    }

    public final int getMessageCount() {
        return this.messageCount;
    }

    public final List<wg5> getMmsItemList() {
        return this.mmsItemList;
    }

    public final String getPhotoUri() {
        return this.photoUri;
    }

    public final List<ki7> getSmsItemList() {
        return this.smsItemList;
    }

    public final String getSnippet() {
        return this.snippet;
    }

    public final long getThreadId() {
        return this.threadId;
    }

    public int hashCode() {
        int iD = eq3.d(this.messageCount, xs1.f(this.date, xs1.f(this.threadId, Long.hashCode(this.id) * 31, 31), 31), 31);
        String str = this.snippet;
        int iHashCode = (iD + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.address;
        int iF = xs1.f(this.lastSmsDate, fz5.i(this.mmsItemList, fz5.i(this.smsItemList, (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31), 31);
        String str3 = this.displayName;
        int iHashCode2 = (iF + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photoUri;
        return iHashCode2 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setAddress(String str) {
        this.address = str;
    }

    public final void setDate(long j) {
        this.date = j;
    }

    public final void setDisplayName(String str) {
        this.displayName = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setLastSmsDate(long j) {
        this.lastSmsDate = j;
    }

    public final void setMessageCount(int i) {
        this.messageCount = i;
    }

    public final void setMmsItemList(List<wg5> list) {
        list.getClass();
        this.mmsItemList = list;
    }

    public final void setPhotoUri(String str) {
        this.photoUri = str;
    }

    public final void setSmsItemList(List<ki7> list) {
        list.getClass();
        this.smsItemList = list;
    }

    public final void setSnippet(String str) {
        this.snippet = str;
    }

    public final void setThreadId(long j) {
        this.threadId = j;
    }

    public String toString() {
        long j = this.id;
        long j2 = this.threadId;
        long j3 = this.date;
        int i = this.messageCount;
        String str = this.snippet;
        String str2 = this.address;
        List<ki7> list = this.smsItemList;
        List<wg5> list2 = this.mmsItemList;
        long j4 = this.lastSmsDate;
        String str3 = this.displayName;
        String str4 = this.photoUri;
        StringBuilder sbT = dj7.t("ConversationItem(id=", ", threadId=", j);
        sbT.append(j2);
        fz5.r(sbT, ", date=", j3, ", messageCount=");
        sbT.append(i);
        sbT.append(", snippet=");
        sbT.append(str);
        sbT.append(", address=");
        sbT.append(str2);
        sbT.append(", smsItemList=");
        sbT.append(list);
        sbT.append(", mmsItemList=");
        sbT.append(list2);
        sbT.append(", lastSmsDate=");
        sbT.append(j4);
        xs1.t(sbT, ", displayName=", str3, ", photoUri=", str4);
        sbT.append(")");
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.id);
        parcel.writeLong(this.threadId);
        parcel.writeLong(this.date);
        parcel.writeInt(this.messageCount);
        parcel.writeString(this.snippet);
        parcel.writeString(this.address);
        List<ki7> list = this.smsItemList;
        parcel.writeInt(list.size());
        Iterator<ki7> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        List<wg5> list2 = this.mmsItemList;
        parcel.writeInt(list2.size());
        Iterator<wg5> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(parcel, i);
        }
        parcel.writeLong(this.lastSmsDate);
        parcel.writeString(this.displayName);
        parcel.writeString(this.photoUri);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {

        /* JADX INFO: renamed from: qv1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class C0016a implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ms8.n(Long.valueOf(((qv1) obj2).getLastSmsDate()), Long.valueOf(((qv1) obj).getLastSmsDate()));
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class b implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                ki7 ki7Var = (ki7) obj;
                Long date = ki7Var.getDate();
                if (date == null) {
                    date = ki7Var.getDateSent();
                }
                ki7 ki7Var2 = (ki7) obj2;
                Long date2 = ki7Var2.getDate();
                if (date2 == null) {
                    date2 = ki7Var2.getDateSent();
                }
                return ms8.n(date, date2);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class c implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ms8.n(((wg5) obj).getDateInMillis(), ((wg5) obj2).getDateInMillis());
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static List getList$default(a aVar, boolean z, wg5.c cVar, mt3 mt3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("messages_backup_mms", true);
                } catch (ClassCastException unused) {
                    z = true;
                }
            }
            if ((i & 4) != 0) {
                mt3Var = null;
            }
            return aVar.getList(z, cVar, mt3Var);
        }

        private final String getLogTag() {
            return (String) qv1.logTag$delegate.getValue();
        }

        public final Uri getCONTENT_URI() {
            return qv1.CONTENT_URI;
        }

        public final List<qv1> getList(boolean z, wg5.c cVar, mt3 mt3Var) {
            Object next;
            Object next2;
            String str;
            cVar.getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            q63 q63VarI = ud5.i();
            if (q63VarI.j()) {
                cy0.e(q63VarI);
            } else {
                q63.E(q63VarI);
            }
            ArrayList<qv1> arrayList = new ArrayList();
            List<ki7> list = ki7.Companion.getList();
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, getLogTag(), fz5.j(list.size(), "getList(): SMS="), null, 4, null);
            List<wg5> list2 = z ? cVar.getList(mt3Var) : ov2.a;
            vr6.i$default(vr6Var, getLogTag(), xs1.j("getList(): MMS=", z ? String.valueOf(list2.size()) : "Disabled"), null, 4, null);
            if (list.isEmpty() && list2.isEmpty()) {
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Long threadId = ((ki7) it.next()).getThreadId();
                if (threadId != null) {
                    arrayList2.add(threadId);
                }
            }
            Set setZ1 = el1.z1(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                Long threadId2 = ((wg5) it2.next()).getThreadId();
                if (threadId2 != null) {
                    arrayList3.add(threadId2);
                }
            }
            Iterator it3 = sz8.R(setZ1, el1.z1(arrayList3)).iterator();
            while (it3.hasNext()) {
                long jLongValue = ((Number) it3.next()).longValue();
                ArrayList<ki7> arrayList4 = new ArrayList();
                for (Object obj : list) {
                    Long threadId3 = ((ki7) obj).getThreadId();
                    if (threadId3 != null && threadId3.longValue() == jLongValue) {
                        arrayList4.add(obj);
                    }
                }
                ArrayList<wg5> arrayList5 = new ArrayList();
                for (Object obj2 : list2) {
                    Long threadId4 = ((wg5) obj2).getThreadId();
                    if (threadId4 != null && threadId4.longValue() == jLongValue) {
                        arrayList5.add(obj2);
                    }
                }
                long j = 0;
                String body = null;
                for (ki7 ki7Var : arrayList4) {
                    Long date = ki7Var.getDate();
                    if (date != null || (date = ki7Var.getDateSent()) != null) {
                        long jLongValue2 = date.longValue();
                        if (jLongValue2 > j) {
                            String body2 = ki7Var.getBody();
                            if (body2 != null && body2.length() != 0) {
                                body = ki7Var.getBody();
                            }
                            j = jLongValue2;
                        }
                    }
                }
                long j2 = j;
                String str2 = body;
                for (wg5 wg5Var : arrayList5) {
                    Long dateInMillis = wg5Var.getDateInMillis();
                    if (dateInMillis != null) {
                        long jLongValue3 = dateInMillis.longValue();
                        if (jLongValue3 >= j2) {
                            String text = wg5Var.getText();
                            if (text != null && text.length() != 0) {
                                str2 = text;
                            }
                            j2 = jLongValue3;
                        }
                    }
                }
                Iterator it4 = arrayList4.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it4.next();
                    String address = ((ki7) next).getAddress();
                    if (address != null && address.length() != 0) {
                        break;
                    }
                }
                ki7 ki7Var2 = (ki7) next;
                if (ki7Var2 == null || (address = ki7Var2.getAddress()) == null) {
                    Iterator it5 = arrayList5.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it5.next();
                        String address2 = ((wg5) next2).getAddress();
                        if (address2 != null && address2.length() != 0) {
                            break;
                        }
                    }
                    wg5 wg5Var2 = (wg5) next2;
                    if (wg5Var2 != null) {
                        String address3 = wg5Var2.getAddress();
                        str = address3;
                    } else {
                        str = null;
                    }
                } else {
                    str = address3;
                }
                arrayList.add(new qv1(jLongValue, jLongValue, j2, arrayList5.size() + arrayList4.size(), str2, str, new ArrayList(el1.n1(arrayList4, new b())), new ArrayList(el1.n1(arrayList5, new c())), j2, null, null, 1536, null));
            }
            Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
            uri.getClass();
            ArrayList<zt1> arrayListA = r92.a(uri, zt1.class);
            for (qv1 qv1Var : arrayList) {
                for (zt1 zt1Var : arrayListA) {
                    if (pe4.d(qv1Var.getAddress(), zt1Var.getAddress()) || pe4.d(qv1Var.getAddress(), zt1Var.getNormalizedNumber())) {
                        qv1Var.setDisplayName(zt1Var.getDisplayName());
                        qv1Var.setPhotoUri(zt1Var.getPhotoUri());
                        break;
                    }
                }
            }
            return new ArrayList(el1.n1(arrayList, new C0016a()));
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final qv1 createFromParcel(Parcel parcel) {
            parcel.getClass();
            long j = parcel.readLong();
            long j2 = parcel.readLong();
            long j3 = parcel.readLong();
            int i = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 != i2; i3++) {
                arrayList.add(ki7.CREATOR.createFromParcel(parcel));
            }
            int i4 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i4);
            for (int i5 = 0; i5 != i4; i5++) {
                arrayList2.add(wg5.CREATOR.createFromParcel(parcel));
            }
            return new qv1(j, j2, j3, i, string, string2, arrayList, arrayList2, parcel.readLong(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final qv1[] newArray(int i) {
            return new qv1[i];
        }
    }

    private static /* synthetic */ void getRandomId$annotations() {
    }

    public qv1(long j, long j2, long j3, int i, String str, String str2, List<ki7> list, List<wg5> list2, long j4, String str3, String str4) {
        list.getClass();
        list2.getClass();
        this.id = j;
        this.threadId = j2;
        this.date = j3;
        this.messageCount = i;
        this.snippet = str;
        this.address = str2;
        this.smsItemList = list;
        this.mmsItemList = list2;
        this.lastSmsDate = j4;
        this.displayName = str3;
        this.photoUri = str4;
    }

    public qv1() {
        this(0L, 0L, 0L, 0, null, null, null, null, 0L, null, null, 2047, null);
    }
}
