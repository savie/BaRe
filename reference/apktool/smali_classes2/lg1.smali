.class public final Llg1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lng1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lng1;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg1;->a:Lng1;

    .line 2
    .line 3
    iput-object p2, p0, Llg1;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Llg1;

    .line 2
    .line 3
    iget-object v0, p0, Llg1;->a:Lng1;

    .line 4
    .line 5
    iget-object p0, p0, Llg1;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Llg1;-><init>(Lng1;Ljava/lang/String;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Llg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Llg1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Llg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Llg1;->a:Lng1;

    .line 5
    .line 6
    iget-object v0, p1, Lng1;->d:Lqo0;

    .line 7
    .line 8
    const-string v1, "activityVM"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    const v3, 0x7f13042d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lqo0;->h(I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "CloudFilesCleaner"

    .line 20
    .line 21
    const-string v3, "deleteCloudTag called"

    .line 22
    .line 23
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Llg1;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_6

    .line 39
    .line 40
    invoke-static {}, Lai8;->h()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    const/4 v8, 0x0

    .line 50
    const-string v4, "CloudFilesCleaner"

    .line 51
    .line 52
    const-string v5, "deleteCloudTag: No internet access! Stopped."

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lre3;->f()Lzc2;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v3, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;

    .line 68
    .line 69
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const/16 v9, 0xf

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    invoke-direct/range {v3 .. v10}, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v3}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lze3;->b:Lze3;

    .line 86
    .line 87
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    const/4 v9, 0x4

    .line 96
    const/4 v10, 0x0

    .line 97
    const-string v6, "CloudFilesCleaner"

    .line 98
    .line 99
    const-string v7, "deleteCloudTag: Tag set to be deleted"

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Ltb1;->a:Ltb1;

    .line 106
    .line 107
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, p0}, Ltb1;->e(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v0, v2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    instance-of p0, p0, Lze3;

    .line 123
    .line 124
    if-nez p0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    instance-of p0, v3, Lye3;

    .line 131
    .line 132
    if-eqz p0, :cond_5

    .line 133
    .line 134
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->P()V

    .line 135
    .line 136
    .line 137
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 138
    .line 139
    check-cast v3, Lye3;

    .line 140
    .line 141
    iget-object p0, v3, Lye3;->b:Lwc2;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "deleteCloudTag: Error while reading - "

    .line 146
    .line 147
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const/4 v8, 0x4

    .line 158
    const/4 v9, 0x0

    .line 159
    const-string v5, "CloudFilesCleaner"

    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_0
    sget-object p0, Ltb1;->a:Ltb1;

    .line 166
    .line 167
    const-string p0, ""

    .line 168
    .line 169
    invoke-static {p0}, Lqb1;->t(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p0, p1, Lng1;->d:Lqo0;

    .line 173
    .line 174
    if-eqz p0, :cond_4

    .line 175
    .line 176
    invoke-virtual {p0}, Lqo0;->f()V

    .line 177
    .line 178
    .line 179
    sget-object p0, Lbe8;->a:Lbe8;

    .line 180
    .line 181
    return-object p0

    .line 182
    :cond_4
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v2

    .line 186
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 187
    .line 188
    .line 189
    return-object v2

    .line 190
    :cond_6
    const-string p1, "deleteCloudTag: Invalid tag name = "

    .line 191
    .line 192
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-object v2

    .line 200
    :cond_7
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v2
.end method
