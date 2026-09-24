.class public Lpx4;
.super Lfw0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpx4$a;
    }
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lfw0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lwx4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfw0;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lll0;->b()Lv64$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lll0;->b:Lv64$c;

    .line 9
    .line 10
    invoke-virtual {p1}, Lll0;->c()Lv64$e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lll0;->c:Lv64$e;

    .line 15
    .line 16
    invoke-virtual {p1}, Lfw0;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lfw0;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lfw0;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lfw0;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lwx4;->w()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lpx4;->f:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lwx4;->H()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v0, "url"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iput-object v0, p0, Lpx4;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Lwx4;->C()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lpx4;->h:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p1}, Lwx4;->D()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lpx4;->i:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Lwx4;->A()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lpx4;->j:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lwx4;->I()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lpx4;->k:Ljava/lang/String;

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic h(Lpx4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic i(Lpx4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic j(Lpx4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic k(Lpx4;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic l(Lpx4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic m(Lpx4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lpx4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static n()Lpx4$a;
    .locals 1

    .line 1
    new-instance v0, Lpx4$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lpx4$a;-><init>()V

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
    instance-of v1, p1, Lpx4;

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
    check-cast p1, Lpx4;

    .line 19
    .line 20
    iget-object v1, p0, Lpx4;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lpx4;->f:Ljava/lang/String;

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
    iget-object v1, p0, Lpx4;->g:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lpx4;->g:Ljava/lang/String;

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
    iget-object v1, p0, Lpx4;->h:Ljava/lang/Integer;

    .line 41
    .line 42
    iget-object v3, p1, Lpx4;->h:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lpx4;->i:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lpx4;->i:Ljava/lang/String;

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
    iget-object v1, p0, Lpx4;->j:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lpx4;->j:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object p0, p0, Lpx4;->k:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p1, p1, Lpx4;->k:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    return v0

    .line 81
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 8

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
    move-result-object v1

    .line 9
    iget-object v2, p0, Lpx4;->f:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lpx4;->g:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lpx4;->h:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v5, p0, Lpx4;->i:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lpx4;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p0, Lpx4;->k:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

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

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public q()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public s()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpx4;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
