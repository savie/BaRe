.class public interface abstract Lnd3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract getDisplayString()Ljava/lang/String;
.end method

.method public isApplied()Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lnd3;->isDefault()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public abstract isDefault()Z
.end method

.method public abstract reset()V
.end method
