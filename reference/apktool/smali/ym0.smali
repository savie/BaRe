.class public final synthetic Lym0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lth2;


# direct methods
.method public synthetic constructor <init>(Lth2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lym0;->a:Lth2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p0, Lym0;->a:Lth2;

    .line 2
    .line 3
    check-cast p1, Lokhttp3/Response;

    .line 4
    .line 5
    sget v0, Lcn0;->k:I

    .line 6
    .line 7
    const-class v0, Lwh2$b;

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 10
    .line 11
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcy8; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-static {v0, v1}, Lby8;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Lby8;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lwh2$b;

    .line 26
    .line 27
    new-instance v2, Lwh2;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lwh2;-><init>(Lwh2$b;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Luh2;

    .line 33
    .line 34
    iget-object v3, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 35
    .line 36
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lfw0;->g()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v0, v3, v4, v5, v2}, Luh2;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lwh2;)V
    :try_end_1
    .catch Lcy8; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    :cond_0
    :try_start_2
    const-class v0, Lwh2;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lby8;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lwh2;

    .line 62
    .line 63
    new-instance v1, Luh2;

    .line 64
    .line 65
    iget-object v2, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 66
    .line 67
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lfw0;->g()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v1, v2, v3, p0, v0}, Luh2;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lwh2;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcy8; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :catch_2
    move-exception p0

    .line 83
    :try_start_3
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :goto_0
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 90
    .line 91
    new-instance v1, Lrg5;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :goto_1
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method
