.class public Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;
.implements Ldm4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;",
        "Ldm4;"
    }
.end annotation


# static fields
.field private static final sRequestAdapterGsonInstance:Lcom/google/gson/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/gson/a;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/a;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getGsonInstance()Lcom/google/gson/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p2, "name"

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, -0x1

    .line 23
    sparse-switch p2, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string p2, "Bearer"

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x3

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string p2, "PoP"

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string p2, "PoP_With_Client_Key"

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string p2, "PoP_Pregenerated"

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 74
    .line 75
    const-string p0, "AuthenticationSchemeTypeAdapter:deserialize"

    .line 76
    .line 77
    const-string p1, "Unrecognized auth scheme. Deserializing as null."

    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :pswitch_0
    const-class p0, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    .line 85
    .line 86
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1
    const-class p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 94
    .line 95
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_2
    const-class p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 103
    .line 104
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_3
    const-class p0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 112
    .line 113
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 118
    .line 119
    return-object p0

    .line 120
    nop

    .line 121
    :sswitch_data_0
    .sparse-switch
        -0x4ce9aa26 -> :sswitch_3
        -0x3acc254a -> :sswitch_2
        0x13a11 -> :sswitch_1
        0x765cef81 -> :sswitch_0
    .end sparse-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Ljava/lang/Object;Lz28;)Lqj4;
    .locals 2

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v0, "Bearer"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x3

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v0, "PoP"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "PoP_With_Client_Key"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "PoP_Pregenerated"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 66
    .line 67
    const-string p0, "AuthenticationSchemeTypeAdapter:serialize"

    .line 68
    .line 69
    const-string p1, "Unrecognized auth scheme. Serializing as null."

    .line 70
    .line 71
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    :pswitch_0
    iget-object p0, p2, Lz28;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance p2, Lqm4;

    .line 86
    .line 87
    invoke-direct {p2}, Lqm4;-><init>()V

    .line 88
    .line 89
    .line 90
    const-class v0, Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;

    .line 91
    .line 92
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lqm4;->Y()Lqj4;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_1
    iget-object p0, p2, Lz28;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance p2, Lqm4;

    .line 110
    .line 111
    invoke-direct {p2}, Lqm4;-><init>()V

    .line 112
    .line 113
    .line 114
    const-class v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lqm4;->Y()Lqj4;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_2
    iget-object p0, p2, Lz28;->b:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    new-instance p2, Lqm4;

    .line 134
    .line 135
    invoke-direct {p2}, Lqm4;-><init>()V

    .line 136
    .line 137
    .line 138
    const-class v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 139
    .line 140
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lqm4;->Y()Lqj4;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_3
    iget-object p0, p2, Lz28;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    new-instance p2, Lqm4;

    .line 158
    .line 159
    invoke-direct {p2}, Lqm4;-><init>()V

    .line 160
    .line 161
    .line 162
    const-class v0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 163
    .line 164
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lqm4;->Y()Lqj4;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    nop

    .line 173
    :sswitch_data_0
    .sparse-switch
        -0x4ce9aa26 -> :sswitch_3
        -0x3acc254a -> :sswitch_2
        0x13a11 -> :sswitch_1
        0x765cef81 -> :sswitch_0
    .end sparse-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
