.class public final synthetic Li37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm37;


# direct methods
.method public synthetic constructor <init>(Lm37;I)V
    .locals 0

    .line 1
    iput p2, p0, Li37;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li37;->b:Lm37;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Li37;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Li37;->b:Lm37;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lc47;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lc47;->f(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lu45;

    .line 24
    .line 25
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/16 v2, 0xc

    .line 30
    .line 31
    invoke-direct {v0, v1, p1, v2}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lfc5;

    .line 37
    .line 38
    const v1, 0x7f0f0021

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ll90;->f(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lq47;->f:Lex6;

    .line 49
    .line 50
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ln47;

    .line 55
    .line 56
    instance-of v1, v1, Lm47;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    sget-object v1, Lg00;->a:Lg00;

    .line 61
    .line 62
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "android.hardware.telephony"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x0

    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    const v1, 0x7f0a006f

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const v3, 0x7f0a0048

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    :cond_1
    :try_start_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 96
    .line 97
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move v1, v2

    .line 116
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    const/4 v1, 0x0

    .line 122
    :goto_1
    if-eqz v1, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move v1, v2

    .line 130
    :goto_2
    if-nez v1, :cond_4

    .line 131
    .line 132
    const v1, 0x7f0a0091

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    .line 141
    .line 142
    :cond_4
    sget-object v1, Lmp6;->a:Lmp6;

    .line 143
    .line 144
    invoke-static {}, Lmp6;->f()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    const v1, 0x7f0a0045

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const v2, 0x7f13049e

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, " ("

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, ")"

    .line 188
    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 197
    .line 198
    .line 199
    :cond_5
    new-instance p1, Lgb;

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    invoke-direct {p1, p0, v1}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 207
    .line 208
    invoke-virtual {v0}, Lu45;->j()V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void

    .line 212
    :pswitch_0
    invoke-virtual {p0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
