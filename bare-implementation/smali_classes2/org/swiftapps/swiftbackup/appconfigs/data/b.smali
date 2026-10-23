.class public final Lorg/swiftapps/swiftbackup/appconfigs/data/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move-object v3, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_0
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v6, v5

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v7, v6

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    move-object v9, v7

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    new-instance v9, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    :goto_1
    if-eq v10, v8, :cond_2

    .line 65
    .line 66
    sget-object v11, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    .line 68
    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_3

    .line 83
    .line 84
    move-object v8, v7

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-nez v10, :cond_4

    .line 99
    .line 100
    move-object v10, v7

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    sget-object v10, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    .line 104
    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    :goto_4
    check-cast v10, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 109
    .line 110
    move-object v11, v7

    .line 111
    move-object v7, v9

    .line 112
    move-object v9, v10

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-nez v12, :cond_5

    .line 122
    .line 123
    move-object v12, v11

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-nez v13, :cond_6

    .line 138
    .line 139
    move-object v13, v11

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    :goto_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-nez v14, :cond_7

    .line 154
    .line 155
    move-object v14, v11

    .line 156
    goto :goto_7

    .line 157
    :cond_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    :goto_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-nez v15, :cond_8

    .line 170
    .line 171
    move-object v15, v11

    .line 172
    goto :goto_8

    .line 173
    :cond_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    :goto_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 182
    .line 183
    .line 184
    move-result v16

    .line 185
    if-nez v16, :cond_9

    .line 186
    .line 187
    move-object/from16 v16, v11

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v16

    .line 198
    :goto_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 199
    .line 200
    .line 201
    move-result v17

    .line 202
    if-nez v17, :cond_a

    .line 203
    .line 204
    move-object v0, v11

    .line 205
    goto :goto_a

    .line 206
    :cond_a
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    :goto_a
    new-instance v11, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 215
    .line 216
    move-object/from16 v18, v16

    .line 217
    .line 218
    move-object/from16 v16, v0

    .line 219
    .line 220
    move-object v0, v11

    .line 221
    move-object v11, v12

    .line 222
    move-object v12, v13

    .line 223
    move-object v13, v14

    .line 224
    move-object v14, v15

    .line 225
    move-object/from16 v15, v18

    .line 226
    .line 227
    invoke-direct/range {v0 .. v16}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;-><init>(ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 228
    .line 229
    .line 230
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 2
    .line 3
    return-object p0
.end method
