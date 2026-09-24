.class public final Lse2;
.super Llz2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Lse2;

.field public static final d:Lrx1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lse2;

    .line 2
    .line 3
    invoke-direct {v0}, Lrx1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lse2;->c:Lse2;

    .line 7
    .line 8
    sget-object v0, Lme8;->c:Lme8;

    .line 9
    .line 10
    sget v1, Lpv7;->a:I

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    const/16 v2, 0xc

    .line 19
    .line 20
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lnc8;->n0(IILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lme8;->n(I)Lrx1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lse2;->d:Lrx1;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot be invoked on Dispatchers.IO"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Llv2;->a:Llv2;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lse2;->j(Lox1;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lox1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lse2;->d:Lrx1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lrx1;->j(Lox1;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.IO"

    .line 2
    .line 3
    return-object p0
.end method
