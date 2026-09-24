.class public final Lhq4;
.super Ly23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lkq4;


# direct methods
.method public constructor <init>(Lkq4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhq4;->e:Lkq4;

    .line 2
    .line 3
    invoke-direct {p0}, Ly23;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lhq4;->e:Lkq4;

    .line 2
    .line 3
    iget-object v0, v0, Lkq4;->n:Lye6;

    .line 4
    .line 5
    iget-object v1, p0, Ly23;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [S

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1}, Lye6;->R(I[S)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Ly23;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, [[S

    .line 19
    .line 20
    aget-object p0, p0, p1

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lye6;->S([S)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/lit8 p0, p0, 0x2

    .line 27
    .line 28
    return p0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, v1}, Lye6;->R(I[S)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Ly23;->c:Ljava/io/Serializable;

    .line 37
    .line 38
    check-cast p0, [[S

    .line 39
    .line 40
    aget-object p0, p0, p1

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lye6;->S([S)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/lit8 p0, p0, 0xa

    .line 47
    .line 48
    return p0

    .line 49
    :cond_1
    iget-object p0, p0, Ly23;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, [S

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lye6;->S([S)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    add-int/lit8 p0, p0, 0x12

    .line 58
    .line 59
    return p0
.end method
