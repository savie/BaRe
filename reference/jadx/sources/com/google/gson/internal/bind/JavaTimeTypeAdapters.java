package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.ac8;
import defpackage.dj7;
import defpackage.km4;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import java.io.IOException;
import java.io.Serializable;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JavaTimeTypeAdapters implements ac8 {
    public static final com.google.gson.b a = new AnonymousClass1("seconds", "nanos");
    public static final com.google.gson.b b = new AnonymousClass2("seconds", "nanos");
    public static final com.google.gson.b c = new AnonymousClass3("year", "month", "day");
    public static final com.google.gson.b d = new AnonymousClass4("hour", "minute", "second", "nano");
    public static final com.google.gson.b e = new AnonymousClass6("month", "day");
    public static final com.google.gson.b f = new AnonymousClass9("years", "months", "days");
    public static final com.google.gson.b g = new AnonymousClass10("year");
    public static final com.google.gson.b h = new AnonymousClass11("year", "month");
    public static final com.google.gson.b i = new com.google.gson.b() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.12
        @Override // com.google.gson.b
        public final Object read(tl4 tl4Var) throws IOException {
            tl4Var.beginObject();
            String strNextString = null;
            Integer numValueOf = null;
            while (tl4Var.peek() != 4) {
                String strNextName = tl4Var.nextName();
                strNextName.getClass();
                if (strNextName.equals("totalSeconds")) {
                    numValueOf = Integer.valueOf(tl4Var.nextInt());
                } else if (strNextName.equals("id")) {
                    strNextString = tl4Var.nextString();
                } else {
                    tl4Var.skipValue();
                }
            }
            tl4Var.endObject();
            if (strNextString != null) {
                return ZoneId.of(strNextString);
            }
            if (numValueOf != null) {
                return ZoneOffset.ofTotalSeconds(numValueOf.intValue());
            }
            throw new km4("Missing id or totalSeconds field; at path ".concat(tl4Var.getPreviousPath()));
        }

        @Override // com.google.gson.b
        public final void write(nn4 nn4Var, Object obj) throws IOException {
            ZoneId zoneId = (ZoneId) obj;
            if (zoneId instanceof ZoneOffset) {
                nn4Var.g();
                nn4Var.n("totalSeconds");
                nn4Var.G(((ZoneOffset) zoneId).getTotalSeconds());
                nn4Var.m();
                return;
            }
            nn4Var.g();
            nn4Var.n("id");
            nn4Var.S(zoneId.getId());
            nn4Var.m();
        }
    }.nullSafe();
    public static final xb8 j = new xb8() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.14
        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            if (!rawType.getName().startsWith("java.time.")) {
                return null;
            }
            if (rawType == Duration.class) {
                return JavaTimeTypeAdapters.a;
            }
            if (rawType == Instant.class) {
                return JavaTimeTypeAdapters.b;
            }
            if (rawType == LocalDate.class) {
                return JavaTimeTypeAdapters.c;
            }
            if (rawType == LocalTime.class) {
                return JavaTimeTypeAdapters.d;
            }
            if (rawType == LocalDateTime.class) {
                return JavaTimeTypeAdapters.b(aVar);
            }
            if (rawType == MonthDay.class) {
                return JavaTimeTypeAdapters.e;
            }
            if (rawType == OffsetDateTime.class) {
                final com.google.gson.b bVarB = JavaTimeTypeAdapters.b(aVar);
                final com.google.gson.b bVarE = aVar.e(ZoneOffset.class);
                return new com.google.gson.b() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.7
                    @Override // com.google.gson.b
                    public final Object read(tl4 tl4Var) throws IOException {
                        tl4Var.beginObject();
                        LocalDateTime localDateTime = null;
                        ZoneOffset zoneOffset = null;
                        while (tl4Var.peek() != 4) {
                            String strNextName = tl4Var.nextName();
                            strNextName.getClass();
                            if (strNextName.equals("offset")) {
                                zoneOffset = (ZoneOffset) bVarE.read(tl4Var);
                            } else if (strNextName.equals("dateTime")) {
                                localDateTime = (LocalDateTime) bVarB.read(tl4Var);
                            } else {
                                tl4Var.skipValue();
                            }
                        }
                        tl4Var.endObject();
                        JavaTimeTypeAdapters.a(localDateTime, "dateTime", tl4Var);
                        JavaTimeTypeAdapters.a(zoneOffset, "offset", tl4Var);
                        return OffsetDateTime.of(localDateTime, zoneOffset);
                    }

                    @Override // com.google.gson.b
                    public final void write(nn4 nn4Var, Object obj) throws IOException {
                        OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                        nn4Var.g();
                        nn4Var.n("dateTime");
                        bVarB.write(nn4Var, offsetDateTime.toLocalDateTime());
                        nn4Var.n("offset");
                        bVarE.write(nn4Var, offsetDateTime.getOffset());
                        nn4Var.m();
                    }
                }.nullSafe();
            }
            if (rawType == OffsetTime.class) {
                com.google.gson.b bVar = JavaTimeTypeAdapters.a;
                final com.google.gson.b bVarE2 = aVar.e(LocalTime.class);
                final com.google.gson.b bVarE3 = aVar.e(ZoneOffset.class);
                return new com.google.gson.b() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.8
                    @Override // com.google.gson.b
                    public final Object read(tl4 tl4Var) throws IOException {
                        tl4Var.beginObject();
                        LocalTime localTime = null;
                        ZoneOffset zoneOffset = null;
                        while (tl4Var.peek() != 4) {
                            String strNextName = tl4Var.nextName();
                            strNextName.getClass();
                            if (strNextName.equals("offset")) {
                                zoneOffset = (ZoneOffset) bVarE3.read(tl4Var);
                            } else if (strNextName.equals("time")) {
                                localTime = (LocalTime) bVarE2.read(tl4Var);
                            } else {
                                tl4Var.skipValue();
                            }
                        }
                        tl4Var.endObject();
                        JavaTimeTypeAdapters.a(localTime, "time", tl4Var);
                        JavaTimeTypeAdapters.a(zoneOffset, "offset", tl4Var);
                        return OffsetTime.of(localTime, zoneOffset);
                    }

                    @Override // com.google.gson.b
                    public final void write(nn4 nn4Var, Object obj) throws IOException {
                        OffsetTime offsetTime = (OffsetTime) obj;
                        nn4Var.g();
                        nn4Var.n("time");
                        bVarE2.write(nn4Var, offsetTime.toLocalTime());
                        nn4Var.n("offset");
                        bVarE3.write(nn4Var, offsetTime.getOffset());
                        nn4Var.m();
                    }
                }.nullSafe();
            }
            if (rawType == Period.class) {
                return JavaTimeTypeAdapters.f;
            }
            if (rawType == Year.class) {
                return JavaTimeTypeAdapters.g;
            }
            if (rawType == YearMonth.class) {
                return JavaTimeTypeAdapters.h;
            }
            if (rawType == ZoneId.class || rawType == ZoneOffset.class) {
                return JavaTimeTypeAdapters.i;
            }
            if (rawType != ZonedDateTime.class) {
                return null;
            }
            final com.google.gson.b bVarB2 = JavaTimeTypeAdapters.b(aVar);
            final com.google.gson.b bVarE4 = aVar.e(ZoneOffset.class);
            final com.google.gson.b bVarE5 = aVar.e(ZoneId.class);
            return new com.google.gson.b() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.13
                @Override // com.google.gson.b
                public final Object read(tl4 tl4Var) throws IOException {
                    tl4Var.beginObject();
                    LocalDateTime localDateTime = null;
                    ZoneOffset zoneOffset = null;
                    ZoneId zoneId = null;
                    while (tl4Var.peek() != 4) {
                        String strNextName = tl4Var.nextName();
                        strNextName.getClass();
                        switch (strNextName) {
                            case "offset":
                                zoneOffset = (ZoneOffset) bVarE4.read(tl4Var);
                                break;
                            case "zone":
                                zoneId = (ZoneId) bVarE5.read(tl4Var);
                                break;
                            case "dateTime":
                                localDateTime = (LocalDateTime) bVarB2.read(tl4Var);
                                break;
                            default:
                                tl4Var.skipValue();
                                break;
                        }
                    }
                    tl4Var.endObject();
                    JavaTimeTypeAdapters.a(localDateTime, "dateTime", tl4Var);
                    JavaTimeTypeAdapters.a(zoneOffset, "offset", tl4Var);
                    JavaTimeTypeAdapters.a(zoneId, "zone", tl4Var);
                    return ZonedDateTime.ofInstant(localDateTime, zoneOffset, zoneId);
                }

                @Override // com.google.gson.b
                public final void write(nn4 nn4Var, Object obj) throws IOException {
                    ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                    if (zonedDateTime == null) {
                        nn4Var.r();
                        return;
                    }
                    nn4Var.g();
                    nn4Var.n("dateTime");
                    bVarB2.write(nn4Var, zonedDateTime.toLocalDateTime());
                    nn4Var.n("offset");
                    bVarE4.write(nn4Var, zonedDateTime.getOffset());
                    nn4Var.n("zone");
                    bVarE5.write(nn4Var, zonedDateTime.getZone());
                    nn4Var.m();
                }
            }.nullSafe();
        }
    };

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass1 extends TypeAdapters$IntegerFieldsTypeAdapter<Duration> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return Duration.ofSeconds(jArr[0], jArr[1]);
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            Duration duration = (Duration) obj;
            return new long[]{duration.getSeconds(), duration.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$10, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass10 extends TypeAdapters$IntegerFieldsTypeAdapter<Year> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return Year.of(Math.toIntExact(jArr[0]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            return new long[]{((Year) obj).getValue()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$11, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass11 extends TypeAdapters$IntegerFieldsTypeAdapter<YearMonth> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return YearMonth.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            YearMonth yearMonth = (YearMonth) obj;
            return new long[]{yearMonth.getYear(), yearMonth.getMonthValue()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass2 extends TypeAdapters$IntegerFieldsTypeAdapter<Instant> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return Instant.ofEpochSecond(jArr[0], jArr[1]);
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            Instant instant = (Instant) obj;
            return new long[]{instant.getEpochSecond(), instant.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass3 extends TypeAdapters$IntegerFieldsTypeAdapter<LocalDate> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return LocalDate.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            LocalDate localDate = (LocalDate) obj;
            return new long[]{localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$4, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass4 extends TypeAdapters$IntegerFieldsTypeAdapter<LocalTime> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return LocalTime.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]), Math.toIntExact(jArr[3]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            LocalTime localTime = (LocalTime) obj;
            return new long[]{localTime.getHour(), localTime.getMinute(), localTime.getSecond(), localTime.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$6, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass6 extends TypeAdapters$IntegerFieldsTypeAdapter<MonthDay> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return MonthDay.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            MonthDay monthDay = (MonthDay) obj;
            return new long[]{monthDay.getMonthValue(), monthDay.getDayOfMonth()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$9, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass9 extends TypeAdapters$IntegerFieldsTypeAdapter<Period> {
        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final Object a(long[] jArr) {
            return Period.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters$IntegerFieldsTypeAdapter
        public final long[] b(Object obj) {
            Period period = (Period) obj;
            return new long[]{period.getYears(), period.getMonths(), period.getDays()};
        }
    }

    public static void a(Serializable serializable, String str, tl4 tl4Var) {
        if (serializable != null) {
            return;
        }
        StringBuilder sbU = dj7.u("Missing ", str, " field; at path ");
        sbU.append(tl4Var.getPreviousPath());
        throw new km4(sbU.toString());
    }

    public static com.google.gson.b b(com.google.gson.a aVar) {
        final com.google.gson.b bVarE = aVar.e(LocalDate.class);
        final com.google.gson.b bVarE2 = aVar.e(LocalTime.class);
        return new com.google.gson.b() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.5
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                tl4Var.beginObject();
                LocalDate localDate = null;
                LocalTime localTime = null;
                while (tl4Var.peek() != 4) {
                    String strNextName = tl4Var.nextName();
                    strNextName.getClass();
                    if (strNextName.equals("date")) {
                        localDate = (LocalDate) bVarE.read(tl4Var);
                    } else if (strNextName.equals("time")) {
                        localTime = (LocalTime) bVarE2.read(tl4Var);
                    } else {
                        tl4Var.skipValue();
                    }
                }
                tl4Var.endObject();
                JavaTimeTypeAdapters.a(localDate, "date", tl4Var);
                JavaTimeTypeAdapters.a(localTime, "time", tl4Var);
                return LocalDateTime.of(localDate, localTime);
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                LocalDateTime localDateTime = (LocalDateTime) obj;
                nn4Var.g();
                nn4Var.n("date");
                bVarE.write(nn4Var, localDateTime.toLocalDate());
                nn4Var.n("time");
                bVarE2.write(nn4Var, localDateTime.toLocalTime());
                nn4Var.m();
            }
        }.nullSafe();
    }
}
