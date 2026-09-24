.class public final synthetic Le04;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:J

.field public final synthetic c:Ll04;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lkh6;JLl04;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le04;->a:Lkh6;

    .line 5
    .line 6
    iput-wide p2, p0, Le04;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Le04;->c:Ll04;

    .line 9
    .line 10
    iput-wide p5, p0, Le04;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    iget-object p1, p0, Le04;->a:Lkh6;

    .line 8
    .line 9
    iget-wide v2, p1, Lkh6;->a:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v0, v4

    .line 14
    .line 15
    if-gez v6, :cond_0

    .line 16
    .line 17
    move-wide v0, v4

    .line 18
    :cond_0
    add-long/2addr v2, v0

    .line 19
    iget-wide v0, p0, Le04;->b:J

    .line 20
    .line 21
    cmp-long v4, v2, v0

    .line 22
    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    move-wide v2, v0

    .line 26
    :cond_1
    iput-wide v2, p1, Lkh6;->a:J

    .line 27
    .line 28
    iget-wide v0, p0, Le04;->d:J

    .line 29
    .line 30
    add-long/2addr v0, v2

    .line 31
    iget-object p0, p0, Le04;->c:Ll04;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ll04;->b(J)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lbe8;->a:Lbe8;

    .line 37
    .line 38
    return-object p0
.end method
