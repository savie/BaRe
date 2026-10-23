.class Lcom/nimbusds/jose/JWSObject$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/CompletableJWSObjectSigning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/JWSObject;

.field final synthetic val$e:Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSObject;Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject$1;->this$0:Lcom/nimbusds/jose/JWSObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/JWSObject$1;->val$e:Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public complete()Lcom/nimbusds/jose/util/Base64URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject$1;->this$0:Lcom/nimbusds/jose/JWSObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/JWSObject$1;->val$e:Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->getCompletableJWSObjectSigning()Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/nimbusds/jose/CompletableJWSObjectSigning;->complete()Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/nimbusds/jose/JWSObject;->access$002(Lcom/nimbusds/jose/JWSObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject$1;->this$0:Lcom/nimbusds/jose/JWSObject;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/nimbusds/jose/JWSObject;->access$100(Lcom/nimbusds/jose/JWSObject;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject$1;->this$0:Lcom/nimbusds/jose/JWSObject;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObject;->access$000(Lcom/nimbusds/jose/JWSObject;)Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public getInitializedSignature()Ljava/security/Signature;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject$1;->val$e:Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->getCompletableJWSObjectSigning()Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/nimbusds/jose/CompletableJWSObjectSigning;->getInitializedSignature()Ljava/security/Signature;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
