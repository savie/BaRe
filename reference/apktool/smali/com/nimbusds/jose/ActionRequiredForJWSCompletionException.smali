.class public Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;
.super Lcom/nimbusds/jose/JOSEException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

.field private final option:Lcom/nimbusds/jose/JWSSignerOption;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/JWSSignerOption;Lcom/nimbusds/jose/CompletableJWSObjectSigning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    check-cast p2, Lcom/nimbusds/jose/JWSSignerOption;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->option:Lcom/nimbusds/jose/JWSSignerOption;

    .line 10
    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p3, Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getCompletableJWSObjectSigning()Lcom/nimbusds/jose/CompletableJWSObjectSigning;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTriggeringOption()Lcom/nimbusds/jose/JWSSignerOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->option:Lcom/nimbusds/jose/JWSSignerOption;

    .line 2
    .line 3
    return-object p0
.end method
