.class public final synthetic Lgw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lfx;

.field public final synthetic b:Lql;

.field public final synthetic c:Lkh6;


# direct methods
.method public synthetic constructor <init>(Lfx;Lql;Lkh6;Lxw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgw;->a:Lfx;

    .line 5
    .line 6
    iput-object p2, p0, Lgw;->b:Lql;

    .line 7
    .line 8
    iput-object p3, p0, Lgw;->c:Lkh6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    check-cast p2, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    check-cast p3, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lgw;->a:Lfx;

    .line 19
    .line 20
    iget-wide v2, p3, Lfx;->e:J

    .line 21
    .line 22
    long-to-float p3, v0

    .line 23
    long-to-float p1, p1

    .line 24
    div-float/2addr p3, p1

    .line 25
    long-to-float p1, v2

    .line 26
    mul-float/2addr p3, p1

    .line 27
    float-to-double p1, p3

    .line 28
    invoke-static {p1, p2}, Ltu0;->w(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iget-object p3, p0, Lgw;->c:Lkh6;

    .line 33
    .line 34
    iget-wide v0, p3, Lkh6;->a:J

    .line 35
    .line 36
    add-long/2addr v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p0, p0, Lgw;->b:Lql;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0
.end method
