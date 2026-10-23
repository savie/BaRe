.class public Ld10;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld10$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/io/InputStream;

.field private i:[B

.field private j:Ljava/lang/Long;

.field private k:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyq5;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Ld10;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Ld10;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Ld10;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic k(Ld10;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->h:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Ld10;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Ld10;->h:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic m(Ld10;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->i:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Ld10;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Ld10;->i:[B

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic o(Ld10;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Ld10;->k:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic p(Ld10;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Ld10;->j:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p1
.end method

.method public static q()Ld10$a;
    .locals 1

    .line 1
    new-instance v0, Ld10$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld10$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ld10;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyq5;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Ld10;

    .line 19
    .line 20
    iget-object v1, p0, Ld10;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Ld10;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Ld10;->h:Ljava/io/InputStream;

    .line 31
    .line 32
    iget-object v3, p1, Ld10;->h:Ljava/io/InputStream;

    .line 33
    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p0, Ld10;->i:[B

    .line 41
    .line 42
    iget-object v3, p1, Ld10;->i:[B

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Ld10;->j:Ljava/lang/Long;

    .line 51
    .line 52
    iget-object v3, p1, Ld10;->j:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Ld10;->k:Ljava/lang/Long;

    .line 61
    .line 62
    iget-object p1, p1, Ld10;->k:Ljava/lang/Long;

    .line 63
    .line 64
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-super {p0}, Lyq5;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Ld10;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Ld10;->h:Ljava/io/InputStream;

    .line 12
    .line 13
    iget-object v4, p0, Ld10;->i:[B

    .line 14
    .line 15
    iget-object v5, p0, Ld10;->j:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v6, p0, Ld10;->k:Ljava/lang/Long;

    .line 18
    .line 19
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public r()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->k:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public s()[B
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->i:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public u()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->j:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public v()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Ld10;->h:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method
