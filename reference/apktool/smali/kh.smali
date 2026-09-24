.class public final synthetic Lkh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lnh;

.field public final synthetic b:Lk55;

.field public final synthetic c:Lmt3;

.field public final synthetic d:Lw45;


# direct methods
.method public synthetic constructor <init>(Lnh;Lk55;Ljh;Lw45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkh;->a:Lnh;

    .line 5
    .line 6
    iput-object p2, p0, Lkh;->b:Lk55;

    .line 7
    .line 8
    iput-object p3, p0, Lkh;->c:Lmt3;

    .line 9
    .line 10
    iput-object p4, p0, Lkh;->d:Lw45;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkh;->b:Lk55;

    .line 2
    .line 3
    iget-object v1, p0, Lkh;->c:Lmt3;

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljm1;->l(Lk55;Lmt3;)Lrh;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Lbn6;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :goto_0
    sget-object v1, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    new-instance v1, Lmh;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lkh;->d:Lw45;

    .line 23
    .line 24
    iget-object p0, p0, Lkh;->a:Lnh;

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0, p0}, Lmh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lbe8;->a:Lbe8;

    .line 33
    .line 34
    return-object p0
.end method
