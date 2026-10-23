.class public Lxo5$d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Lno6;
    name = "Filter"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxo5$e;",
            ">;"
        }
    .end annotation

    .annotation runtime Lfy5;
        value = "S3Key"
    .end annotation

    .annotation runtime Lgt2;
        inline = true
        name = "FilterRule"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    const-string p0, "Either prefix or suffix must be provided"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 99
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 100
    invoke-static {p1}, Lxo5$e;->b(Ljava/lang/String;)Lxo5$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    .line 101
    invoke-static {p2}, Lxo5$e;->c(Ljava/lang/String;)Lxo5$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    sget-object p1, Lki8;->a:Lzy5;

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 104
    iput-object p1, p0, Lxo5$d;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Lfy5;
            value = "S3Key"
        .end annotation

        .annotation runtime Lgt2;
            inline = true
            name = "FilterRule"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxo5$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Filter rules must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt v0, v2, :cond_3

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x2

    .line 22
    if-gt v0, v3, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v3, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lxo5$e;

    .line 36
    .line 37
    invoke-virtual {v3}, Lxo5$e;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lxo5$e;

    .line 46
    .line 47
    invoke-virtual {v2}, Lxo5$e;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lxo5$e;

    .line 63
    .line 64
    invoke-virtual {p0}, Lxo5$e;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "\' must not be same"

    .line 69
    .line 70
    const-string v0, "Two rules \'"

    .line 71
    .line 72
    invoke-static {p0, p1, v0}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lki8;->a:Lzy5;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lxo5$d;->a:Ljava/util/List;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    const-string p0, "Maximum two rules must be provided"

    .line 86
    .line 87
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_3
    const-string p0, "At least one rule must be provided"

    .line 92
    .line 93
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxo5$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lxo5$d;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lxo5$d;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Filter{rules="

    .line 8
    .line 9
    const-string v1, "}"

    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
