.class final Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lbt3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2;->this$0:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    const-string v1, "SHA-512"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2;->this$0:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->access$getEncryptionPaddingsForKeyGen(Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    const-string v3, "modern_spec_without_wrap_key"

    .line 23
    .line 24
    invoke-direct {v1, v2, v0, v3, p0}, Lcom/microsoft/identity/common/crypto/KeyGenSpec;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method
