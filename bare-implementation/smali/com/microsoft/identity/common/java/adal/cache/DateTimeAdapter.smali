.class public Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;
.implements Ldm4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;",
        "Ldm4;"
    }
.end annotation


# instance fields
.field private final mEnUs24HourFormat:Ljava/text/SimpleDateFormat;

.field private final mEnUsFormat:Ljava/text/DateFormat;

.field private final mISO8601Format:Ljava/text/SimpleDateFormat;

.field private final mLocal24HourFormat:Ljava/text/SimpleDateFormat;

.field private final mLocalFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iput-object v2, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mEnUsFormat:Ljava/text/DateFormat;

    .line 12
    .line 13
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mLocalFormat:Ljava/text/DateFormat;

    .line 18
    .line 19
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "UTC"

    .line 27
    .line 28
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mISO8601Format:Ljava/text/SimpleDateFormat;

    .line 36
    .line 37
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    const-string v2, "MMM dd, yyyy HH:mm:ss"

    .line 40
    .line 41
    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mEnUs24HourFormat:Ljava/text/SimpleDateFormat;

    .line 45
    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mLocal24HourFormat:Ljava/text/SimpleDateFormat;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    const-string p2, "Could not parse date: "

    .line 2
    .line 3
    const-string p3, "Could not parse date: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mISO8601Format:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    :try_start_2
    const-string v0, "DateTimeAdapter"

    .line 21
    .line 22
    const-string v1, "Cannot parse with ISO8601, try again with local format."

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mLocalFormat:Ljava/text/DateFormat;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    :try_start_4
    const-string v0, "DateTimeAdapter"

    .line 36
    .line 37
    const-string v1, "Cannot parse with local format, try again with local 24 hour format."

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_5
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mLocal24HourFormat:Ljava/text/SimpleDateFormat;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    goto :goto_0

    .line 50
    :catch_2
    :try_start_6
    const-string v0, "DateTimeAdapter"

    .line 51
    .line 52
    const-string v1, "Cannot parse with local 24 hour format, try again with en us format."

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_7
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mEnUsFormat:Ljava/text/DateFormat;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    goto :goto_0

    .line 65
    :catch_3
    :try_start_8
    const-string v0, "DateTimeAdapter"

    .line 66
    .line 67
    const-string v1, "Cannot parse with en us format, try again with en us 24 hour format."

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_9
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mEnUs24HourFormat:Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    :goto_0
    return-object p1

    .line 80
    :catch_4
    move-exception v0

    .line 81
    :try_start_a
    const-string v1, "DateTimeAdapter"

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {v1, p3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    new-instance p3, Lgl4;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p3

    .line 120
    :goto_1
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 121
    throw p1
.end method

.method public final serialize(Ljava/lang/Object;Lz28;)Lqj4;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Date;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance p2, Lkl4;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/common/java/adal/cache/DateTimeAdapter;->mISO8601Format:Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p2, p1}, Lkl4;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object p2

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method
