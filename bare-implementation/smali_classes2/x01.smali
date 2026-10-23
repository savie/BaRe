.class public abstract Lx01;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class p0, Lb11;

    .line 5
    .line 6
    invoke-static {p0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract U()Lb11;
.end method

.method public final V(Lrz0;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lrz0;->getLocalFile()Lq63;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lrz0;->isLocalItem()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "EXTRA_BACKUP_FILE_PATH"

    .line 13
    .line 14
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 15
    .line 16
    const-string v4, "Feature not supported on this device"

    .line 17
    .line 18
    const-string v5, "android.hardware.telephony"

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lq63;->j()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_6

    .line 27
    .line 28
    sget-object p1, Lg00;->a:Lg00;

    .line 29
    .line 30
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 41
    .line 42
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    invoke-static {p0, v4}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lrz0;->isCloudItem()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0}, Lq63;->j()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Lq63;->A()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    invoke-virtual {p1}, Lrz0;->getRemoteFileSize()J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    cmp-long v1, v6, v8

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    sget-object p1, Lg00;->a:Lg00;

    .line 97
    .line 98
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 109
    .line 110
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p1, Lzn4;->a:Lzn4;

    .line 115
    .line 116
    invoke-static {p0, v4}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 121
    .line 122
    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    sget-object v0, Lp93;->a:Lp93;

    .line 141
    .line 142
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lrz0;->getRemoteFileSize()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, ", cloud="

    .line 163
    .line 164
    const-string v3, ")"

    .line 165
    .line 166
    const-string v4, "Cloud item file size mismatch (local="

    .line 167
    .line 168
    invoke-static {v4, v0, v2, v1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 173
    .line 174
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    const/4 v9, 0x4

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    sget-object v0, Ltb1;->a:Ltb1;

    .line 191
    .line 192
    invoke-static {}, Lqb1;->m()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_5

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_5
    invoke-virtual {p0}, Lx01;->U()Lb11;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    sget-object v0, Lzn4;->a:Lzn4;

    .line 207
    .line 208
    new-instance v0, Lus;

    .line 209
    .line 210
    const/4 v1, 0x2

    .line 211
    const/4 v2, 0x0

    .line 212
    invoke-direct {v0, p0, p1, v2, v1}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 216
    .line 217
    .line 218
    :cond_6
    :goto_0
    return-void
.end method

.method public final W(Landroid/view/View;Lrz0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lu45;

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0f0023

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lfc5;

    .line 23
    .line 24
    const v1, 0x7f0a008d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lrz0;->isCloudItem()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    xor-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a005b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance p1, Lkj0;

    .line 74
    .line 75
    invoke-direct {p1, p0, p2}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0}, Lu45;->j()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
