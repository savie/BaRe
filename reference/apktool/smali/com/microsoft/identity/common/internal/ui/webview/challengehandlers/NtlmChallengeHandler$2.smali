.class final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

.field final synthetic val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->getHandler()Landroid/webkit/HttpAuthHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
