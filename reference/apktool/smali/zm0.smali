.class public final synthetic Lzm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lyq5;


# direct methods
.method public synthetic constructor <init>(Lyq5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lzm0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzm0;->b:Lyq5;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lzm0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lzm0;->b:Lyq5;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Llw3;

    .line 9
    .line 10
    check-cast p1, Lokhttp3/Response;

    .line 11
    .line 12
    sget v0, Lpg5;->n:I

    .line 13
    .line 14
    new-instance v1, Lpw3;

    .line 15
    .line 16
    iget-object v2, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 17
    .line 18
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lfw0;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {p0}, Lyq5;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object p0, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 31
    .line 32
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-direct/range {v1 .. v6}, Lpw3;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_0
    check-cast p0, Ls12;

    .line 41
    .line 42
    check-cast p1, Lokhttp3/Response;

    .line 43
    .line 44
    sget v0, Lcn0;->k:I

    .line 45
    .line 46
    :try_start_0
    const-class v0, Lfc4;

    .line 47
    .line 48
    iget-object v1, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 49
    .line 50
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->g()Ljava/io/Reader;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1, v0}, Lby8;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v6, v0

    .line 59
    check-cast v6, Lfc4;

    .line 60
    .line 61
    new-instance v1, Lt12;

    .line 62
    .line 63
    iget-object v2, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 64
    .line 65
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lll0;->d()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p0}, Lyq5;->h()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-direct/range {v1 .. v6}, Lt12;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfc4;)V
    :try_end_0
    .catch Lcy8; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    move-object p0, v0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    move-object p0, v0

    .line 89
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
