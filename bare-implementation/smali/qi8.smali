.class public final Lqi8;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(.*?);([0-9]{1,20})\\s{0,80}.{0,80}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lqi8;->e:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    new-instance v0, Lg23;

    .line 8
    .line 9
    invoke-direct {v0}, Lg23;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, " "

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/4 v6, 0x5

    .line 55
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/16 v7, 0x9

    .line 60
    .line 61
    invoke-virtual {p0, v7}, Lpr1;->g(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/16 v8, 0xa

    .line 66
    .line 67
    invoke-virtual {p0, v8}, Lpr1;->g(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const/16 v9, 0xb

    .line 72
    .line 73
    invoke-virtual {p0, v9}, Lpr1;->g(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    :try_start_0
    iget-object p0, p0, Lpr1;->d:Lp23;

    .line 82
    .line 83
    invoke-virtual {p0, v4}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    :catch_0
    new-instance p0, Ljava/util/StringTokenizer;

    .line 90
    .line 91
    const-string v4, ","

    .line 92
    .line 93
    invoke-direct {p0, v6, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eq v4, p1, :cond_1

    .line 101
    .line 102
    if-eq v4, v2, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    :goto_0
    const-string p0, ".DIR"

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    const/4 v4, -0x1

    .line 122
    const/4 v6, 0x0

    .line 123
    if-eq p0, v4, :cond_2

    .line 124
    .line 125
    iput p1, v0, Lg23;->a:I

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    iput v6, v0, Lg23;->a:I

    .line 129
    .line 130
    :goto_1
    iput-object v1, v0, Lg23;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    const-wide/16 v8, 0x200

    .line 137
    .line 138
    mul-long/2addr v3, v8

    .line 139
    iput-wide v3, v0, Lg23;->b:J

    .line 140
    .line 141
    move p0, v6

    .line 142
    :goto_2
    if-ge p0, v5, :cond_6

    .line 143
    .line 144
    aget-object v1, v7, p0

    .line 145
    .line 146
    const/16 v3, 0x52

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-ltz v3, :cond_3

    .line 153
    .line 154
    move v3, p1

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    move v3, v6

    .line 157
    :goto_3
    invoke-virtual {v0, p0, v6, v3}, Lg23;->a(IIZ)V

    .line 158
    .line 159
    .line 160
    const/16 v3, 0x57

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-ltz v3, :cond_4

    .line 167
    .line 168
    move v3, p1

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    move v3, v6

    .line 171
    :goto_4
    invoke-virtual {v0, p0, p1, v3}, Lg23;->a(IIZ)V

    .line 172
    .line 173
    .line 174
    const/16 v3, 0x45

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-ltz v1, :cond_5

    .line 181
    .line 182
    move v1, p1

    .line 183
    goto :goto_5

    .line 184
    :cond_5
    move v1, v6

    .line 185
    :goto_5
    invoke-virtual {v0, p0, v2, v1}, Lg23;->a(IIZ)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 p0, p0, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    return-object v0

    .line 192
    :cond_7
    const/4 p0, 0x0

    .line 193
    return-object p0
.end method

.method public final c(Ljava/util/LinkedList;)V
    .locals 5

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    sget-object v3, Lqi8;->e:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Integer;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v3, v1, :cond_1

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/lang/Integer;

    .line 129
    .line 130
    if-eqz v4, :cond_2

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-ge v0, v4, :cond_2

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    return-void
.end method

.method public final d(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p0, :cond_3

    .line 11
    .line 12
    const-string v1, "Directory"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    const-string v1, "Total"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "d-MMM-yyyy HH:mm:ss"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "VMS"

    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
