.class final Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lmt3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;->INSTANCE:Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getTransformation()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
