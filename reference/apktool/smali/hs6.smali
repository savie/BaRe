.class public final Lhs6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ll15;


# instance fields
.field public e:Lgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lhs6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lhs6;->f:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final H(Lst6;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lhs6;->e:Lgd;

    .line 2
    .line 3
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lut6;

    .line 7
    .line 8
    iget-wide v2, v2, Lut6;->f:J

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lgd;->j(Ljava/lang/Long;)Ljk6;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object v4, v0, Ljk6;->e:Ljava/util/Date;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    sub-long/2addr v2, v4

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lhs6;->f:Ll15;

    .line 34
    .line 35
    const-string v4, "Send/Recv of packet {} took << {} ms >>"

    .line 36
    .line 37
    invoke-interface {v3, p1, v2, v4}, Ll15;->B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lev6;->a:Ldv6;

    .line 41
    .line 42
    check-cast v2, Lut6;

    .line 43
    .line 44
    iget-wide v4, v2, Lut6;->k:J

    .line 45
    .line 46
    sget-object v6, Lkt6;->b:Lkt6;

    .line 47
    .line 48
    invoke-static {v4, v5, v6}, Lsz8;->H(JLsx2;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    iget-wide v4, v2, Lut6;->j:J

    .line 55
    .line 56
    const-wide/16 v6, 0x103

    .line 57
    .line 58
    cmp-long v2, v4, v6

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    check-cast v1, Lut6;

    .line 63
    .line 64
    iget-wide v4, v1, Lut6;->g:J

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v2, "Received ASYNC packet {} with AsyncId << {} >>"

    .line 71
    .line 72
    invoke-interface {v3, p1, p0, v2}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-wide p0, v1, Lut6;->g:J

    .line 76
    .line 77
    iput-wide p0, v0, Ljk6;->f:J

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lol1;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
