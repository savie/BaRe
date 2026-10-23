.class public Lpc3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc3$a;
    }
.end annotation

.annotation runtime Lno6;
    name = "Filter"
.end annotation


# instance fields
.field private a:Lpc3$a;
    .annotation runtime Lat2;
        name = "And"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Prefix"
        required = false
    .end annotation

    .annotation runtime Lxv1;
        value = Lcq7;
    .end annotation
.end field

.field private c:Lgx7;
    .annotation runtime Lat2;
        name = "Tag"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "ObjectSizeLessThan"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "ObjectSizeGreaterThan"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgx7;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "Tag must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lpc3;->c:Lgx7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "Prefix must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lpc3;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lpc3$a;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "And operator must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lpc3;->a:Lpc3$a;

    return-void
.end method

.method public constructor <init>(Lpc3$a;Ljava/lang/String;Lgx7;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1    # Lpc3$a;
        .annotation runtime Lat2;
            name = "And"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Prefix"
            required = false
        .end annotation
    .end param
    .param p3    # Lgx7;
        .annotation runtime Lat2;
            name = "Tag"
            required = false
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lat2;
            name = "ObjectSizeLessThan"
            required = false
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lat2;
            name = "ObjectSizeGreaterThan"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v3, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v3, v0

    .line 16
    :goto_1
    xor-int/2addr v2, v3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_2
    xor-int/2addr v0, v2

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iput-object p1, p0, Lpc3;->a:Lpc3$a;

    .line 24
    .line 25
    iput-object p2, p0, Lpc3;->b:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p3, p0, Lpc3;->c:Lgx7;

    .line 28
    .line 29
    iput-object p4, p0, Lpc3;->d:Ljava/lang/Long;

    .line 30
    .line 31
    iput-object p5, p0, Lpc3;->e:Ljava/lang/Long;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    const-string p0, "Only one of And, Prefix or Tag must be set"

    .line 35
    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0
.end method


# virtual methods
.method public a()Lpc3$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc3;->a:Lpc3$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc3;->e:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc3;->d:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lgx7;
    .locals 0

    .line 1
    iget-object p0, p0, Lpc3;->c:Lgx7;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lpc3;->a:Lpc3$a;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lpc3;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lpc3;->c:Lgx7;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lpc3;->d:Ljava/lang/Long;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object p0, p0, Lpc3;->e:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v4, ", prefix="

    .line 32
    .line 33
    const-string v5, ", tag="

    .line 34
    .line 35
    const-string v6, "Filter{andOperator="

    .line 36
    .line 37
    invoke-static {v6, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, ", objectSizeLessThan="

    .line 42
    .line 43
    const-string v4, ", objectSizeGreaterThan="

    .line 44
    .line 45
    invoke-static {v0, v2, v1, v3, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "}"

    .line 49
    .line 50
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
