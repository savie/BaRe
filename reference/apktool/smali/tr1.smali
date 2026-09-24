.class public final Ltr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljk6;

.field public final b:J

.field public final synthetic c:Lur1;


# direct methods
.method public constructor <init>(Lur1;Ljk6;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltr1;->c:Lur1;

    .line 5
    .line 6
    iput-object p2, p0, Ltr1;->a:Ljk6;

    .line 7
    .line 8
    iput-wide p3, p0, Ltr1;->b:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    new-instance v0, Lis6;

    .line 2
    .line 3
    iget-object v8, p0, Ltr1;->c:Lur1;

    .line 4
    .line 5
    iget-object v1, v8, Lur1;->c:Lxr1;

    .line 6
    .line 7
    iget-object v1, v1, Lxr1;->b:Lru3;

    .line 8
    .line 9
    iget-object v1, v1, Lru3;->e:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lus6;

    .line 13
    .line 14
    iget-object v1, p0, Ltr1;->a:Ljk6;

    .line 15
    .line 16
    iget-wide v9, v1, Ljk6;->c:J

    .line 17
    .line 18
    iget-wide v11, v1, Ljk6;->f:J

    .line 19
    .line 20
    sget-object v3, Lit6;->r:Lit6;

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-wide v4, p0, Ltr1;->b:J

    .line 26
    .line 27
    invoke-direct/range {v0 .. v7}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lev6;->a:Ldv6;

    .line 31
    .line 32
    check-cast v1, Lut6;

    .line 33
    .line 34
    iput-wide v9, v1, Lut6;->f:J

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long v2, v11, v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-wide v2, v1, Lut6;->k:J

    .line 43
    .line 44
    const-wide/16 v4, 0x2

    .line 45
    .line 46
    or-long/2addr v2, v4

    .line 47
    iput-wide v2, v1, Lut6;->k:J

    .line 48
    .line 49
    iput-wide v11, v1, Lut6;->g:J

    .line 50
    .line 51
    :cond_0
    :try_start_0
    iget-object v1, v8, Lur1;->d:Lla;

    .line 52
    .line 53
    iget-wide v2, p0, Ltr1;->b:J

    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v0}, Lj87;->n(Lrt6;)Lp21;
    :try_end_0
    .catch Lva8; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    sget-object p0, Lur1;->I:Ll15;

    .line 68
    .line 69
    const-string v1, "Failed to send {}"

    .line 70
    .line 71
    invoke-interface {p0, v0, v1}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
