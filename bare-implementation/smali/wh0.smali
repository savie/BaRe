.class public final Lwh0;
.super Ljava/lang/Object;

# interfaces
.implements Ll1;


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
    iput-object p1, p0, Lwh0;->a:Lz1;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lz1;)Lvh0;
    .locals 2

    .line 1
    new-instance v0, Lvh0;

    .line 2
    .line 3
    new-instance v1, Lst1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lst1;-><init>(Lz1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Liz1;->v(Ljava/io/InputStream;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lvh0;-><init>([B[Lj1;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public final c()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lst1;

    .line 2
    .line 3
    iget-object p0, p0, Lwh0;->a:Lz1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lst1;-><init>(Lz1;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final d()Lq1;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lwh0;->a:Lz1;

    .line 2
    .line 3
    invoke-static {p0}, Lwh0;->a(Lz1;)Lvh0;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string v0, "IOException converting stream to byte array: "

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1, p0}, Lq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final g()Lq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lwh0;->a:Lz1;

    .line 2
    .line 3
    invoke-static {p0}, Lwh0;->a(Lz1;)Lvh0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
