.class public final synthetic Lpi0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lxi0;

.field public final synthetic b:Lpj0;

.field public final synthetic c:Z

.field public final synthetic d:Lcd;

.field public final synthetic e:Lri0;


# direct methods
.method public synthetic constructor <init>(Lxi0;Lpj0;ZLcd;Lri0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpi0;->a:Lxi0;

    .line 5
    .line 6
    iput-object p2, p0, Lpi0;->b:Lpj0;

    .line 7
    .line 8
    iput-boolean p3, p0, Lpi0;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lpi0;->d:Lcd;

    .line 11
    .line 12
    iput-object p5, p0, Lpi0;->e:Lri0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Llj0;

    .line 2
    .line 3
    iget-object v2, p0, Lpi0;->a:Lxi0;

    .line 4
    .line 5
    iget-object v1, v2, Lxi0;->a:Lil0;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Llj0;-><init>(Lil0;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lqi0;

    .line 11
    .line 12
    iget-object v3, p0, Lpi0;->b:Lpj0;

    .line 13
    .line 14
    iget-boolean v4, p0, Lpi0;->c:Z

    .line 15
    .line 16
    iget-object v5, p0, Lpi0;->d:Lcd;

    .line 17
    .line 18
    iget-object v6, p0, Lpi0;->e:Lri0;

    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lqi0;-><init>(Lxi0;Lpj0;ZLcd;Lri0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3, v1}, Llj0;->j(Lpj0;Lbt3;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lbe8;->a:Lbe8;

    .line 27
    .line 28
    return-object p0
.end method
