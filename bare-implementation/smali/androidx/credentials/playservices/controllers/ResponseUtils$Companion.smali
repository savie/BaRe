.class public final Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/ResponseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$4xDG5tuFzF9vPvJ3Fz0XD1ZPNoc(Landroid/os/CancellationSignal;Lbt3;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$0(Landroid/os/CancellationSignal;Lbt3;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$A06gwChzcFuhXsKmyMy0CkBHQxI(Lt22;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$2$0(Lt22;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$JE-GM6T_V8V7e_XFAqAqKCqwbUo(Lt22;Lbw3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$3$0(Lt22;Lbw3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Rj_QcAAEo31zdXJsqOqntcts71A(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$2(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Y1y08ow1t71qyW_X-seA_tVzVBA(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$1(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$dCdZlrjuJxGw6qcci-__6ElYZ7U(Lt22;Lwv3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$4$0(Lt22;Lwv3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$oiqC25vkrJEjP1b7huHgFi11C9A(Ljava/util/concurrent/Executor;Lt22;Lbw3;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$3(Ljava/util/concurrent/Executor;Lt22;Lbw3;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$u7ojyQKDmKKfz1_tCnTZEKMpmR8(Lt22;Lwv3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$1$0(Lt22;Lwv3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$udknnXJUkCi6PtqNHxZRjz-MAXc(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$4(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$0(Landroid/os/CancellationSignal;Lbt3;)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$1(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lty1;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1, p1, p2}, Lty1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$1$0(Lt22;Lwv3;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lt22;->onError(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$2(Ljava/util/concurrent/Executor;Lt22;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lo10;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p1, v1}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$2$0(Lt22;)V
    .locals 2

    .line 1
    new-instance v0, Lcw3;

    .line 2
    .line 3
    const-string v1, "No provider data returned."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcw3;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$3(Ljava/util/concurrent/Executor;Lt22;Lbw3;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lo12;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lo12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$3$0(Lt22;Lbw3;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$4(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lpb;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lpb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$4$0(Lt22;Lwv3;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcw3;

    .line 4
    .line 5
    const-string v0, "No provider data returned"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcw3;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p0, p1}, Lt22;->onError(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleGetCredentialResponse(IILandroid/content/Intent;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Ljava/util/concurrent/Executor;",
            "Lt22;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object p0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p3, "Returned request code "

    .line 18
    .line 19
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " which  does not match what was given "

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "GetCredentialController"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    sget-object p0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 48
    .line 49
    new-instance p1, Lvc1;

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-direct {p1, v0}, Lvc1;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljj2;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-direct {v0, v1, p4, p5}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2, p1, v0, p6}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->maybeReportErrorResultCodeGet$credentials_play_services_auth(ILqt3;Lmt3;Landroid/os/CancellationSignal;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    if-nez p3, :cond_2

    .line 69
    .line 70
    new-instance p1, Lkg;

    .line 71
    .line 72
    const/16 p2, 0xe

    .line 73
    .line 74
    invoke-direct {p1, p2, p4, p5}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p6, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/4 p2, 0x0

    .line 84
    const/16 v0, 0x22

    .line 85
    .line 86
    if-lt p1, v0, :cond_3

    .line 87
    .line 88
    invoke-static {p3}, Lj6;->d(Landroid/content/Intent;)Lbw3;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const-string v2, "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-nez v2, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    const-string v3, "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA"

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    :goto_0
    move-object v1, p2

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    new-instance v3, Lbw3;

    .line 122
    .line 123
    invoke-static {v1, v2}, Lpe4;->h(Landroid/os/Bundle;Ljava/lang/String;)Lao;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v3, v1}, Lbw3;-><init>(Lao;)V

    .line 128
    .line 129
    .line 130
    move-object v1, v3

    .line 131
    :goto_1
    if-eqz v1, :cond_7

    .line 132
    .line 133
    new-instance p1, Loj;

    .line 134
    .line 135
    const/4 p2, 0x7

    .line 136
    invoke-direct {p1, p2, p4, p5, v1}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p6, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_7
    if-lt p1, v0, :cond_8

    .line 144
    .line 145
    invoke-static {p3}, Lj6;->c(Landroid/content/Intent;)Lwv3;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_2

    .line 150
    :cond_8
    sget p1, Lwv3;->a:I

    .line 151
    .line 152
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-nez p1, :cond_9

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_9
    const-string p2, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE"

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_a

    .line 168
    .line 169
    const-string p3, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"

    .line 170
    .line 171
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1, p2}, Lcy0;->J(Ljava/lang/CharSequence;Ljava/lang/String;)Lwv3;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    :goto_2
    new-instance p1, Lu20;

    .line 180
    .line 181
    const/4 p3, 0x4

    .line 182
    invoke-direct {p1, p3, p4, p5, p2}, Lu20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p6, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_a
    const-string p0, "Bundle was missing exception type."

    .line 190
    .line 191
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
