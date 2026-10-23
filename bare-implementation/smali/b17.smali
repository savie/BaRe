.class public final Lb17;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lf27;

.field public final b:[C

.field public final c:Lh07;

.field public final d:J

.field public final e:Lny6;

.field public final f:Z


# direct methods
.method public constructor <init>(Lf27;[CLh07;JLny6;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lb17;->a:Lf27;

    .line 11
    .line 12
    iput-object p2, p0, Lb17;->b:[C

    .line 13
    .line 14
    iput-object p3, p0, Lb17;->c:Lh07;

    .line 15
    .line 16
    iput-wide p4, p0, Lb17;->d:J

    .line 17
    .line 18
    iput-object p6, p0, Lb17;->e:Lny6;

    .line 19
    .line 20
    iput-boolean p7, p0, Lb17;->f:Z

    .line 21
    .line 22
    const-wide/16 p0, 0x0

    .line 23
    .line 24
    cmp-long p0, p4, p0

    .line 25
    .line 26
    if-ltz p0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "SBA progress update interval must be >= 0 ms: "

    .line 30
    .line 31
    invoke-static {p4, p5, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public synthetic constructor <init>(Lf27;[CLny6;I)V
    .locals 8

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 40
    sget-object p1, Lf27;->Basic:Lf27;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_2

    .line 41
    sget-object p3, Llv1;->e:Ll0;

    :cond_2
    move-object v6, p3

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x7d0

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v7}, Lb17;-><init>(Lf27;[CLh07;JLny6;Z)V

    return-void
.end method
