.class public final synthetic Lrl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:Lmt3;


# direct methods
.method public synthetic constructor <init>(JJLmt3;Lvl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lrl;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lrl;->b:J

    .line 7
    .line 8
    iput-object p5, p0, Lrl;->c:Lmt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ldz6;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Ldz6;->b:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lrl;->a:J

    .line 16
    .line 17
    :goto_0
    iget-wide v2, p1, Ldz6;->a:J

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p1, v0, v4

    .line 22
    .line 23
    if-lez p1, :cond_2

    .line 24
    .line 25
    iget-wide v10, p0, Lrl;->b:J

    .line 26
    .line 27
    cmp-long p1, v10, v4

    .line 28
    .line 29
    if-gtz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    long-to-double v2, v2

    .line 33
    long-to-double v0, v0

    .line 34
    div-double/2addr v2, v0

    .line 35
    long-to-double v0, v10

    .line 36
    mul-double/2addr v2, v0

    .line 37
    double-to-long v6, v2

    .line 38
    const-wide/16 v8, 0x0

    .line 39
    .line 40
    invoke-static/range {v6 .. v11}, Ll73;->i(JJJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p0, p0, Lrl;->c:Lmt3;

    .line 49
    .line 50
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object p0, Lbe8;->a:Lbe8;

    .line 54
    .line 55
    return-object p0
.end method
