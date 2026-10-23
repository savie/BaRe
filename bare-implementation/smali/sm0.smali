.class public final synthetic Lsm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lay4;


# direct methods
.method public synthetic constructor <init>(Lay4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsm0;->a:Lay4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lsm0;->a:Lay4;

    .line 2
    .line 3
    check-cast p1, Lokhttp3/Response;

    .line 4
    .line 5
    sget v0, Lcn0;->k:I

    .line 6
    .line 7
    :try_start_0
    const-class v0, Low4;

    .line 8
    .line 9
    iget-object v1, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 10
    .line 11
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->g()Ljava/io/Reader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lby8;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Low4;

    .line 20
    .line 21
    new-instance v1, Lby4;

    .line 22
    .line 23
    iget-object v2, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lfw0;->g()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, v2, v3, p0, v0}, Lby4;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Low4;)V
    :try_end_0
    .catch Lcy8; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method
