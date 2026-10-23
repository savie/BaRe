package defpackage;

import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.text.TextUtils;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wg5 implements Parcelable, jl0 {
    private List<vg5> addressItems;

    @zl1("msg_box")
    private Integer box;

    @zl1("ct_cls")
    private Integer contentClass;

    @zl1("ct_l")
    private String contentLocation;

    @zl1("ct_t")
    private String contentType;

    @zl1("date")
    private Long dateInSeconds;

    @zl1("date_sent")
    private Long dateSentInSeconds;

    @zl1("d_rpt")
    private Integer deliveryReport;

    @zl1("d_tm")
    private Integer deliveryTime;

    @zl1("exp")
    private Long expiry;

    @zl1("_id")
    private Long id;

    @zl1("locked")
    private Integer locked;

    @zl1("m_cls")
    private String messageClass;

    @zl1("m_size")
    private Integer messageSize;

    @zl1("v")
    private Integer mmsVersion;
    private List<xg5> partItems;

    @zl1("pri")
    private Integer priority;

    @x14
    private String randomId;

    @zl1("read")
    private Integer read;

    @zl1("rr")
    private Integer readReport;

    @zl1("read_status")
    private Integer readStatus;
    private List<String> recipients;

    @zl1("rpt_a")
    private Integer reportAllowed;

    @zl1("resp_st")
    private Integer responseStatus;

    @zl1("resp_txt")
    private String responseText;

    @zl1("retr_st")
    private Integer retrieveStatus;

    @zl1("retr_txt")
    private String retrieveText;

    @zl1("retr_txt_cs")
    private Integer retrieveTextCharset;

    @zl1("seen")
    private Integer seen;

    @zl1("st")
    private Integer status;

    @zl1("sub_id")
    private Integer subId;

    @zl1("sub")
    private String subject;

    @zl1("sub_cs")
    private Integer subjectCharset;

    @zl1("text_only")
    private Integer textOnly;

    @zl1("thread_id")
    private Long threadId;

    @zl1("tr_id")
    private String transactionId;

    @zl1("m_type")
    private Integer type;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<wg5> CREATOR = new b();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class c {
        private final ContentResolver contentResolver;
        private boolean isCancelled;
        private final Map<Long, List<String>> mCacheRecipientsByThread;

        public c() {
            SwiftApp.Companion companion = SwiftApp.d;
            this.contentResolver = SwiftApp.Companion.c().getContentResolver();
            this.mCacheRecipientsByThread = new LinkedHashMap();
        }

        private final List<String> getAddresses(String str) {
            Cursor cursorQuery;
            ArrayList arrayList = new ArrayList();
            str.getClass();
            for (String str2 : (String[]) nq7.x0(str, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6).toArray(new String[0])) {
                try {
                    long j = Long.parseLong(str2);
                    if (j < 0) {
                        continue;
                    } else {
                        Uri uri = Uri.parse("content://mms-sms/canonical-address");
                        uri.getClass();
                        try {
                            cursorQuery = this.contentResolver.query(ContentUris.withAppendedId(uri, j), null, null, null, null);
                        } catch (Exception unused) {
                            cursorQuery = null;
                        }
                        if (cursorQuery != null) {
                            try {
                                if (cursorQuery.moveToFirst()) {
                                    String string = cursorQuery.getString(0);
                                    if (!TextUtils.isEmpty(string)) {
                                        string.getClass();
                                        arrayList.add(string);
                                    }
                                }
                                cursorQuery.close();
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                } catch (NumberFormatException unused2) {
                }
            }
            arrayList.isEmpty();
            return arrayList;
        }

        public static /* synthetic */ List getList$default(c cVar, mt3 mt3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                mt3Var = null;
            }
            return cVar.getList(mt3Var);
        }

        private final String getRawRecipientIdsForThread(long j) throws IOException {
            if (j <= 0) {
                return null;
            }
            Uri uriBuild = Telephony.Threads.CONTENT_URI.buildUpon().appendQueryParameter("simple", "true").build();
            uriBuild.getClass();
            Cursor cursorQuery = this.contentResolver.query(uriBuild, new String[]{"_id", "recipient_ids"}, "_id=?", new String[]{String.valueOf(j)}, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(1);
                        cursorQuery.close();
                        return string;
                    }
                    cursorQuery.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(cursorQuery, th);
                        throw th2;
                    }
                }
            }
            return null;
        }

        private final List<String> getRecipientsByThread(long j) throws IOException {
            if (!this.mCacheRecipientsByThread.containsKey(Long.valueOf(j))) {
                String rawRecipientIdsForThread = getRawRecipientIdsForThread(j);
                if (rawRecipientIdsForThread == null || rawRecipientIdsForThread.length() == 0) {
                    this.mCacheRecipientsByThread.put(Long.valueOf(j), new ArrayList());
                } else {
                    this.mCacheRecipientsByThread.put(Long.valueOf(j), getAddresses(rawRecipientIdsForThread));
                }
            }
            return this.mCacheRecipientsByThread.get(Long.valueOf(j));
        }

        public final void cancel() {
            vr6.i$default(vr6.INSTANCE, wg5.Companion.getLogTag(), "Loader: Cancel signal received", null, 4, null);
            this.isCancelled = true;
        }

        public final boolean getCancelled() {
            return this.isCancelled;
        }

        public final List<wg5> getList(mt3 mt3Var) {
            List<vg5> addressItems;
            int i = 0;
            this.isCancelled = false;
            ArrayList<wg5> arrayListA = r92.a(wg5.Companion.getCONTENT_URI(), wg5.class);
            int size = arrayListA.size();
            for (wg5 wg5Var : arrayListA) {
                int i2 = i + 1;
                if (this.isCancelled) {
                    vr6.i$default(vr6.INSTANCE, wg5.Companion.getLogTag(), dj7.i("Cancelled at read progress = ", i, size, "/"), null, 4, null);
                    break;
                }
                if (mt3Var != null) {
                    mt3Var.invoke(new qv1.c(i2, size));
                }
                Long threadId = wg5Var.getThreadId();
                wg5Var.setRecipients(threadId != null ? getRecipientsByThread(threadId.longValue()) : null);
                wg5Var.setAddressItems(vg5.Companion.getList(wg5Var.getId()));
                wg5Var.setPartItems(r92.a(xg5.Companion.getContentUriForMms(wg5Var.getId()), xg5.class));
                List<xg5> partItems = wg5Var.getPartItems();
                if (partItems != null) {
                    Iterator<T> it = partItems.iterator();
                    while (it.hasNext()) {
                        ((xg5) it.next()).savePartFileToCache(ud5.g(), wg5Var.getProperFileName());
                    }
                }
                i = i2;
            }
            if (this.isCancelled) {
                return ov2.a;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListA) {
                wg5 wg5Var2 = (wg5) obj;
                List<xg5> partItems2 = wg5Var2.getPartItems();
                if (partItems2 != null && !partItems2.isEmpty() && (addressItems = wg5Var2.getAddressItems()) != null && !addressItems.isEmpty()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
    }

    public /* synthetic */ wg5(Long l, Integer num, Integer num2, Long l2, Long l3, Long l4, Integer num3, Integer num4, Integer num5, String str, Integer num6, String str2, String str3, Long l5, String str4, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, String str5, Integer num14, String str6, Integer num15, Integer num16, Integer num17, Integer num18, Integer num19, String str7, Integer num20, Integer num21, List list, List list2, List list3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? null : l2, (i & 16) != 0 ? null : l3, (i & 32) != 0 ? null : l4, (i & 64) != 0 ? null : num3, (i & 128) != 0 ? null : num4, (i & 256) != 0 ? null : num5, (i & 512) != 0 ? null : str, (i & 1024) != 0 ? null : num6, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str2, (i & 4096) != 0 ? null : str3, (i & 8192) != 0 ? null : l5, (i & 16384) != 0 ? null : str4, (i & 32768) != 0 ? null : num7, (i & 65536) != 0 ? null : num8, (i & 131072) != 0 ? null : num9, (i & 262144) != 0 ? null : num10, (i & 524288) != 0 ? null : num11, (i & 1048576) != 0 ? null : num12, (i & 2097152) != 0 ? null : num13, (i & 4194304) != 0 ? null : str5, (i & 8388608) != 0 ? null : num14, (i & 16777216) != 0 ? null : str6, (i & 33554432) != 0 ? null : num15, (i & 67108864) != 0 ? null : num16, (i & 134217728) != 0 ? null : num17, (i & 268435456) != 0 ? null : num18, (i & 536870912) != 0 ? null : num19, (i & 1073741824) != 0 ? null : str7, (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? null : num20, (i2 & 1) != 0 ? null : num21, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : list2, (i2 & 8) != 0 ? null : list3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ wg5 copy$default(wg5 wg5Var, Long l, Integer num, Integer num2, Long l2, Long l3, Long l4, Integer num3, Integer num4, Integer num5, String str, Integer num6, String str2, String str3, Long l5, String str4, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, String str5, Integer num14, String str6, Integer num15, Integer num16, Integer num17, Integer num18, Integer num19, String str7, Integer num20, Integer num21, List list, List list2, List list3, int i, int i2, Object obj) {
        List list4;
        List list5;
        Long l6 = (i & 1) != 0 ? wg5Var.id : l;
        Integer num22 = (i & 2) != 0 ? wg5Var.box : num;
        Integer num23 = (i & 4) != 0 ? wg5Var.type : num2;
        Long l7 = (i & 8) != 0 ? wg5Var.threadId : l2;
        Long l8 = (i & 16) != 0 ? wg5Var.dateInSeconds : l3;
        Long l9 = (i & 32) != 0 ? wg5Var.dateSentInSeconds : l4;
        Integer num24 = (i & 64) != 0 ? wg5Var.read : num3;
        Integer num25 = (i & 128) != 0 ? wg5Var.seen : num4;
        Integer num26 = (i & 256) != 0 ? wg5Var.textOnly : num5;
        String str8 = (i & 512) != 0 ? wg5Var.subject : str;
        Integer num27 = (i & 1024) != 0 ? wg5Var.subjectCharset : num6;
        String str9 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? wg5Var.contentType : str2;
        String str10 = (i & 4096) != 0 ? wg5Var.contentLocation : str3;
        Long l10 = (i & 8192) != 0 ? wg5Var.expiry : l5;
        Long l11 = l6;
        String str11 = (i & 16384) != 0 ? wg5Var.messageClass : str4;
        Integer num28 = (i & 32768) != 0 ? wg5Var.mmsVersion : num7;
        Integer num29 = (i & 65536) != 0 ? wg5Var.messageSize : num8;
        Integer num30 = (i & 131072) != 0 ? wg5Var.priority : num9;
        Integer num31 = (i & 262144) != 0 ? wg5Var.readReport : num10;
        Integer num32 = (i & 524288) != 0 ? wg5Var.reportAllowed : num11;
        Integer num33 = (i & 1048576) != 0 ? wg5Var.responseStatus : num12;
        Integer num34 = (i & 2097152) != 0 ? wg5Var.status : num13;
        String str12 = (i & 4194304) != 0 ? wg5Var.transactionId : str5;
        Integer num35 = (i & 8388608) != 0 ? wg5Var.retrieveStatus : num14;
        String str13 = (i & 16777216) != 0 ? wg5Var.retrieveText : str6;
        Integer num36 = (i & 33554432) != 0 ? wg5Var.retrieveTextCharset : num15;
        Integer num37 = (i & 67108864) != 0 ? wg5Var.readStatus : num16;
        Integer num38 = (i & 134217728) != 0 ? wg5Var.contentClass : num17;
        Integer num39 = (i & 268435456) != 0 ? wg5Var.deliveryReport : num18;
        Integer num40 = (i & 536870912) != 0 ? wg5Var.deliveryTime : num19;
        String str14 = (i & 1073741824) != 0 ? wg5Var.responseText : str7;
        Integer num41 = (i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0 ? wg5Var.locked : num20;
        Integer num42 = (i2 & 1) != 0 ? wg5Var.subId : num21;
        List list6 = (i2 & 2) != 0 ? wg5Var.recipients : list;
        List list7 = (i2 & 4) != 0 ? wg5Var.addressItems : list2;
        if ((i2 & 8) != 0) {
            list5 = list7;
            list4 = wg5Var.partItems;
        } else {
            list4 = list3;
            list5 = list7;
        }
        return wg5Var.copy(l11, num22, num23, l7, l8, l9, num24, num25, num26, str8, num27, str9, str10, l10, str11, num28, num29, num30, num31, num32, num33, num34, str12, num35, str13, num36, num37, num38, num39, num40, str14, num41, num42, list6, list5, list4);
    }

    public final Long component1() {
        return this.id;
    }

    public final String component10() {
        return this.subject;
    }

    public final Integer component11() {
        return this.subjectCharset;
    }

    public final String component12() {
        return this.contentType;
    }

    public final String component13() {
        return this.contentLocation;
    }

    public final Long component14() {
        return this.expiry;
    }

    public final String component15() {
        return this.messageClass;
    }

    public final Integer component16() {
        return this.mmsVersion;
    }

    public final Integer component17() {
        return this.messageSize;
    }

    public final Integer component18() {
        return this.priority;
    }

    public final Integer component19() {
        return this.readReport;
    }

    public final Integer component2() {
        return this.box;
    }

    public final Integer component20() {
        return this.reportAllowed;
    }

    public final Integer component21() {
        return this.responseStatus;
    }

    public final Integer component22() {
        return this.status;
    }

    public final String component23() {
        return this.transactionId;
    }

    public final Integer component24() {
        return this.retrieveStatus;
    }

    public final String component25() {
        return this.retrieveText;
    }

    public final Integer component26() {
        return this.retrieveTextCharset;
    }

    public final Integer component27() {
        return this.readStatus;
    }

    public final Integer component28() {
        return this.contentClass;
    }

    public final Integer component29() {
        return this.deliveryReport;
    }

    public final Integer component3() {
        return this.type;
    }

    public final Integer component30() {
        return this.deliveryTime;
    }

    public final String component31() {
        return this.responseText;
    }

    public final Integer component32() {
        return this.locked;
    }

    public final Integer component33() {
        return this.subId;
    }

    public final List<String> component34() {
        return this.recipients;
    }

    public final List<vg5> component35() {
        return this.addressItems;
    }

    public final List<xg5> component36() {
        return this.partItems;
    }

    public final Long component4() {
        return this.threadId;
    }

    public final Long component5() {
        return this.dateInSeconds;
    }

    public final Long component6() {
        return this.dateSentInSeconds;
    }

    public final Integer component7() {
        return this.read;
    }

    public final Integer component8() {
        return this.seen;
    }

    public final Integer component9() {
        return this.textOnly;
    }

    public final wg5 copy(Long l, Integer num, Integer num2, Long l2, Long l3, Long l4, Integer num3, Integer num4, Integer num5, String str, Integer num6, String str2, String str3, Long l5, String str4, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, String str5, Integer num14, String str6, Integer num15, Integer num16, Integer num17, Integer num18, Integer num19, String str7, Integer num20, Integer num21, List<String> list, List<vg5> list2, List<xg5> list3) {
        return new wg5(l, num, num2, l2, l3, l4, num3, num4, num5, str, num6, str2, str3, l5, str4, num7, num8, num9, num10, num11, num12, num13, str5, num14, str6, num15, num16, num17, num18, num19, str7, num20, num21, list, list2, list3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wg5)) {
            return false;
        }
        wg5 wg5Var = (wg5) obj;
        return pe4.d(this.id, wg5Var.id) && pe4.d(this.box, wg5Var.box) && pe4.d(this.type, wg5Var.type) && pe4.d(this.threadId, wg5Var.threadId) && pe4.d(this.dateInSeconds, wg5Var.dateInSeconds) && pe4.d(this.dateSentInSeconds, wg5Var.dateSentInSeconds) && pe4.d(this.read, wg5Var.read) && pe4.d(this.seen, wg5Var.seen) && pe4.d(this.textOnly, wg5Var.textOnly) && pe4.d(this.subject, wg5Var.subject) && pe4.d(this.subjectCharset, wg5Var.subjectCharset) && pe4.d(this.contentType, wg5Var.contentType) && pe4.d(this.contentLocation, wg5Var.contentLocation) && pe4.d(this.expiry, wg5Var.expiry) && pe4.d(this.messageClass, wg5Var.messageClass) && pe4.d(this.mmsVersion, wg5Var.mmsVersion) && pe4.d(this.messageSize, wg5Var.messageSize) && pe4.d(this.priority, wg5Var.priority) && pe4.d(this.readReport, wg5Var.readReport) && pe4.d(this.reportAllowed, wg5Var.reportAllowed) && pe4.d(this.responseStatus, wg5Var.responseStatus) && pe4.d(this.status, wg5Var.status) && pe4.d(this.transactionId, wg5Var.transactionId) && pe4.d(this.retrieveStatus, wg5Var.retrieveStatus) && pe4.d(this.retrieveText, wg5Var.retrieveText) && pe4.d(this.retrieveTextCharset, wg5Var.retrieveTextCharset) && pe4.d(this.readStatus, wg5Var.readStatus) && pe4.d(this.contentClass, wg5Var.contentClass) && pe4.d(this.deliveryReport, wg5Var.deliveryReport) && pe4.d(this.deliveryTime, wg5Var.deliveryTime) && pe4.d(this.responseText, wg5Var.responseText) && pe4.d(this.locked, wg5Var.locked) && pe4.d(this.subId, wg5Var.subId) && pe4.d(this.recipients, wg5Var.recipients) && pe4.d(this.addressItems, wg5Var.addressItems) && pe4.d(this.partItems, wg5Var.partItems);
    }

    public final String getAddress() {
        Object next;
        List<vg5> list = this.addressItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                vg5 vg5Var = (vg5) next;
                String address = vg5Var.getAddress();
                if (address != null && address.length() != 0) {
                    Integer type = vg5Var.getType();
                    int pdu_headers_to = vg5.Companion.getPDU_HEADERS_TO();
                    if (type != null && type.intValue() == pdu_headers_to) {
                        break;
                    }
                }
            }
            vg5 vg5Var2 = (vg5) next;
            if (vg5Var2 != null) {
                return vg5Var2.getAddress();
            }
        }
        return null;
    }

    public final List<vg5> getAddressItems() {
        return this.addressItems;
    }

    public final Integer getBox() {
        return this.box;
    }

    public final Integer getContentClass() {
        return this.contentClass;
    }

    public final String getContentLocation() {
        return this.contentLocation;
    }

    public final String getContentType() {
        return this.contentType;
    }

    @Override // defpackage.jl0
    public wg5 getCopy() {
        wg5 wg5VarCopy$default = copy$default(this, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 15, null);
        wg5VarCopy$default.randomId = this.randomId;
        return wg5VarCopy$default;
    }

    public final Long getDateInMillis() {
        long jLongValue;
        Long l = this.dateInSeconds;
        if (l != null) {
            jLongValue = l.longValue();
        } else {
            Long l2 = this.dateSentInSeconds;
            if (l2 == null) {
                return null;
            }
            jLongValue = l2.longValue();
        }
        return String.valueOf(jLongValue).length() == 10 ? Long.valueOf(jLongValue * 1000) : Long.valueOf(jLongValue);
    }

    public final Long getDateInSeconds() {
        return this.dateInSeconds;
    }

    public final Long getDateSentInSeconds() {
        return this.dateSentInSeconds;
    }

    public final Integer getDeliveryReport() {
        return this.deliveryReport;
    }

    public final Integer getDeliveryTime() {
        return this.deliveryTime;
    }

    public final Long getExpiry() {
        return this.expiry;
    }

    public final q63 getFile() {
        Object next;
        String cachedFileName;
        List<xg5> list = this.partItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                String cachedFileName2 = ((xg5) next).getCachedFileName();
                if (cachedFileName2 != null && cachedFileName2.length() != 0) {
                    break;
                }
            }
            xg5 xg5Var = (xg5) next;
            if (xg5Var != null && (cachedFileName = xg5Var.getCachedFileName()) != null) {
                return ud5.g().J(cachedFileName);
            }
        }
        return null;
    }

    public final Long getId() {
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

    public final Integer getLocked() {
        return this.locked;
    }

    public final String getMessageClass() {
        return this.messageClass;
    }

    public final Integer getMessageSize() {
        return this.messageSize;
    }

    public final Integer getMmsVersion() {
        return this.mmsVersion;
    }

    public final List<xg5> getPartItems() {
        return this.partItems;
    }

    public final Integer getPriority() {
        return this.priority;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    public final String getProperFileName() {
        String name;
        xg5 xg5Var;
        String text;
        Object next;
        Object next2;
        List<xg5> list = this.partItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
                xg5 xg5Var2 = (xg5) next2;
                String name2 = xg5Var2.getName();
                if (name2 != null && name2.length() != 0 && !xg5Var2.isText() && !xg5Var2.isSmil()) {
                    break;
                }
            }
            xg5 xg5Var3 = (xg5) next2;
            if (xg5Var3 != null) {
                name = xg5Var3.getName();
            } else {
                name = null;
            }
        } else {
            name = null;
        }
        if (name != null && name.length() != 0) {
            return name;
        }
        List<xg5> list2 = this.partItems;
        if (list2 != null) {
            Iterator<T> it2 = list2.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!((xg5) next).isSmil());
            xg5Var = (xg5) next;
        } else {
            xg5Var = null;
        }
        if (xg5Var == null || (text = xg5Var.getText()) == null) {
            return null;
        }
        return jq7.a(text, "src=\"", "\"");
    }

    public final Integer getRead() {
        return this.read;
    }

    public final Integer getReadReport() {
        return this.readReport;
    }

    public final Integer getReadStatus() {
        return this.readStatus;
    }

    /* JADX INFO: renamed from: getRecipients, reason: collision with other method in class */
    public final Set<String> m79getRecipients() {
        List<String> list = this.recipients;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            return el1.z1(list);
        }
        List<vg5> list2 = this.addressItems;
        if (list2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            Integer type = ((vg5) obj).getType();
            int pdu_headers_to = vg5.Companion.getPDU_HEADERS_TO();
            if (type != null && type.intValue() == pdu_headers_to) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String address = ((vg5) it.next()).getAddress();
            if (address == null || address.length() == 0) {
                address = null;
            }
            if (address != null) {
                arrayList2.add(address);
            }
        }
        return el1.z1(arrayList2);
    }

    public final Integer getReportAllowed() {
        return this.reportAllowed;
    }

    public final Integer getResponseStatus() {
        return this.responseStatus;
    }

    public final String getResponseText() {
        return this.responseText;
    }

    public final Integer getRetrieveStatus() {
        return this.retrieveStatus;
    }

    public final String getRetrieveText() {
        return this.retrieveText;
    }

    public final Integer getRetrieveTextCharset() {
        return this.retrieveTextCharset;
    }

    public final Integer getSeen() {
        return this.seen;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final Integer getSubId() {
        return this.subId;
    }

    public final String getSubject() {
        return this.subject;
    }

    public final Integer getSubjectCharset() {
        return this.subjectCharset;
    }

    public final String getText() {
        Object next;
        List<xg5> list = this.partItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((xg5) next).isText());
            xg5 xg5Var = (xg5) next;
            if (xg5Var != null) {
                return xg5Var.getText();
            }
        }
        return null;
    }

    public final Integer getTextOnly() {
        return this.textOnly;
    }

    public final Long getThreadId() {
        return this.threadId;
    }

    public final String getTransactionId() {
        return this.transactionId;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Long l = this.id;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Integer num = this.box;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.type;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l2 = this.threadId;
        int iHashCode4 = (iHashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.dateInSeconds;
        int iHashCode5 = (iHashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.dateSentInSeconds;
        int iHashCode6 = (iHashCode5 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Integer num3 = this.read;
        int iHashCode7 = (iHashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.seen;
        int iHashCode8 = (iHashCode7 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.textOnly;
        int iHashCode9 = (iHashCode8 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str = this.subject;
        int iHashCode10 = (iHashCode9 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num6 = this.subjectCharset;
        int iHashCode11 = (iHashCode10 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str2 = this.contentType;
        int iHashCode12 = (iHashCode11 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.contentLocation;
        int iHashCode13 = (iHashCode12 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l5 = this.expiry;
        int iHashCode14 = (iHashCode13 + (l5 == null ? 0 : l5.hashCode())) * 31;
        String str4 = this.messageClass;
        int iHashCode15 = (iHashCode14 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num7 = this.mmsVersion;
        int iHashCode16 = (iHashCode15 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.messageSize;
        int iHashCode17 = (iHashCode16 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.priority;
        int iHashCode18 = (iHashCode17 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.readReport;
        int iHashCode19 = (iHashCode18 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.reportAllowed;
        int iHashCode20 = (iHashCode19 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.responseStatus;
        int iHashCode21 = (iHashCode20 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.status;
        int iHashCode22 = (iHashCode21 + (num13 == null ? 0 : num13.hashCode())) * 31;
        String str5 = this.transactionId;
        int iHashCode23 = (iHashCode22 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num14 = this.retrieveStatus;
        int iHashCode24 = (iHashCode23 + (num14 == null ? 0 : num14.hashCode())) * 31;
        String str6 = this.retrieveText;
        int iHashCode25 = (iHashCode24 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num15 = this.retrieveTextCharset;
        int iHashCode26 = (iHashCode25 + (num15 == null ? 0 : num15.hashCode())) * 31;
        Integer num16 = this.readStatus;
        int iHashCode27 = (iHashCode26 + (num16 == null ? 0 : num16.hashCode())) * 31;
        Integer num17 = this.contentClass;
        int iHashCode28 = (iHashCode27 + (num17 == null ? 0 : num17.hashCode())) * 31;
        Integer num18 = this.deliveryReport;
        int iHashCode29 = (iHashCode28 + (num18 == null ? 0 : num18.hashCode())) * 31;
        Integer num19 = this.deliveryTime;
        int iHashCode30 = (iHashCode29 + (num19 == null ? 0 : num19.hashCode())) * 31;
        String str7 = this.responseText;
        int iHashCode31 = (iHashCode30 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num20 = this.locked;
        int iHashCode32 = (iHashCode31 + (num20 == null ? 0 : num20.hashCode())) * 31;
        Integer num21 = this.subId;
        int iHashCode33 = (iHashCode32 + (num21 == null ? 0 : num21.hashCode())) * 31;
        List<String> list = this.recipients;
        int iHashCode34 = (iHashCode33 + (list == null ? 0 : list.hashCode())) * 31;
        List<vg5> list2 = this.addressItems;
        int iHashCode35 = (iHashCode34 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<xg5> list3 = this.partItems;
        return iHashCode35 + (list3 != null ? list3.hashCode() : 0);
    }

    public final boolean isInbox() {
        Integer num = this.box;
        return num != null && num.intValue() == 1;
    }

    public final void openFile(Context context) {
        Object next;
        String cachedFileName;
        context.getClass();
        List<xg5> list = this.partItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                xg5 xg5Var = (xg5) next;
                if (!xg5Var.isText() && !xg5Var.isSmil() && !xg5Var.isImage()) {
                    break;
                }
            }
            xg5 xg5Var2 = (xg5) next;
            if (xg5Var2 == null || (cachedFileName = xg5Var2.getCachedFileName()) == null) {
                return;
            }
            q63 q63VarJ = ud5.g().J(cachedFileName);
            String contentType = xg5Var2.getContentType();
            if (contentType == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(f93.a(q63VarJ), contentType);
            intent.setFlags(268435457);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                zn4 zn4Var = zn4.a;
                zn4.e(new l30(15, applicationContext, "No handler activity for this type of file."));
            }
        }
    }

    public final void setAddressItems(List<vg5> list) {
        this.addressItems = list;
    }

    public final void setBox(Integer num) {
        this.box = num;
    }

    public final void setContentClass(Integer num) {
        this.contentClass = num;
    }

    public final void setContentLocation(String str) {
        this.contentLocation = str;
    }

    public final void setContentType(String str) {
        this.contentType = str;
    }

    public final void setDateInSeconds(Long l) {
        this.dateInSeconds = l;
    }

    public final void setDateSentInSeconds(Long l) {
        this.dateSentInSeconds = l;
    }

    public final void setDeliveryReport(Integer num) {
        this.deliveryReport = num;
    }

    public final void setDeliveryTime(Integer num) {
        this.deliveryTime = num;
    }

    public final void setExpiry(Long l) {
        this.expiry = l;
    }

    public final void setId(Long l) {
        this.id = l;
    }

    public final void setLocked(Integer num) {
        this.locked = num;
    }

    public final void setMessageClass(String str) {
        this.messageClass = str;
    }

    public final void setMessageSize(Integer num) {
        this.messageSize = num;
    }

    public final void setMmsVersion(Integer num) {
        this.mmsVersion = num;
    }

    public final void setPartItems(List<xg5> list) {
        this.partItems = list;
    }

    public final void setPriority(Integer num) {
        this.priority = num;
    }

    public final void setRead(Integer num) {
        this.read = num;
    }

    public final void setReadReport(Integer num) {
        this.readReport = num;
    }

    public final void setReadStatus(Integer num) {
        this.readStatus = num;
    }

    public final void setRecipients(List<String> list) {
        this.recipients = list;
    }

    public final void setReportAllowed(Integer num) {
        this.reportAllowed = num;
    }

    public final void setResponseStatus(Integer num) {
        this.responseStatus = num;
    }

    public final void setResponseText(String str) {
        this.responseText = str;
    }

    public final void setRetrieveStatus(Integer num) {
        this.retrieveStatus = num;
    }

    public final void setRetrieveText(String str) {
        this.retrieveText = str;
    }

    public final void setRetrieveTextCharset(Integer num) {
        this.retrieveTextCharset = num;
    }

    public final void setSeen(Integer num) {
        this.seen = num;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setSubId(Integer num) {
        this.subId = num;
    }

    public final void setSubject(String str) {
        this.subject = str;
    }

    public final void setSubjectCharset(Integer num) {
        this.subjectCharset = num;
    }

    public final void setTextOnly(Integer num) {
        this.textOnly = num;
    }

    public final void setThreadId(Long l) {
        this.threadId = l;
    }

    public final void setTransactionId(String str) {
        this.transactionId = str;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public String toString() {
        Long l = this.id;
        Integer num = this.box;
        Integer num2 = this.type;
        Long l2 = this.threadId;
        Long l3 = this.dateInSeconds;
        Long l4 = this.dateSentInSeconds;
        Integer num3 = this.read;
        Integer num4 = this.seen;
        Integer num5 = this.textOnly;
        String str = this.subject;
        Integer num6 = this.subjectCharset;
        String str2 = this.contentType;
        String str3 = this.contentLocation;
        Long l5 = this.expiry;
        String str4 = this.messageClass;
        Integer num7 = this.mmsVersion;
        Integer num8 = this.messageSize;
        Integer num9 = this.priority;
        Integer num10 = this.readReport;
        Integer num11 = this.reportAllowed;
        Integer num12 = this.responseStatus;
        Integer num13 = this.status;
        String str5 = this.transactionId;
        Integer num14 = this.retrieveStatus;
        String str6 = this.retrieveText;
        Integer num15 = this.retrieveTextCharset;
        Integer num16 = this.readStatus;
        Integer num17 = this.contentClass;
        Integer num18 = this.deliveryReport;
        Integer num19 = this.deliveryTime;
        String str7 = this.responseText;
        Integer num20 = this.locked;
        Integer num21 = this.subId;
        List<String> list = this.recipients;
        List<vg5> list2 = this.addressItems;
        List<xg5> list3 = this.partItems;
        StringBuilder sb = new StringBuilder("MmsItem(id=");
        sb.append(l);
        sb.append(", box=");
        sb.append(num);
        sb.append(", type=");
        sb.append(num2);
        sb.append(", threadId=");
        sb.append(l2);
        sb.append(", dateInSeconds=");
        fz5.q(sb, l3, ", dateSentInSeconds=", l4, ", read=");
        sb.append(num3);
        sb.append(", seen=");
        sb.append(num4);
        sb.append(", textOnly=");
        sb.append(num5);
        sb.append(", subject=");
        sb.append(str);
        sb.append(", subjectCharset=");
        sb.append(num6);
        sb.append(", contentType=");
        sb.append(str2);
        sb.append(", contentLocation=");
        sb.append(str3);
        sb.append(", expiry=");
        sb.append(l5);
        sb.append(", messageClass=");
        sb.append(str4);
        sb.append(", mmsVersion=");
        sb.append(num7);
        sb.append(", messageSize=");
        sb.append(num8);
        sb.append(", priority=");
        sb.append(num9);
        sb.append(", readReport=");
        sb.append(num10);
        sb.append(", reportAllowed=");
        sb.append(num11);
        sb.append(", responseStatus=");
        sb.append(num12);
        sb.append(", status=");
        sb.append(num13);
        sb.append(", transactionId=");
        sb.append(str5);
        sb.append(", retrieveStatus=");
        sb.append(num14);
        sb.append(", retrieveText=");
        sb.append(str6);
        sb.append(", retrieveTextCharset=");
        sb.append(num15);
        sb.append(", readStatus=");
        sb.append(num16);
        sb.append(", contentClass=");
        sb.append(num17);
        sb.append(", deliveryReport=");
        sb.append(num18);
        sb.append(", deliveryTime=");
        sb.append(num19);
        sb.append(", responseText=");
        sb.append(str7);
        sb.append(", locked=");
        sb.append(num20);
        sb.append(", subId=");
        sb.append(num21);
        sb.append(", recipients=");
        sb.append(list);
        sb.append(", addressItems=");
        sb.append(list2);
        sb.append(", partItems=");
        sb.append(list3);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Long l = this.id;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Integer num = this.box;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        Integer num2 = this.type;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
        Long l2 = this.threadId;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        Long l3 = this.dateInSeconds;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l3);
        }
        Long l4 = this.dateSentInSeconds;
        if (l4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l4);
        }
        Integer num3 = this.read;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num3);
        }
        Integer num4 = this.seen;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num4);
        }
        Integer num5 = this.textOnly;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num5);
        }
        parcel.writeString(this.subject);
        Integer num6 = this.subjectCharset;
        if (num6 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num6);
        }
        parcel.writeString(this.contentType);
        parcel.writeString(this.contentLocation);
        Long l5 = this.expiry;
        if (l5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l5);
        }
        parcel.writeString(this.messageClass);
        Integer num7 = this.mmsVersion;
        if (num7 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num7);
        }
        Integer num8 = this.messageSize;
        if (num8 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num8);
        }
        Integer num9 = this.priority;
        if (num9 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num9);
        }
        Integer num10 = this.readReport;
        if (num10 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num10);
        }
        Integer num11 = this.reportAllowed;
        if (num11 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num11);
        }
        Integer num12 = this.responseStatus;
        if (num12 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num12);
        }
        Integer num13 = this.status;
        if (num13 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num13);
        }
        parcel.writeString(this.transactionId);
        Integer num14 = this.retrieveStatus;
        if (num14 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num14);
        }
        parcel.writeString(this.retrieveText);
        Integer num15 = this.retrieveTextCharset;
        if (num15 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num15);
        }
        Integer num16 = this.readStatus;
        if (num16 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num16);
        }
        Integer num17 = this.contentClass;
        if (num17 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num17);
        }
        Integer num18 = this.deliveryReport;
        if (num18 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num18);
        }
        Integer num19 = this.deliveryTime;
        if (num19 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num19);
        }
        parcel.writeString(this.responseText);
        Integer num20 = this.locked;
        if (num20 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num20);
        }
        Integer num21 = this.subId;
        if (num21 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num21);
        }
        parcel.writeStringList(this.recipients);
        List<vg5> list = this.addressItems;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<vg5> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, i);
            }
        }
        List<xg5> list2 = this.partItems;
        if (list2 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list2.size());
        Iterator<xg5> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(parcel, i);
        }
    }

    public wg5(Long l, Integer num, Integer num2, Long l2, Long l3, Long l4, Integer num3, Integer num4, Integer num5, String str, Integer num6, String str2, String str3, Long l5, String str4, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, String str5, Integer num14, String str6, Integer num15, Integer num16, Integer num17, Integer num18, Integer num19, String str7, Integer num20, Integer num21, List<String> list, List<vg5> list2, List<xg5> list3) {
        this.id = l;
        this.box = num;
        this.type = num2;
        this.threadId = l2;
        this.dateInSeconds = l3;
        this.dateSentInSeconds = l4;
        this.read = num3;
        this.seen = num4;
        this.textOnly = num5;
        this.subject = str;
        this.subjectCharset = num6;
        this.contentType = str2;
        this.contentLocation = str3;
        this.expiry = l5;
        this.messageClass = str4;
        this.mmsVersion = num7;
        this.messageSize = num8;
        this.priority = num9;
        this.readReport = num10;
        this.reportAllowed = num11;
        this.responseStatus = num12;
        this.status = num13;
        this.transactionId = str5;
        this.retrieveStatus = num14;
        this.retrieveText = str6;
        this.retrieveTextCharset = num15;
        this.readStatus = num16;
        this.contentClass = num17;
        this.deliveryReport = num18;
        this.deliveryTime = num19;
        this.responseText = str7;
        this.locked = num20;
        this.subId = num21;
        this.recipients = list;
        this.addressItems = list2;
        this.partItems = list3;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getLogTag() {
            return "MmsItem";
        }

        public final Uri getCONTENT_URI() {
            Uri uri = Telephony.Mms.CONTENT_URI;
            uri.getClass();
            return uri;
        }

        public final boolean isMmsOnDevice(wg5 wg5Var) throws Exception {
            Exception exc;
            String str;
            String[] strArr;
            wg5Var.getClass();
            try {
                Uri content_uri = getCONTENT_URI();
                String[] strArr2 = {"date", "date_sent", "m_type"};
                try {
                    String[] strArr3 = {String.valueOf(wg5Var.getDateInSeconds()), String.valueOf(wg5Var.getDateSentInSeconds()), String.valueOf(wg5Var.getType())};
                    try {
                        SwiftApp.Companion companion = SwiftApp.d;
                        Cursor cursorQuery = SwiftApp.Companion.c().getContentResolver().query(content_uri, strArr2, "date = ? AND date_sent = ? AND m_type = ?", strArr3, null);
                        if (cursorQuery == null) {
                            return false;
                        }
                        try {
                            boolean z = cursorQuery.getCount() > 0;
                            cursorQuery.close();
                            return z;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(cursorQuery, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        exc = e;
                        str = "date = ? AND date_sent = ? AND m_type = ?";
                        strArr = strArr3;
                        vr6 vr6Var = vr6.INSTANCE;
                        vr6.e$default(vr6Var, getLogTag(), "isMmsOnDevice", exc, null, 8, null);
                        vr6.e$default(vr6Var, getLogTag(), xs1.j("isMmsOnDevice: selection=", str), null, 4, null);
                        vr6.e$default(vr6Var, getLogTag(), xs1.j("isMmsOnDevice: selectionArgs=", strArr != null ? x50.s0(63, null, strArr) : null), null, 4, null);
                        vr6.e$default(vr6Var, getLogTag(), "isMmsOnDevice: mmsItem=" + wg5Var, null, 4, null);
                        throw exc;
                    }
                } catch (Exception e2) {
                    exc = e2;
                    str = "date = ? AND date_sent = ? AND m_type = ?";
                    strArr = null;
                }
            } catch (Exception e3) {
                exc = e3;
                str = null;
                strArr = null;
            }
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final wg5 createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            parcel.getClass();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf3 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf4 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf4 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf5 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string = parcel.readString();
            Integer numValueOf6 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Long lValueOf5 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string4 = parcel.readString();
            Integer numValueOf7 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf8 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf9 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf10 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf11 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf12 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf13 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            Integer numValueOf14 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string6 = parcel.readString();
            Integer numValueOf15 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf16 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf17 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf18 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf19 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string7 = parcel.readString();
            Integer numValueOf20 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf21 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i = parcel.readInt();
                arrayList = new ArrayList(i);
                int i2 = 0;
                while (i2 != i) {
                    arrayList.add(vg5.CREATOR.createFromParcel(parcel));
                    i2++;
                    i = i;
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i3 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i3);
                int i4 = 0;
                while (i4 != i3) {
                    arrayList3.add(xg5.CREATOR.createFromParcel(parcel));
                    i4++;
                    i3 = i3;
                }
                arrayList2 = arrayList3;
            }
            return new wg5(lValueOf, numValueOf, numValueOf2, lValueOf2, lValueOf3, lValueOf4, numValueOf3, numValueOf4, numValueOf5, string, numValueOf6, string2, string3, lValueOf5, string4, numValueOf7, numValueOf8, numValueOf9, numValueOf10, numValueOf11, numValueOf12, numValueOf13, string5, numValueOf14, string6, numValueOf15, numValueOf16, numValueOf17, numValueOf18, numValueOf19, string7, numValueOf20, numValueOf21, arrayListCreateStringArrayList, arrayList, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        public final wg5[] newArray(int i) {
            return new wg5[i];
        }
    }

    public wg5() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 15, null);
    }

    private static /* synthetic */ void getRandomId$annotations() {
    }

    public final List<String> getRecipients() {
        return this.recipients;
    }
}
