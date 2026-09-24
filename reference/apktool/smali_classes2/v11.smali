.class public final Lv11;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final p:Lgv7;

.field public final q:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lej;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lv11;->p:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lfj;

    .line 19
    .line 20
    const/16 v1, 0xe

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lv11;->q:Lgv7;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 10

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "max_call_backups"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 p1, 0x5

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/16 p1, 0xa

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/16 p1, 0x14

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/16 p1, 0x32

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/16 p1, 0x64

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v3, 0x0

    .line 48
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    move v3, v2

    .line 58
    :goto_0
    if-ge v3, v1, :cond_2

    .line 59
    .line 60
    aget-object v4, p1, v3

    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 82
    .line 83
    const v5, 0x7f1303cb

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, [Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Lho6;->s()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {p1, v1}, Lx50;->r0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    new-instance v3, Ljh6;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    iput v1, v3, Ljh6;->a:I

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v5, Lhv1;

    .line 127
    .line 128
    const v6, 0x7f140160

    .line 129
    .line 130
    .line 131
    invoke-direct {v5, v4, v6}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    new-instance v7, Ls35;

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-direct {v7, v4, v6, v5, v8}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 138
    .line 139
    .line 140
    const v4, 0x7f130340

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v4}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v5, v7, Lva;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v5, Lra;

    .line 150
    .line 151
    iput-object v4, v5, Lra;->d:Ljava/lang/CharSequence;

    .line 152
    .line 153
    check-cast v0, [Ljava/lang/CharSequence;

    .line 154
    .line 155
    new-instance v4, Lt11;

    .line 156
    .line 157
    invoke-direct {v4, v3, v2}, Lt11;-><init>(Ljh6;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v0, v1, v4}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lu11;

    .line 164
    .line 165
    invoke-direct {v0, p1, v3, p0}, Lu11;-><init>([Ljava/lang/Integer;Ljh6;Lv11;)V

    .line 166
    .line 167
    .line 168
    const p0, 0x7f1303e6

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    const p0, 0x7f1300f1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, p0, v8}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 181
    .line 182
    .line 183
    return v2

    .line 184
    :cond_3
    const-string v0, "compression_level_calls"

    .line 185
    .line 186
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {}, Lho6;->p()Lxp1;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v3, Lc7;

    .line 201
    .line 202
    invoke-direct {v3, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v0, v3}, Lvp1;->a(Landroidx/fragment/app/u;Lxp1;Lmt3;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    return v2
.end method

.method public final l()V
    .locals 2

    .line 1
    const v0, 0x7f16000d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lv11;->r()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lv11;->q()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object p0, p0, Lv11;->q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->p()Lxp1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lup1;->a:[I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    aget v0, v1, v0

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lq;->j()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    const v0, 0x7f1301a8

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    const v0, 0x7f1301a5

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x7f1301a6

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    const v0, 0x7f1301a3

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    const v0, 0x7f1301a4

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    const v0, 0x7f1301a7

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 55
    .line 56
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv11;->p:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->s()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 34
    .line 35
    const v1, 0x7f1303cb

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
