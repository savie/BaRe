.class public final synthetic Lib7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic a:Llb7;


# direct methods
.method public synthetic constructor <init>(Llb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lib7;->a:Llb7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .locals 2

    .line 1
    iget-object p0, p0, Lib7;->a:Llb7;

    .line 2
    .line 3
    iget-object p0, p0, Llb7;->p:[Liy1;

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Liy1;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-wide v0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method
