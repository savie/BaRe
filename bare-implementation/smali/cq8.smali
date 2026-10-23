.class public final Lcq8;
.super Ln3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Ljava/lang/Object;Lm3;)Lm3;
    .locals 0

    .line 1
    new-instance p0, Lbq8;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lm3;-><init>(Lm3;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lbq8;->c:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lbq8;->c:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Laq8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laq8;-><init>(Lcq8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
