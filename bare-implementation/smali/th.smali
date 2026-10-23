.class public final synthetic Lth;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lfo2;

.field public final synthetic b:Lmt3;

.field public final synthetic c:Lkh6;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lfo2;Lmt3;Lkh6;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lth;->a:Lfo2;

    .line 5
    .line 6
    iput-object p2, p0, Lth;->b:Lmt3;

    .line 7
    .line 8
    iput-object p3, p0, Lth;->c:Lkh6;

    .line 9
    .line 10
    iput-wide p4, p0, Lth;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p1}, Lio4;->h(Ljava/lang/Long;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    move-wide v0, v2

    .line 14
    :cond_0
    iget-object p1, p0, Lth;->a:Lfo2;

    .line 15
    .line 16
    iget-wide v4, p1, Lfo2;->c:J

    .line 17
    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    cmp-long v2, v4, v2

    .line 23
    .line 24
    if-lez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    cmp-long p1, v0, v2

    .line 35
    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    move-wide v0, v2

    .line 39
    :cond_2
    iget-object p1, p0, Lth;->b:Lmt3;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    new-instance v2, Loh;

    .line 44
    .line 45
    iget-object v3, p0, Lth;->c:Lkh6;

    .line 46
    .line 47
    iget-wide v3, v3, Lkh6;->a:J

    .line 48
    .line 49
    add-long/2addr v3, v0

    .line 50
    iget-wide v0, p0, Lth;->d:J

    .line 51
    .line 52
    invoke-direct {v2, v3, v4, v0, v1}, Loh;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 59
    .line 60
    return-object p0
.end method
