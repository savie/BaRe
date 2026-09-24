.class public Lqj6$k;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation runtime Lno6;
    name = "Rule"
.end annotation


# instance fields
.field private a:Lxm7;
    .annotation runtime Lat2;
        name = "Status"
    .end annotation
.end field

.field private b:Lqj6$d;
    .annotation runtime Lat2;
        name = "Destination"
    .end annotation
.end field

.field private c:Lqj6$b;
    .annotation runtime Lat2;
        name = "DeleteMarkerReplication"
        required = false
    .end annotation
.end field

.field private d:Lqj6$f;
    .annotation runtime Lat2;
        name = "ExistingObjectReplication"
        required = false
    .end annotation
.end field

.field private e:Lpc3;
    .annotation runtime Lat2;
        name = "Filter"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ID"
        required = false
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Prefix"
        required = false
    .end annotation

    .annotation runtime Lxv1;
        value = Lcq7;
    .end annotation
.end field

.field private h:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "Priority"
        required = false
    .end annotation
.end field

.field private i:Lqj6$l;
    .annotation runtime Lat2;
        name = "SourceSelectionCriteria"
        required = false
    .end annotation
.end field

.field private j:Lqj6$c;
    .annotation runtime Lat2;
        name = "DeleteReplication"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxm7;Lqj6$d;Lqj6$b;Lqj6$f;Lpc3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lqj6$l;Lqj6$c;)V
    .locals 3
    .param p1    # Lxm7;
        .annotation runtime Lat2;
            name = "Status"
        .end annotation
    .end param
    .param p2    # Lqj6$d;
        .annotation runtime Lat2;
            name = "Destination"
        .end annotation
    .end param
    .param p3    # Lqj6$b;
        .annotation runtime Lat2;
            name = "DeleteMarkerReplication"
            required = false
        .end annotation
    .end param
    .param p4    # Lqj6$f;
        .annotation runtime Lat2;
            name = "ExistingObjectReplication"
            required = false
        .end annotation
    .end param
    .param p5    # Lpc3;
        .annotation runtime Lat2;
            name = "Filter"
            required = false
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "ID"
            required = false
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "Prefix"
            required = false
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation runtime Lat2;
            name = "Priority"
            required = false
        .end annotation
    .end param
    .param p9    # Lqj6$l;
        .annotation runtime Lat2;
            name = "SourceSelectionCriteria"
            required = false
        .end annotation
    .end param
    .param p10    # Lqj6$c;
        .annotation runtime Lat2;
            name = "DeleteReplication"
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
    if-eqz p5, :cond_0

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    new-instance p3, Lqj6$b;

    .line 10
    .line 11
    invoke-direct {p3, v0}, Lqj6$b;-><init>(Lxm7;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p6, :cond_3

    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p6

    .line 20
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0xff

    .line 31
    .line 32
    if-gt v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p0, "ID must be exceed 255 characters"

    .line 36
    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    const-string p0, "ID must be non-empty string"

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    :goto_0
    const-string v0, "Status must not be null"

    .line 48
    .line 49
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lqj6$k;->a:Lxm7;

    .line 53
    .line 54
    const-string p1, "Destination must not be null"

    .line 55
    .line 56
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lqj6$k;->b:Lqj6$d;

    .line 60
    .line 61
    iput-object p3, p0, Lqj6$k;->c:Lqj6$b;

    .line 62
    .line 63
    iput-object p4, p0, Lqj6$k;->d:Lqj6$f;

    .line 64
    .line 65
    iput-object p5, p0, Lqj6$k;->e:Lpc3;

    .line 66
    .line 67
    iput-object p6, p0, Lqj6$k;->f:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p7, p0, Lqj6$k;->g:Ljava/lang/String;

    .line 70
    .line 71
    iput-object p8, p0, Lqj6$k;->h:Ljava/lang/Integer;

    .line 72
    .line 73
    iput-object p9, p0, Lqj6$k;->i:Lqj6$l;

    .line 74
    .line 75
    iput-object p10, p0, Lqj6$k;->j:Lqj6$c;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public a()Lqj6$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->c:Lqj6$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lqj6$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->j:Lqj6$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Lqj6$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->b:Lqj6$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Lqj6$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->d:Lqj6$f;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Lpc3;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->e:Lpc3;

    .line 2
    .line 3
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public i()Lqj6$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->i:Lqj6$l;

    .line 2
    .line 3
    return-object p0
.end method

.method public j()Lxm7;
    .locals 0

    .line 1
    iget-object p0, p0, Lqj6$k;->a:Lxm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lqj6$k;->c:Lqj6$b;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lqj6$k;->b:Lqj6$d;

    .line 8
    .line 9
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lqj6$k;->d:Lqj6$f;

    .line 14
    .line 15
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lqj6$k;->e:Lpc3;

    .line 20
    .line 21
    invoke-static {v3}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lqj6$k;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lqj6$k;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lqj6$k;->h:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {v6}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, p0, Lqj6$k;->i:Lqj6$l;

    .line 44
    .line 45
    invoke-static {v7}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v8, p0, Lqj6$k;->j:Lqj6$c;

    .line 50
    .line 51
    invoke-static {v8}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-object p0, p0, Lqj6$k;->a:Lxm7;

    .line 56
    .line 57
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v9, ", destination="

    .line 62
    .line 63
    const-string v10, ", existingObjectReplication="

    .line 64
    .line 65
    const-string v11, "Rule{deleteMarkerReplication="

    .line 66
    .line 67
    invoke-static {v11, v0, v9, v1, v10}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, ", filter="

    .line 72
    .line 73
    const-string v9, ", id="

    .line 74
    .line 75
    invoke-static {v0, v2, v1, v3, v9}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, ", prefix="

    .line 79
    .line 80
    const-string v2, ", priority="

    .line 81
    .line 82
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, ", sourceSelectionCriteria="

    .line 86
    .line 87
    const-string v2, ", deleteReplication="

    .line 88
    .line 89
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, ", status="

    .line 93
    .line 94
    const-string v2, "}"

    .line 95
    .line 96
    invoke-static {v0, v8, v1, p0, v2}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
