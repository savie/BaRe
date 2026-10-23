.class public Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static sCallingActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sCustomTabResponseUri:Ljava/lang/String;


# instance fields
.field private mAuthIntent:Landroid/content/Intent;

.field private mBrowserFlowStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 6
    .line 7
    return-void
.end method

.method public static createCustomTabResponseIntent(Lcom/microsoft/identity/client/BrowserTabActivity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCallingActivityClass:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 6
    .line 7
    const-string p0, "BrowserAuthorizationFragment:createCustomTabResponseIntent"

    .line 8
    .line 9
    const-string p1, "Calling activity class is NULL. Unable to create intent for response."

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sput-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCustomTabResponseUri:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCallingActivityClass:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const/high16 p0, 0x24000000

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-object p1
.end method


# virtual methods
.method public final extractState$1(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/Intent;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "browserFlowStarted"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 22
    .line 23
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCallingActivityClass:Ljava/lang/Class;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 21
    .line 22
    const-string v2, "Authorization intent is null."

    .line 23
    .line 24
    invoke-direct {v0, v2, v1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCustomTabResponseUri:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCustomTabResponseUri:Ljava/lang/String;

    .line 47
    .line 48
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 49
    .line 50
    const-string v3, "BrowserAuthorizationFragment:completeAuthorizationInBrowserFlow"

    .line 51
    .line 52
    const-string v4, "Received redirect from customTab/browser."

    .line 53
    .line 54
    invoke-static {v3, v1, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ldj7;->A(I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eq v3, v2, :cond_4

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    if-eq v3, v2, :cond_3

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    if-eq v3, v2, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getAuthorizationFinalUri()Ljava/net/URI;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "app_link"

    .line 87
    .line 88
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Landroid/content/Intent;

    .line 95
    .line 96
    const-string v4, "android.intent.action.VIEW"

    .line 97
    .line 98
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroidx/fragment/app/o;->startActivity(Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 110
    .line 111
    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "Microsoft.MSAL.ui_complete"

    .line 121
    .line 122
    invoke-virtual {v2, v4, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 130
    .line 131
    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;->isUserCancelled()V

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->cancelAuthorization(Z)V

    .line 148
    .line 149
    .line 150
    :goto_1
    sput-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->sCustomTabResponseUri:Ljava/lang/String;

    .line 151
    .line 152
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "browserFlowStarted"

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 11
    .line 12
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
