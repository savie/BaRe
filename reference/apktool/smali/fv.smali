.class public final synthetic Lfv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lyw;

.field public final synthetic b:Lmv;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lyw;Lmv;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfv;->a:Lyw;

    .line 5
    .line 6
    iput-object p2, p0, Lfv;->b:Lmv;

    .line 7
    .line 8
    iput-wide p3, p0, Lfv;->c:J

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
    iget-object p3, p0, Lfv;->a:Lyw;

    .line 19
    .line 20
    iget-wide v2, p3, Lyw;->f:J

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
    iget-wide v0, p0, Lfv;->c:J

    .line 33
    .line 34
    add-long/2addr p1, v0

    .line 35
    iget-object p0, p0, Lfv;->b:Lmv;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lmv;->d(J)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lbe8;->a:Lbe8;

    .line 41
    .line 42
    return-object p0
.end method
