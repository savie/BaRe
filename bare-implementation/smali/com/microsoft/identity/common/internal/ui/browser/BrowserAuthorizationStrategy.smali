.class public abstract Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        ">",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;>;"
    }
.end annotation


# instance fields
.field private mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

.field private mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ResultFuture<",
            "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mBrowser:Lcom/microsoft/identity/common/java/browser/Browser;

.field private mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

.field private mDisposed:Z

.field private mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2Strategy;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;Lcom/microsoft/identity/common/java/browser/Browser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mBrowser:Lcom/microsoft/identity/common/java/browser/Browser;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final completeAuthorization(ILcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .locals 1

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->unbind()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 21
    .line 22
    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResultFactory;->createAuthorizationResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const-string p0, "Unknown request code "

    .line 45
    .line 46
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 51
    .line 52
    const-string p1, "BrowserAuthorizationStrategy:completeAuthorization"

    .line 53
    .line 54
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final requestAuthorization(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;)Lcom/microsoft/identity/common/java/util/ResultFuture;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object/from16 v2, p2

    .line 12
    .line 13
    iput-object v2, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;

    .line 14
    .line 15
    move-object/from16 v2, p1

    .line 16
    .line 17
    iput-object v2, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 18
    .line 19
    new-instance v3, Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 20
    .line 21
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v3, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mBrowser:Lcom/microsoft/identity/common/java/browser/Browser;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/browser/Browser;->isCustomTabsServiceSupported()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v5, "android.intent.action.VIEW"

    .line 33
    .line 34
    const-string v6, "BrowserAuthorizationStrategy:requestAuthorization"

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    const-string v4, "CustomTabsService is supported."

    .line 41
    .line 42
    invoke-static {v6, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 46
    .line 47
    invoke-direct {v4, v1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v4, v1, v6}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->bind(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    new-instance v1, Landroid/content/Intent;

    .line 63
    .line 64
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    :goto_0
    move-object v6, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->getCustomTabsIntent()Lix0;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lix0;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Landroid/content/Intent;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 88
    .line 89
    const-string v1, "CustomTabsService is NOT supported"

    .line 90
    .line 91
    invoke-static {v6, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Landroid/content/Intent;

    .line 95
    .line 96
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :goto_1
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;->getAuthorizationRequestAsHttpRequest()Ljava/net/URI;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getBrkRedirectUri()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 129
    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getBrkRedirectUri()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_2
    move-object v8, v2

    .line 137
    goto :goto_3

    .line 138
    :cond_2
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_2

    .line 143
    :goto_3
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getRequestHeaders()Ljava/util/HashMap;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const/4 v15, 0x0

    .line 169
    const/16 v16, 0x1fc0

    .line 170
    .line 171
    sget-object v10, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v12, 0x0

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    invoke-direct/range {v4 .. v16}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Lcom/microsoft/identity/common/PropertyBagUtil;->getAuthorizationActivityIntent(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->setIntentFlag(Landroid/content/Intent;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidAuthorizationStrategy;->launchIntent(Landroid/content/Intent;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/java/util/ResultFuture;

    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_3
    const-string v0, "Service has been disposed and rendered inoperable"

    .line 194
    .line 195
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    return-object v0
.end method

.method public abstract setIntentFlag(Landroid/content/Intent;)V
.end method
