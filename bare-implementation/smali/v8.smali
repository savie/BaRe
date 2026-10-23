.class public final Lv8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v0, Lu8;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Lu8;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "glide-active-resources"

    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
