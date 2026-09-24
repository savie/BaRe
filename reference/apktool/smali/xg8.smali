.class public final synthetic Lxg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lyg8;

.field public final synthetic b:Lwg8;


# direct methods
.method public synthetic constructor <init>(Lyg8;Lwg8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxg8;->a:Lyg8;

    .line 5
    .line 6
    iput-object p2, p0, Lxg8;->b:Lwg8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lxg8;->a:Lyg8;

    .line 2
    .line 3
    iget-object p0, p0, Lxg8;->b:Lwg8;

    .line 4
    .line 5
    sget-object v1, Lzg8;->d:Ll15;

    .line 6
    .line 7
    const-string v2, "permission result {}"

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x4

    .line 14
    invoke-static {v4, v1, v2, v3}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, v0, Lyg8;->d:Lzg8;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget-object v1, v0, Lyg8;->d:Lzg8;

    .line 23
    .line 24
    iget-object v1, v1, Lzg8;->c:Lyg8;

    .line 25
    .line 26
    if-ne v1, v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lyg8;->a:Lvz0;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p1

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    return-void
.end method
