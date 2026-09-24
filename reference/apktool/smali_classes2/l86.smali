.class public final Ll86;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:Lbt3;

.field public final c:J

.field public final d:Lh86;

.field public e:J


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .line 1
    sget-object v0, Lk86;->a:Lk86;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Ll86;->a:J

    .line 7
    .line 8
    iput-object v0, p0, Ll86;->b:Lbt3;

    .line 9
    .line 10
    const-wide/16 p1, 0x7d0

    .line 11
    .line 12
    iput-wide p1, p0, Ll86;->c:J

    .line 13
    .line 14
    invoke-virtual {v0}, Lk86;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    new-instance v1, Lh86;

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-wide/32 v3, 0x7fffffff

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0, v3, v4, v2}, Lh86;-><init>(Lbt3;JLjava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Ll86;->d:Lh86;

    .line 37
    .line 38
    iput-wide p1, p0, Ll86;->e:J

    .line 39
    .line 40
    return-void
.end method
