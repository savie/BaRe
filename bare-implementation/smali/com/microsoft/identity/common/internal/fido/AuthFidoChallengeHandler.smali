.class public final Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Lcom/microsoft/identity/common/internal/fido/FidoChallenge;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final parentAttributeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final fidoManager:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

.field private final lifecycleOwner:Lfu4;

.field private final oTelContext:Lt40;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->account_type:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->calling_package_name:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 4
    .line 5
    sget-object v2, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->correlation_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 6
    .line 7
    sget-object v3, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->tenant_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lfl1;->x0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->parentAttributeNames:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;Landroid/webkit/WebView;Lt40;Lfu4;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->fidoManager:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->webView:Landroid/webkit/WebView;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->oTelContext:Lt40;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->lifecycleOwner:Lfu4;

    .line 14
    .line 15
    const-class p1, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;

    .line 16
    .line 17
    invoke-static {p1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ln81;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 5
    .line 6
    const-string v0, "Responding to Fido challenge."

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->webView:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getFidoManager$p(Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;)Lcom/microsoft/identity/common/internal/fido/IFidoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->fidoManager:Lcom/microsoft/identity/common/internal/fido/CredManFidoManager;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final processChallenge(Lcom/microsoft/identity/common/internal/fido/FidoChallenge;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":processChallenge"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 15
    .line 16
    const-string v0, "Processing FIDO challenge."

    .line 17
    .line 18
    invoke-static {v9, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "Fido"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->oTelContext:Lt40;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->fromContext(Lt40;)Lqj7;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->fromContext(Lt40;)Lzk0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->parentAttributeNames:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v1, v4}, Lzk0;->getEntryValue(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    move-object v6, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "Is app in work profile?: "

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->webView:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->isInManagedProfile(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v9, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getSubmitUrl()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    move-object v4, v0

    .line 118
    check-cast v4, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getContext()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    move-object v5, v0

    .line 129
    check-cast v5, Ljava/lang/String;

    .line 130
    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getChallenge()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getRelyingPartyIdentifier()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getUserVerificationPolicy()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object v8, v2

    .line 160
    check-cast v8, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getAllowedCredentials()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object v7, v2

    .line 171
    check-cast v7, Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getVersion()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallenge;->getKeyTypes()Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField;->getOrThrow()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->lifecycleOwner:Lfu4;

    .line 188
    .line 189
    if-nez p1, :cond_3

    .line 190
    .line 191
    const-string v7, "Cannot get lifecycle owner needed for FIDO API calls."

    .line 192
    .line 193
    const/4 v8, 0x0

    .line 194
    move-object v3, p0

    .line 195
    invoke-virtual/range {v3 .. v9}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallengeWithError(Ljava/lang/String;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_3
    move-object v3, p0

    .line 200
    invoke-static {p1}, Lz85;->t(Lfu4;)Lxt4;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    move-object v10, v4

    .line 205
    move-object v4, v3

    .line 206
    new-instance v3, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;

    .line 207
    .line 208
    const/4 v13, 0x0

    .line 209
    move-object v11, v5

    .line 210
    move-object v12, v9

    .line 211
    move-object v5, v0

    .line 212
    move-object v9, v6

    .line 213
    move-object v6, v1

    .line 214
    invoke-direct/range {v3 .. v13}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler$processChallenge$2;-><init>(Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljv1;)V

    .line 215
    .line 216
    .line 217
    const/4 p1, 0x3

    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-static {p0, v0, v3, p1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    move-object v3, p0

    .line 225
    move-object p0, v0

    .line 226
    move-object v8, p0

    .line 227
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual/range {v3 .. v9}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallengeWithError(Ljava/lang/String;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final respondToChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr86;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, ":respondToChallenge"

    .line 18
    .line 19
    invoke-static {p4, v0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const-string v0, " "

    .line 24
    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x6

    .line 30
    invoke-static {p3, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x2

    .line 39
    const/4 v2, 0x0

    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    move-object v0, p3

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    const-string p3, ""

    .line 64
    .line 65
    :goto_0
    new-instance v1, Lpw5;

    .line 66
    .line 67
    const-string v2, "Assertion"

    .line 68
    .line 69
    invoke-direct {v1, v2, p2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lpw5;

    .line 73
    .line 74
    const-string v2, "x-ms-ctx"

    .line 75
    .line 76
    invoke-direct {p2, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lpw5;

    .line 80
    .line 81
    const-string v2, "x-ms-flowToken"

    .line 82
    .line 83
    invoke-direct {v0, v2, p3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    filled-new-array {v1, p2, v0}, [Lpw5;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance p3, Le80;

    .line 95
    .line 96
    invoke-direct {p3, p4, p0, p1, p2}, Le80;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->webView:Landroid/webkit/WebView;

    .line 100
    .line 101
    invoke-virtual {p0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final respondToChallengeWithError(Ljava/lang/String;Ljava/lang/String;Lr86;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    invoke-static {p6, p4, p5}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const-string p6, "ERROR: "

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p6

    .line 25
    invoke-virtual {p6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p6

    .line 29
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p6, ": "

    .line 33
    .line 34
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p6, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    :goto_0
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/microsoft/identity/common/internal/fido/AuthFidoChallengeHandler;->respondToChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr86;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
