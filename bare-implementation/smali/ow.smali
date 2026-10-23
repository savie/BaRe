.class public final synthetic Low;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Liw;

.field public final synthetic b:Ldx;


# direct methods
.method public synthetic constructor <init>(Liw;Ldx;Lxw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Low;->a:Liw;

    .line 5
    .line 6
    iput-object p2, p0, Low;->b:Ldx;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p3, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Low;->b:Ldx;

    .line 18
    .line 19
    invoke-virtual {p1}, Ldx;->b()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    add-long/2addr p1, v0

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Low;->a:Liw;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object p0, Lbe8;->a:Lbe8;

    .line 34
    .line 35
    return-object p0
.end method
