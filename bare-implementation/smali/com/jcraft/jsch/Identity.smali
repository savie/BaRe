.class public interface abstract Lcom/jcraft/jsch/Identity;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract clear()V
.end method

.method public decrypt()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "not implemented"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public abstract getAlgName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublicKeyBlob()[B
.end method

.method public abstract getSignature([B)[B
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract setPassphrase([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method
