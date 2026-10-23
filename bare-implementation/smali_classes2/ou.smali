.class public final synthetic Lou;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lou;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lou;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, Lou;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Byte;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 16
    .line 17
    const/16 p1, 0x10

    .line 18
    .line 19
    invoke-static {p1}, Lly8;->j(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-static {p1, p0}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string p0, "package="

    .line 47
    .line 48
    invoke-static {p1, p0, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide p0

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :pswitch_3
    check-cast p1, Lzn7;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1}, Lqy5;->b(Lzn7;)Lry5;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/common/Const;->D(Lzn7;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_4
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide p0

    .line 101
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :pswitch_6
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_8
    check-cast p1, Liu;

    .line 130
    .line 131
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->m(Liu;)Ljava/lang/CharSequence;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_9
    move-object v0, p1

    .line 137
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->SCANNING:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 143
    .line 144
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 145
    .line 146
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const p1, 0x7f130184

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const/4 v6, 0x0

    .line 158
    const/16 v7, 0x7f

    .line 159
    .line 160
    sget-object v2, Lov2;->a:Lov2;

    .line 161
    .line 162
    sget-object v3, Lsv2;->a:Lsv2;

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-static/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :pswitch_a
    check-cast p1, Ljava/lang/Throwable;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :pswitch_b
    check-cast p1, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    const-string p0, "lib"

    .line 186
    .line 187
    invoke-static {p1, p0, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_c
    check-cast p1, Lji;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    sget-object p1, Liy;->a:Liy;

    .line 206
    .line 207
    invoke-static {}, Liy;->c()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_0

    .line 212
    .line 213
    if-nez p0, :cond_1

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    goto :goto_0

    .line 217
    :cond_0
    move v0, p0

    .line 218
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    return-object p0

    .line 223
    :pswitch_d
    check-cast p1, Lsu;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object p0, p1, Lsu;->a:Ljava/lang/String;

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
