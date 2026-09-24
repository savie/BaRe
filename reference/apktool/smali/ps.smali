.class public final synthetic Lps;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lps;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lps;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lps;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object p0, p0, Lps;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    check-cast p2, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 18
    .line 19
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Luy7;

    .line 28
    .line 29
    invoke-direct {v0, p1, p2, v2}, Luy7;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Z)V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lq05;->CLOUD:Lq05;

    .line 33
    .line 34
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Lg52;

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    invoke-direct {p1, p2, p0, v0}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v3, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Lkg;

    .line 55
    .line 56
    const/16 p2, 0x8

    .line 57
    .line 58
    invoke-direct {p1, p2, p0, v0}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object v4

    .line 65
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 66
    .line 67
    check-cast p1, Lmd1;

    .line 68
    .line 69
    check-cast p2, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget p2, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-object p1, p1, Lmd1;->a:Lqd1;

    .line 84
    .line 85
    iget-object p1, p1, Lqd1;->a:Lsd1;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lhf1;->h:Lef1;

    .line 91
    .line 92
    if-nez p2, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-boolean p2, p2, Lef1;->i:Z

    .line 96
    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance p2, Le7;

    .line 101
    .line 102
    const/4 v0, 0x6

    .line 103
    invoke-direct {p2, p1, v0}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lhf1;->p(Lmt3;)Lef1;

    .line 107
    .line 108
    .line 109
    :goto_1
    return-object v4

    .line 110
    :pswitch_1
    check-cast p0, Ll20;

    .line 111
    .line 112
    check-cast p1, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    check-cast p2, Lji;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Ll20;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 124
    .line 125
    invoke-virtual {p0}, Lgm7;->b()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-gt v0, v1, :cond_3

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    invoke-static {}, Lj20;->getEntries()Ljx2;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    .line 137
    .line 138
    const/16 v5, 0xa

    .line 139
    .line 140
    invoke-static {v0, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    move-object v5, v0

    .line 148
    check-cast v5, Lz3;

    .line 149
    .line 150
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    :goto_2
    move-object v6, v5

    .line 155
    check-cast v6, Lw3;

    .line 156
    .line 157
    invoke-virtual {v6}, Lw3;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_4

    .line 162
    .line 163
    invoke-virtual {v6}, Lw3;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lj20;

    .line 168
    .line 169
    invoke-virtual {v6}, Lj20;->getStringRes()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    new-array v2, v2, [Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, [Ljava/lang/String;

    .line 188
    .line 189
    new-instance v2, Lhv1;

    .line 190
    .line 191
    const v5, 0x7f140160

    .line 192
    .line 193
    .line 194
    invoke-direct {v2, p2, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v6, Ls35;

    .line 201
    .line 202
    invoke-direct {v6, p2, v5, v2, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 203
    .line 204
    .line 205
    check-cast v1, [Ljava/lang/CharSequence;

    .line 206
    .line 207
    new-instance p2, Li20;

    .line 208
    .line 209
    invoke-direct {p2, v0, p0, p1}, Li20;-><init>(Ljx2;Ll20;I)V

    .line 210
    .line 211
    .line 212
    iget-object p0, v6, Lva;->b:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Lra;

    .line 215
    .line 216
    iput-object v1, p0, Lra;->p:[Ljava/lang/CharSequence;

    .line 217
    .line 218
    iput-object p2, p0, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 219
    .line 220
    const p0, 0x7f1300f1

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 227
    .line 228
    .line 229
    :goto_3
    return-object v4

    .line 230
    :pswitch_2
    check-cast p0, Lws;

    .line 231
    .line 232
    check-cast p1, Lji;

    .line 233
    .line 234
    check-cast p2, Landroid/widget/CheckBox;

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sget p2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 243
    .line 244
    iget-object p0, p0, Lws;->l:Lil0;

    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    new-instance p2, Landroid/content/Intent;

    .line 250
    .line 251
    const-class v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 252
    .line 253
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .line 255
    .line 256
    const-string v0, "APP_PARCEL"

    .line 257
    .line 258
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    .line 267
    .line 268
    return-object v4

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
