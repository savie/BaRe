.class public final Ltt8;
.super Lpw6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Lus8;

.field public final n:Lpx;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lbz7;Lus8;Lpx;)V
    .locals 1

    .line 1
    new-instance v0, Lst8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ltt8;->m:Lus8;

    .line 10
    .line 11
    iput-object p3, p0, Ltt8;->n:Lpx;

    .line 12
    .line 13
    const-string p2, "WifiTask"

    .line 14
    .line 15
    iput-object p2, p0, Ltt8;->o:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Lbz7;->c:Ljava/util/List;

    .line 18
    .line 19
    iput-object p1, p0, Ltt8;->p:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lpw6;->a:Lcz7;

    .line 2
    .line 3
    check-cast v0, Lbz7;

    .line 4
    .line 5
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 6
    .line 7
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x7f130086

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lpw6;->i:Lex6;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ltt8;->m:Lus8;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v0, v2}, Lus8;->a(Lbz7;Z)Lod2;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, p0, Lpw6;->b:Ldz7;

    .line 31
    .line 32
    check-cast v3, Lst8;

    .line 33
    .line 34
    sget-object v4, Lss8;->i:Lss8;

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    move-object v5, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    instance-of v5, v1, Lps8;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Lps8;

    .line 51
    .line 52
    iget-object v5, v5, Lps8;->i:Lgs8;

    .line 53
    .line 54
    iget-object v5, v5, Lgs8;->a:Lds8;

    .line 55
    .line 56
    sget-object v7, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 57
    .line 58
    if-ne v5, v7, :cond_1

    .line 59
    .line 60
    sget-object v5, Lqt8;->ACCESS_UNAVAILABLE:Lqt8;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v5, Lqt8;->DEVICE_READ_FAILED:Lqt8;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v5, Lqs8;->i:Lqs8;

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    sget-object v5, Lqt8;->SELECTION_FAILED:Lqt8;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    sget-object v5, Lrs8;->i:Lrs8;

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_9

    .line 84
    .line 85
    sget-object v5, Lqt8;->STORAGE_FAILED:Lqt8;

    .line 86
    .line 87
    :goto_0
    iput-object v5, v3, Lst8;->a:Lqt8;

    .line 88
    .line 89
    instance-of v3, v1, Lps8;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    iget-object v3, p0, Ltt8;->n:Lpx;

    .line 94
    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    move-object v5, v1

    .line 98
    check-cast v5, Lps8;

    .line 99
    .line 100
    iget-object v5, v5, Lps8;->i:Lgs8;

    .line 101
    .line 102
    iget-object v7, v5, Lgs8;->a:Lds8;

    .line 103
    .line 104
    iget-object v5, v5, Lgs8;->b:Lks8;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v3, v3, Lpx;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 115
    .line 116
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 117
    .line 118
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 119
    .line 120
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v5, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 128
    .line 129
    const-wide/16 v8, 0x0

    .line 130
    .line 131
    if-ne v7, v5, :cond_4

    .line 132
    .line 133
    new-instance v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;

    .line 134
    .line 135
    invoke-direct {v5, v8, v9, v2, v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;

    .line 140
    .line 141
    invoke-direct {v5, v8, v9, v2, v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-static {v3, v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    iget-boolean v1, v0, Lbz7;->e:Z

    .line 154
    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    sget-object v0, Lvr8;->CLOUD:Lvr8;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object v0, v0, Lbz7;->d:Ljava/util/List;

    .line 161
    .line 162
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 163
    .line 164
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    sget-object v0, Lvr8;->ALL:Lvr8;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    sget-object v0, Lvr8;->LOCAL:Lvr8;

    .line 174
    .line 175
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v1, Lwr8;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, v1, Lwr8;->a:Lvr8;

    .line 184
    .line 185
    invoke-static {}, Lny2;->b()Lny2;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Lny2;->e(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Ltt8;->o:Ljava/lang/String;

    .line 193
    .line 194
    const-string v0, "Cleaning cloud cache on device"

    .line 195
    .line 196
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    sget-boolean p0, Lq63;->d:Z

    .line 200
    .line 201
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 202
    .line 203
    const/4 p0, 0x0

    .line 204
    invoke-static {p0, v6}, Lqy5;->f(ZLzn7;)Lry5;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    iget-object p0, p0, Lry5;->o:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p0}, Lcy0;->g(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_8
    return-void

    .line 214
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ltt8;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Ltt8;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Ltt8;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f1305b0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Ltt8;->p:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v1, 0x7f1305c9

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method
