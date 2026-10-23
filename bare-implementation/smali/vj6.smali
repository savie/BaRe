.class public final Lvj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lgy5;

.field public b:Lbf3;

.field public c:Lhx0;

.field public d:I

.field public e:J

.field public f:I

.field public k:Lwc2;

.field public n:J

.field public p:Lqn5;

.field public q:Lqn5;

.field public r:Lqn5;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lvj6;

    .line 2
    .line 3
    iget-wide v0, p0, Lvj6;->e:J

    .line 4
    .line 5
    iget-wide p0, p1, Lvj6;->e:J

    .line 6
    .line 7
    cmp-long p0, v0, p0

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    return p0
.end method
