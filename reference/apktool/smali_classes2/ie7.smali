.class public final Lie7;
.super Landroid/os/Binder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 1
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eq p1, v1, :cond_7

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x2711

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const v1, 0x5f4e5446

    .line 18
    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    return v5

    .line 50
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    .line 65
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    move-object v4, p1

    .line 70
    check-cast v4, Landroid/os/Bundle;

    .line 71
    .line 72
    :cond_3
    const-string p1, "shizuku:request-permission-reply-allowed"

    .line 73
    .line 74
    invoke-virtual {v4, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    move v2, v3

    .line 81
    :cond_4
    sget-object p1, Lle7;->i:Ljava/util/ArrayList;

    .line 82
    .line 83
    monitor-enter p1

    .line 84
    :try_start_0
    sget-object p2, Lle7;->k:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_6

    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Lje7;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-ne p4, v0, :cond_5

    .line 114
    .line 115
    iget-object p3, p3, Lje7;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p3, Ldl0;

    .line 118
    .line 119
    invoke-virtual {p3, v2}, Ldl0;->a(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    sget-object p4, Lle7;->l:Landroid/os/Handler;

    .line 126
    .line 127
    new-instance v0, Lhe7;

    .line 128
    .line 129
    invoke-direct {v0, p3, p0, v2}, Lhe7;-><init>(Lje7;II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    monitor-exit p1

    .line 137
    return v5

    .line 138
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p0

    .line 140
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-eqz p0, :cond_8

    .line 148
    .line 149
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    .line 151
    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    move-object v4, p0

    .line 156
    check-cast v4, Landroid/os/Bundle;

    .line 157
    .line 158
    :cond_8
    const-string p0, "shizuku:attach-reply-uid"

    .line 159
    .line 160
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    sput p0, Lle7;->c:I

    .line 165
    .line 166
    const-string p0, "shizuku:attach-reply-version"

    .line 167
    .line 168
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    sput p0, Lle7;->d:I

    .line 173
    .line 174
    const-string p0, "shizuku:attach-reply-patch-version"

    .line 175
    .line 176
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    const-string p0, "shizuku:attach-reply-secontext"

    .line 180
    .line 181
    invoke-virtual {v4, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    const-string p0, "shizuku:attach-reply-permission-granted"

    .line 185
    .line 186
    invoke-virtual {v4, p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    sput-boolean p0, Lle7;->e:Z

    .line 191
    .line 192
    const-string p0, "shizuku:attach-reply-should-show-request-permission-rationale"

    .line 193
    .line 194
    invoke-virtual {v4, p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lle7;->i()V

    .line 198
    .line 199
    .line 200
    return v5
.end method
