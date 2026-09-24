.class public final synthetic Llo7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llo7;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Llo7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 7
    .line 8
    iput-wide p3, p0, Llo7;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Llo7;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Llo7;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Llo7;->a:Ljava/lang/Long;

    .line 3
    .line 4
    iget-object v2, p0, Llo7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 5
    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    const v4, 0x7f1303e6

    .line 9
    .line 10
    .line 11
    const v5, 0x7f140160

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance p0, Lhv1;

    .line 18
    .line 19
    invoke-direct {p0, v2, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ls35;

    .line 23
    .line 24
    invoke-direct {v1, v2, v5, p0, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 25
    .line 26
    .line 27
    const p0, 0x7f130222

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lv75;->v(I)V

    .line 31
    .line 32
    .line 33
    const p0, 0x7f1301c9

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lv75;->n(I)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljo7;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, v2, v0}, Ljo7;-><init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v1, Lva;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lra;

    .line 51
    .line 52
    iput-boolean v6, p0, Lra;->m:Z

    .line 53
    .line 54
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    iget-wide v9, p0, Llo7;->c:J

    .line 63
    .line 64
    cmp-long v1, v7, v9

    .line 65
    .line 66
    if-lez v1, :cond_3

    .line 67
    .line 68
    sget v1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const v4, 0x7f1301c4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lq63;

    .line 83
    .line 84
    iget-object v7, p0, Llo7;->e:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v8, 0x2

    .line 87
    invoke-direct {v4, v7, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lq63;->j()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    invoke-virtual {v4}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    array-length v4, v4

    .line 111
    if-nez v4, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const-string v4, "\n\n"

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const v4, 0x7f1303f4

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_0
    new-instance v4, Lhv1;

    .line 130
    .line 131
    invoke-direct {v4, v2, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Ls35;

    .line 135
    .line 136
    invoke-direct {v9, v2, v5, v4, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v9, Lva;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lra;

    .line 142
    .line 143
    const v4, 0x7f130351

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v4}, Lv75;->v(I)V

    .line 147
    .line 148
    .line 149
    iput-boolean v6, v0, Lra;->m:Z

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput-object v1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 156
    .line 157
    new-instance v0, Lvq1;

    .line 158
    .line 159
    iget-object p0, p0, Llo7;->d:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {v0, v8, v2, p0, v7}, Lvq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const v1, 0x7f1301c1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lrj1;

    .line 171
    .line 172
    const/4 v1, 0x4

    .line 173
    invoke-direct {v0, v1, v2, p0, v7}, Lrj1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    const p0, 0x7f130350

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, p0, v0}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Ljo7;

    .line 183
    .line 184
    invoke-direct {p0, v2, v6}, Ljo7;-><init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;I)V

    .line 185
    .line 186
    .line 187
    const v0, 0x7f130206

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v0, p0}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9}, Ls35;->m()Lwa;

    .line 194
    .line 195
    .line 196
    return-object v3

    .line 197
    :cond_3
    new-instance p0, Lhv1;

    .line 198
    .line 199
    invoke-direct {p0, v2, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Ls35;

    .line 203
    .line 204
    invoke-direct {v1, v2, v5, p0, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 205
    .line 206
    .line 207
    const p0, 0x7f1305a7

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, p0}, Lv75;->v(I)V

    .line 211
    .line 212
    .line 213
    iget-object p0, v1, Lva;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Lra;

    .line 216
    .line 217
    iput-boolean v6, p0, Lra;->m:Z

    .line 218
    .line 219
    const p0, 0x7f1303d9

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, p0}, Lv75;->n(I)V

    .line 223
    .line 224
    .line 225
    new-instance p0, Lmo7;

    .line 226
    .line 227
    invoke-direct {p0, v2}, Lmo7;-><init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v4, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 234
    .line 235
    .line 236
    return-object v3
.end method
