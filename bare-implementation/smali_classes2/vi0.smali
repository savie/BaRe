.class public final Lvi0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lxi0;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field public final synthetic f:Lcd;

.field public final synthetic k:Lri0;


# direct methods
.method public constructor <init>(Lxi0;Landroid/app/Activity;ZZLorg/swiftapps/swiftbackup/model/app/CloudMetadata;Lcd;Lri0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0;->a:Lxi0;

    .line 2
    .line 3
    iput-object p2, p0, Lvi0;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-boolean p3, p0, Lvi0;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lvi0;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lvi0;->e:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 10
    .line 11
    iput-object p6, p0, Lvi0;->f:Lcd;

    .line 12
    .line 13
    iput-object p7, p0, Lvi0;->k:Lri0;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lws7;-><init>(ILjv1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 9

    .line 1
    new-instance v0, Lvi0;

    .line 2
    .line 3
    iget-object v6, p0, Lvi0;->f:Lcd;

    .line 4
    .line 5
    iget-object v7, p0, Lvi0;->k:Lri0;

    .line 6
    .line 7
    iget-object v1, p0, Lvi0;->a:Lxi0;

    .line 8
    .line 9
    iget-object v2, p0, Lvi0;->b:Landroid/app/Activity;

    .line 10
    .line 11
    iget-boolean v3, p0, Lvi0;->c:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Lvi0;->d:Z

    .line 14
    .line 15
    iget-object v5, p0, Lvi0;->e:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lvi0;-><init>(Lxi0;Landroid/app/Activity;ZZLorg/swiftapps/swiftbackup/model/app/CloudMetadata;Lcd;Lri0;Ljv1;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvi0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvi0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvi0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Loj0;

    .line 7
    .line 8
    iget-boolean v5, v0, Lvi0;->c:Z

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    const-string v2, "system_app_parts"

    .line 13
    .line 14
    :goto_0
    move-object v4, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string v2, "user_app_parts"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    if-eqz v5, :cond_1

    .line 20
    .line 21
    const v2, 0x7f1304e1

    .line 22
    .line 23
    .line 24
    :goto_2
    move v7, v2

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    const v2, 0x7f1304e2

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_3
    iget-object v2, v0, Lvi0;->e:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    sget-object v3, Lp93;->a:Lp93;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getTotalApkSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    new-instance v3, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move-object v10, v3

    .line 59
    goto :goto_4

    .line 60
    :cond_2
    move-object v10, v6

    .line 61
    :goto_4
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    sget-object v3, Lp93;->a:Lp93;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move-object v14, v3

    .line 90
    goto :goto_5

    .line 91
    :cond_3
    move-object v14, v6

    .line 92
    :goto_5
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    sget-object v3, Lp93;->a:Lp93;

    .line 103
    .line 104
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object/from16 v16, v3

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_4
    move-object/from16 v16, v6

    .line 116
    .line 117
    :goto_6
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 118
    .line 119
    .line 120
    move-result v17

    .line 121
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    sget-object v3, Lp93;->a:Lp93;

    .line 128
    .line 129
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    move-object/from16 v18, v3

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_5
    move-object/from16 v18, v6

    .line 141
    .line 142
    :goto_7
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 143
    .line 144
    .line 145
    move-result v19

    .line 146
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    sget-object v3, Lp93;->a:Lp93;

    .line 153
    .line 154
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    :cond_6
    move-object/from16 v20, v6

    .line 163
    .line 164
    iget-object v2, v0, Lvi0;->a:Lxi0;

    .line 165
    .line 166
    iget-object v3, v0, Lvi0;->b:Landroid/app/Activity;

    .line 167
    .line 168
    const/4 v6, 0x1

    .line 169
    iget-boolean v8, v0, Lvi0;->d:Z

    .line 170
    .line 171
    invoke-virtual/range {v2 .. v20}, Lxi0;->b(Landroid/app/Activity;Ljava/lang/String;ZZIZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljj0;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    filled-new-array {v3}, [Ljj0;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const/4 v4, 0x1

    .line 184
    invoke-direct {v1, v3, v4}, Loj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v0, Lvi0;->f:Lcd;

    .line 188
    .line 189
    iget-object v0, v0, Lvi0;->k:Lri0;

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    invoke-virtual {v2, v1, v4, v3, v0}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lbe8;->a:Lbe8;

    .line 196
    .line 197
    return-object v0
.end method
