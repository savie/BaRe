.class public final Lmq2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lxf;

.field public final d:Ll39;

.field public final e:Lc7;

.field public final f:Lmm;

.field public g:J


# direct methods
.method public constructor <init>(JJILxf;Ll39;Lm92;Lc7;Lmm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lmq2;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lmq2;->b:J

    .line 7
    .line 8
    iput-object p6, p0, Lmq2;->c:Lxf;

    .line 9
    .line 10
    iput-object p7, p0, Lmq2;->d:Ll39;

    .line 11
    .line 12
    iput-object p9, p0, Lmq2;->e:Lc7;

    .line 13
    .line 14
    iput-object p10, p0, Lmq2;->f:Lmm;

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    iput-wide p1, p0, Lmq2;->g:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    iget-wide v4, p0, Lmq2;->a:J

    .line 4
    .line 5
    move-wide v0, p1

    .line 6
    invoke-static/range {v0 .. v5}, Ll73;->i(JJJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iget-wide v0, p0, Lmq2;->g:J

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-wide p1, p0, Lmq2;->g:J

    .line 17
    .line 18
    iget-object p0, p0, Lmq2;->f:Lmm;

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lmm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
