.class public final synthetic Lom0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lw2;


# direct methods
.method public synthetic constructor <init>(Lw2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lom0;->a:Lw2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lom0;->a:Lw2;

    .line 2
    .line 3
    check-cast p1, Lokhttp3/Response;

    .line 4
    .line 5
    sget v0, Lcn0;->k:I

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Lx2;

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
    invoke-virtual {p0}, Lll0;->d()Ljava/lang/String;

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
    invoke-virtual {p0}, Lw2;->l()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-direct/range {v1 .. v6}, Lx2;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
