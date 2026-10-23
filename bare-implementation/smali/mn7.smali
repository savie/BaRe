.class public final Lmn7;
.super Ljava/text/DateFormat;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final p:[Ljava/lang/String;

.field public static final q:Ljava/util/TimeZone;

.field public static final r:Ljava/util/Locale;

.field public static final t:Ljava/text/SimpleDateFormat;

.field public static final x:Lmn7;

.field public static final y:Ljava/util/GregorianCalendar;


# instance fields
.field public transient a:Ljava/util/TimeZone;

.field public final b:Ljava/util/Locale;

.field public c:Ljava/lang/Boolean;

.field public transient d:Ljava/util/Calendar;

.field public transient e:Ljava/text/DateFormat;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmn7;->k:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    :try_start_0
    const-string v0, "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    sput-object v0, Lmn7;->n:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 18
    .line 19
    const-string v1, "yyyy-MM-dd"

    .line 20
    .line 21
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    .line 22
    .line 23
    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 24
    .line 25
    filled-new-array {v2, v0, v3, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lmn7;->p:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "UTC"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lmn7;->q:Ljava/util/TimeZone;

    .line 38
    .line 39
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    sput-object v1, Lmn7;->r:Ljava/util/Locale;

    .line 42
    .line 43
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    .line 47
    .line 48
    sput-object v2, Lmn7;->t:Ljava/text/SimpleDateFormat;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lmn7;

    .line 54
    .line 55
    invoke-direct {v2}, Lmn7;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v2, Lmn7;->x:Lmn7;

    .line 59
    .line 60
    new-instance v2, Ljava/util/GregorianCalendar;

    .line 61
    .line 62
    invoke-direct {v2, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    sput-object v2, Lmn7;->y:Ljava/util/GregorianCalendar;

    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lmn7;->f:Z

    .line 15
    sget-object v0, Lmn7;->r:Ljava/util/Locale;

    iput-object v0, p0, Lmn7;->b:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 5
    .line 6
    iput-object p2, p0, Lmn7;->b:Ljava/util/Locale;

    .line 7
    .line 8
    iput-object p3, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-boolean p4, p0, Lmn7;->f:Z

    .line 11
    .line 12
    return-void
.end method

.method public static b(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x30

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x30

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, -0x30

    .line 7
    .line 8
    mul-int/lit16 v0, v0, 0x3e8

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x30

    .line 16
    .line 17
    mul-int/lit8 v1, v1, 0x64

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x30

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0xa

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/lit8 p0, p0, -0x30

    .line 36
    .line 37
    add-int/2addr p0, v0

    .line 38
    return p0
.end method

.method public static f(Ljava/lang/StringBuffer;I)V
    .locals 3

    .line 1
    div-int/lit8 v0, p1, 0xa

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/lit8 v2, v0, 0x30

    .line 12
    .line 13
    int-to-char v2, v2

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0xa

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    :goto_0
    add-int/2addr p1, v1

    .line 21
    int-to-char p1, p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static h(Ljava/lang/StringBuffer;I)V
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x64

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v1, 0x63

    .line 15
    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0, v0}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    mul-int/lit8 v0, v0, 0x64

    .line 26
    .line 27
    sub-int/2addr p1, v0

    .line 28
    :goto_1
    invoke-static {p0, p1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmn7;->d:Ljava/util/Calendar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lmn7;->y:Ljava/util/GregorianCalendar;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Calendar;

    .line 12
    .line 13
    iput-object v0, p0, Lmn7;->d:Ljava/util/Calendar;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lmn7;->isLenient()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lmn7;

    .line 2
    .line 3
    iget-object v1, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 4
    .line 5
    iget-object v2, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-boolean v3, p0, Lmn7;->f:Z

    .line 8
    .line 9
    iget-object p0, p0, Lmn7;->b:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0, v2, v3}, Lmn7;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/Date;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lmn7;->a:Ljava/util/TimeZone;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v3, v2, -0x1

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x5a

    .line 20
    .line 21
    if-eq v4, v3, :cond_0

    .line 22
    .line 23
    iget-object v3, v0, Lmn7;->a:Ljava/util/TimeZone;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v3, Lmn7;->q:Ljava/util/TimeZone;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v3}, Lmn7;->a(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 33
    .line 34
    .line 35
    const-string v3, "Cannot parse date \""

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/16 v11, 0xa

    .line 40
    .line 41
    const/4 v6, 0x5

    .line 42
    const/16 v12, 0xe

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v14, 0x1

    .line 46
    if-gt v2, v11, :cond_2

    .line 47
    .line 48
    sget-object v2, Lmn7;->k:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-static {v1}, Lmn7;->c(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v6, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v6, v2, -0x1

    .line 69
    .line 70
    invoke-static {v5, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move v5, v0

    .line 78
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_1
    const-string v2, "yyyy-MM-dd"

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_2
    sget-object v7, Lmn7;->n:Ljava/util/regex/Pattern;

    .line 94
    .line 95
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_d

    .line 104
    .line 105
    const/4 v0, 0x2

    .line 106
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->end(I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    sub-int v9, v8, v7

    .line 115
    .line 116
    const/16 v10, 0x10

    .line 117
    .line 118
    if-le v9, v14, :cond_5

    .line 119
    .line 120
    move/from16 v16, v11

    .line 121
    .line 122
    add-int/lit8 v11, v7, 0x1

    .line 123
    .line 124
    invoke-static {v11, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    mul-int/lit16 v11, v11, 0xe10

    .line 129
    .line 130
    if-lt v9, v6, :cond_3

    .line 131
    .line 132
    sub-int/2addr v8, v0

    .line 133
    invoke-static {v8, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    mul-int/lit8 v8, v8, 0x3c

    .line 138
    .line 139
    add-int/2addr v11, v8

    .line 140
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    const/16 v8, 0x2d

    .line 145
    .line 146
    if-ne v7, v8, :cond_4

    .line 147
    .line 148
    mul-int/lit16 v11, v11, -0x3e8

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    mul-int/lit16 v11, v11, 0x3e8

    .line 152
    .line 153
    :goto_1
    const/16 v7, 0xf

    .line 154
    .line 155
    invoke-virtual {v4, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v10, v13}, Ljava/util/Calendar;->set(II)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    move/from16 v16, v11

    .line 163
    .line 164
    :goto_2
    invoke-static {v1}, Lmn7;->c(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-static {v6, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    sub-int/2addr v6, v14

    .line 173
    invoke-static {v5, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    const/16 v8, 0xb

    .line 178
    .line 179
    invoke-static {v8, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    invoke-static {v12, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-le v2, v10, :cond_6

    .line 188
    .line 189
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    const/16 v10, 0x3a

    .line 194
    .line 195
    if-ne v2, v10, :cond_6

    .line 196
    .line 197
    const/16 v2, 0x11

    .line 198
    .line 199
    invoke-static {v2, v1}, Lmn7;->b(ILjava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    move v10, v7

    .line 204
    move v7, v5

    .line 205
    move v5, v10

    .line 206
    move v10, v2

    .line 207
    goto :goto_3

    .line 208
    :cond_6
    move v10, v7

    .line 209
    move v7, v5

    .line 210
    move v5, v10

    .line 211
    move v10, v13

    .line 212
    :goto_3
    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->start(I)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    add-int/lit8 v5, v2, 0x1

    .line 220
    .line 221
    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->end(I)I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-lt v5, v6, :cond_7

    .line 226
    .line 227
    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_7
    sub-int/2addr v6, v5

    .line 232
    if-eqz v6, :cond_c

    .line 233
    .line 234
    if-eq v6, v14, :cond_b

    .line 235
    .line 236
    if-eq v6, v0, :cond_a

    .line 237
    .line 238
    const/4 v7, 0x3

    .line 239
    if-eq v6, v7, :cond_9

    .line 240
    .line 241
    const/16 v7, 0x9

    .line 242
    .line 243
    if-gt v6, v7, :cond_8

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_8
    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v2, "\": invalid fractional seconds \'"

    .line 255
    .line 256
    const-string v4, "\'; can use at most 9 digits"

    .line 257
    .line 258
    invoke-static {v3, v1, v2, v0, v4}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v5, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/4 v0, 0x0

    .line 266
    return-object v0

    .line 267
    :cond_9
    :goto_4
    add-int/lit8 v3, v2, 0x3

    .line 268
    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    add-int/lit8 v13, v3, -0x30

    .line 274
    .line 275
    :cond_a
    add-int/2addr v2, v0

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    add-int/lit8 v0, v0, -0x30

    .line 281
    .line 282
    mul-int/lit8 v0, v0, 0xa

    .line 283
    .line 284
    add-int/2addr v13, v0

    .line 285
    :cond_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    add-int/lit8 v0, v0, -0x30

    .line 290
    .line 291
    mul-int/lit8 v0, v0, 0x64

    .line 292
    .line 293
    add-int/2addr v13, v0

    .line 294
    :cond_c
    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 295
    .line 296
    .line 297
    :goto_5
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    return-object v0

    .line 302
    :cond_d
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    .line 303
    .line 304
    :goto_6
    new-instance v4, Ljava/text/ParseException;

    .line 305
    .line 306
    iget-object v0, v0, Lmn7;->c:Ljava/lang/Boolean;

    .line 307
    .line 308
    const-string v5, "\": while it seems to fit format \'"

    .line 309
    .line 310
    const-string v6, "\', parsing fails (leniency? "

    .line 311
    .line 312
    invoke-static {v3, v1, v5, v2, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v0, ")"

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-direct {v4, v0, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 329
    .line 330
    .line 331
    throw v4
.end method

.method public final e(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x2d

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v3, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lmn7;->d(Ljava/lang/String;)Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "Cannot parse date \""

    .line 62
    .line 63
    const-string v1, "\", problem: "

    .line 64
    .line 65
    invoke-static {v0, p1, v1, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 82
    .line 83
    if-ltz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/16 v5, 0x30

    .line 90
    .line 91
    if-lt v1, v5, :cond_2

    .line 92
    .line 93
    const/16 v5, 0x39

    .line 94
    .line 95
    if-le v1, v5, :cond_1

    .line 96
    .line 97
    :cond_2
    if-gtz v0, :cond_3

    .line 98
    .line 99
    if-eq v1, v3, :cond_1

    .line 100
    .line 101
    :cond_3
    if-gez v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eq v0, v3, :cond_7

    .line 108
    .line 109
    sget-object v0, Ltp5;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ge v3, v1, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    if-le v3, v1, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    :goto_0
    if-ge v4, v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    sub-int/2addr v3, v5

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    if-gez v3, :cond_8

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    :goto_1
    :try_start_1
    invoke-static {p1}, Ltp5;->a(Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    new-instance p2, Ljava/util/Date;

    .line 149
    .line 150
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 151
    .line 152
    .line 153
    return-object p2

    .line 154
    :catch_1
    const-string p0, "Timestamp value "

    .line 155
    .line 156
    const-string v0, " out of 64-bit value range"

    .line 157
    .line 158
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object v2

    .line 170
    :cond_8
    :goto_2
    iget-object v0, p0, Lmn7;->e:Ljava/text/DateFormat;

    .line 171
    .line 172
    if-nez v0, :cond_d

    .line 173
    .line 174
    iget-object v0, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 175
    .line 176
    iget-object v1, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 177
    .line 178
    sget-object v2, Lmn7;->r:Ljava/util/Locale;

    .line 179
    .line 180
    iget-object v3, p0, Lmn7;->b:Ljava/util/Locale;

    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_a

    .line 187
    .line 188
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 189
    .line 190
    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 191
    .line 192
    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    .line 194
    .line 195
    if-nez v0, :cond_9

    .line 196
    .line 197
    sget-object v0, Lmn7;->q:Ljava/util/TimeZone;

    .line 198
    .line 199
    :cond_9
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    sget-object v2, Lmn7;->t:Ljava/text/SimpleDateFormat;

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Ljava/text/DateFormat;

    .line 210
    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 223
    .line 224
    .line 225
    :cond_c
    iput-object v2, p0, Lmn7;->e:Ljava/text/DateFormat;

    .line 226
    .line 227
    :cond_d
    iget-object p0, p0, Lmn7;->e:Ljava/text/DateFormat;

    .line 228
    .line 229
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public final format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 1
    iget-object p3, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    sget-object p3, Lmn7;->q:Ljava/util/TimeZone;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Lmn7;->a(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x2b

    .line 25
    .line 26
    const-string v4, "+0000"

    .line 27
    .line 28
    const/16 v5, 0x2d

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sub-int/2addr v1, p1

    .line 39
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v1}, Lmn7;->h(Ljava/lang/StringBuffer;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/16 v2, 0x270f

    .line 47
    .line 48
    if-le v1, v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-static {p2, v1}, Lmn7;->h(Ljava/lang/StringBuffer;I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p1

    .line 65
    invoke-static {p2, v1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x5

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {p2, p1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 77
    .line 78
    .line 79
    const/16 p1, 0x54

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    const/16 p1, 0xb

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p2, p1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 91
    .line 92
    .line 93
    const/16 p1, 0x3a

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    const/16 v1, 0xc

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {p2, v1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    const/16 v1, 0xd

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {p2, v1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x2e

    .line 120
    .line 121
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    const/16 v1, 0xe

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    div-int/lit8 v2, v1, 0x64

    .line 131
    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    const/16 v2, 0x30

    .line 135
    .line 136
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    add-int/lit8 v6, v2, 0x30

    .line 141
    .line 142
    int-to-char v6, v6

    .line 143
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    mul-int/lit8 v2, v2, 0x64

    .line 147
    .line 148
    sub-int/2addr v1, v2

    .line 149
    :goto_1
    invoke-static {p2, v1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    invoke-virtual {p3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    iget-boolean p0, p0, Lmn7;->f:Z

    .line 161
    .line 162
    if-eqz p3, :cond_7

    .line 163
    .line 164
    const v0, 0xea60

    .line 165
    .line 166
    .line 167
    div-int v0, p3, v0

    .line 168
    .line 169
    div-int/lit8 v1, v0, 0x3c

    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    rem-int/lit8 v0, v0, 0x3c

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-gez p3, :cond_5

    .line 182
    .line 183
    move v3, v5

    .line 184
    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    invoke-static {p2, v1}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 188
    .line 189
    .line 190
    if-eqz p0, :cond_6

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    .line 194
    .line 195
    :cond_6
    invoke-static {p2, v0}, Lmn7;->f(Ljava/lang/StringBuffer;I)V

    .line 196
    .line 197
    .line 198
    return-object p2

    .line 199
    :cond_7
    if-eqz p0, :cond_8

    .line 200
    .line 201
    const-string p0, "+00:00"

    .line 202
    .line 203
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .line 205
    .line 206
    return-object p2

    .line 207
    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .line 209
    .line 210
    return-object p2
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 0

    .line 1
    iget-object p0, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isLenient()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/text/ParsePosition;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lmn7;->e(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lmn7;->p:[Ljava/lang/String;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    :goto_0
    const/16 v4, 0x22

    .line 27
    .line 28
    if-ge v1, v3, :cond_2

    .line 29
    .line 30
    aget-object v5, v2, v1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-lez v6, :cond_1

    .line 37
    .line 38
    const-string v4, "\", \""

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v1, "\": not compatible with any of standard forms ("

    .line 61
    .line 62
    const-string v2, ")"

    .line 63
    .line 64
    const-string v3, "Cannot parse date \""

    .line 65
    .line 66
    invoke-static {v3, p1, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 0

    .line 79
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmn7;->e(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setLenient(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iput-object p1, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lmn7;->e:Ljava/text/DateFormat;

    .line 21
    .line 22
    return-void
.end method

.method public final setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lmn7;->e:Ljava/text/DateFormat;

    .line 11
    .line 12
    iput-object p1, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lmn7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmn7;->a:Ljava/util/TimeZone;

    .line 8
    .line 9
    iget-object v2, p0, Lmn7;->b:Ljava/util/Locale;

    .line 10
    .line 11
    iget-object p0, p0, Lmn7;->c:Ljava/lang/Boolean;

    .line 12
    .line 13
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "DateFormat %s: (timezone: %s, locale: %s, lenient: %s)"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
