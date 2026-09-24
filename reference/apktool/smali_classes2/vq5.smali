.class public final synthetic Lvq5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lkh6;

.field public final synthetic b:J

.field public final synthetic c:Lwq5;

.field public final synthetic d:Lkh6;

.field public final synthetic e:Lg30;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lkh6;JLwq5;Lkh6;Lg30;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvq5;->a:Lkh6;

    .line 5
    .line 6
    iput-wide p2, p0, Lvq5;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lvq5;->c:Lwq5;

    .line 9
    .line 10
    iput-object p5, p0, Lvq5;->d:Lkh6;

    .line 11
    .line 12
    iput-object p6, p0, Lvq5;->e:Lg30;

    .line 13
    .line 14
    iput-wide p7, p0, Lvq5;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    iget-object p1, p0, Lvq5;->a:Lkh6;

    .line 8
    .line 9
    iget-wide v2, p1, Lkh6;->a:J

    .line 10
    .line 11
    add-long/2addr v2, v0

    .line 12
    iput-wide v2, p1, Lkh6;->a:J

    .line 13
    .line 14
    iget-wide v0, p0, Lvq5;->b:J

    .line 15
    .line 16
    add-long v9, v0, v2

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    iget-object v4, p0, Lvq5;->c:Lwq5;

    .line 20
    .line 21
    iget-object v5, p0, Lvq5;->d:Lkh6;

    .line 22
    .line 23
    iget-object v6, p0, Lvq5;->e:Lg30;

    .line 24
    .line 25
    iget-wide v7, p0, Lvq5;->f:J

    .line 26
    .line 27
    invoke-static/range {v4 .. v11}, Lwq5;->l(Lwq5;Lkh6;Lg30;JJZ)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lbe8;->a:Lbe8;

    .line 31
    .line 32
    return-object p0
.end method
