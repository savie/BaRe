.class public final synthetic Lp07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp07;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lp07;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lh07;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Long;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    check-cast p3, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    cmp-long p3, p1, v1

    .line 21
    .line 22
    if-ltz p3, :cond_1

    .line 23
    .line 24
    sget-object v1, Li07;->Extract:Li07;

    .line 25
    .line 26
    sget-object v2, Ll07;->Extraction:Ll07;

    .line 27
    .line 28
    sget-object v3, Lm07;->Progress:Lm07;

    .line 29
    .line 30
    iget-wide v4, p0, Lp07;->b:J

    .line 31
    .line 32
    cmp-long p3, p1, v4

    .line 33
    .line 34
    if-lez p3, :cond_0

    .line 35
    .line 36
    move-wide p1, v4

    .line 37
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v4, p0, Lp07;->a:Ljava/lang/String;

    .line 42
    .line 43
    move-wide v5, p1

    .line 44
    invoke-static/range {v0 .. v7}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object p0
.end method
