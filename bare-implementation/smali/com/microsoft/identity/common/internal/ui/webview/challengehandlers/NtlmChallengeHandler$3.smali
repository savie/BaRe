.class final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

.field final synthetic val$passwordView:Landroid/widget/EditText;

.field final synthetic val$usernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$usernameView:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$passwordView:Landroid/widget/EditText;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string p1, "NtlmChallengeHandler:showHttpAuthDialog"

    .line 4
    .line 5
    const-string p2, "Proceeding with user supplied username and password."

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->getHandler()Landroid/webkit/HttpAuthHandler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$usernameView:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$passwordView:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p2, p0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
