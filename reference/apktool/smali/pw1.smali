.class public Lpw1;
.super Lyr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw1$a;
    }
.end annotation


# instance fields
.field private q:Lkj7;

.field private r:Lzl2;

.field private s:Lzl2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lyr5;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpw1;Lkj7;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lyr5;-><init>(Lyr5;)V

    .line 19
    iget-object v0, p1, Lpw1;->r:Lzl2;

    iput-object v0, p0, Lpw1;->r:Lzl2;

    .line 20
    iget-object p1, p1, Lpw1;->s:Lzl2;

    iput-object p1, p0, Lpw1;->s:Lzl2;

    .line 21
    iput-object p2, p0, Lpw1;->q:Lkj7;

    return-void
.end method

.method public constructor <init>(Lvo1;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lyr5;-><init>(Lyr5;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lvo1;->v()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lkj7;

    .line 14
    .line 15
    iput-object p1, p0, Lpw1;->q:Lkj7;

    .line 16
    .line 17
    return-void
.end method

.method public static A()Lpw1$a;
    .locals 1

    .line 1
    new-instance v0, Lpw1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lpw1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic u(Lpw1;)Lkj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->q:Lkj7;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Lpw1;Lkj7;)Lkj7;
    .locals 0

    .line 1
    iput-object p1, p0, Lpw1;->q:Lkj7;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic w(Lpw1;)Lzl2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->r:Lzl2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lpw1;Lzl2;)Lzl2;
    .locals 0

    .line 1
    iput-object p1, p0, Lpw1;->r:Lzl2;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic y(Lpw1;)Lzl2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->s:Lzl2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lpw1;Lzl2;)Lzl2;
    .locals 0

    .line 1
    iput-object p1, p0, Lpw1;->s:Lzl2;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public B()Lzl2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->r:Lzl2;

    .line 2
    .line 3
    return-object p0
.end method

.method public C()Lkj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->q:Lkj7;

    .line 2
    .line 3
    return-object p0
.end method

.method public D()Lzl2;
    .locals 0

    .line 1
    iget-object p0, p0, Lpw1;->s:Lzl2;

    .line 2
    .line 3
    return-object p0
.end method

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
    instance-of v1, p1, Lpw1;

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
    invoke-super {p0, p1}, Lyr5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lpw1;

    .line 19
    .line 20
    iget-object v1, p0, Lpw1;->q:Lkj7;

    .line 21
    .line 22
    iget-object v3, p1, Lpw1;->q:Lkj7;

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
    iget-object v1, p0, Lpw1;->r:Lzl2;

    .line 31
    .line 32
    iget-object v3, p1, Lpw1;->r:Lzl2;

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lpw1;->s:Lzl2;

    .line 37
    .line 38
    iget-object p1, p1, Lpw1;->s:Lzl2;

    .line 39
    .line 40
    if-ne p0, p1, :cond_3

    .line 41
    .line 42
    return v0

    .line 43
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lyr5;->hashCode()I

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
    iget-object v1, p0, Lpw1;->q:Lkj7;

    .line 10
    .line 11
    iget-object v2, p0, Lpw1;->r:Lzl2;

    .line 12
    .line 13
    iget-object p0, p0, Lpw1;->s:Lzl2;

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

.method public t(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lyr5;->t(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpw1;->q:Lkj7;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lrr5;->k(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
