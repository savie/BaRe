.class public Lvo1;
.super Lyr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo1$a;
    }
.end annotation


# instance fields
.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkj7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lyr5;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpw1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyr5;-><init>(Lyr5;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lpw1;->C()Lkj7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lvo1;->q:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lvo1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvo1;",
            "Ljava/util/List<",
            "Lkj7;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lyr5;-><init>(Lyr5;)V

    .line 16
    iput-object p2, p0, Lvo1;->q:Ljava/util/List;

    return-void
.end method

.method public static u()Lvo1$a;
    .locals 1

    .line 1
    new-instance v0, Lvo1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lvo1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lvo1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyr5;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lvo1;

    .line 19
    .line 20
    iget-object p0, p0, Lvo1;->q:Ljava/util/List;

    .line 21
    .line 22
    iget-object p1, p1, Lvo1;->q:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public hashCode()I
    .locals 1

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
    iget-object p0, p0, Lvo1;->q:Ljava/util/List;

    .line 10
    .line 11
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public t(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lyr5;->t(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lvo1;->q:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lkj7;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lrr5;->k(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public v()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkj7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lvo1;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
