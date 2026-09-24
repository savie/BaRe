.class public final Lg66;
.super Lnb4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lg66;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg66;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg66;->a:Lg66;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v0, "Can\'t get query definition on priority index!"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final b(Lqn5;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lqn5;->n()Lqn5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lqn5;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final c(Lm61;Lqn5;)Lhk5;
    .locals 2

    .line 1
    new-instance p0, Lhk5;

    .line 2
    .line 3
    new-instance v0, Lfq7;

    .line 4
    .line 5
    const-string v1, "[PRIORITY-POST]"

    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Lfq7;-><init>(Ljava/lang/String;Lqn5;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lhk5;

    .line 2
    .line 3
    check-cast p2, Lhk5;

    .line 4
    .line 5
    iget-object p0, p1, Lhk5;->b:Lqn5;

    .line 6
    .line 7
    invoke-interface {p0}, Lqn5;->n()Lqn5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object v0, p2, Lhk5;->b:Lqn5;

    .line 12
    .line 13
    invoke-interface {v0}, Lqn5;->n()Lqn5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Lhk5;->a:Lm61;

    .line 18
    .line 19
    iget-object p2, p2, Lhk5;->a:Lm61;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {p1, p2}, Lm61;->a(Lm61;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final d()Lhk5;
    .locals 2

    .line 1
    sget-object v0, Lm61;->c:Lm61;

    .line 2
    .line 3
    sget-object v1, Lqn5;->s:Lnn5;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lg66;->c(Lm61;Lqn5;)Lhk5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lg66;

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x302679

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PriorityIndex"

    .line 2
    .line 3
    return-object p0
.end method
