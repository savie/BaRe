.class public final Li82;
.super Ljava/lang/Object;

# interfaces
.implements Lb0;
.implements Lcb4;


# instance fields
.field public final a:Lz1;


# direct methods
.method public constructor <init>(Lz1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li82;->a:Lz1;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lz1;)Lh82;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lh82;

    .line 2
    .line 3
    new-instance v1, Lh92;

    .line 4
    .line 5
    invoke-virtual {p0}, Lz1;->c()Lc0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v1, p0}, Lv1;-><init>(Lc0;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    iput p0, v1, Lh92;->c:I

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lh82;-><init>(Lv1;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Li0;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Li0;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    const-string v0, "unable to get DER object"

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Li82;->a:Lz1;

    .line 4
    .line 5
    invoke-static {p0}, Li82;->a(Lz1;)Lh82;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    new-instance v1, Lp1;

    .line 15
    .line 16
    invoke-direct {v1, v0, p0}, Lp1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :goto_1
    new-instance v1, Lp1;

    .line 21
    .line 22
    invoke-direct {v1, v0, p0}, Lp1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method public final g()Lq1;
    .locals 0

    .line 1
    iget-object p0, p0, Li82;->a:Lz1;

    .line 2
    .line 3
    invoke-static {p0}, Li82;->a(Lz1;)Lh82;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
