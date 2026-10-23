.class public final Lzn5;
.super Lp3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loh4;


# static fields
.field public static final b:Lzn5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzn5;

    .line 2
    .line 3
    sget-object v1, Lnh4;->b:Lnh4;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp3;-><init>(Lnx1;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lzn5;->b:Lzn5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final attachChild(Lk61;)Lg61;
    .locals 0

    .line 1
    sget-object p0, Lao5;->a:Lao5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "This job is always active"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getChildren()Lf77;
    .locals 0

    .line 1
    sget-object p0, Lrv2;->a:Lrv2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final invokeOnCompletion(Lmt3;)Lin2;
    .locals 0

    .line 1
    sget-object p0, Lao5;->a:Lao5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final invokeOnCompletion(ZZLmt3;)Lin2;
    .locals 0

    .line 4
    sget-object p0, Lao5;->a:Lao5;

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final join(Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "This job is always active"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final start()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NonCancellable"

    .line 2
    .line 3
    return-object p0
.end method
