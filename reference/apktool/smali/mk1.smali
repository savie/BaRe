.class public final Lmk1;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lbg0;


# direct methods
.method public constructor <init>(Lbg0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lj3;-><init>([Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmk1;->b:Lbg0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lmk1;->b:Lbg0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p3, Lv40;->a:Lv40;

    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lad3;->a(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p2, Ljava/io/IOException;

    .line 15
    .line 16
    const-string p3, "BCJ filter used in "

    .line 17
    .line 18
    const-string p4, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"

    .line 19
    .line 20
    invoke-static {p3, p1, p4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance p1, Ldj3;

    .line 2
    .line 3
    iget-object p0, p0, Lmk1;->b:Lbg0;

    .line 4
    .line 5
    new-instance v0, Lpe3;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lpe3;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p2, Lv40;->a:Lv40;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p2}, Lad3;->b(Lpe3;Lv40;)Loe3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {p1, p0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
