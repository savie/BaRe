.class public final Lai0;
.super Ljava/lang/Object;

# interfaces
.implements Lb0;
.implements Lcb4;


# instance fields
.field public final synthetic a:I

.field public b:Lz1;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lai0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    iget v0, p0, Lai0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lai0;->g()Lq1;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lp1;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p0}, Lp1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lai0;->b:Lz1;

    .line 23
    .line 24
    new-instance v0, Lzh0;

    .line 25
    .line 26
    invoke-virtual {p0}, Lz1;->c()Lc0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lx1;-><init>(Lc0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    new-instance v0, Lp1;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1, p0}, Lp1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lq1;
    .locals 1

    .line 1
    iget v0, p0, Lai0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lai0;->b:Lz1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lz1;->c()Lc0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lf92;->b(Lc0;)Li92;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p0, Lai0;->b:Lz1;

    .line 18
    .line 19
    new-instance v0, Lzh0;

    .line 20
    .line 21
    invoke-virtual {p0}, Lz1;->c()Lc0;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Lx1;-><init>(Lc0;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
