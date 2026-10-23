.class public final synthetic Lan0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lxb6;


# direct methods
.method public synthetic constructor <init>(Lxb6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lan0;->a:Lxb6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object p0, p0, Lan0;->a:Lxb6;

    .line 2
    .line 3
    check-cast p1, Lokhttp3/Response;

    .line 4
    .line 5
    sget v0, Lcn0;->k:I

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Lzr5;

    .line 8
    .line 9
    iget-object v2, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 10
    .line 11
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lfw0;->g()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p0}, Lyq5;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string p0, "ETag"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "\""

    .line 30
    .line 31
    const-string v6, ""

    .line 32
    .line 33
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string p0, "x-amz-version-id"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-direct/range {v1 .. v7}, Lzr5;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
