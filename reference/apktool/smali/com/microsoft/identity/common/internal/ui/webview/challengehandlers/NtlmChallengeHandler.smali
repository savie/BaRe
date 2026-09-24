.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->mActivity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 7
    .line 8
    return-void
.end method

.method public static access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;)V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "NtlmChallengeHandler:cancelRequest"

    .line 4
    .line 5
    const-string v1, "Sending intent to cancel authentication activity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->mChallengeCallback:Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;->onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f0d00cc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f0a01f9

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/EditText;

    .line 33
    .line 34
    const v4, 0x7f0a01f8

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/widget/EditText;

    .line 42
    .line 43
    const v5, 0x7f1302ab

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;

    .line 68
    .line 69
    invoke-direct {v1, p1, v2, v4}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 70
    .line 71
    .line 72
    const v2, 0x7f1302a9

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;

    .line 80
    .line 81
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V

    .line 82
    .line 83
    .line 84
    const v2, 0x7f1302a8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$1;

    .line 92
    .line 93
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 105
    .line 106
    .line 107
    return-object v3
.end method
