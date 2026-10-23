.class public final Lqv2;
.super Lq61;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Lqv2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqv2;

    .line 2
    .line 3
    invoke-direct {v0}, Lq61;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqv2;->e:Lqv2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final D(Lm61;)Lm61;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final O(Lm61;Lqn5;)Lqn5;
    .locals 2

    .line 1
    invoke-interface {p2}, Lqn5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lm61;->d:Lm61;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-object p0

    .line 17
    :cond_1
    new-instance p0, Lr50;

    .line 18
    .line 19
    sget-object v1, Lq61;->d:Lxg;

    .line 20
    .line 21
    invoke-direct {p0, v1}, Lr50;-><init>(Ljava/util/Comparator;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v1, Lqv2;->e:Lqv2;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lr50;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    new-instance p1, Lq61;

    .line 40
    .line 41
    invoke-direct {p1, p0, p2}, Lq61;-><init>(Loa4;Lqn5;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    invoke-virtual {p0, p1}, Lr50;->c(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lr50;->o(Ljava/lang/Object;)Loa4;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_4
    invoke-interface {p2}, Lqn5;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, p2, p1}, Loa4;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_5
    invoke-virtual {p0}, Loa4;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    :goto_1
    return-object v1

    .line 72
    :cond_6
    new-instance p1, Lq61;

    .line 73
    .line 74
    invoke-direct {p1, p0, v1}, Lq61;-><init>(Loa4;Lqn5;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public final U(Lgy5;)Lqn5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Lqn5;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lqn5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method public final c0(Lm61;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lqn5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lqv2;->c(Lqn5;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lqv2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p1, Lqn5;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Lqn5;

    .line 12
    .line 13
    invoke-interface {p1}, Lqn5;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lqn5;->n()Lqn5;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lqv2;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final g0(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final h0(Lgy5;Lqn5;)Lqn5;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lqv2;->h0(Lgy5;Lqn5;)Lqn5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lqv2;->O(Lm61;Lqn5;)Lqn5;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k0()Ljava/util/Iterator;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final m(Lm61;)Lqn5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final n()Lqn5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final q(Lqn5;)Lqn5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final r0()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "<Empty Node>"

    .line 2
    .line 3
    return-object p0
.end method

.method public final v(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
