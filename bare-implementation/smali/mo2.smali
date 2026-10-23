.class public Lmo2;
.super Lrr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmo2$a;
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Z

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/time/ZonedDateTime;

.field protected n:Ljava/time/ZonedDateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrr5;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lmo2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmo2;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic m(Lmo2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lmo2;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static n()Lmo2$a;
    .locals 1

    .line 1
    new-instance v0, Lmo2$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmo2$a;-><init>()V

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
    instance-of v1, p1, Lmo2;

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
    invoke-super {p0, p1}, Lrr5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lmo2;

    .line 19
    .line 20
    iget-object v1, p0, Lmo2;->i:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lmo2;->i:Ljava/lang/String;

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
    iget-boolean v1, p0, Lmo2;->j:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Lmo2;->j:Z

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lmo2;->k:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lmo2;->k:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lmo2;->l:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lmo2;->l:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lmo2;->m:Ljava/time/ZonedDateTime;

    .line 57
    .line 58
    iget-object v3, p1, Lmo2;->m:Ljava/time/ZonedDateTime;

    .line 59
    .line 60
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object p0, p0, Lmo2;->n:Ljava/time/ZonedDateTime;

    .line 67
    .line 68
    iget-object p1, p1, Lmo2;->n:Ljava/time/ZonedDateTime;

    .line 69
    .line 70
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    return v0

    .line 77
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-super {p0}, Lrr5;->hashCode()I

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
    iget-object v2, p0, Lmo2;->i:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v0, p0, Lmo2;->j:Z

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lmo2;->k:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v5, p0, Lmo2;->l:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, p0, Lmo2;->m:Ljava/time/ZonedDateTime;

    .line 22
    .line 23
    iget-object v7, p0, Lmo2;->n:Ljava/time/ZonedDateTime;

    .line 24
    .line 25
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmo2;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmo2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public q()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lmo2;->m:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmo2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmo2;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public t()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lmo2;->n:Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-object p0
.end method
