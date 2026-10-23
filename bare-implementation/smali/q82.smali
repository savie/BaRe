.class public final Lq82;
.super Ljava/lang/Object;

# interfaces
.implements Ll1;


# instance fields
.field public a:Lmg2;


# virtual methods
.method public final c()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lq82;->a:Lmg2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Lq1;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq82;->g()Lq1;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string v0, "IOException converting stream to byte array: "

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p0}, Lq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final g()Lq1;
    .locals 1

    .line 1
    new-instance v0, Lp82;

    .line 2
    .line 3
    iget-object p0, p0, Lq82;->a:Lmg2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lmg2;->b()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lj1;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
