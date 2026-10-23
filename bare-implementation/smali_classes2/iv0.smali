.class public final synthetic Liv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:J

.field public final synthetic c:Lkh6;

.field public final synthetic d:J

.field public final synthetic e:Lkh6;

.field public final synthetic f:Lc7;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLkh6;JLkh6;Lc7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liv0;->a:Lkh6;

    .line 5
    .line 6
    iput-wide p2, p0, Liv0;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Liv0;->c:Lkh6;

    .line 9
    .line 10
    iput-wide p5, p0, Liv0;->d:J

    .line 11
    .line 12
    iput-object p7, p0, Liv0;->e:Lkh6;

    .line 13
    .line 14
    iput-object p8, p0, Liv0;->f:Lc7;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Liv0;->a:Lkh6;

    .line 8
    .line 9
    iget-wide v2, p1, Lkh6;->a:J

    .line 10
    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-wide v0, p0, Liv0;->b:J

    .line 13
    .line 14
    cmp-long v4, v2, v0

    .line 15
    .line 16
    if-lez v4, :cond_0

    .line 17
    .line 18
    move-wide v2, v0

    .line 19
    :cond_0
    iput-wide v2, p1, Lkh6;->a:J

    .line 20
    .line 21
    iget-object p1, p0, Liv0;->c:Lkh6;

    .line 22
    .line 23
    iget-wide v0, p1, Lkh6;->a:J

    .line 24
    .line 25
    add-long v4, v0, v2

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    iget-wide v8, p0, Liv0;->d:J

    .line 30
    .line 31
    invoke-static/range {v4 .. v9}, Ll73;->i(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-object p1, p0, Liv0;->e:Lkh6;

    .line 36
    .line 37
    iget-wide v2, p1, Lkh6;->a:J

    .line 38
    .line 39
    cmp-long v2, v0, v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iput-wide v0, p1, Lkh6;->a:J

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p0, p0, Liv0;->f:Lc7;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lc7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 55
    .line 56
    return-object p0
.end method
