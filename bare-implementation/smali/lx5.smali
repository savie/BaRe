.class public final Llx5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lnx5;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lmt3;


# direct methods
.method public constructor <init>(Lnx5;Ljava/lang/String;Lmt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llx5;->a:Lnx5;

    .line 2
    .line 3
    iput-object p2, p0, Llx5;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Llx5;->c:Lmt3;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Llx5;

    .line 2
    .line 3
    iget-object v1, p0, Llx5;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Llx5;->c:Lmt3;

    .line 6
    .line 7
    iget-object p0, p0, Llx5;->a:Lnx5;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p1}, Llx5;-><init>(Lnx5;Ljava/lang/String;Lmt3;Ljv1;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljv1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Llx5;->create(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llx5;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Llx5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Llx5;->a:Lnx5;

    .line 5
    .line 6
    iget-object p1, p1, Lnx5;->b:Lfw6;

    .line 7
    .line 8
    iget-object v0, p0, Llx5;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Llx5;->c:Lmt3;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    invoke-static {p1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
