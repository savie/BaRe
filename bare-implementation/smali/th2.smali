.class public Lth2;
.super Lfw0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lth2$a;
    }
.end annotation


# instance fields
.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvh2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfw0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lth2;->h:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic h(Lth2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lth2;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lth2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lth2;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic j(Lth2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lth2;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic k(Lth2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lth2;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method public static l()Lth2$a;
    .locals 1

    .line 1
    new-instance v0, Lth2$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lth2$a;-><init>()V

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
    instance-of v1, p1, Lth2;

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
    invoke-super {p0, p1}, Lfw0;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lth2;

    .line 19
    .line 20
    iget-boolean v1, p0, Lth2;->f:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lth2;->f:Z

    .line 23
    .line 24
    if-ne v1, v3, :cond_3

    .line 25
    .line 26
    iget-boolean v1, p0, Lth2;->g:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Lth2;->g:Z

    .line 29
    .line 30
    if-ne v1, v3, :cond_3

    .line 31
    .line 32
    iget-object p0, p0, Lth2;->h:Ljava/util/List;

    .line 33
    .line 34
    iget-object p1, p1, Lth2;->h:Ljava/util/List;

    .line 35
    .line 36
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

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
    invoke-super {p0}, Lfw0;->hashCode()I

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
    iget-boolean v1, p0, Lth2;->f:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lth2;->g:Z

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object p0, p0, Lth2;->h:Ljava/util/List;

    .line 22
    .line 23
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public m()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lth2;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public n()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvh2$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lth2;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public o()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lth2;->f:Z

    .line 2
    .line 3
    return p0
.end method
