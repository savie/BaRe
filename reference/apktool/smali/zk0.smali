.class public interface abstract Lzk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lva4;


# virtual methods
.method public a(Lt40;)Lt40;
    .locals 1

    .line 1
    sget-object v0, Lx13;->a:Llh9;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p0}, Lt40;->c(Llh9;Lva4;)Lt40;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract forEach(Lon8;)V
.end method

.method public abstract getEntryValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lzk0;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public abstract size()I
.end method
