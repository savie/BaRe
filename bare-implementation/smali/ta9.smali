.class public abstract Lta9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lta9;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Unexpected null bundle received!"

    .line 5
    .line 6
    invoke-static {p1, p0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const-string v1, "RESPONSE_CODE"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const-string p0, "getResponseCodeFromBundle() got null response code, assuming OK"

    .line 19
    .line 20
    invoke-static {p1, p0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    instance-of v1, p0, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "Unexpected type for bundle response code: "

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    const-string v0, "playBillingLibraryVersion"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string p1, "playBillingLibraryWrapperVersion"

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const-string p1, "billingClientSessionId"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static c(ILyq0;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "RESPONSE_CODE"

    .line 7
    .line 8
    iget v2, p1, Lyq0;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "DEBUG_MESSAGE"

    .line 14
    .line 15
    iget-object p1, p1, Lyq0;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "LOG_REASON"

    .line 21
    .line 22
    invoke-static {p0}, Lu48;->g(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lp39;J)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, p1, p4, p5}, Lta9;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V

    .line 7
    .line 8
    .line 9
    const-string p0, "enablePendingPurchases"

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string p0, "SKU_DETAILS_RESPONSE_FORMAT"

    .line 16
    .line 17
    const-string p4, "PRODUCT_DETAILS"

    .line 18
    .line 19
    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    sget-object p4, Lma9;->b:Lga9;

    .line 25
    .line 26
    const-string p4, "subs"

    .line 27
    .line 28
    const-string p5, "inapp"

    .line 29
    .line 30
    filled-new-array {p4, p5}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {v1, p4}, Lzm5;->O(I[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p4}, Lma9;->l(I[Ljava/lang/Object;)Lmb9;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    const-string p4, "PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS"

    .line 46
    .line 47
    invoke-virtual {v0, p4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    filled-new-array {p5}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    invoke-static {p1, p4}, Lzm5;->O(I[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p4}, Lma9;->l(I[Ljava/lang/Object;)Lmb9;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    const-string p4, "PRODUCT_TYPES_TO_RETURN_PREORDER_OFFERS"

    .line 67
    .line 68
    invoke-virtual {v0, p4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Ljava/util/ArrayList;

    .line 72
    .line 73
    filled-new-array {p5}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-static {p1, p4}, Lzm5;->O(I[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p4}, Lma9;->l(I[Ljava/lang/Object;)Lmb9;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    const-string p4, "PRODUCT_TYPES_TO_RETURN_RENT_OFFERS"

    .line 88
    .line 89
    invoke-virtual {v0, p4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    .line 91
    .line 92
    const-string p0, "SHOULD_RETURN_UNFETCHED_PRODUCTS"

    .line 93
    .line 94
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    iget-boolean p0, p3, Lp39;->a:Z

    .line 98
    .line 99
    if-eqz p0, :cond_0

    .line 100
    .line 101
    const-string p0, "enablePendingPurchaseForSubscriptions"

    .line 102
    .line 103
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance p3, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance p4, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p5

    .line 125
    const/4 v1, 0x0

    .line 126
    move v2, v1

    .line 127
    move v3, v2

    .line 128
    :goto_0
    const/4 v4, 0x0

    .line 129
    if-ge v1, p5, :cond_2

    .line 130
    .line 131
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lpc6;

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    xor-int/2addr v6, p1

    .line 145
    or-int/2addr v2, v6

    .line 146
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    xor-int/2addr v6, p1

    .line 154
    or-int/2addr v3, v6

    .line 155
    iget-object v5, v5, Lpc6;->b:Ljava/lang/String;

    .line 156
    .line 157
    const-string v6, "first_party"

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_1

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    const-string p0, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 169
    .line 170
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v4

    .line 174
    :cond_2
    if-eqz v2, :cond_3

    .line 175
    .line 176
    const-string p1, "SKU_OFFER_ID_TOKEN_LIST"

    .line 177
    .line 178
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-nez p0, :cond_4

    .line 186
    .line 187
    const-string p0, "SKU_SERIALIZED_DOCID_LIST"

    .line 188
    .line 189
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_5

    .line 197
    .line 198
    const-string p0, "accountName"

    .line 199
    .line 200
    invoke-virtual {v0, p0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    if-eqz v3, :cond_6

    .line 204
    .line 205
    const-string p0, "SKU_DYNAMIC_PRODUCT_TOKEN_LIST"

    .line 206
    .line 207
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    return-object v0
.end method

.method public static e(Landroid/content/Intent;Ljava/lang/String;)Lyq0;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "BillingHelper"

    .line 4
    .line 5
    const-string p1, "Got null intent!"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lyq0;->a()Lxq0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x6

    .line 15
    iput p1, p0, Lxq0;->a:I

    .line 16
    .line 17
    const-string p1, "An internal error occurred."

    .line 18
    .line 19
    iput-object p1, p0, Lxq0;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxq0;->a()Lyq0;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {}, Lyq0;->a()Lxq0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1, p1}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, v0, Lxq0;->a:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0, p1}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iput-object p0, v0, Lxq0;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Lxq0;->a()Lyq0;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Unexpected null bundle received!"

    .line 6
    .line 7
    invoke-static {p1, p0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string v1, "DEBUG_MESSAGE"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string p0, "getDebugMessageFromBundle() got null response code, assuming OK"

    .line 20
    .line 21
    invoke-static {p1, p0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "Unexpected type for debug message: "

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, p0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const v0, 0x9c40

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xfa0

    .line 30
    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sub-int/2addr v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :catchall_0
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "BillingHelper"

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v2

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "Got JSONException while parsing purchase data: "

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const-string p0, "Received a null purchase data."

    .line 30
    .line 31
    invoke-static {v1, p0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
