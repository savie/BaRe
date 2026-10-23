.class public final Lpf0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx23;


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p0, Lof0;

    .line 2
    .line 3
    new-instance v0, Lke6;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lke6;->a:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lke6;->b:I

    .line 13
    .line 14
    iput v2, v0, Lke6;->c:I

    .line 15
    .line 16
    iput-object v1, v0, Lke6;->d:[B

    .line 17
    .line 18
    sget-object v1, Le42;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ld42;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lof0;->a:Lke6;

    .line 33
    .line 34
    return-object p0
.end method
