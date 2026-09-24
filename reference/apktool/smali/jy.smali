.class public final synthetic Ljy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lrt3;

.field public final synthetic c:Lkh6;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(JLrt3;Lkh6;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ljy;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ljy;->b:Lrt3;

    .line 7
    .line 8
    iput-object p4, p0, Ljy;->c:Lkh6;

    .line 9
    .line 10
    iput-wide p5, p0, Ljy;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    iget-wide v1, p0, Ljy;->a:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    cmp-long v5, v5, v3

    .line 19
    .line 20
    if-lez v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-wide v5, v1

    .line 32
    :goto_1
    iget-wide v7, p1, Ldz6;->a:J

    .line 33
    .line 34
    cmp-long v0, v7, v3

    .line 35
    .line 36
    if-gez v0, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-wide v3, v7

    .line 40
    :goto_2
    cmp-long v0, v3, v5

    .line 41
    .line 42
    if-lez v0, :cond_3

    .line 43
    .line 44
    move-wide v3, v5

    .line 45
    :cond_3
    long-to-float v0, v3

    .line 46
    long-to-float v3, v5

    .line 47
    div-float/2addr v0, v3

    .line 48
    long-to-float v1, v1

    .line 49
    mul-float/2addr v0, v1

    .line 50
    float-to-double v0, v0

    .line 51
    invoke-static {v0, v1}, Ltu0;->w(D)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object v2, p0, Ljy;->c:Lkh6;

    .line 56
    .line 57
    iget-wide v2, v2, Lkh6;->a:J

    .line 58
    .line 59
    add-long/2addr v2, v0

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-wide v1, p0, Ljy;->d:J

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-wide v2, p1, Ldz6;->c:J

    .line 71
    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p0, p0, Ljy;->b:Lrt3;

    .line 77
    .line 78
    invoke-interface {p0, v0, v1, p1}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget-object p0, Lbe8;->a:Lbe8;

    .line 82
    .line 83
    return-object p0
.end method
