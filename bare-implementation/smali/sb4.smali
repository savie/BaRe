.class public final Lsb4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final d:Lra4;


# instance fields
.field public final a:Lqn5;

.field public b:Lra4;

.field public final c:Lnb4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lra4;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lra4;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lsb4;->d:Lra4;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lqn5;Lnb4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lsb4;->c:Lnb4;

    .line 5
    .line 6
    iput-object p1, p0, Lsb4;->a:Lqn5;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lsb4;->b:Lra4;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lqn5;Lnb4;Lra4;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lsb4;->c:Lnb4;

    .line 14
    iput-object p1, p0, Lsb4;->a:Lqn5;

    .line 15
    iput-object p3, p0, Lsb4;->b:Lra4;

    return-void
.end method

.method public static d(Lqn5;)Lsb4;
    .locals 2

    .line 1
    new-instance v0, Lsb4;

    .line 2
    .line 3
    sget-object v1, Lg66;->a:Lg66;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lsb4;->b:Lra4;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    sget-object v0, Lno4;->a:Lno4;

    .line 6
    .line 7
    iget-object v1, p0, Lsb4;->c:Lnb4;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v2, Lsb4;->d:Lra4;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object v2, p0, Lsb4;->b:Lra4;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lsb4;->a:Lqn5;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_3

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lhk5;

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    iget-object v5, v6, Lhk5;->b:Lqn5;

    .line 48
    .line 49
    invoke-virtual {v1, v5}, Lnb4;->b(Lqn5;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v5, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 59
    :goto_2
    new-instance v7, Lhk5;

    .line 60
    .line 61
    iget-object v8, v6, Lhk5;->a:Lm61;

    .line 62
    .line 63
    iget-object v6, v6, Lhk5;->b:Lqn5;

    .line 64
    .line 65
    invoke-direct {v7, v8, v6}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-eqz v5, :cond_4

    .line 73
    .line 74
    new-instance v2, Lra4;

    .line 75
    .line 76
    invoke-direct {v2, v0, v1}, Lra4;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lsb4;->b:Lra4;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    iput-object v2, p0, Lsb4;->b:Lra4;

    .line 83
    .line 84
    :cond_5
    return-void
.end method

.method public final e(Lm61;Lqn5;)Lsb4;
    .locals 6

    .line 1
    iget-object v0, p0, Lsb4;->a:Lqn5;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lsb4;->b:Lra4;

    .line 8
    .line 9
    sget-object v3, Lsb4;->d:Lra4;

    .line 10
    .line 11
    invoke-static {v2, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v4, p0, Lsb4;->c:Lnb4;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4, p2}, Lnb4;->b(Lqn5;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance p0, Lsb4;

    .line 26
    .line 27
    invoke-direct {p0, v1, v4, v3}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object v2, p0, Lsb4;->b:Lra4;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-static {v2, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-interface {v0, p1}, Lqn5;->m(Lm61;)Lqn5;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p0, p0, Lsb4;->b:Lra4;

    .line 48
    .line 49
    new-instance v2, Lhk5;

    .line 50
    .line 51
    invoke-direct {v2, p1, v0}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lra4;->a:Loa4;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Loa4;->o(Ljava/lang/Object;)Loa4;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-ne v2, v0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p0, Lra4;

    .line 64
    .line 65
    invoke-direct {p0, v2}, Lra4;-><init>(Loa4;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {p2}, Lqn5;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    new-instance v0, Lhk5;

    .line 75
    .line 76
    invoke-direct {v0, p1, p2}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lra4;

    .line 80
    .line 81
    iget-object p0, p0, Lra4;->a:Loa4;

    .line 82
    .line 83
    invoke-virtual {p0, v5, v0}, Loa4;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, p0}, Lra4;-><init>(Loa4;)V

    .line 88
    .line 89
    .line 90
    move-object p0, p1

    .line 91
    :cond_3
    new-instance p1, Lsb4;

    .line 92
    .line 93
    invoke-direct {p1, v1, v4, p0}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    :goto_1
    new-instance p0, Lsb4;

    .line 98
    .line 99
    invoke-direct {p0, v1, v4, v5}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 100
    .line 101
    .line 102
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsb4;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsb4;->b:Lra4;

    .line 5
    .line 6
    sget-object v1, Lsb4;->d:Lra4;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, p0, Lsb4;->b:Lra4;

    .line 22
    .line 23
    invoke-virtual {p0}, Lra4;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
