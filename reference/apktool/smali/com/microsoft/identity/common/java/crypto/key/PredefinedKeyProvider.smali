.class public final Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;


# instance fields
.field private final mKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    const-string v1, "AES"

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getAlias()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "USER_DEFINED_KEY"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyTypeIdentifier()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "U001"

    .line 2
    .line 3
    return-object p0
.end method
