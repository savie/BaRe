.class public final Lbo;
.super Lao;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lbp0;

.field public final synthetic d:Lfo;


# direct methods
.method public constructor <init>(Lfo;Lbp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbo;->d:Lfo;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lao;-><init>(Lfo;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lbo;->c:Lbp0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.TIME_SET"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.TIME_TICK"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final g()I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lbo;->c:Lbp0;

    .line 4
    .line 5
    iget-object v1, v0, Lbp0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lrb8;

    .line 8
    .line 9
    iget-object v2, v0, Lbp0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/location/LocationManager;

    .line 12
    .line 13
    iget-wide v3, v1, Lrb8;->b:J

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    cmp-long v3, v3, v5

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    iget-boolean v0, v1, Lrb8;->a:Z

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    iget-object v0, v0, Lbp0;->a:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    check-cast v3, Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 34
    .line 35
    invoke-static {v3, v0}, Llg7;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v5, "Failed to get last known location"

    .line 40
    .line 41
    const-string v6, "TwilightManager"

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "network"

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    move-object v0, v7

    .line 64
    :goto_0
    move-object v8, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v8, v7

    .line 67
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 68
    .line 69
    invoke-static {v3, v0}, Llg7;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    const-string v0, "gps"

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 84
    .line 85
    .line 86
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 93
    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    cmp-long v0, v2, v9

    .line 105
    .line 106
    if-lez v0, :cond_5

    .line 107
    .line 108
    :goto_3
    move-object v8, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    if-eqz v7, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 114
    if-eqz v8, :cond_c

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v14

    .line 120
    sget-object v2, Lqb8;->d:Lqb8;

    .line 121
    .line 122
    if-nez v2, :cond_6

    .line 123
    .line 124
    new-instance v2, Lqb8;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    sput-object v2, Lqb8;->d:Lqb8;

    .line 130
    .line 131
    :cond_6
    sget-object v16, Lqb8;->d:Lqb8;

    .line 132
    .line 133
    const-wide/32 v2, 0x5265c00

    .line 134
    .line 135
    .line 136
    sub-long v21, v14, v2

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    .line 139
    .line 140
    .line 141
    move-result-wide v17

    .line 142
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    .line 143
    .line 144
    .line 145
    move-result-wide v19

    .line 146
    invoke-virtual/range {v16 .. v22}, Lqb8;->a(DDJ)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    .line 150
    .line 151
    .line 152
    move-result-wide v10

    .line 153
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    .line 154
    .line 155
    .line 156
    move-result-wide v12

    .line 157
    move-object/from16 v9, v16

    .line 158
    .line 159
    invoke-virtual/range {v9 .. v15}, Lqb8;->a(DDJ)V

    .line 160
    .line 161
    .line 162
    iget v5, v9, Lqb8;->c:I

    .line 163
    .line 164
    if-ne v5, v4, :cond_7

    .line 165
    .line 166
    move v0, v4

    .line 167
    :cond_7
    iget-wide v5, v9, Lqb8;->b:J

    .line 168
    .line 169
    iget-wide v10, v9, Lqb8;->a:J

    .line 170
    .line 171
    add-long v21, v14, v2

    .line 172
    .line 173
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    .line 174
    .line 175
    .line 176
    move-result-wide v17

    .line 177
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    .line 178
    .line 179
    .line 180
    move-result-wide v19

    .line 181
    move-object/from16 v16, v9

    .line 182
    .line 183
    invoke-virtual/range {v16 .. v22}, Lqb8;->a(DDJ)V

    .line 184
    .line 185
    .line 186
    iget-wide v2, v9, Lqb8;->b:J

    .line 187
    .line 188
    const-wide/16 v7, -0x1

    .line 189
    .line 190
    cmp-long v9, v5, v7

    .line 191
    .line 192
    if-eqz v9, :cond_b

    .line 193
    .line 194
    cmp-long v7, v10, v7

    .line 195
    .line 196
    if-nez v7, :cond_8

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_8
    cmp-long v7, v14, v10

    .line 200
    .line 201
    if-lez v7, :cond_9

    .line 202
    .line 203
    move-wide v5, v2

    .line 204
    goto :goto_5

    .line 205
    :cond_9
    cmp-long v2, v14, v5

    .line 206
    .line 207
    if-lez v2, :cond_a

    .line 208
    .line 209
    move-wide v5, v10

    .line 210
    :cond_a
    :goto_5
    const-wide/32 v2, 0xea60

    .line 211
    .line 212
    .line 213
    add-long/2addr v5, v2

    .line 214
    goto :goto_7

    .line 215
    :cond_b
    :goto_6
    const-wide/32 v2, 0x2932e00

    .line 216
    .line 217
    .line 218
    add-long v5, v14, v2

    .line 219
    .line 220
    :goto_7
    iput-boolean v0, v1, Lrb8;->a:Z

    .line 221
    .line 222
    iput-wide v5, v1, Lrb8;->b:J

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_c
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 226
    .line 227
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/16 v2, 0xb

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    const/4 v2, 0x6

    .line 241
    if-lt v1, v2, :cond_d

    .line 242
    .line 243
    const/16 v2, 0x16

    .line 244
    .line 245
    if-lt v1, v2, :cond_e

    .line 246
    .line 247
    :cond_d
    move v0, v4

    .line 248
    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 249
    .line 250
    const/4 v0, 0x2

    .line 251
    return v0

    .line 252
    :cond_f
    return v4
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object p0, p0, Lbo;->d:Lfo;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, v0}, Lfo;->n(ZZ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
