.class public final synthetic Lnm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcn0;

.field public final synthetic b:Lmv3;


# direct methods
.method public synthetic constructor <init>(Lcn0;Lmv3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnm0;->a:Lcn0;

    .line 5
    .line 6
    iput-object p2, p0, Lnm0;->b:Lmv3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lokhttp3/Response;

    .line 2
    .line 3
    sget v0, Lcn0;->k:I

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;
    :try_end_0
    .catch Lcy8; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    :try_start_1
    const-class v0, Lr05;

    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->g()Ljava/io/Reader;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lby8;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lr05;

    .line 18
    .line 19
    invoke-virtual {v0}, Lr05;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    iget-object v2, p0, Lnm0;->a:Lcn0;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    :try_start_2
    invoke-virtual {v0}, Lr05;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lr05;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "EU"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, v2, Lcn0;->c:Lv64$a;

    .line 53
    .line 54
    iget-object v1, v1, Lv64$a;->c:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const-string v0, "eu-west-1"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v0}, Lr05;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    const-string v0, "us-east-1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Lcy8; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    .line 72
    .line 73
    iget-object p1, v2, Lcn0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    iget-object p0, p0, Lnm0;->b:Lmv3;

    .line 76
    .line 77
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :goto_2
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    :try_start_5
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catchall_2
    move-exception p1

    .line 94
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_3
    throw v0
    :try_end_6
    .catch Lcy8; {:try_start_6 .. :try_end_6} :catch_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    new-instance p1, Ljava/util/concurrent/CompletionException;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method
