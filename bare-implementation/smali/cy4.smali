.class public Lcy4;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcy4$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;


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

.method public static synthetic i(Lcy4;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcy4;->i:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic j(Lcy4;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcy4;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic k(Lcy4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcy4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static l()Lcy4$a;
    .locals 1

    .line 1
    new-instance v0, Lcy4$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcy4$a;-><init>()V

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
    instance-of v1, p1, Lcy4;

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
    check-cast p1, Lcy4;

    .line 19
    .line 20
    iget-object v1, p0, Lcy4;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcy4;->g:Ljava/lang/String;

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
    iget-object v1, p0, Lcy4;->h:Ljava/lang/Integer;

    .line 31
    .line 32
    iget-object v3, p1, Lcy4;->h:Ljava/lang/Integer;

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
    iget-object p0, p0, Lcy4;->i:Ljava/lang/Integer;

    .line 41
    .line 42
    iget-object p1, p1, Lcy4;->i:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    return v0

    .line 51
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

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
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcy4;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcy4;->h:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object p0, p0, Lcy4;->i:Ljava/lang/Integer;

    .line 14
    .line 15
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public m()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy4;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public n()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy4;->i:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcy4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
