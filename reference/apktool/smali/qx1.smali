.class public final Lqx1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnx1;


# instance fields
.field public final a:Lmt3;

.field public final b:Lnx1;


# direct methods
.method public constructor <init>(Lnx1;Lmt3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lqx1;->a:Lmt3;

    .line 8
    .line 9
    instance-of p2, p1, Lqx1;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lqx1;

    .line 14
    .line 15
    iget-object p1, p1, Lqx1;->b:Lnx1;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lqx1;->b:Lnx1;

    .line 18
    .line 19
    return-void
.end method
