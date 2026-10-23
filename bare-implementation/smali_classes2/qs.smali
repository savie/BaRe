.class public final synthetic Lqs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqs;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lqs;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lqs;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v4, v0, Lqs;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, v0, Lqs;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 16
    .line 17
    check-cast v4, Lj57;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Ljava/util/List;

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    check-cast v2, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-object v5, v0

    .line 34
    check-cast v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    const/16 v15, 0x1bf

    .line 41
    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    invoke-static/range {v5 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, v4, Lj57;->o:Lu10;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object v3

    .line 64
    :pswitch_0
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    check-cast v4, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 67
    .line 68
    move-object/from16 v1, p1

    .line 69
    .line 70
    check-cast v1, Landroid/view/View;

    .line 71
    .line 72
    move-object/from16 v2, p2

    .line 73
    .line 74
    check-cast v2, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sget-object v5, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ls54;

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {v4, v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Z(Ls54;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-object v3

    .line 97
    :pswitch_1
    check-cast v0, Lak2;

    .line 98
    .line 99
    check-cast v4, Lqj2;

    .line 100
    .line 101
    move-object/from16 v1, p1

    .line 102
    .line 103
    check-cast v1, Lcw7;

    .line 104
    .line 105
    move-object/from16 v5, p2

    .line 106
    .line 107
    check-cast v5, Lgk2;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v0, v0, Lak2;->b:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    move-object v6, v5

    .line 132
    check-cast v6, Lzj2;

    .line 133
    .line 134
    iget-object v6, v6, Lzj2;->a:Liz4;

    .line 135
    .line 136
    invoke-virtual {v6}, Liz4;->getBackupId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-object v7, v1, Lcw7;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_2

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    move-object v5, v2

    .line 150
    :goto_0
    check-cast v5, Lzj2;

    .line 151
    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    iget-object v0, v4, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 155
    .line 156
    iget-object v1, v5, Lzj2;->a:Liz4;

    .line 157
    .line 158
    new-instance v4, Loj;

    .line 159
    .line 160
    const/4 v5, 0x2

    .line 161
    invoke-direct {v4, v5, v1, v0, v2}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v4}, Lzn4;->c(Lbt3;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    return-object v3

    .line 168
    :pswitch_2
    check-cast v0, Landroid/view/View;

    .line 169
    .line 170
    check-cast v4, Lws;

    .line 171
    .line 172
    move-object/from16 v1, p1

    .line 173
    .line 174
    check-cast v1, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-object/from16 v6, p2

    .line 180
    .line 181
    check-cast v6, Lji;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_5

    .line 191
    .line 192
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    .line 194
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    move-object v1, v2

    .line 202
    :goto_1
    if-eqz v1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/4 v5, 0x0

    .line 209
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 210
    .line 211
    .line 212
    :cond_6
    iget-object v10, v4, Lws;->l:Lil0;

    .line 213
    .line 214
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    sget-object v0, Lzn4;->a:Lzn4;

    .line 218
    .line 219
    new-instance v5, Lkj;

    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    const/4 v7, 0x1

    .line 223
    const/4 v8, 0x1

    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v11, 0x0

    .line 226
    const/4 v12, 0x1

    .line 227
    invoke-direct/range {v5 .. v13}, Lkj;-><init>(Lji;ZZZLk28;Lbt3;ZLjv1;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v5}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 231
    .line 232
    .line 233
    return-object v3

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
