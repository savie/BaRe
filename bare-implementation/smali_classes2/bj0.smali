.class public final synthetic Lbj0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lln5;Lcj0;Ljava/util/List;Lmj0;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lbj0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbj0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lbj0;->c:Ljava/util/List;

    .line 10
    .line 11
    iput-object p4, p0, Lbj0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;Ljava/util/ArrayList;Lwy7;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lbj0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbj0;->c:Ljava/util/List;

    iput-object p3, p0, Lbj0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/util/List;)V
    .locals 1

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lbj0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbj0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbj0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lbj0;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lbj0;->c:Ljava/util/List;

    .line 7
    .line 8
    iget-object v4, p0, Lbj0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lbj0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 16
    .line 17
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 18
    .line 19
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getLocations()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0, v0, v1, v4}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c(Ljava/lang/String;Ljava/util/List;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Lxy7;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lff5;

    .line 41
    .line 42
    invoke-direct {v2, v3, p0}, Lff5;-><init>(Ljava/util/List;Lzy7;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-object v2

    .line 46
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 47
    .line 48
    check-cast v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    check-cast v4, Lwy7;

    .line 51
    .line 52
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v3, v4}, Lqo3;->j(Ljava/util/ArrayList;Lty7;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_1
    check-cast p0, Lln5;

    .line 63
    .line 64
    check-cast v4, Lmj0;

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v4, v4, Lmj0;->f:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljj0;

    .line 88
    .line 89
    iget-object v6, v5, Ljj0;->a:Ljava/lang/String;

    .line 90
    .line 91
    const-string v7, "locations"

    .line 92
    .line 93
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    invoke-virtual {v5}, Ljj0;->a()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    invoke-static {v6, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_2

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Lli0;

    .line 129
    .line 130
    iget-object v8, v8, Lli0;->a:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_4

    .line 145
    .line 146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Ljava/lang/String;

    .line 151
    .line 152
    sget-object v8, Lq05;->Companion:Lo05;

    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {v7}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_3

    .line 162
    .line 163
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object v5, v5, Ljj0;->c:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_1

    .line 178
    .line 179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Lli0;

    .line 184
    .line 185
    sget-object v7, Lq05;->Companion:Lo05;

    .line 186
    .line 187
    iget-object v8, v6, Lli0;->a:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v8}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v6}, Lli0;->b()Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_5

    .line 201
    .line 202
    if-eqz v7, :cond_5

    .line 203
    .line 204
    const/4 v8, 0x4

    .line 205
    invoke-virtual {v6}, Lli0;->a()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    invoke-virtual {v7, v8, v6}, Lq05;->setCheckedInExpansion(IZ)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    new-instance v4, Laz7;

    .line 214
    .line 215
    invoke-direct {v4, v3, v0}, Laz7;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 216
    .line 217
    .line 218
    sget-object v3, Lq05;->CLOUD:Lq05;

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget-object p0, p0, Lln5;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 227
    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    new-instance v0, Lo20;

    .line 231
    .line 232
    const/16 v3, 0xd

    .line 233
    .line 234
    invoke-direct {v0, v3, p0, v4}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const/4 v3, 0x1

    .line 238
    invoke-static {p0, v2, v0, v3}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    sget-object v0, Lzn4;->a:Lzn4;

    .line 247
    .line 248
    new-instance v0, Lz72;

    .line 249
    .line 250
    invoke-direct {v0, v4, p0, v2}, Lz72;-><init>(Laz7;Lpp8;Ljv1;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 254
    .line 255
    .line 256
    :goto_4
    return-object v1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
