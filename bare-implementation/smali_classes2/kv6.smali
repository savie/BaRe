.class public interface abstract Lkv6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract count()I
.end method

.method public abstract deleteAll()V
.end method

.method public abstract deleteOlderThan(J)I
.end method

.method public abstract loadLatestMessages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljv6;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadMessagesAfterTime(J)Lzy4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lzy4;"
        }
    .end annotation
.end method

.method public abstract put(Ljv6;)V
.end method
