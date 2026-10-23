.class public final Lcom/nimbusds/jose/EncryptionMethod$Family;
.super Lcom/nimbusds/jose/AlgorithmFamily;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/EncryptionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/AlgorithmFamily<",
        "Lcom/nimbusds/jose/EncryptionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final AES_CBC_HMAC_SHA:Lcom/nimbusds/jose/EncryptionMethod$Family;

.field public static final AES_GCM:Lcom/nimbusds/jose/EncryptionMethod$Family;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod$Family;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    sget-object v3, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 8
    .line 9
    filled-new-array {v1, v2, v3}, [Lcom/nimbusds/jose/EncryptionMethod;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/EncryptionMethod$Family;-><init>([Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_CBC_HMAC_SHA:Lcom/nimbusds/jose/EncryptionMethod$Family;

    .line 17
    .line 18
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod$Family;

    .line 19
    .line 20
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 21
    .line 22
    sget-object v2, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 23
    .line 24
    sget-object v3, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 25
    .line 26
    filled-new-array {v1, v2, v3}, [Lcom/nimbusds/jose/EncryptionMethod;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/EncryptionMethod$Family;-><init>([Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_GCM:Lcom/nimbusds/jose/EncryptionMethod$Family;

    .line 34
    .line 35
    return-void
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;-><init>([Lcom/nimbusds/jose/Algorithm;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lcom/nimbusds/jose/Algorithm;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->add(Lcom/nimbusds/jose/Algorithm;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->addAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->remove(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->removeAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->retainAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
