.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;",
        "Lbe8;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroidx/fragment/app/u;

.field private final browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

.field private isSwitchBrowserChallengeActive:Z

.field private final span$delegate:Lgv7;

.field private final spanContext:Lrj7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/u;Lrj7;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->activity:Landroidx/fragment/app/u;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->spanContext:Lrj7;

    .line 18
    .line 19
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler$span$2;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler$span$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lgv7;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->span$delegate:Lgv7;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic access$getSpanContext$p(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;)Lrj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->spanContext:Lrj7;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getSpan()Lqj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->span$delegate:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqj7;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isSwitchBrowserChallengeActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->isSwitchBrowserChallengeActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final processChallenge(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->activity:Landroidx/fragment/app/u;

    .line 2
    .line 3
    const-string v1, "browser_package_name"

    .line 4
    .line 5
    const-string v2, "No browser found for SwitchBrowserChallenge."

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v5, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v5, ":processChallenge"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;->getProcessUri()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v6, "state"

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget v6, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->a:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;->getAuthorizationUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6, v5}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper;->statesMatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 54
    .line 55
    invoke-static {}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getBrowserSafeListForSwitchBrowser()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-virtual {v5, v6, v7}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->selectBrowser(Ljava/util/List;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/java/browser/Browser;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroid/content/Intent;

    .line 81
    .line 82
    const-class v4, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;

    .line 83
    .line 84
    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const-string v1, "browser_supports_custom_tabs"

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/browser/Browser;->isCustomTabsServiceSupported()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v1, "process_uri"

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserChallenge;->getProcessUri()Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const/high16 p1, 0x10000000

    .line 117
    .line 118
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->isSwitchBrowserChallengeActive:Z

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v7}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    :try_start_1
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 148
    .line 149
    const-string v0, "no_browsers_available"

    .line 150
    .line 151
    invoke-direct {p1, v0, v2, v7}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 155
    .line 156
    invoke-static {v4, v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->getSpan()Lqj7;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    invoke-static {v3, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method
