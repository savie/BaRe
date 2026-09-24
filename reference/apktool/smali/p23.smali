.class public final Lp23;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lor1;


# static fields
.field public static final f:[I


# instance fields
.field public a:Ljava/text/SimpleDateFormat;

.field public b:I

.field public c:Ljava/text/SimpleDateFormat;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp23;->f:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0xe
        0xd
        0xc
        0xb
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MMM d yyyy"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lp23;->e(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "MMM d HH:mm"

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lp23;->f(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static b(Ljava/text/SimpleDateFormat;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x6

    .line 10
    new-array v2, v1, [C

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    move v3, v0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_8

    .line 17
    .line 18
    aget-char v4, v2, v3

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, -0x1

    .line 25
    if-eq v5, v6, :cond_7

    .line 26
    .line 27
    const/16 v5, 0x48

    .line 28
    .line 29
    if-eq v4, v5, :cond_6

    .line 30
    .line 31
    const/16 v5, 0x4d

    .line 32
    .line 33
    if-eq v4, v5, :cond_5

    .line 34
    .line 35
    const/16 v5, 0x53

    .line 36
    .line 37
    if-eq v4, v5, :cond_4

    .line 38
    .line 39
    const/16 v5, 0x64

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    const/16 v5, 0x6d

    .line 44
    .line 45
    if-eq v4, v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x73

    .line 48
    .line 49
    if-eq v4, v5, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 p0, 0xd

    .line 53
    .line 54
    invoke-static {p0}, Lp23;->c(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_2
    const/16 p0, 0xc

    .line 60
    .line 61
    invoke-static {p0}, Lp23;->c(I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_3
    const/4 p0, 0x5

    .line 67
    invoke-static {p0}, Lp23;->c(I)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_4
    const/16 p0, 0xe

    .line 73
    .line 74
    invoke-static {p0}, Lp23;->c(I)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :cond_5
    const/4 p0, 0x2

    .line 80
    invoke-static {p0}, Lp23;->c(I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0

    .line 85
    :cond_6
    const/16 p0, 0xb

    .line 86
    .line 87
    invoke-static {p0}, Lp23;->c(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_8
    return v0

    .line 96
    nop

    .line 97
    :array_0
    .array-data 2
        0x53s
        0x73s
        0x6ds
        0x48s
        0x64s
        0x4ds
    .end array-data
.end method

.method public static c(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    sget-object v2, Lp23;->f:[I

    .line 7
    .line 8
    aget v2, v2, v1

    .line 9
    .line 10
    if-ne p0, v2, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Le23;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "en"

    .line 5
    .line 6
    sget-object v1, Le23;->e:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    instance-of v1, v0, Ljava/util/Locale;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/text/DateFormatSymbols;

    .line 19
    .line 20
    check-cast v0, Ljava/util/Locale;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/util/StringTokenizer;

    .line 33
    .line 34
    const-string v2, "|"

    .line 35
    .line 36
    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v2, 0xc

    .line 44
    .line 45
    if-ne v2, v0, :cond_2

    .line 46
    .line 47
    const/16 v0, 0xd

    .line 48
    .line 49
    new-array v0, v0, [Ljava/lang/String;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    add-int/lit8 v3, v2, 0x1

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    aput-object v4, v0, v2

    .line 65
    .line 66
    move v2, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v1, ""

    .line 69
    .line 70
    aput-object v1, v0, v2

    .line 71
    .line 72
    new-instance v1, Ljava/text/DateFormatSymbols;

    .line 73
    .line 74
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string v0, "expecting a pipe-delimited string containing 12 tokens"

    .line 84
    .line 85
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    move-object v1, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance v1, Ljava/text/DateFormatSymbols;

    .line 92
    .line 93
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget-object v0, p1, Le23;->c:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Lp23;->f(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p1, Le23;->b:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, v0, v1}, Lp23;->e(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 120
    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-boolean p1, p1, Le23;->d:Z

    .line 127
    .line 128
    iput-boolean p1, p0, Lp23;->e:Z

    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    const-string p0, "defaultFormatString cannot be null"

    .line 132
    .line 133
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/Calendar;

    .line 10
    .line 11
    iget-object v2, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    sget-object v3, Lp23;->f:[I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Calendar;

    .line 33
    .line 34
    iget-object v6, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v6, p0, Lp23;->e:Z

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    const/4 v6, 0x5

    .line 48
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, " "

    .line 60
    .line 61
    invoke-static {p1, v7, v6}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 66
    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v9, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v9, " yyyy"

    .line 82
    .line 83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    iget-object v9, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v8, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 109
    .line 110
    .line 111
    new-instance v8, Ljava/text/ParsePosition;

    .line 112
    .line 113
    invoke-direct {v8, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v6, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-ne v8, v6, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    const/4 p1, -0x1

    .line 142
    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->add(II)V

    .line 143
    .line 144
    .line 145
    :cond_1
    iget p0, p0, Lp23;->d:I

    .line 146
    .line 147
    if-gtz p0, :cond_2

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    sub-int/2addr p0, v5

    .line 151
    aget p0, v3, p0

    .line 152
    .line 153
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->clear(I)V

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_4
    new-instance v2, Ljava/text/ParsePosition;

    .line 165
    .line 166
    invoke-direct {v2, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 170
    .line 171
    invoke-virtual {v4, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-eqz v4, :cond_7

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-ne v6, v7, :cond_7

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    .line 189
    .line 190
    iget p0, p0, Lp23;->b:I

    .line 191
    .line 192
    if-gtz p0, :cond_5

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_5
    sub-int/2addr p0, v5

    .line 196
    aget p0, v3, p0

    .line 197
    .line 198
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_6

    .line 203
    .line 204
    :goto_0
    return-object v1

    .line 205
    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->clear(I)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_7
    const-string p0, "Timestamp \'"

    .line 210
    .line 211
    const-string v1, "\' could not be parsed using a server time of "

    .line 212
    .line 213
    invoke-static {p0, p1, v1}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/4 p0, 0x0

    .line 240
    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, Lp23;->a:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    invoke-static {p1}, Lp23;->b(Ljava/text/SimpleDateFormat;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lp23;->b:I

    .line 37
    .line 38
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, Lp23;->c:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    invoke-static {p1}, Lp23;->b(Ljava/text/SimpleDateFormat;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lp23;->d:I

    .line 37
    .line 38
    return-void
.end method
