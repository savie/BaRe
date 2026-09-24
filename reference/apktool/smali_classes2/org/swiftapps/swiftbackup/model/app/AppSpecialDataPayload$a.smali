.class public final Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final decryptV1(Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
    .locals 9

    .line 1
    const-string p0, ":::"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-static {p1, p0, v0}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p1, p0}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Ly32;->a:Lgv7;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Ly32;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x2

    .line 60
    if-ge p0, v2, :cond_1

    .line 61
    .line 62
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const-string p1, "Invalid special data payload parts: "

    .line 69
    .line 70
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v7, 0x4

    .line 75
    const/4 v8, 0x0

    .line 76
    const-string v4, "AppSpecialDataPayload"

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_1
    const/4 p0, 0x0

    .line 84
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p0, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_2

    .line 95
    .line 96
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 97
    .line 98
    const/4 v7, 0x4

    .line 99
    const/4 v8, 0x0

    .line 100
    const-string v4, "AppSpecialDataPayload"

    .line 101
    .line 102
    const-string v5, "Special data payload belongs to a different user"

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance p1, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :try_start_0
    sget-object p2, Lcom/swiftapps/sba/SbaZstdNative;->a:Lcom/swiftapps/sba/SbaZstdNative;

    .line 125
    .line 126
    invoke-virtual {p2, p0}, Lcom/swiftapps/sba/SbaZstdNative;->decompressZstdBytes([B)[B

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object p2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 133
    .line 134
    .line 135
    sget-object p0, Lw14;->a:Lgv7;

    .line 136
    .line 137
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-class p2, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 142
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 148
    .line 149
    return-object p0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move-object p0, v0

    .line 152
    new-instance p1, Lyy6;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    const-string v0, "Native zstd decompress bytes failed: "

    .line 159
    .line 160
    invoke-static {v0, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method private final getEncryptedStringV1(Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object p0, Lw14;->a:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-static {p0}, Lge;->q([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object p1, Ly32;->a:Lgv7;

    .line 30
    .line 31
    invoke-static {p2}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0}, Ly32;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p2, "v1"

    .line 40
    .line 41
    filled-new-array {p2, p1, p0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/16 v5, 0x3e

    .line 51
    .line 52
    const-string v1, ":::"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static getEncryptedStringV1$default(Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    sget-object p2, Ld45;->b:Ld45;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 23
    .line 24
    invoke-static {p0, p1}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->getEncryptedStringV1(Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private final read(Lq63;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
    .locals 8

    .line 133
    invoke-static {p1}, Lq63;->H(Lq63;)Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string v0, "v"

    const/4 v1, 0x0

    .line 135
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AppSpecialDataPayload"

    const-string v4, "Unsupported special data payload format"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-object v1

    .line 137
    :cond_0
    const-string v0, ":::"

    .line 138
    invoke-static {p1, v0, p1}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v2, "v1"

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->decryptV1(Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    move-result-object p0

    return-object p0

    .line 142
    :cond_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    const-string p0, "Unsupported special data payload version: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AppSpecialDataPayload"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public final read(Lq63;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lq63;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lq63;->A()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/32 v4, 0x100000

    .line 17
    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 24
    .line 25
    invoke-virtual {p1}, Lq63;->A()J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    const-string v0, "Skipping special data payload due to size="

    .line 30
    .line 31
    invoke-static {p0, p1, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v3, "AppSpecialDataPayload"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    sget-object v0, Ld45;->b:Ld45;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->read(Lq63;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_2
    move-object p0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 p0, 0x0

    .line 78
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    move-object p0, v0

    .line 91
    :goto_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 92
    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object p0, v1

    .line 101
    :goto_1
    if-nez p0, :cond_5

    .line 102
    .line 103
    const-string p0, ""

    .line 104
    .line 105
    :cond_5
    const-string p1, "Unable to read special data payload: "

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const/4 v6, 0x4

    .line 112
    const/4 v7, 0x0

    .line 113
    const-string v3, "AppSpecialDataPayload"

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_6
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 121
    .line 122
    const/4 v12, 0x4

    .line 123
    const/4 v13, 0x0

    .line 124
    const-string v9, "AppSpecialDataPayload"

    .line 125
    .line 126
    const-string v10, "Cannot read special data payload: user not logged in"

    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method public final write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq63;)Z
    .locals 11

    .line 1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    move-object v4, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v0

    .line 16
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_1

    .line 23
    .line 24
    move-object v5, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v5, v0

    .line 27
    :goto_1
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_2

    .line 34
    .line 35
    move-object v6, p3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v6, v0

    .line 38
    :goto_2
    if-eqz p4, :cond_3

    .line 39
    .line 40
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-lez p1, :cond_3

    .line 45
    .line 46
    move-object v7, p4

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object v7, v0

    .line 49
    :goto_3
    if-eqz p5, :cond_4

    .line 50
    .line 51
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-lez p1, :cond_4

    .line 56
    .line 57
    move-object/from16 v8, p5

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move-object v8, v0

    .line 61
    :goto_4
    new-instance v2, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v9, 0x1

    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct/range {v2 .. v10}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->hasPayloads()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 p2, 0x0

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    invoke-virtual/range {p6 .. p6}, Lq63;->h()Z

    .line 77
    .line 78
    .line 79
    return p2

    .line 80
    :cond_5
    invoke-virtual/range {p6 .. p6}, Lq63;->t()Lq63;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    invoke-static {p1}, Lq63;->E(Lq63;)Z

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lq63;->t()Lq63;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p3, ".tmp-"

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    invoke-virtual/range {p6 .. p6}, Lq63;->p()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p1, p3}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_5

    .line 128
    :cond_7
    new-instance p1, Lq63;

    .line 129
    .line 130
    invoke-virtual/range {p6 .. p6}, Lq63;->v()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual/range {p6 .. p6}, Lq63;->o()I

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    invoke-direct {p1, p3, p4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :goto_5
    const/4 p3, 0x2

    .line 164
    :try_start_0
    invoke-static {p0, v2, v0, p3, v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->getEncryptedStringV1$default(Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p1, p0}, Lq63;->K(Lq63;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object/from16 p0, p6

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Lq63;->I(Lq63;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    const/4 p0, 0x1

    .line 180
    return p0

    .line 181
    :cond_8
    const-string p0, "Unable to replace special data payload"

    .line 182
    .line 183
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    move-object p0, v0

    .line 191
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    const-string p3, "Unable to write special data payload: "

    .line 198
    .line 199
    invoke-static {p3, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const/4 v4, 0x4

    .line 204
    const/4 v5, 0x0

    .line 205
    const-string v1, "AppSpecialDataPayload"

    .line 206
    .line 207
    const/4 v3, 0x0

    .line 208
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lq63;->h()Z

    .line 212
    .line 213
    .line 214
    return p2
.end method
