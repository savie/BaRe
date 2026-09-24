.class public final synthetic Lm27;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;


# instance fields
.field public final synthetic a:Lsn1;


# direct methods
.method public synthetic constructor <init>(Lsn1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm27;->a:Lsn1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 10

    .line 1
    iget-object p0, p0, Lm27;->a:Lsn1;

    .line 2
    .line 3
    iget-object p0, p0, Lsn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lsh5;

    .line 6
    .line 7
    iget-wide p1, p0, Lsh5;->a:J

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v2, p3, v0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, p0, Lsh5;->d:J

    .line 21
    .line 22
    sub-long v4, v2, v4

    .line 23
    .line 24
    cmp-long v6, p3, p1

    .line 25
    .line 26
    if-ltz v6, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v6, 0x0

    .line 31
    :goto_0
    const-wide/16 v7, 0x3e8

    .line 32
    .line 33
    cmp-long v9, v4, v7

    .line 34
    .line 35
    if-gez v9, :cond_3

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    return-void

    .line 41
    :cond_3
    :goto_2
    iput-wide v2, p0, Lsh5;->d:J

    .line 42
    .line 43
    if-nez v6, :cond_4

    .line 44
    .line 45
    iget-wide v0, p0, Lsh5;->c:J

    .line 46
    .line 47
    sub-long v0, p3, v0

    .line 48
    .line 49
    div-long/2addr v4, v7

    .line 50
    long-to-float v0, v0

    .line 51
    long-to-float v1, v4

    .line 52
    div-float/2addr v0, v1

    .line 53
    float-to-double v0, v0

    .line 54
    invoke-static {v0, v1}, Ltu0;->w(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    :cond_4
    iget-object v2, p0, Lsh5;->b:Lqw;

    .line 59
    .line 60
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v2, v3, p1, p2}, Lqw;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iput-wide p3, p0, Lsh5;->c:J

    .line 76
    .line 77
    return-void
.end method
