.class public final synthetic Lsr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lsr8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsr8;->b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lsr8;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lsr8;->b:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lct8;

    .line 11
    .line 12
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    instance-of v0, p1, Lat8;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const v3, 0x7f130491

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lw45;->k(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/16 v0, 0x64

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lw45;->l(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v2}, Lw45;->m(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->f0(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lbt8;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Lw45;->k(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast p1, Lbt8;

    .line 83
    .line 84
    iget v2, p1, Lbt8;->c:I

    .line 85
    .line 86
    iget v3, p1, Lbt8;->b:I

    .line 87
    .line 88
    iget-object p1, p1, Lbt8;->a:Let8;

    .line 89
    .line 90
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " "

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, " / "

    .line 111
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "\n\n"

    .line 119
    .line 120
    invoke-static {v4, v0, p1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v2}, Lw45;->l(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v3}, Lw45;->m(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->f0(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Lzs8;->a:Lzs8;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    .line 170
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 177
    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const v0, 0x7f1303f8

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    sget-object v2, Lzn4;->a:Lzn4;

    .line 198
    .line 199
    new-instance v2, Lcv;

    .line 200
    .line 201
    const/16 v3, 0xe

    .line 202
    .line 203
    invoke-direct {v2, v3, p1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lus5;

    .line 210
    .line 211
    const/16 v0, 0xd

    .line 212
    .line 213
    invoke-direct {p1, p0, v0}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    const-wide/16 v2, 0x3e8

    .line 217
    .line 218
    invoke-static {v2, v3, p1}, Lzn4;->f(JLbt3;)V

    .line 219
    .line 220
    .line 221
    :cond_3
    return-object v1

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
