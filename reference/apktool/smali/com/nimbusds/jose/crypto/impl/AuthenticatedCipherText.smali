.class public final Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# instance fields
.field private final authenticationTag:[B

.field private final cipherText:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    check-cast p1, [B

    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->cipherText:[B

    .line 10
    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p2, [B

    .line 15
    .line 16
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->authenticationTag:[B

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getAuthenticationTag()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->authenticationTag:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public getCipherText()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->cipherText:[B

    .line 2
    .line 3
    return-object p0
.end method
