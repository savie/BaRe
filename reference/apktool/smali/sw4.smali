.class public Lsw4;
.super Lll0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsw4$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lll0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    iput v0, p0, Lsw4;->e:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lsw4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lsw4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic g(Lsw4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lsw4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic h(Lsw4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsw4;->e:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic i(Lsw4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lsw4;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static k()Lsw4$a;
    .locals 1

    .line 1
    new-instance v0, Lsw4$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lsw4$a;-><init>()V

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
    instance-of v1, p1, Lsw4;

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
    invoke-super {p0, p1}, Lll0;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lsw4;

    .line 19
    .line 20
    iget-object v1, p0, Lsw4;->d:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lsw4;->d:Ljava/lang/String;

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
    iget v1, p0, Lsw4;->e:I

    .line 31
    .line 32
    iget v3, p1, Lsw4;->e:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lsw4;->f:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lsw4;->f:Ljava/lang/String;

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
    iget-object p0, p0, Lsw4;->g:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p1, Lsw4;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    return v0

    .line 57
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lll0;->hashCode()I

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
    iget-object v1, p0, Lsw4;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lsw4;->e:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lsw4;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lsw4;->g:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsw4;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsw4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()I
    .locals 0

    .line 1
    iget p0, p0, Lsw4;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsw4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
