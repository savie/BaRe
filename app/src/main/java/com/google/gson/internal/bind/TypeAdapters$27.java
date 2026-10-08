package com.google.gson.internal.bind;

import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$27 extends TypeAdapters$IntegerFieldsTypeAdapter<Calendar> {
    @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
    public final Object a(long[] jArr) {
        return new GregorianCalendar(b.b(jArr[0]), b.b(jArr[1]), b.b(jArr[2]), b.b(jArr[3]), b.b(jArr[4]), b.b(jArr[5]));
    }

    @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
    public final long[] b(Object obj) {
        Calendar calendar = (Calendar) obj;
        return new long[]{calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(11), calendar.get(12), calendar.get(13)};
    }
}
