.class Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxb8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "java.time."

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const-class p2, Ljava/time/Duration;

    .line 20
    .line 21
    if-ne p0, p2, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->a:Lcom/google/gson/b;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const-class p2, Ljava/time/Instant;

    .line 27
    .line 28
    if-ne p0, p2, :cond_2

    .line 29
    .line 30
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->b:Lcom/google/gson/b;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    const-class p2, Ljava/time/LocalDate;

    .line 34
    .line 35
    if-ne p0, p2, :cond_3

    .line 36
    .line 37
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->c:Lcom/google/gson/b;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    const-class p2, Ljava/time/LocalTime;

    .line 41
    .line 42
    if-ne p0, p2, :cond_4

    .line 43
    .line 44
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->d:Lcom/google/gson/b;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    const-class v0, Ljava/time/LocalDateTime;

    .line 48
    .line 49
    if-ne p0, v0, :cond_5

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->b(Lcom/google/gson/a;)Lcom/google/gson/b;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_5
    const-class v0, Ljava/time/MonthDay;

    .line 57
    .line 58
    if-ne p0, v0, :cond_6

    .line 59
    .line 60
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->e:Lcom/google/gson/b;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_6
    const-class v0, Ljava/time/OffsetDateTime;

    .line 64
    .line 65
    const-class v1, Ljava/time/ZoneOffset;

    .line 66
    .line 67
    if-ne p0, v0, :cond_7

    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->b(Lcom/google/gson/a;)Lcom/google/gson/b;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, v1}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$7;

    .line 78
    .line 79
    invoke-direct {p2, p0, p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$7;-><init>(Lcom/google/gson/b;Lcom/google/gson/b;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_7
    const-class v0, Ljava/time/OffsetTime;

    .line 88
    .line 89
    if-ne p0, v0, :cond_8

    .line 90
    .line 91
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->a:Lcom/google/gson/b;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p1, v1}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$8;

    .line 102
    .line 103
    invoke-direct {p2, p0, p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$8;-><init>(Lcom/google/gson/b;Lcom/google/gson/b;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_8
    const-class p2, Ljava/time/Period;

    .line 112
    .line 113
    if-ne p0, p2, :cond_9

    .line 114
    .line 115
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->f:Lcom/google/gson/b;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_9
    const-class p2, Ljava/time/Year;

    .line 119
    .line 120
    if-ne p0, p2, :cond_a

    .line 121
    .line 122
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->g:Lcom/google/gson/b;

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_a
    const-class p2, Ljava/time/YearMonth;

    .line 126
    .line 127
    if-ne p0, p2, :cond_b

    .line 128
    .line 129
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->h:Lcom/google/gson/b;

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_b
    const-class p2, Ljava/time/ZoneId;

    .line 133
    .line 134
    if-eq p0, p2, :cond_e

    .line 135
    .line 136
    if-ne p0, v1, :cond_c

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_c
    const-class v0, Ljava/time/ZonedDateTime;

    .line 140
    .line 141
    if-ne p0, v0, :cond_d

    .line 142
    .line 143
    invoke-static {p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->b(Lcom/google/gson/a;)Lcom/google/gson/b;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p1, v1}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, p2}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$13;

    .line 156
    .line 157
    invoke-direct {p2, p0, v0, p1}, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters$13;-><init>(Lcom/google/gson/b;Lcom/google/gson/b;Lcom/google/gson/b;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :cond_d
    :goto_0
    const/4 p0, 0x0

    .line 166
    return-object p0

    .line 167
    :cond_e
    :goto_1
    sget-object p0, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->i:Lcom/google/gson/b;

    .line 168
    .line 169
    return-object p0
.end method
