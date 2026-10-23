.class public final Lwb6$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwb6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwb6$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final default()Lwb6;
    .locals 14

    .line 1
    new-instance v0, Lwb6;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v11

    .line 11
    const/16 v12, 0x3ff

    .line 12
    .line 13
    const/4 v13, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v0 .. v13}, Lwb6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final from(Lcom/android/billingclient/api/Purchase;)Lwb6;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 7
    .line 8
    const-string v2, "orderId"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move-object v2, v4

    .line 22
    :cond_0
    invoke-static {v2}, Lio4;->f(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    move-object v6, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v6, v4

    .line 31
    :goto_0
    const-string v2, "packageName"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lio4;->f(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    move-object v7, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v7, v4

    .line 46
    :goto_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-object v8, v2

    .line 58
    check-cast v8, Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "purchaseTime"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    const-string v5, "purchaseState"

    .line 67
    .line 68
    const/4 v9, 0x1

    .line 69
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v10, 0x4

    .line 74
    if-eq v5, v10, :cond_3

    .line 75
    .line 76
    move v5, v9

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v5, 0x2

    .line 79
    :goto_2
    const-string v10, "token"

    .line 80
    .line 81
    const-string v11, "purchaseToken"

    .line 82
    .line 83
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string v11, "autoRenewing"

    .line 95
    .line 96
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-static {v12}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const-string v13, "lifetime"

    .line 113
    .line 114
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-nez v12, :cond_4

    .line 119
    .line 120
    move-object v13, v11

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move-object v13, v4

    .line 123
    :goto_3
    iget-object v0, v0, Lcom/android/billingclient/api/Purchase;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0}, Lio4;->f(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_5

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move-object v0, v4

    .line 133
    :goto_4
    const-string v11, "obfuscatedAccountId"

    .line 134
    .line 135
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    const-string v12, "obfuscatedProfileId"

    .line 140
    .line 141
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    if-nez v11, :cond_6

    .line 146
    .line 147
    if-nez v12, :cond_6

    .line 148
    .line 149
    move-object v12, v4

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    new-instance v12, Llh9;

    .line 152
    .line 153
    invoke-direct {v12, v11, v9}, Llh9;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    :goto_5
    if-eqz v12, :cond_7

    .line 157
    .line 158
    iget-object v11, v12, Llh9;->b:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_7
    move-object v11, v4

    .line 162
    :goto_6
    invoke-static {v11}, Lio4;->f(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_8

    .line 167
    .line 168
    move-object v14, v11

    .line 169
    goto :goto_7

    .line 170
    :cond_8
    move-object v14, v4

    .line 171
    :goto_7
    const-string v4, "acknowledged"

    .line 172
    .line 173
    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    move v9, v5

    .line 178
    new-instance v5, Lwb6;

    .line 179
    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    move-object v9, v10

    .line 195
    move-object v10, v0

    .line 196
    invoke-direct/range {v5 .. v16}, Lwb6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 197
    .line 198
    .line 199
    return-object v5
.end method

.method public final from(Lcom/android/billingclient/api/PurchaseHistoryRecord;)Lwb6;
    .locals 0

    const/4 p0, 0x0

    .line 200
    throw p0
.end method
