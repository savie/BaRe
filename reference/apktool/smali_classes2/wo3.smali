.class public final Lwo3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxc5;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0a0075

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object p0, p0, Lwo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 19
    .line 20
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x137b

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    const v0, 0x7f0a0089

    .line 31
    .line 32
    .line 33
    if-ne p1, v0, :cond_5

    .line 34
    .line 35
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)Lkp3;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lkp3;->m()Lnp3;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p1, Lnp3;->h:Lex6;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lzy4;->d()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lfm7;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object p1, v0

    .line 64
    :goto_0
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    new-instance p1, Lvo3;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {p1, p0, v2}, Lvo3;-><init>(Lil0;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lxk3;->getEntries()Ljx2;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {}, Lxk3;->getEntries()Ljx2;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {}, Lzm5;->q()Lpw5;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget-object v5, v5, Lpw5;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Lkx2;

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    new-instance v5, Ljh6;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput v4, v5, Ljh6;->a:I

    .line 106
    .line 107
    new-instance v6, Lhv1;

    .line 108
    .line 109
    const v7, 0x7f140160

    .line 110
    .line 111
    .line 112
    invoke-direct {v6, p0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    new-instance v8, Ls35;

    .line 116
    .line 117
    invoke-direct {v8, p0, v7, v6, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 118
    .line 119
    .line 120
    const p0, 0x7f13053a

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, p0}, Lv75;->v(I)V

    .line 124
    .line 125
    .line 126
    new-instance p0, Ljava/util/ArrayList;

    .line 127
    .line 128
    const/16 v0, 0xa

    .line 129
    .line 130
    invoke-static {v3, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .line 136
    .line 137
    move-object v0, v3

    .line 138
    check-cast v0, Lz3;

    .line 139
    .line 140
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_1
    move-object v6, v0

    .line 145
    check-cast v6, Lw3;

    .line 146
    .line 147
    invoke-virtual {v6}, Lw3;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_3

    .line 152
    .line 153
    invoke-virtual {v6}, Lw3;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Lxk3;

    .line 158
    .line 159
    invoke-virtual {v6}, Lxk3;->displayString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    check-cast p0, [Ljava/lang/CharSequence;

    .line 174
    .line 175
    new-instance v0, Lf21;

    .line 176
    .line 177
    const/4 v2, 0x3

    .line 178
    invoke-direct {v0, v5, v2}, Lf21;-><init>(Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, p0, v4, v0}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    new-instance p0, Lib1;

    .line 185
    .line 186
    invoke-direct {p0, v1, v3, v5, p1}, Lib1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const v0, 0x7f1301f9

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v0, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    new-instance p0, Ltk3;

    .line 196
    .line 197
    invoke-direct {p0, v3, v5, p1}, Ltk3;-><init>(Ljx2;Ljh6;Lvo3;)V

    .line 198
    .line 199
    .line 200
    const p1, 0x7f13007d

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, p1, p0}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    :goto_2
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_5
    const v0, 0x7f0a0062

    .line 215
    .line 216
    .line 217
    if-ne p1, v0, :cond_6

    .line 218
    .line 219
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 220
    .line 221
    const p1, 0x7f130263

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    const/16 v0, 0x8

    .line 232
    .line 233
    invoke-static {p0, v0, p1}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_6
    const v0, 0x7f0a0082

    .line 238
    .line 239
    .line 240
    if-ne p1, v0, :cond_7

    .line 241
    .line 242
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Z:I

    .line 243
    .line 244
    invoke-static {p0}, Lbb9;->I(Landroid/app/Activity;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    :goto_3
    return v1
.end method

.method public final c(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0f0015

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
