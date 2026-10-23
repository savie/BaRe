.class public Lhj6;
.super Lvr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhj6$a;
    }
.end annotation


# instance fields
.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvr5;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lhj6;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lhj6;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method public static k()Lhj6$a;
    .locals 1

    .line 1
    new-instance v0, Lhj6$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lhj6$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lhj6;

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
    invoke-super {p0, p1}, Lvr5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lhj6;

    .line 19
    .line 20
    iget-boolean p0, p0, Lhj6;->h:Z

    .line 21
    .line 22
    iget-boolean p1, p1, Lhj6;->h:Z

    .line 23
    .line 24
    if-ne p0, p1, :cond_3

    .line 25
    .line 26
    return v0

    .line 27
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lvr5;->hashCode()I

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
    iget-boolean p0, p0, Lhj6;->h:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v0, p0}, [Ljava/lang/Object;

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

.method public l()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lhj6;->h:Z

    .line 2
    .line 3
    return p0
.end method
