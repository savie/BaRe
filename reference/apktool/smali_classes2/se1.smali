.class public final synthetic Lse1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lwe1;

.field public final synthetic b:Lsd1;

.field public final synthetic c:Lke;

.field public final synthetic d:Lte1;

.field public final synthetic e:Lqe1;


# direct methods
.method public synthetic constructor <init>(Lwe1;Lsd1;Lke;Lte1;Lqe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lse1;->a:Lwe1;

    .line 5
    .line 6
    iput-object p2, p0, Lse1;->b:Lsd1;

    .line 7
    .line 8
    iput-object p3, p0, Lse1;->c:Lke;

    .line 9
    .line 10
    iput-object p4, p0, Lse1;->d:Lte1;

    .line 11
    .line 12
    iput-object p5, p0, Lse1;->e:Lqe1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lse1;->d:Lte1;

    .line 2
    .line 3
    iget-object v4, v0, Lte1;->a:Ltb1;

    .line 4
    .line 5
    iget-object v0, p0, Lse1;->e:Lqe1;

    .line 6
    .line 7
    iget-object v5, v0, Lqe1;->a:Lq63;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/16 v8, 0x60

    .line 11
    .line 12
    iget-object v1, p0, Lse1;->a:Lwe1;

    .line 13
    .line 14
    iget-object v2, p0, Lse1;->b:Lsd1;

    .line 15
    .line 16
    iget-object v3, p0, Lse1;->c:Lke;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
