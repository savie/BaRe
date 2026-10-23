.class public interface abstract Lcom/microsoft/identity/common/crypto/IKeyGenSpec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEncryptionPaddings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
