.class public final Lwg5$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg5;
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
    invoke-direct {p0}, Lwg5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getLogTag(Lwg5$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lwg5$a;->getLogTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MmsItem"

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .locals 0

    .line 1
    sget-object p0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final isMmsOnDevice(Lwg5;)Z
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lwg5$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v0, "date"

    .line 10
    .line 11
    const-string v2, "date_sent"

    .line 12
    .line 13
    const-string v4, "m_type"

    .line 14
    .line 15
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "date = ? AND date_sent = ? AND m_type = ?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    :try_start_1
    new-array v6, v0, [Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lwg5;->getDateInSeconds()Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v8, 0x0

    .line 33
    aput-object v0, v6, v8

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lwg5;->getDateSentInSeconds()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v9, 0x1

    .line 44
    aput-object v0, v6, v9

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lwg5;->getType()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v2, 0x2

    .line 55
    aput-object v0, v6, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    :try_start_2
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 58
    .line 59
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    if-lez v0, :cond_0

    .line 79
    .line 80
    move v8, v9

    .line 81
    :cond_0
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    .line 83
    .line 84
    return v8

    .line 85
    :catch_0
    move-exception v0

    .line 86
    move-object v9, v5

    .line 87
    move-object v5, v0

    .line 88
    move-object v0, v9

    .line 89
    move-object v9, v6

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object v3, v0

    .line 93
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    :try_start_6
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 99
    :cond_1
    return v8

    .line 100
    :catch_1
    move-exception v0

    .line 101
    move-object v9, v5

    .line 102
    move-object v5, v0

    .line 103
    move-object v0, v9

    .line 104
    move-object v9, v1

    .line 105
    goto :goto_0

    .line 106
    :catch_2
    move-exception v0

    .line 107
    move-object v5, v0

    .line 108
    move-object v0, v1

    .line 109
    move-object v9, v0

    .line 110
    :goto_0
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 111
    .line 112
    invoke-direct/range {p0 .. p0}, Lwg5$a;->getLogTag()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/16 v7, 0x8

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    const-string v4, "isMmsOnDevice"

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    move-object v2, v10

    .line 123
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-direct/range {p0 .. p0}, Lwg5$a;->getLogTag()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const-string v2, "isMmsOnDevice: selection="

    .line 131
    .line 132
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    const/4 v14, 0x4

    .line 137
    const/4 v15, 0x0

    .line 138
    const/4 v13, 0x0

    .line 139
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-direct/range {p0 .. p0}, Lwg5$a;->getLogTag()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    if-eqz v9, :cond_2

    .line 147
    .line 148
    const/16 v0, 0x3f

    .line 149
    .line 150
    invoke-static {v0, v1, v9}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_2
    const-string v0, "isMmsOnDevice: selectionArgs="

    .line 155
    .line 156
    invoke-static {v0, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    const/4 v14, 0x4

    .line 161
    const/4 v15, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-direct/range {p0 .. p0}, Lwg5$a;->getLogTag()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v1, "isMmsOnDevice: mmsItem="

    .line 173
    .line 174
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v1, p1

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    throw v5
.end method
