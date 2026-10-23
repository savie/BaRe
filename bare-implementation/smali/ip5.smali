.class public abstract Lip5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sput-object v0, Lip5;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    return-void
.end method

.method public static varargs a(Llv1;[B[[B)[B
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "HMACT64"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Llv1;->h(Ljava/lang/String;)Lc55;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0, p1}, Lc55;->init([B)V

    .line 11
    .line 12
    .line 13
    array-length p1, p2

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_0

    .line 16
    .line 17
    aget-object v1, p2, v0

    .line 18
    .line 19
    invoke-interface {p0, v1}, Lc55;->update([B)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Lc55;->b()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lhp5;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public static varargs b(Llv1;[[B)[B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lqg0;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lqg0;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lqg0;->b([B)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lqg0;->a()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Lhp5;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public static c(Llv1;[B[B)[B
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "RC4"

    .line 8
    .line 9
    sget-object v1, Lqf0;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lx23;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lx23;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ly61;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ly61;->init([B)V

    .line 26
    .line 27
    .line 28
    array-length p1, p2

    .line 29
    invoke-interface {p0, p1, p2, v0}, Ly61;->a(I[B[B)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-interface {p0, v0, p1}, Ly61;->doFinal([BI)I

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "Unknown Cipher RC4"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    new-instance p1, Lhp5;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
