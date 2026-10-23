.class public final synthetic Law;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lax;

.field public final synthetic b:Llw;


# direct methods
.method public synthetic constructor <init>(Llw;Lxw;Lax;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Law;->a:Lax;

    .line 5
    .line 6
    iput-object p1, p0, Law;->b:Llw;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p3, Lex;->UNTAR_DATA:Lex;

    .line 19
    .line 20
    iget-object v2, p0, Law;->a:Lax;

    .line 21
    .line 22
    invoke-virtual {v2, p3}, Lax;->c(Lex;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    long-to-float p3, v0

    .line 27
    long-to-float p1, p1

    .line 28
    div-float/2addr p3, p1

    .line 29
    long-to-float p1, v3

    .line 30
    mul-float/2addr p3, p1

    .line 31
    float-to-double p1, p3

    .line 32
    invoke-static {p1, p2}, Ltu0;->w(D)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    invoke-virtual {v2}, Lax;->b()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    add-long/2addr v0, p1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p0, p0, Law;->b:Llw;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object p0, Lbe8;->a:Lbe8;

    .line 51
    .line 52
    return-object p0
.end method
