.class public final Lp93;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lp93;

.field public static final b:Lai6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp93;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp93;->a:Lp93;

    .line 7
    .line 8
    new-instance v0, Lai6;

    .line 9
    .line 10
    const-string v1, "^\\s*(\\d+)\\s+(.+)$"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lp93;->b:Lai6;

    .line 16
    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Double;
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-ltz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    sub-long/2addr v0, v2

    .line 46
    long-to-double v0, v0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    long-to-double p0, p0

    .line 52
    div-double/2addr v0, p0

    .line 53
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    .line 54
    .line 55
    mul-double/2addr v0, p0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static b(D)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x2

    .line 6
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Ljava/math/BigDecimal;

    .line 13
    .line 14
    const-string v0, "100"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ltz p1, :cond_0

    .line 24
    .line 25
    new-instance p0, Ljava/math/BigDecimal;

    .line 26
    .line 27
    const-string p1, "99.99"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/text/DecimalFormat;

    .line 33
    .line 34
    const-string v0, "0.##"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "%"

    .line 44
    .line 45
    invoke-static {p0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static c(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const-wide/16 v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v2, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v0, v2, v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-wide v0, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :goto_0
    const-wide/16 v2, 0x400

    .line 40
    .line 41
    cmp-long v2, v0, v2

    .line 42
    .line 43
    if-gez v2, :cond_2

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, " B"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_2
    new-instance v2, Ljava/text/StringCharacterIterator;

    .line 64
    .line 65
    const-string v3, "KMGTPE"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x28

    .line 71
    .line 72
    move-wide v4, v0

    .line 73
    :goto_1
    if-ltz v3, :cond_3

    .line 74
    .line 75
    const-wide v6, 0xfffccccccccccccL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    shr-long/2addr v6, v3

    .line 81
    cmp-long v6, v0, v6

    .line 82
    .line 83
    if-lez v6, :cond_3

    .line 84
    .line 85
    const/16 v6, 0xa

    .line 86
    .line 87
    shr-long/2addr v4, v6

    .line 88
    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->next()C

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, -0xa

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    int-to-long v0, p0

    .line 103
    mul-long/2addr v4, v0

    .line 104
    new-instance p0, Ljava/text/DecimalFormat;

    .line 105
    .line 106
    const-string v0, "##.##"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    long-to-double v0, v4

    .line 112
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 113
    .line 114
    div-double/2addr v0, v3

    .line 115
    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->current()C

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const/4 v0, 0x2

    .line 132
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string v0, "%s %cB"

    .line 137
    .line 138
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_4
    :goto_2
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 144
    .line 145
    const p0, 0x7f130580

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method public static d(II)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "app_locale"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    const-string p0, "0 items"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v3, " folder"

    .line 74
    .line 75
    invoke-static {v2, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v4, 0x1

    .line 80
    if-ne p1, v4, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move-object v3, v1

    .line 84
    :goto_3
    const-string v5, " folders"

    .line 85
    .line 86
    invoke-static {v2, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-le p1, v4, :cond_5

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move-object v2, v1

    .line 94
    :goto_4
    const-string p1, " file"

    .line 95
    .line 96
    invoke-static {v0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p0, v4, :cond_6

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move-object p1, v1

    .line 104
    :goto_5
    const-string v5, " files"

    .line 105
    .line 106
    invoke-static {v0, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-le p0, v4, :cond_7

    .line 111
    .line 112
    move-object v1, v0

    .line 113
    :cond_7
    filled-new-array {v3, v2, p1, v1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/16 v5, 0x3f

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static g(Lp93;Ljava/lang/String;)J
    .locals 5

    .line 1
    sget-object p0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->x()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-boolean p0, Lg42;->a:Z

    .line 10
    .line 11
    const-string p0, "AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c="

    .line 12
    .line 13
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw="

    .line 18
    .line 19
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, p0, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    new-instance p0, Ljr7;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "[ -e @@ ]"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_9

    .line 39
    .line 40
    const-string p1, "[ -f @@ ]"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Ljr7;->length()J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    return-wide p0

    .line 53
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "toybox du -sk "

    .line 61
    .line 62
    invoke-static {v0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Lmp6;->a:Lmp6;

    .line 67
    .line 68
    invoke-static {}, Lmp6;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    filled-new-array {p1}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lmp6;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v3, v0

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v4, v1}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x1

    .line 126
    if-ne v3, v4, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    move-object v0, v2

    .line 130
    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    const-string p0, "\t"

    .line 135
    .line 136
    filled-new-array {p0}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const/4 p1, 0x6

    .line 141
    invoke-static {v0, p0, p1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Ljava/lang/String;

    .line 150
    .line 151
    if-eqz p0, :cond_5

    .line 152
    .line 153
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_5
    if-eqz v2, :cond_9

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_6

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-ge v1, p0, :cond_8

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-nez p0, :cond_7

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_8
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    const-wide/16 v0, 0x400

    .line 195
    .line 196
    mul-long/2addr p0, v0

    .line 197
    return-wide p0

    .line 198
    :catch_0
    :cond_9
    :goto_3
    const-wide/16 p0, -0x1

    .line 199
    .line 200
    return-wide p0
.end method


# virtual methods
.method public final e(Ljava/io/File;)J
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget p0, Lqa3;->a:I

    .line 14
    .line 15
    new-instance p0, Lmb;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lmb;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p0}, Lmb;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    return-wide p0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    :try_start_2
    new-instance p1, Ljava/io/UncheckedIOException;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lp93;->g(Lp93;Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    return-wide p0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x4

    .line 54
    const/4 v5, 0x0

    .line 55
    const-string v1, "FileSizeHelper"

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 p0, -0x1

    .line 62
    .line 63
    return-wide p0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lp93;->e(Ljava/io/File;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method
